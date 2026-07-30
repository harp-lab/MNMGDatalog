#!/usr/bin/env bash
# Benchmark the four CC versions (reference / baseline / cudagraph / conditional).
#
# Each binary does 1 warm-up + N timed fixpoint runs and prints a full breakdown:
#   TotalTime = FileIO + H2D + Setup + Build + Compute(median) + D2H
# plus PeakMemMB. This script runs all four versions over a set of datasets,
# prints per-version rows with speedups relative to the reference (v0), and writes
# the combined CSV under results/ for plotting.
#
# Usage:
#   bash tests/benchmark.sh [REPEATS] [MULT] [dataset.bin ...]
#     REPEATS : timed runs per version (default 10)
#     MULT    : accepted for CLI symmetry with TC/SG; unused by CC (dense labels)
#     datasets: .bin files (default: weakly-connected-components graphs on disk)
#
# Env: DATA_DIR (default ../data), OUT (default results/benchmark_<ts>.csv),
#      TIMEOUT (seconds per run), BENCH_KEEP_OUTPUT (1 = write _cc.bin files).
#
# The paper's target graphs com-Orkut, wiki-topcats and ML_Geer are not shipped
# in ../data; drop their .bin files there and pass them explicitly, e.g.:
#   bash tests/benchmark.sh 3 4096 com-Orkut.bin wiki-topcats.bin

set -u

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
DATA_DIR="${DATA_DIR:-$ROOT_DIR/../data}"

REPEATS="${1:-10}"; [[ $# -ge 1 ]] && shift
MULT="${1:-4096}";  [[ $# -ge 1 ]] && shift

if [[ $# -ge 1 ]]; then
  DATASETS=("$@")
else
  # Default: real WCC graphs present in ../data, increasing size / compute.
  DATASETS=(data_51971.bin WikiTalk.bin web-Google.bin as-skitter.bin roadNet-CA.bin)
fi

# CC uses a dense label array (no result-set capacity), so mult is unused; kept
# for CLI symmetry. Frontier unused too.
ds_mult()     { echo "$MULT"; }
ds_frontier() { echo 0; }
# Human-readable dataset name for a .bin filename.
ds_name() {
  case "$1" in
    data_10.bin)          echo "Small" ;;
    data_51971.bin)       echo "CA-HepTh" ;;
    data_49152.bin)       echo "fe_sphere" ;;
    data_214078.bin)      echo "loc-Brightkite" ;;
    data_163734.bin)      echo "fe_body" ;;
    WikiTalk.bin)         echo "WikiTalk" ;;
    web-Google.bin)       echo "web-Google" ;;
    web-BerkStan.bin)     echo "web-BerkStan" ;;
    web-Stanford.bin)     echo "web-Stanford" ;;
    as-skitter.bin)       echo "as-skitter" ;;
    roadNet-CA.bin)       echo "roadNet-CA" ;;
    roadNet-TX.bin)       echo "roadNet-TX" ;;
    flickr.bin)           echo "flickr" ;;
    com-Orkut.bin)        echo "com-Orkut" ;;
    wiki-topcats.bin)     echo "wiki-topcats" ;;
    ML_Geer.bin)          echo "ML_Geer" ;;
    *)                    echo "?" ;;
  esac
}

ORDER=(reference baseline cudagraph conditional)
BINS=(
  "$ROOT_DIR/v0_reference/cc_v0.out"
  "$ROOT_DIR/v1_baseline/cc_v1.out"
  "$ROOT_DIR/v2_cudagraph/cc_v2.out"
  "$ROOT_DIR/v3_conditional/cc_v3.out"
)
for b in "${BINS[@]}"; do
  [[ -x "$b" ]] || { echo "Missing binary: $b (run 'make all')"; exit 1; }
done

OUT="${OUT:-$ROOT_DIR/results/benchmark_$(date +%Y%m%d_%H%M%S).csv}"
mkdir -p "$(dirname "$OUT")"
echo "version,input,iterations,tc,total_time,fileio,h2d,setup,build,compute,compute_min,d2h,peak_mem_mb,repeats,dataset,name" > "$OUT"

TMP="$(mktemp -d 2>/dev/null || echo /tmp/ccbench_$$)"; mkdir -p "$TMP"
trap 'rm -rf "$TMP"' EXIT

TIMEOUT="${TIMEOUT:-}"
if [[ "${BENCH_KEEP_OUTPUT:-0}" == "1" ]]; then NOOUT=""; else NOOUT="1"; fi
run_bin() { # $1=bin $2=datafile $3=expected_version $4=mult $5=frontier_slots
  local bin="$1" df="$2" want="$3" dm="$4" fs="$5" rowfile line
  rowfile="$TMP/row.csv"; rm -f "$rowfile"
  if [[ -n "$TIMEOUT" ]] && command -v timeout >/dev/null 2>&1; then
    CC_NO_OUTPUT="$NOOUT" CC_CSV="$rowfile" timeout "$TIMEOUT" "$bin" "$df" "$dm" "$REPEATS" "$fs" >/dev/null 2>&1
  else
    CC_NO_OUTPUT="$NOOUT" CC_CSV="$rowfile" "$bin" "$df" "$dm" "$REPEATS" "$fs" >/dev/null 2>&1
  fi
  [[ -s "$rowfile" ]] || return 2
  line="$(head -n 1 "$rowfile")"
  case "$line" in "$want",*) echo "$line" ;; *) return 2 ;; esac
}

BENCH_SCRIPT_VERSION="v1-cc"
printf "[benchmark.sh %s]  Repeats=%s  DataDir=%s\n\n" \
  "$BENCH_SCRIPT_VERSION" "$REPEATS" "$DATA_DIR"
hdr() {
  printf "%-12s %-6s %12s %9s %9s %9s %7s %9s %7s %8s %8s\n" \
    "version" "rounds" "nodes" "total(ms)" "comp(ms)" "setup(ms)" "io(ms)" "build(ms)" \
    "mem(MB)" "sp_tot" "sp_comp"
}

for ds in "${DATASETS[@]}"; do
  df="$DATA_DIR/$ds"
  dm="$(ds_mult "$ds")"; fs="$(ds_frontier "$ds")"
  nm="$(ds_name "$ds")"
  echo "### $ds  [$nm]"
  if [[ ! -f "$df" ]]; then echo "  (missing, skipped)"; echo; continue; fi
  hdr

  LINES=()
  ref_total=""; ref_comp=""
  idx=0
  for v in "${ORDER[@]}"; do
    l=""
    if l="$(run_bin "${BINS[$idx]}" "$df" "$v" "$dm" "$fs")"; then
      IFS=',' read -r c_ver c_in c_it c_tc c_tot c_fio c_h2d c_setup c_build c_comp c_cmin c_d2h c_mem c_rep c_data <<< "$l"
      printf '%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s\n' \
        "$c_ver" "$c_in" "$c_it" "$c_tc" "$c_tot" "$c_fio" "$c_h2d" "$c_setup" \
        "$c_build" "$c_comp" "$c_cmin" "$c_d2h" "$c_mem" "$c_rep" "$ds" "$nm" >> "$OUT"
      if [[ "$v" == "reference" ]]; then ref_total="$c_tot"; ref_comp="$c_comp"; fi
    else
      l=""
      echo "  NOTE: $v produced no result row (OOM / crash)"
    fi
    LINES[$idx]="$l"
    idx=$((idx+1))
  done

  idx=0
  for v in "${ORDER[@]}"; do
    l="${LINES[$idx]}"
    idx=$((idx+1))
    if [[ -z "$l" ]]; then
      printf "%-12s %-6s %12s\n" "$v" "-" "SKIP (OOM/failed)"
      continue
    fi
    IFS=',' read -r f_ver f_in f_it f_tc f_tot f_fio f_h2d f_setup f_build f_comp f_cmin f_d2h f_mem f_rep f_data <<< "$l"
    if [[ -z "$f_mem" || -z "$f_tot" ]]; then
      printf "%-12s BADLINE: %s\n" "$v" "$l"
      continue
    fi
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
  echo
done

echo "Legend: total = end-to-end (fileio+h2d+setup+build+compute+d2h);"
echo "        comp = fixpoint median; sp_* = reference(v0) / version (higher = faster)."
echo "        rounds may differ between v0 and v1-v3 (atomicMin converges faster);"
echo "        the final (node,component) set is identical (see 'make test')."
echo "CSV written to: $OUT"
