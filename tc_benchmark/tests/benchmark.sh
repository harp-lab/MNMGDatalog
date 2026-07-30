#!/usr/bin/env bash
# Benchmark the four TC versions (reference / baseline / cudagraph / conditional).
#
# Each binary does 1 warm-up + N timed fixpoint runs and prints a full breakdown:
#   TotalTime = FileIO + H2D + Setup + Build + Compute(median) + D2H
# plus PeakMemMB. This script runs all four versions over a set of datasets,
# prints per-version rows (total / compute / build time + peak memory) with
# speedups relative to the ORIGINAL reference (v0), and writes the combined CSV
# (all breakdown columns) under results/ for plotting.
#
# A version that runs out of memory or overflows its hash set exits non-zero and
# is reported as SKIP for that dataset instead of aborting the whole run.
#
# Usage:
#   bash tests/benchmark.sh [REPEATS] [MULT] [dataset.bin ...]
#     REPEATS : timed runs per version (default 10)
#     MULT    : result-set capacity multiplier, next_pow2(n_edges*MULT) (def 4096)
#     datasets: .bin files (default: a spread that fits a single 40 GB GPU)
#
# Env: DATA_DIR (default ../data), OUT (default results/benchmark_<ts>.csv),
#      TIMEOUT (seconds per run via GNU `timeout`; default none)

set -u

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
DATA_DIR="${DATA_DIR:-$ROOT_DIR/../data}"

REPEATS="${1:-10}"; [[ $# -ge 1 ]] && shift
MULT="${1:-4096}";  [[ $# -ge 1 ]] && shift

if [[ $# -ge 1 ]]; then
  DATASETS=("$@")
else
  # Default spread: increasing compute / TC size, all fit a single 40 GB A100
  # with per-dataset capacity sizing (see ds_mult below). The two biggest
  # (fe_ocean ~1.67B, com-dblp ~1.91B) sit near the 40 GB limit and are opt-in.
  DATASETS=(data_7035.bin data_23874.bin data_223001.bin data_163734.bin \
            data_147892.bin vsp_finan512_scagr7-2c_rlfddd.bin)
fi

# Per-dataset capacity_mult so result_cap = next_pow2(n_edges*mult) >= ~2*TC.
# TC/edge ratios vary hugely, so a single mult cannot fit all. Values below are
# ~ceil(2*TC/n_edges) rounded up. Unknown datasets fall back to the CLI MULT.
#   dataset (TC)                         mult   result_cap   ~set memory
#   data_223001 SF.cedge   (  80 M)      1024     256 M        2 GB
#   data_163734 fe_body    ( 156 M)      2048     512 M        4 GB
#   data_147892 Gnutella31 ( 884 M)     12288     2.1 B       17 GB
#   vsp_finan              ( 910 M)      3456     2.1 B       17 GB
#   data_409593 fe_ocean   (1.67 B)      8192     4.3 B       34 GB (opt-in)
#   com-dblpungraph        (1.91 B)      3800     4.3 B       34 GB (opt-in)
ds_mult() {
  case "$1" in
    data_223001.bin)                      echo 1024 ;;
    data_163734.bin)                      echo 2048 ;;
    data_147892.bin)                      echo 12288 ;;
    vsp_finan512_scagr7-2c_rlfddd.bin)    echo 3456 ;;
    data_409593.bin)                      echo 8192 ;;
    com-dblpungraph.bin)                  echo 3800 ;;
    *)                                    echo "$MULT" ;;
  esac
}
# Smaller frontier buffers for the 34 GB-set datasets so set+frontiers fit 40 GB
# (their per-iteration new facts stay well under 2^27). 0 = auto (2^28).
ds_frontier() {
  case "$1" in
    data_409593.bin|com-dblpungraph.bin)  echo 134217728 ;;  # 2^27 slots, 1 GB each
    *)                                    echo 0 ;;
  esac
}
# Human-readable dataset name (from the MNMGDatalog README) for a .bin filename.
ds_name() {
  case "$1" in
    data_7035.bin)                        echo "OL.cedge" ;;
    data_23874.bin)                       echo "TG.cedge" ;;
    data_10.bin)                          echo "Small" ;;
    hipc_2019.bin)                        echo "Extra-small" ;;
    data_223001.bin)                      echo "SF.cedge" ;;
    data_163734.bin)                      echo "fe_body" ;;
    data_147892.bin)                      echo "p2p-Gnutella31" ;;
    vsp_finan512_scagr7-2c_rlfddd.bin)    echo "vsp_finan" ;;
    data_409593.bin)                      echo "fe_ocean" ;;
    com-dblpungraph.bin)                  echo "com-dblp" ;;
    data_165435.bin)                      echo "usroad" ;;
    data_49152.bin)                       echo "fe_sphere" ;;
    data_51971.bin)                       echo "CA-HepTh" ;;
    data_88234.bin)                       echo "ego-Facebook" ;;
    data_214078.bin)                      echo "loc-Brightkite" ;;
    *)                                    echo "?" ;;
  esac
}

# Portable parallel arrays (no associative arrays -> works on bash 3.2).
ORDER=(reference baseline cudagraph conditional)
BINS=(
  "$ROOT_DIR/v0_reference/tc_v0.out"
  "$ROOT_DIR/v1_baseline/tc_v1.out"
  "$ROOT_DIR/v2_cudagraph/tc_v2.out"
  "$ROOT_DIR/v3_conditional/tc_v3.out"
)
for b in "${BINS[@]}"; do
  [[ -x "$b" ]] || { echo "Missing binary: $b (run 'make all')"; exit 1; }
done

OUT="${OUT:-$ROOT_DIR/results/benchmark_$(date +%Y%m%d_%H%M%S).csv}"
mkdir -p "$(dirname "$OUT")"
# CSV header mirrors the binary output plus dataset file + human-readable name.
echo "version,input,iterations,tc,total_time,fileio,h2d,setup,build,compute,compute_min,d2h,peak_mem_mb,repeats,dataset,name" > "$OUT"

TMP="$(mktemp -d 2>/dev/null || echo /tmp/tcbench_$$)"; mkdir -p "$TMP"
trap 'rm -rf "$TMP"' EXIT

TIMEOUT="${TIMEOUT:-}"
# Run a version and echo its canonical 15-field CSV row. We do NOT parse stdout:
# the binary writes the row to a file via TC_CSV, and we read that file. This is
# immune to stray stdout and awk/grep dialects. Returns non-zero on failure or if
# the row's first field is not the expected version.
# By default we do NOT write the multi-GB <data>_<version>_tc.bin result files
# during benchmarking: the meaningful GPU->CPU transfer is always measured as the
# D2H phase regardless, so skipping the disk write gives identical numbers with no
# disk usage. Set BENCH_KEEP_OUTPUT=1 to actually write (and keep) the result files.
if [[ "${BENCH_KEEP_OUTPUT:-0}" == "1" ]]; then NOOUT=""; else NOOUT="1"; fi
run_bin() { # $1=bin $2=datafile $3=expected_version $4=mult $5=frontier_slots
  local bin="$1" df="$2" want="$3" dm="$4" fs="$5" rowfile line
  rowfile="$TMP/row.csv"; rm -f "$rowfile"
  if [[ -n "$TIMEOUT" ]] && command -v timeout >/dev/null 2>&1; then
    TC_NO_OUTPUT="$NOOUT" TC_CSV="$rowfile" timeout "$TIMEOUT" "$bin" "$df" "$dm" "$REPEATS" "$fs" >/dev/null 2>&1
  else
    TC_NO_OUTPUT="$NOOUT" TC_CSV="$rowfile" "$bin" "$df" "$dm" "$REPEATS" "$fs" >/dev/null 2>&1
  fi
  [[ -s "$rowfile" ]] || return 2          # no row written -> failed / OOM
  line="$(head -n 1 "$rowfile")"
  case "$line" in "$want",*) echo "$line" ;; *) return 2 ;; esac
}

BENCH_SCRIPT_VERSION="v8-csvfile"
printf "[benchmark.sh %s]  Repeats=%s  Mult=%s  DataDir=%s\n\n" \
  "$BENCH_SCRIPT_VERSION" "$REPEATS" "$MULT" "$DATA_DIR"
hdr() {
  printf "%-12s %-6s %12s %9s %9s %9s %7s %9s %7s %8s %8s\n" \
    "version" "iters" "TC" "total(ms)" "comp(ms)" "setup(ms)" "io(ms)" "build(ms)" \
    "mem(MB)" "sp_tot" "sp_comp"
}

for ds in "${DATASETS[@]}"; do
  df="$DATA_DIR/$ds"
  dm="$(ds_mult "$ds")"; fs="$(ds_frontier "$ds")"
  nm="$(ds_name "$ds")"
  echo "### $ds  [$nm]  (capacity_mult=$dm)"
  if [[ ! -f "$df" ]]; then echo "  (missing, skipped)"; echo; continue; fi
  hdr

  # Collect lines for each version (parallel array LINES indexed like ORDER).
  LINES=()
  ref_total=""; ref_comp=""; iters_seen=""; iters_mismatch=0
  idx=0
  for v in "${ORDER[@]}"; do
    l=""
    if l="$(run_bin "${BINS[$idx]}" "$df" "$v" "$dm" "$fs")"; then
      # Split the canonical 15-field row (read from the binary's TC_CSV file).
      IFS=',' read -r c_ver c_in c_it c_tc c_tot c_fio c_h2d c_setup c_build c_comp c_cmin c_d2h c_mem c_rep c_data <<< "$l"
      # CSV: replace the data path with the .bin filename and append the name.
      printf '%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s\n' \
        "$c_ver" "$c_in" "$c_it" "$c_tc" "$c_tot" "$c_fio" "$c_h2d" "$c_setup" \
        "$c_build" "$c_comp" "$c_cmin" "$c_d2h" "$c_mem" "$c_rep" "$ds" "$nm" >> "$OUT"
      it="$c_it"
      [[ -z "$iters_seen" ]] && iters_seen="$it"
      [[ "$it" != "$iters_seen" ]] && iters_mismatch=1
      if [[ "$v" == "reference" ]]; then ref_total="$c_tot"; ref_comp="$c_comp"; fi
    else
      l=""
      echo "  NOTE: $v produced no result row (OOM / overflow / crash)"
    fi
    LINES[$idx]="$l"
    idx=$((idx+1))
  done

  idx=0
  for v in "${ORDER[@]}"; do
    l="${LINES[$idx]}"
    idx=$((idx+1))
    if [[ -z "$l" ]]; then
      printf "%-12s %-6s %12s\n" "$v" "-" "SKIP (OOM/overflow/failed)"
      continue
    fi
    # Split the 15-field canonical row with bash `read` (no awk NF quirks). Fields:
    #  1ver 2input 3iters 4tc 5total 6fileio 7h2d 8setup 9build 10comp 11compmin 12d2h 13mem 14rep 15data
    IFS=',' read -r f_ver f_in f_it f_tc f_tot f_fio f_h2d f_setup f_build f_comp f_cmin f_d2h f_mem f_rep f_data <<< "$l"
    if [[ -z "$f_mem" || -z "$f_tot" ]]; then
      printf "%-12s BADLINE: %s\n" "$v" "$l"
      continue
    fi
    # awk used only for float arithmetic/formatting (dialect-safe BEGIN block).
    read totms compms setupms ioms buildms memmb sptot spcomp <<EOF2
$(awk -v t="$f_tot" -v c="$f_comp" -v s="$f_setup" -v fio="$f_fio" -v h="$f_h2d" \
      -v d="$f_d2h" -v b="$f_build" -v m="$f_mem" -v rt="${ref_total:-0}" -v rc="${ref_comp:-0}" 'BEGIN{
  io=fio+h+d;
  printf "%.3f %.3f %.3f %.3f %.3f %.1f %s %s",
    t*1000, c*1000, s*1000, io*1000, b*1000, m,
    (rt>0 && t>0)?sprintf("%.2fx", rt/t):"-",
    (rc>0 && c>0)?sprintf("%.2fx", rc/c):"-" }')
EOF2
    printf "%-12s %-6s %12s %9s %9s %9s %7s %9s %7s %8s %8s\n" \
      "$v" "$f_it" "$f_tc" "$totms" "$compms" "$setupms" "$ioms" "$buildms" "$memmb" "$sptot" "$spcomp"
  done

  [[ "$iters_mismatch" -eq 1 ]] && \
    echo "  WARNING: iteration counts differ across versions (expected identical)!"
  echo
done

echo "Legend: total = end-to-end (fileio+h2d+setup+build+compute+d2h);"
echo "        comp = fixpoint median; sp_* = reference(v0) / version (higher = faster)."
echo "        Full per-phase breakdown (fileio/h2d/setup/d2h) is in the CSV."
echo "CSV written to: $OUT"
