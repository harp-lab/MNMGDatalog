#!/usr/bin/env bash
# Verify the TC benchmark on four datasets. For each dataset we check:
#
#   1. Correctness of the reference: MNMGDatalog (v0) matches the expected TC size
#      and iteration count from the MNMGDatalog README.
#   2. Content equivalence: the fused versions (v1 baseline, v2 cudagraph,
#      v3 conditional) produce the EXACT SAME SET OF TC TUPLES as MNMGDatalog (v0),
#      not merely the same count. Each version dumps every discovered (src,dst)
#      pair (TC_DUMP); we sort and diff the dumps against v0.
#
# A fused version passes a dataset only if its tuple dump is byte-identical to
# v0's (after sorting) AND its size/iterations match the expected values.
#
# Usage: bash tests/verify.sh   (run from anywhere; paths resolved to this script)

set -u

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
DATA_DIR="${DATA_DIR:-$ROOT_DIR/../data}"

V0="$ROOT_DIR/v0_reference/tc_v0.out"   # MNMGDatalog reference (ground truth)
V1="$ROOT_DIR/v1_baseline/tc_v1.out"
V2="$ROOT_DIR/v2_cudagraph/tc_v2.out"
V3="$ROOT_DIR/v3_conditional/tc_v3.out"
ORDER=(reference baseline cudagraph conditional)
BINS=("$V0" "$V1" "$V2" "$V3")

# dataset:expected_iterations:expected_tc  (from the MNMGDatalog README)
CASES=(
  "hipc_2019.bin:3:9"        # Extra small
  "data_10.bin:3:18"         # Small
  "data_7035.bin:64:146120"  # OL.cedge
  "data_23874.bin:58:481121" # TG.cedge
)

TMP="$(mktemp -d 2>/dev/null || echo /tmp/tcverify_$$)"; mkdir -p "$TMP"
trap 'rm -rf "$TMP"' EXIT

get_field() { echo "$1" | awk -F',' '$1=="__TCROW__" {print $'"$2"'; exit}'; }

# run <bin> <datafile> <dumpfile> -> echoes "iters tc" (empty on failure).
# TC_NO_OUTPUT=1 avoids writing the default <input>_*_tc.bin next to the dataset;
# verification uses the text TC_DUMP instead.
run_tc() {
  local out
  out="$(TC_NO_OUTPUT=1 TC_DUMP="$3" "$1" "$2" 64 2>/dev/null)" || return 1
  local it tc; it="$(get_field "$out" 4)"; tc="$(get_field "$out" 5)"
  [[ -n "$it" && -n "$tc" ]] || return 1
  echo "$it $tc"
}

pass=0; fail=0

for c in "${CASES[@]}"; do
  ds="${c%%:*}"; rest="${c#*:}"
  exp_iter="${rest%%:*}"; exp_tc="${rest##*:}"
  df="$DATA_DIR/$ds"
  echo "### $ds  (expected: TC=$exp_tc iters=$exp_iter)"
  if [[ ! -f "$df" ]]; then echo "  SKIP (dataset missing)"; echo; continue; fi

  # --- reference (v0) : anchor + ground-truth tuple dump ---
  ref_sorted="$TMP/${ds}.reference.sorted"
  if [[ ! -x "$V0" ]]; then
    echo "  SKIP reference (not built) -> cannot content-check"; echo; continue
  fi
  if ! ref="$(run_tc "$V0" "$df" "$TMP/${ds}.reference.txt")"; then
    echo "  FAIL reference (no result / OOM)"; fail=$((fail+1)); echo; continue
  fi
  ref_iter="${ref% *}"; ref_tc="${ref#* }"
  sort "$TMP/${ds}.reference.txt" > "$ref_sorted"
  ntup="$(wc -l < "$ref_sorted" | tr -d ' ')"
  # reference correctness (size + iterations + dumped tuple count)
  if [[ "$ref_tc" == "$exp_tc" && "$ref_iter" == "$exp_iter" && "$ntup" == "$exp_tc" ]]; then
    printf "  PASS  %-12s TC=%s iters=%s (%s tuples)\n" "reference" "$ref_tc" "$ref_iter" "$ntup"
    pass=$((pass+1))
  else
    printf "  FAIL  %-12s TC=%s iters=%s dumped=%s (exp TC=%s iters=%s)\n" \
      "reference" "$ref_tc" "$ref_iter" "$ntup" "$exp_tc" "$exp_iter"
    fail=$((fail+1))
  fi

  # --- fused versions : must produce IDENTICAL tuples to v0 ---
  for idx in 1 2 3; do
    v="${ORDER[$idx]}"; bin="${BINS[$idx]}"
    if [[ ! -x "$bin" ]]; then printf "  SKIP  %-12s (not built)\n" "$v"; continue; fi
    if ! r="$(run_tc "$bin" "$df" "$TMP/${ds}.${v}.txt")"; then
      printf "  FAIL  %-12s (no result / OOM)\n" "$v"; fail=$((fail+1)); continue
    fi
    it="${r% *}"; tc="${r#* }"
    sort "$TMP/${ds}.${v}.txt" > "$TMP/${ds}.${v}.sorted"
    if diff -q "$ref_sorted" "$TMP/${ds}.${v}.sorted" >/dev/null 2>&1 \
       && [[ "$tc" == "$exp_tc" && "$it" == "$exp_iter" ]]; then
      printf "  PASS  %-12s TC=%s iters=%s (tuples identical to MNMGDatalog)\n" "$v" "$tc" "$it"
      pass=$((pass+1))
    else
      reason=""
      if ! diff -q "$ref_sorted" "$TMP/${ds}.${v}.sorted" >/dev/null 2>&1; then
        d="$(diff "$ref_sorted" "$TMP/${ds}.${v}.sorted" | grep -c '^[<>]')"
        reason="tuple sets differ from MNMGDatalog ($d differing lines)"
      fi
      [[ "$tc" != "$exp_tc" || "$it" != "$exp_iter" ]] && \
        reason="$reason${reason:+; }size/iters TC=$tc iters=$it (exp TC=$exp_tc iters=$exp_iter)"
      printf "  FAIL  %-12s %s\n" "$v" "$reason"
      fail=$((fail+1))
    fi
  done
  echo
done

echo "-------------------------------------"
echo "Passed: $pass  Failed: $fail"
[[ "$fail" -eq 0 ]]
