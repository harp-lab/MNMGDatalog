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
  # Default spread: increasing compute, all fit a single 40 GB A100.
  # (The billion-pair TC datasets data_165435 / data_409593 / com-dblp need
  #  >40 GB or the multi-GPU MNMG engine -- see README.)
  DATASETS=(data_7035.bin data_23874.bin data_49152.bin data_88234.bin \
            data_51971.bin data_223001.bin)
fi

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
# CSV header mirrors the binary output plus a dataset column.
echo "version,input,iterations,tc,total_time,fileio,h2d,setup,build,compute,compute_min,d2h,peak_mem_mb,repeats,dataset" > "$OUT"

TIMEOUT="${TIMEOUT:-}"
run_bin() { # $1=bin $2=datafile ; echoes CSV data line or nothing on failure
  local bin="$1" df="$2" out rc
  if [[ -n "$TIMEOUT" ]] && command -v timeout >/dev/null 2>&1; then
    out="$(timeout "$TIMEOUT" "$bin" "$df" "$MULT" "$REPEATS" 2>/dev/null)"; rc=$?
  else
    out="$("$bin" "$df" "$MULT" "$REPEATS" 2>/dev/null)"; rc=$?
  fi
  [[ $rc -eq 0 ]] || return 1
  echo "$out" | awk -F',' '/^[^#]/ {print; exit}'
}
field() { echo "$1" | cut -d',' -f"$2"; }

printf "Repeats=%s  Mult=%s  DataDir=%s\n\n" "$REPEATS" "$MULT" "$DATA_DIR"
hdr() {
  printf "%-14s %-6s %10s %10s %10s %10s %9s %8s %8s\n" \
    "version" "iters" "TC" "total(ms)" "comp(ms)" "build(ms)" "mem(MB)" "sp_tot" "sp_comp"
}

for ds in "${DATASETS[@]}"; do
  df="$DATA_DIR/$ds"
  echo "### $ds"
  if [[ ! -f "$df" ]]; then echo "  (missing, skipped)"; echo; continue; fi
  hdr

  # Collect lines for each version (parallel array LINES indexed like ORDER).
  LINES=()
  ref_total=""; ref_comp=""; iters_seen=""; iters_mismatch=0
  idx=0
  for v in "${ORDER[@]}"; do
    l=""
    if l="$(run_bin "${BINS[$idx]}" "$df")" && [[ -n "$l" ]]; then
      echo "$l" | sed "s#[^,]*\$#$ds#" >> "$OUT"
      it="$(field "$l" 3)"
      [[ -z "$iters_seen" ]] && iters_seen="$it"
      [[ "$it" != "$iters_seen" ]] && iters_mismatch=1
      if [[ "$v" == "reference" ]]; then ref_total="$(field "$l" 5)"; ref_comp="$(field "$l" 10)"; fi
    fi
    LINES[$idx]="$l"
    idx=$((idx+1))
  done

  idx=0
  for v in "${ORDER[@]}"; do
    l="${LINES[$idx]}"
    idx=$((idx+1))
    if [[ -z "$l" ]]; then
      printf "%-14s %-6s %10s\n" "$v" "-" "SKIP (OOM/overflow/failed)"
      continue
    fi
    it="$(field "$l" 3)"; tc="$(field "$l" 4)"
    tot="$(field "$l" 5)"; comp="$(field "$l" 10)"; bld="$(field "$l" 9)"; mem="$(field "$l" 13)"
    read totms compms bldms memmb sptot spcomp <<<"$(awk \
        -v t="$tot" -v c="$comp" -v b="$bld" -v m="$mem" \
        -v rt="${ref_total:-0}" -v rc="${ref_comp:-0}" 'BEGIN{
      printf "%.3f %.3f %.3f %.1f %s %s",
        t*1000, c*1000, b*1000, m,
        (rt>0 && t>0)?sprintf("%.2fx", rt/t):"-",
        (rc>0 && c>0)?sprintf("%.2fx", rc/c):"-" }')"
    printf "%-14s %-6s %10s %10s %10s %10s %9s %8s %8s\n" \
      "$v" "$it" "$tc" "$totms" "$compms" "$bldms" "$memmb" "$sptot" "$spcomp"
  done

  [[ "$iters_mismatch" -eq 1 ]] && \
    echo "  WARNING: iteration counts differ across versions (expected identical)!"
  echo
done

echo "Legend: total = end-to-end (fileio+h2d+setup+build+compute+d2h);"
echo "        comp = fixpoint median; sp_* = reference(v0) / version (higher = faster)."
echo "        Full per-phase breakdown (fileio/h2d/setup/d2h) is in the CSV."
echo "CSV written to: $OUT"
