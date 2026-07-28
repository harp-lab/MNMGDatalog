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

TIMEOUT="${TIMEOUT:-}"
# Run a version and return the LAST data line that looks like a valid 15-field
# CSV row whose first field matches the expected version name. Returns non-zero
# if the process failed or produced no valid row. Any stray/malformed stdout is
# thus ignored rather than mis-parsed into "72"-style garbage.
run_bin() { # $1=bin $2=datafile $3=expected_version $4=mult $5=frontier_slots
  local bin="$1" df="$2" want="$3" dm="$4" fs="$5" out rc line
  if [[ -n "$TIMEOUT" ]] && command -v timeout >/dev/null 2>&1; then
    out="$(timeout "$TIMEOUT" "$bin" "$df" "$dm" "$REPEATS" "$fs" 2>/dev/null)"; rc=$?
  else
    out="$("$bin" "$df" "$dm" "$REPEATS" "$fs" 2>/dev/null)"; rc=$?
  fi
  if [[ "${BENCH_DEBUG:-0}" == "1" ]]; then
    echo "---- DEBUG raw stdout of $want (rc=$rc) ----" >&2
    echo "$out" >&2
    echo "--------------------------------------------" >&2
  fi
  # Pick the sentinel-tagged data row for this version, then strip the sentinel
  # so the rest of the script sees the canonical 15-field line (version=$1...).
  # Stray stdout (e.g. a bare "72") can never carry the sentinel, so it's ignored.
  # We look for the row regardless of exit code, so a valid result printed just
  # before a teardown crash is still used; only a truly missing row fails.
  line="$(echo "$out" | awk -F',' -v OFS=',' -v w="$want" '
    $1=="__TCROW__" && $2==w { $1=""; sub(/^,/,""); ln=$0 } END{ if(ln!="") print ln }')"
  [[ -n "$line" ]] || { echo "RAW>>${out}<<RAW"; return 2; }
  echo "$line"
}

BENCH_SCRIPT_VERSION="v3-robust-parser"
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
    l=""; raw=""
    if l="$(run_bin "${BINS[$idx]}" "$df" "$v" "$dm" "$fs")"; then
      # Replace the binary's last field (data path) with "file,name" for the CSV.
      echo "$l" | awk -F',' -v OFS=',' -v ds="$ds" -v nm="$nm" '{$NF=ds; print $0","nm}' >> "$OUT"
      # Extract iters (f3) and ref timings via awk (safe on any input).
      it="$(printf '%s\n' "$l" | awk -F',' 'NF==15{print $3}')"
      [[ -z "$iters_seen" ]] && iters_seen="$it"
      [[ "$it" != "$iters_seen" ]] && iters_mismatch=1
      if [[ "$v" == "reference" ]]; then
        ref_total="$(printf '%s\n' "$l" | awk -F',' 'NF==15{print $5}')"
        ref_comp="$(printf '%s\n' "$l" | awk -F',' 'NF==15{print $10}')"
      fi
    else
      [[ "$l" == RAW\>\>* ]] && raw="${l#RAW>>}" && raw="${raw%<<RAW}"
      l=""
      [[ -n "$raw" ]] && echo "  NOTE: $v produced no valid CSV row; raw stdout was:" \
                       && echo "        ${raw//$'\n'/ | }"
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
    # Parse + format the whole row in one awk pass. CSV fields:
    # 1ver 2input 3iters 4tc 5total 6fileio 7h2d 8setup 9build 10comp 11compmin 12d2h 13mem 14rep 15data
    printf '%s\n' "$l" | awk -F',' -v v="$v" -v rt="${ref_total:-0}" -v rc="${ref_comp:-0}" '
      NF!=15 { printf "%-12s BADLINE: %s\n", v, $0; next }
      {
        iters=$3; tc=$4; total=$5; setup=$8; build=$9; comp=$10; mem=$13;
        io=$6+$7+$12;
        sptot=(rt>0 && total>0)?sprintf("%.2fx", rt/total):"-";
        spcomp=(rc>0 && comp>0)?sprintf("%.2fx", rc/comp):"-";
        printf "%-12s %-6s %12s %9.3f %9.3f %9.3f %7.3f %9.3f %7.1f %8s %8s\n",
          v, iters, tc, total*1000, comp*1000, setup*1000, io*1000, build*1000, mem, sptot, spcomp;
      }'
  done

  [[ "$iters_mismatch" -eq 1 ]] && \
    echo "  WARNING: iteration counts differ across versions (expected identical)!"
  echo
done

echo "Legend: total = end-to-end (fileio+h2d+setup+build+compute+d2h);"
echo "        comp = fixpoint median; sp_* = reference(v0) / version (higher = faster)."
echo "        Full per-phase breakdown (fileio/h2d/setup/d2h) is in the CSV."
echo "CSV written to: $OUT"
