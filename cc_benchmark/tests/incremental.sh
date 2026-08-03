#!/usr/bin/env bash
# Streaming / incremental WCC experiment: maintain connected components under
# batches of edge insertions, vs. recomputing from scratch.
#
# Each graph is split IN-DRIVER: the first (1-f) rows are the base graph G; the
# last f rows are the insertion stream. For each fraction f we time, per fused
# version, INCREMENTAL maintenance (reuse the resident label array, reconverge)
# against full RECOMPUTE (re-init labels) on the identical cumulative graph -- so
# the only difference is incrementality. The driver verifies the maintained
# labeling equals the recomputed one every batch.
#
# WCC is monotone under insertions, so this is sound and complete; deletions and
# incremental TC/SG are out of scope (future work).
#
# Usage:
#   bash tests/incremental.sh [REPEATS] [dataset.bin ...]
# Env:
#   FRACS   : space-separated insertion fractions (default "0.001 0.01 0.05 0.10")
#   BATCHES : number of insertion batches per fraction (default 1)
#   DATA_DIR, OUT

set -u

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
DATA_DIR="${DATA_DIR:-$ROOT_DIR/../data}"

REPEATS="${1:-3}"; [[ $# -ge 1 ]] && shift
if [[ $# -ge 1 ]]; then
  DATASETS=("$@")
else
  DATASETS=(WikiTalk.bin web-Google.bin as-skitter.bin roadNet-CA.bin)
fi
FRACS="${FRACS:-0.001 0.01 0.05 0.10}"
BATCHES="${BATCHES:-1}"

ds_name() {
  case "$1" in
    data_51971.bin)   echo "CA-HepTh" ;;
    WikiTalk.bin)     echo "WikiTalk" ;;
    web-Google.bin)   echo "web-Google" ;;
    web-BerkStan.bin) echo "web-BerkStan" ;;
    as-skitter.bin)   echo "as-skitter" ;;
    roadNet-CA.bin)   echo "roadNet-CA" ;;
    roadNet-TX.bin)   echo "roadNet-TX" ;;
    com-Orkut.bin)    echo "com-Orkut" ;;
    wiki-topcats.bin) echo "wiki-topcats" ;;
    ML_Geer.bin)      echo "ML_Geer" ;;
    *)                echo "?" ;;
  esac
}

# Only the fused family supports incremental maintenance (v0 is the from-scratch
# MNMGDatalog reference, reported by the batch benchmark).
ORDER=(baseline cudagraph conditional)
BINS=(
  "$ROOT_DIR/v1_baseline/cc_v1.out"
  "$ROOT_DIR/v2_cudagraph/cc_v2.out"
  "$ROOT_DIR/v3_conditional/cc_v3.out"
)
for b in "${BINS[@]}"; do
  [[ -x "$b" ]] || { echo "Missing binary: $b (run 'make all')"; exit 1; }
done

OUT="${OUT:-$ROOT_DIR/results/incremental_$(date +%Y%m%d_%H%M%S).csv}"
mkdir -p "$(dirname "$OUT")"
echo "version,name,input_rows,num_nodes,base_rows,batch,delta_rows,cum_rows,inc_rounds,inc_ms,rec_rounds,rec_ms,speedup,correct" > "$OUT"

printf "[incremental.sh]  Repeats=%s  Batches=%s  Fracs=%s\n\n" "$REPEATS" "$BATCHES" "$FRACS"

for ds in "${DATASETS[@]}"; do
  df="$DATA_DIR/$ds"; nm="$(ds_name "$ds")"
  echo "### $ds  [$nm]"
  if [[ ! -f "$df" ]]; then echo "  (missing, skipped)"; echo; continue; fi
  for f in $FRACS; do
    idx=0
    for v in "${ORDER[@]}"; do
      bin="${BINS[$idx]}"; idx=$((idx+1))
      CC_NO_OUTPUT=1 CC_DELTA_FRAC="$f" CC_DELTA_BATCHES="$BATCHES" \
        CC_NAME="$nm" CC_INC_CSV="$OUT" \
        "$bin" "$df" 64 "$REPEATS" >/dev/null 2>&1 \
        || echo "  NOTE: $v f=$f produced no rows (OOM/crash)"
    done
    # Echo a compact per-fraction summary from the CSV (baseline row of last batch).
    row="$(grep ",${nm},.*," "$OUT" | grep "^baseline," | tail -n 1)"
    if [[ -n "$row" ]]; then
      IFS=',' read -r _v _n _ir _nn _br _b _dr _cr _iround _incms _rround _recms _sp _ok <<< "$row"
      printf "  f=%-6s  inc %8.3f ms (%s rounds)   recompute %8.3f ms (%s rounds)   speedup %sx  %s\n" \
        "$f" \
        "$(awk -v x="$_incms" 'BEGIN{printf "%.3f", x*1000}')" "$_iround" \
        "$(awk -v x="$_recms" 'BEGIN{printf "%.3f", x*1000}')" "$_rround" \
        "$_sp" "$([[ "$_ok" == "1" ]] && echo OK || echo MISMATCH)"
    fi
  done
  echo
done

echo "CSV written to: $OUT"
echo "Plot with: python3 tests/plot_incremental.py \"$OUT\""
