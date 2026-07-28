#!/usr/bin/env bash
# Benchmark the four TC versions (reference / baseline / cudagraph / conditional).
#
# Each binary does: 1 warm-up run + N timed fixpoint runs, and reports the
# median and min fixpoint time plus the one-time graph build time. This script
# runs all four versions over a set of datasets, prints a table with speedups
# relative to the ORIGINAL reference (v0), and writes a combined CSV for plotting.
#
# Usage:
#   bash tests/benchmark.sh [REPEATS] [MULT] [dataset.bin ...]
#     REPEATS : timed runs per version (default 10)
#     MULT    : result-set capacity multiplier (default 64)
#     datasets: .bin files (default: a spread of iteration counts)
#
# Env: DATA_DIR (default ../data), OUT (default results/benchmark_<ts>.csv)

set -u

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
DATA_DIR="${DATA_DIR:-$ROOT_DIR/../data}"

REPEATS="${1:-10}"; [[ $# -ge 1 ]] && shift
MULT="${1:-64}";    [[ $# -ge 1 ]] && shift

if [[ $# -ge 1 ]]; then
  DATASETS=("$@")
else
  # Default spread. From the README TC table (iterations in parentheses):
  #   data_7035 (64), data_23874 (58), data_147892 (31),
  #   data_409593 (247), data_165435 (606)
  DATASETS=(data_7035.bin data_23874.bin data_147892.bin data_409593.bin data_165435.bin)
fi

V0="$ROOT_DIR/v0_reference/tc_v0.out"
V1="$ROOT_DIR/v1_baseline/tc_v1.out"
V2="$ROOT_DIR/v2_cudagraph/tc_v2.out"
V3="$ROOT_DIR/v3_conditional/tc_v3.out"
for b in "$V0" "$V1" "$V2" "$V3"; do
  [[ -x "$b" ]] || { echo "Missing binary: $b (run 'make all' first)"; exit 1; }
done

OUT="${OUT:-$ROOT_DIR/results/benchmark_$(date +%Y%m%d_%H%M%S).csv}"
mkdir -p "$(dirname "$OUT")"
echo "version,input,iterations,tc,median_time,min_time,build_time,repeats,dataset" > "$OUT"

# Run one version on one dataset; echoes the CSV data line (no header).
# (v0 ignores MULT but accepts the argument, so the call is uniform.)
run_one() { # $1=bin  $2=datafile
  "$1" "$2" "$MULT" "$REPEATS" 2>/dev/null | awk -F',' '/^[^#]/ {print; exit}'
}

field() { echo "$1" | cut -d',' -f"$2"; }

printf "Repeats=%s  Mult=%s  DataDir=%s\n" "$REPEATS" "$MULT" "$DATA_DIR"
printf "%-16s %6s %10s %10s %10s %10s %10s %8s %8s %8s\n" \
  "dataset" "iters" "TC" "ref(ms)" "base(ms)" "graph(ms)" "cond(ms)" \
  "sp_base" "sp_grph" "sp_cond"
printf -- "---------------------------------------------------------------------------------------------------------------\n"

for ds in "${DATASETS[@]}"; do
  df="$DATA_DIR/$ds"
  if [[ ! -f "$df" ]]; then
    printf "%-16s  (missing, skipped)\n" "$ds"
    continue
  fi

  l0="$(run_one "$V0" "$df")"
  l1="$(run_one "$V1" "$df")"
  l2="$(run_one "$V2" "$df")"
  l3="$(run_one "$V3" "$df")"

  iters="$(field "$l1" 3)"; tc="$(field "$l1" 4)"
  t0="$(field "$l0" 5)"; t1="$(field "$l1" 5)"
  t2="$(field "$l2" 5)"; t3="$(field "$l3" 5)"

  # Append rows to CSV (dataset name in last column).
  for l in "$l0" "$l1" "$l2" "$l3"; do echo "$l" | sed "s#[^,]*\$#$ds#" >> "$OUT"; done

  # ms + speedups relative to the reference v0 (guard divide-by-zero).
  read t0ms t1ms t2ms t3ms spb spg spc <<<"$(awk \
      -v r="$t0" -v a="$t1" -v b="$t2" -v c="$t3" 'BEGIN{
    rm=r*1000; am=a*1000; bm=b*1000; cm=c*1000;
    spb=(a>0)?r/a:0; spg=(b>0)?r/b:0; spc=(c>0)?r/c:0;
    printf "%.3f %.3f %.3f %.3f %.2f %.2f %.2f", rm, am, bm, cm, spb, spg, spc }')"

  printf "%-16s %6s %10s %10s %10s %10s %10s %7sx %7sx %7sx\n" \
    "$ds" "$iters" "$tc" "$t0ms" "$t1ms" "$t2ms" "$t3ms" "$spb" "$spg" "$spc"
done

printf -- "---------------------------------------------------------------------------------------------------------------\n"
echo "median fixpoint time shown (ms). sp_* = reference(v0) / version (higher = faster)."
echo "CSV written to: $OUT"
