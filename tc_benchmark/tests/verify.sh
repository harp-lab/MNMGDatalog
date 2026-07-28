#!/usr/bin/env bash
# Verify all three TC versions against the expected TC sizes from the
# MNMGDatalog README, on four datasets.
#
# Usage: bash tests/verify.sh
# Run from the tc_benchmark directory (or anywhere; paths are resolved relative
# to this script).

set -u

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
DATA_DIR="${DATA_DIR:-$ROOT_DIR/../data}"

V1="$ROOT_DIR/v1_baseline/tc_v1.out"
V2="$ROOT_DIR/v2_cudagraph/tc_v2.out"
V3="$ROOT_DIR/v3_conditional/tc_v3.out"

# dataset:expected_iterations:expected_tc
CASES=(
  "hipc_2019.bin:3:9"        # Extra small
  "data_10.bin:3:18"         # Small
  "data_7035.bin:64:146120"  # OL.cedge
  "data_23874.bin:58:481121" # TG.cedge
)

# Extract the TC (field 4) from the program's CSV output line.
get_field() { # $1=output  $2=field index
  echo "$1" | awk -F',' '/^[^#]/ {print $'"$2"'; exit}'
}

pass=0
fail=0

for label in "baseline:$V1" "cudagraph:$V2" "conditional:$V3"; do
  name="${label%%:*}"
  bin="${label##*:}"
  if [[ ! -x "$bin" ]]; then
    echo "SKIP  $name  (binary not built: $bin)"
    continue
  fi
  echo "=== Version: $name ==="
  for c in "${CASES[@]}"; do
    ds="${c%%:*}"; rest="${c#*:}"
    exp_iter="${rest%%:*}"; exp_tc="${rest##*:}"
    df="$DATA_DIR/$ds"
    if [[ ! -f "$df" ]]; then
      echo "  SKIP  $ds (missing)"
      continue
    fi
    out="$("$bin" "$df" 64 2>/dev/null)"
    got_tc="$(get_field "$out" 4)"
    got_iter="$(get_field "$out" 3)"
    if [[ "$got_tc" == "$exp_tc" ]]; then
      note=""
      [[ "$got_iter" != "$exp_iter" ]] && note="  (iters=$got_iter, expected $exp_iter)"
      printf "  PASS  %-16s TC=%s%s\n" "$ds" "$got_tc" "$note"
      pass=$((pass+1))
    else
      printf "  FAIL  %-16s TC=%s expected %s\n" "$ds" "${got_tc:-<none>}" "$exp_tc"
      fail=$((fail+1))
    fi
  done
done

echo "-------------------------------------"
echo "Passed: $pass  Failed: $fail"
[[ "$fail" -eq 0 ]]
