#!/usr/bin/env bash
# Verify all four TC versions against the expected TC size AND iteration count
# from the MNMGDatalog README, on four datasets.
#
# Both must match: TC size checks the result is correct; iteration count checks
# the semi-naive fixpoint converges in the expected number of rounds (catches
# subtle bugs that leave the TC size right but the loop structure wrong).
#
# Usage: bash tests/verify.sh
# Run from the tc_benchmark directory (or anywhere; paths are resolved relative
# to this script).

set -u

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
DATA_DIR="${DATA_DIR:-$ROOT_DIR/../data}"

V0="$ROOT_DIR/v0_reference/tc_v0.out"
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

# Extract a field from the sentinel-tagged data row. The row is:
#   __TCROW__,version,input,iterations,tc,...  -> iterations=$4, tc=$5
# Matching the sentinel makes this immune to any stray stdout from the program.
get_field() { # $1=output  $2=field index (in the sentinel row)
  echo "$1" | awk -F',' '$1=="__TCROW__" {print $'"$2"'; exit}'
}

pass=0
fail=0

for label in "reference:$V0" "baseline:$V1" "cudagraph:$V2" "conditional:$V3"; do
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
    got_iter="$(get_field "$out" 4)"   # sentinel row: iterations = field 4
    got_tc="$(get_field "$out" 5)"     # sentinel row: tc = field 5
    if [[ "$got_tc" == "$exp_tc" && "$got_iter" == "$exp_iter" ]]; then
      printf "  PASS  %-16s TC=%s iters=%s\n" "$ds" "$got_tc" "$got_iter"
      pass=$((pass+1))
    else
      reason=""
      [[ "$got_tc"   != "$exp_tc"   ]] && reason="TC=${got_tc:-<none>} (exp $exp_tc)"
      [[ "$got_iter" != "$exp_iter" ]] && reason="$reason${reason:+, }iters=${got_iter:-<none>} (exp $exp_iter)"
      printf "  FAIL  %-16s %s\n" "$ds" "$reason"
      fail=$((fail+1))
    fi
  done
done

echo "-------------------------------------"
echo "Passed: $pass  Failed: $fail"
[[ "$fail" -eq 0 ]]
