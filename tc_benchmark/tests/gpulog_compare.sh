#!/usr/bin/env bash
# Compare our TC versions against GPUlog (gdlog, ASPLOS'25) on the SAME graphs.
#
# GPUlog is a separate third-party GPU Datalog engine (HISA range-indexed
# relations). Its TC binary reads a tab-separated text edge list and prints
# "Path counts <N>" and "TC time: <seconds>" (the fixpoint compute time, the
# analogue of our `compute` column). We feed it the identical graphs used by our
# benchmark (converting each .bin to .txt when a .txt is not already present) and
# record its result size and compute time into a CSV, so the paper can put GPUlog
# next to MNMGDatalog (v0) and the fused versions.
#
# GPUlog has no machine-readable output, so we DO parse its stdout with grep here
# (this is a third-party binary, not one of our own $*_CSV binaries).
#
# Usage:
#   GDLOG_DIR=/path/to/gdlog  bash tests/gpulog_compare.sh [REPEATS] [dataset.bin ...]
#     REPEATS : timed runs per dataset (default 3; min time kept)
# Env:
#   GDLOG_DIR : gdlog checkout (default: sibling ../../gdlog or ../../../gdlog)
#   GPU_ARCH  : passed to the gdlog build if it must be built (default sm_80)
#   EBM       : GPUlog eager-buffer-management flag, 0=on (best, default), 1=off

set -u
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
DATA_DIR="${DATA_DIR:-$ROOT_DIR/../data}"
REPEATS="${1:-3}"; [[ $# -ge 1 ]] && shift
EBM="${EBM:-0}"

# Locate gdlog.
if [[ -z "${GDLOG_DIR:-}" ]]; then
  for c in "$ROOT_DIR/../../gdlog" "$ROOT_DIR/../../../gdlog" "$HOME/gdlog"; do
    [[ -f "$c/CMakeLists.txt" ]] && GDLOG_DIR="$(cd "$c" && pwd)" && break
  done
fi
[[ -n "${GDLOG_DIR:-}" && -f "$GDLOG_DIR/CMakeLists.txt" ]] || {
  echo "gdlog not found. Set GDLOG_DIR=/path/to/gdlog"; exit 1; }
echo "GDLOG_DIR=$GDLOG_DIR"

# Build TC if missing.
TCBIN="$GDLOG_DIR/build/TC"
if [[ ! -x "$TCBIN" ]]; then
  echo "Building GPUlog (TC) ..."
  ( cd "$GDLOG_DIR" && cmake -DCMAKE_BUILD_TYPE=RelWithDebInfo \
        -DCMAKE_CUDA_ARCHITECTURES="${GPU_ARCH_NUM:-80}" -Bbuild . >/dev/null \
    && make -C build TC -j >/dev/null ) || { echo "gdlog build failed"; exit 1; }
fi
[[ -x "$TCBIN" ]] || { echo "TC binary not built at $TCBIN"; exit 1; }

if [[ $# -ge 1 ]]; then
  DATASETS=("$@")
else
  DATASETS=(data_7035.bin data_23874.bin data_223001.bin data_163734.bin \
            data_147892.bin vsp_finan512_scagr7-2c_rlfddd.bin)
fi
ds_name() { case "$1" in
  data_7035.bin) echo OL;; data_23874.bin) echo TG;; data_223001.bin) echo SF;;
  data_163734.bin) echo fe_body;; data_147892.bin) echo Gnutella31;;
  vsp_finan512_scagr7-2c_rlfddd.bin) echo vsp_finan;; *) echo "?";; esac; }

OUT="${OUT:-$ROOT_DIR/results/gpulog_$(date +%Y%m%d_%H%M%S).csv}"
mkdir -p "$(dirname "$OUT")"
echo "tool,name,dataset,rows,gpulog_tc,gpulog_time_s,repeats,ebm" > "$OUT"
TMP="$(mktemp -d 2>/dev/null || echo /tmp/gpulog_$$)"; mkdir -p "$TMP"
trap 'rm -rf "$TMP"' EXIT

printf "%-14s %10s %14s %12s\n" "dataset" "rows" "TC" "time(s)"
for ds in "${DATASETS[@]}"; do
  bin="$DATA_DIR/$ds"; nm="$(ds_name "$ds")"
  [[ -f "$bin" ]] || { printf "%-14s  (missing)\n" "$nm"; continue; }
  txt="$DATA_DIR/${ds%.bin}.txt"
  if [[ ! -f "$txt" ]]; then
    txt="$TMP/${ds%.bin}.txt"
    python3 "$SCRIPT_DIR/bin_to_txt.py" "$bin" "$txt" >/dev/null || continue
  fi
  best=""; tc=""; rows=""
  for r in $(seq 1 "$REPEATS"); do
    log="$TMP/out.txt"
    "$TCBIN" "$txt" "$EBM" >"$log" 2>&1 || { echo "  $nm: run failed"; break; }
    t="$(grep -oE 'TC time: [0-9.]+' "$log" | tail -1 | grep -oE '[0-9.]+')"
    tc="$(grep -oE 'Path counts [0-9]+' "$log" | tail -1 | grep -oE '[0-9]+')"
    rows="$(grep -oE 'Input graph rows: [0-9]+' "$log" | tail -1 | grep -oE '[0-9]+')"
    [[ -n "$t" ]] || { echo "  $nm: no TC time parsed"; break; }
    if [[ -z "$best" ]] || awk -v a="$t" -v b="$best" 'BEGIN{exit !(a<b)}'; then best="$t"; fi
  done
  [[ -n "$best" ]] || continue
  printf "%-14s %10s %14s %12s\n" "$nm" "${rows:-?}" "${tc:-?}" "$best"
  echo "gpulog,$nm,$ds,${rows:-},${tc:-},$best,$REPEATS,$EBM" >> "$OUT"
done
echo "CSV written to: $OUT"
