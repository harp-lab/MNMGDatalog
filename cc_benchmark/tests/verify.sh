#!/usr/bin/env bash
# Verify the CC benchmark. For each dataset we check that the fused versions
# (v1 baseline, v2 cudagraph, v3 conditional) produce the EXACT SAME SET OF
# (node, component) pairs as the MNMGDatalog reference (v0) -- the minimum
# reachable node id per node. Each version dumps every (node,component) pair
# (CC_DUMP); we sort and diff the dumps against v0.
#
# NOTE: the number of propagation ROUNDS can legitimately differ between the
# sort-merge reference (v0) and the atomicMin fused versions (v1-v3), because
# atomicMin can pull a node's label to its final value in fewer rounds. So this
# check requires the final (node,component) SET to be identical and the result
# SIZE (num_nodes) to match; it does NOT require identical round counts.
#
# Usage: bash tests/verify.sh

set -u

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
DATA_DIR="${DATA_DIR:-$ROOT_DIR/../data}"

V0="$ROOT_DIR/v0_reference/cc_v0.out"   # MNMGDatalog reference (ground truth)
V1="$ROOT_DIR/v1_baseline/cc_v1.out"
V2="$ROOT_DIR/v2_cudagraph/cc_v2.out"
V3="$ROOT_DIR/v3_conditional/cc_v3.out"
ORDER=(reference baseline cudagraph conditional)
BINS=("$V0" "$V1" "$V2" "$V3")

# datasets to verify (small/medium so v0 sort-merge finishes quickly)
CASES=(
  "data_10.bin"
  "data_51971.bin"
  "data_49152.bin"
  "WikiTalk.bin"
)

TMP="$(mktemp -d 2>/dev/null || echo /tmp/ccverify_$$)"; mkdir -p "$TMP"
trap 'rm -rf "$TMP"' EXIT

# run <bin> <datafile> <dumpfile> -> echoes "iters cc" (empty on failure).
run_cc() {
  local rowfile="$TMP/row.csv"; rm -f "$rowfile"
  CC_NO_OUTPUT=1 CC_CSV="$rowfile" CC_DUMP="$3" "$1" "$2" 64 >/dev/null 2>&1 || return 1
  [[ -s "$rowfile" ]] || return 1
  local it cc
  it="$(cut -d',' -f3 "$rowfile")"; cc="$(cut -d',' -f4 "$rowfile")"
  [[ -n "$it" && -n "$cc" ]] || return 1
  echo "$it $cc"
}

pass=0; fail=0

for ds in "${CASES[@]}"; do
  df="$DATA_DIR/$ds"
  echo "### $ds"
  if [[ ! -f "$df" ]]; then echo "  SKIP (dataset missing)"; echo; continue; fi

  ref_sorted="$TMP/${ds}.reference.sorted"
  if [[ ! -x "$V0" ]]; then
    echo "  SKIP reference (not built) -> cannot content-check"; echo; continue
  fi
  if ! ref="$(run_cc "$V0" "$df" "$TMP/${ds}.reference.txt")"; then
    echo "  FAIL reference (no result / OOM)"; fail=$((fail+1)); echo; continue
  fi
  ref_iter="${ref% *}"; ref_cc="${ref#* }"
  sort "$TMP/${ds}.reference.txt" > "$ref_sorted"
  ntup="$(wc -l < "$ref_sorted" | tr -d ' ')"
  if [[ "$ntup" == "$ref_cc" ]]; then
    printf "  PASS  %-12s nodes=%s rounds=%s\n" "reference" "$ref_cc" "$ref_iter"
    pass=$((pass+1))
  else
    printf "  FAIL  %-12s nodes=%s dumped=%s\n" "reference" "$ref_cc" "$ntup"
    fail=$((fail+1))
  fi

  for idx in 1 2 3; do
    v="${ORDER[$idx]}"; bin="${BINS[$idx]}"
    if [[ ! -x "$bin" ]]; then printf "  SKIP  %-12s (not built)\n" "$v"; continue; fi
    if ! r="$(run_cc "$bin" "$df" "$TMP/${ds}.${v}.txt")"; then
      printf "  FAIL  %-12s (no result / OOM)\n" "$v"; fail=$((fail+1)); continue
    fi
    it="${r% *}"; cc="${r#* }"
    sort "$TMP/${ds}.${v}.txt" > "$TMP/${ds}.${v}.sorted"
    if diff -q "$ref_sorted" "$TMP/${ds}.${v}.sorted" >/dev/null 2>&1 \
       && [[ "$cc" == "$ref_cc" ]]; then
      printf "  PASS  %-12s nodes=%s rounds=%s (labels identical to MNMGDatalog)\n" "$v" "$cc" "$it"
      pass=$((pass+1))
    else
      reason=""
      if ! diff -q "$ref_sorted" "$TMP/${ds}.${v}.sorted" >/dev/null 2>&1; then
        d="$(diff "$ref_sorted" "$TMP/${ds}.${v}.sorted" | grep -c '^[<>]')"
        reason="(node,component) sets differ from MNMGDatalog ($d differing lines)"
      fi
      [[ "$cc" != "$ref_cc" ]] && \
        reason="$reason${reason:+; }size nodes=$cc (ref $ref_cc)"
      printf "  FAIL  %-12s %s\n" "$v" "$reason"
      fail=$((fail+1))
    fi
  done
  echo
done

echo "-------------------------------------"
echo "Passed: $pass  Failed: $fail"
[[ "$fail" -eq 0 ]]
