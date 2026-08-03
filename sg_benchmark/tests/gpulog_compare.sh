#!/usr/bin/env bash
# Compare our SG versions against GPUlog (gdlog, ASPLOS'25) on the SAME graphs.
#
# GPUlog's SG binary reads a tab-separated text edge list and prints
# "sg counts <N>" and "sg time: <seconds>" (its fixpoint compute time). We feed it
# the identical graphs used by our benchmark (converting each .bin to .txt when a
# .txt is not already present) and record its result size and compute time so the
# paper can place GPUlog next to MNMGDatalog (v0) and the fused versions.
#
# GPUlog has no machine-readable output, so we parse its stdout with grep (a
# third-party binary, not one of our own $*_CSV binaries).
#
# Usage:
#   GDLOG_DIR=/path/to/gdlog  bash tests/gpulog_compare.sh [REPEATS] [dataset.bin ...]
# Env: GDLOG_DIR (default sibling gdlog), GPU_ARCH_NUM (default 80).

set -u
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
DATA_DIR="${DATA_DIR:-$ROOT_DIR/../data}"
REPEATS="${1:-3}"; [[ $# -ge 1 ]] && shift

if [[ -z "${GDLOG_DIR:-}" ]]; then
  for c in "$ROOT_DIR/../../gdlog" "$ROOT_DIR/../../../gdlog" "$HOME/gdlog"; do
    [[ -f "$c/CMakeLists.txt" ]] && GDLOG_DIR="$(cd "$c" && pwd)" && break
  done
fi
[[ -n "${GDLOG_DIR:-}" && -f "$GDLOG_DIR/CMakeLists.txt" ]] || {
  echo "gdlog not found. Set GDLOG_DIR=/path/to/gdlog"; exit 1; }
echo "GDLOG_DIR=$GDLOG_DIR"

SGBIN="$GDLOG_DIR/build/SG"
if [[ ! -x "$SGBIN" ]]; then
  echo "Building GPUlog (SG) ..."
  ( cd "$GDLOG_DIR" && cmake -DCMAKE_BUILD_TYPE=RelWithDebInfo \
        -DCMAKE_CUDA_ARCHITECTURES="${GPU_ARCH_NUM:-80}" -Bbuild . >/dev/null \
    && make -C build SG -j >/dev/null ) || { echo "gdlog build failed"; exit 1; }
fi
[[ -x "$SGBIN" ]] || { echo "SG binary not built at $SGBIN"; exit 1; }

if [[ $# -ge 1 ]]; then
  DATASETS=("$@")
else
  DATASETS=(data_51971.bin data_49152.bin data_214078.bin data_163734.bin)
fi
ds_name() { case "$1" in
  data_51971.bin) echo CA-HepTh;; data_49152.bin) echo fe_sphere;;
  data_214078.bin) echo loc-Brightkite;; data_163734.bin) echo fe_body;;
  *) echo "?";; esac; }

OUT="${OUT:-$ROOT_DIR/results/gpulog_$(date +%Y%m%d_%H%M%S).csv}"
mkdir -p "$(dirname "$OUT")"
echo "tool,name,dataset,rows,gpulog_sg,gpulog_time_s,repeats" > "$OUT"
TMP="$(mktemp -d 2>/dev/null || echo /tmp/gpulogsg_$$)"; mkdir -p "$TMP"
trap 'rm -rf "$TMP"' EXIT

printf "%-16s %10s %14s %12s\n" "dataset" "rows" "SG" "time(s)"
for ds in "${DATASETS[@]}"; do
  bin="$DATA_DIR/$ds"; nm="$(ds_name "$ds")"
  [[ -f "$bin" ]] || { printf "%-16s  (missing)\n" "$nm"; continue; }
  txt="$DATA_DIR/${ds%.bin}.txt"
  if [[ ! -f "$txt" ]]; then
    txt="$TMP/${ds%.bin}.txt"
    python3 "$SCRIPT_DIR/bin_to_txt.py" "$bin" "$txt" >/dev/null || continue
  fi
  best=""; sg=""; rows=""
  for r in $(seq 1 "$REPEATS"); do
    log="$TMP/out.txt"
    "$SGBIN" "$txt" >"$log" 2>&1 || { echo "  $nm: run failed"; break; }
    t="$(grep -oE 'sg time: [0-9.]+' "$log" | tail -1 | grep -oE '[0-9.]+')"
    sg="$(grep -oE 'sg counts [0-9]+' "$log" | tail -1 | grep -oE '[0-9]+')"
    rows="$(grep -oE 'Input graph rows: [0-9]+' "$log" | tail -1 | grep -oE '[0-9]+')"
    [[ -n "$t" ]] || { echo "  $nm: no sg time parsed"; break; }
    if [[ -z "$best" ]] || awk -v a="$t" -v b="$best" 'BEGIN{exit !(a<b)}'; then best="$t"; fi
  done
  [[ -n "$best" ]] || continue
  printf "%-16s %10s %14s %12s\n" "$nm" "${rows:-?}" "${sg:-?}" "$best"
  echo "gpulog,$nm,$ds,${rows:-},${sg:-},$best,$REPEATS" >> "$OUT"
done
echo "CSV written to: $OUT"
