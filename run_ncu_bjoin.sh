#!/bin/bash
# BJoin (batch_joins) GPU instruction counts via Nsight Compute.
# Non-MPI: ncu wraps ./build/TC and ./build/SG directly. Arg 90 = % free GPU mem.
# Input = tab-separated 2-col edge list (reuse MNMG graphs; see BJOIN_JLSE_SETUP.md).
#
# Run from anywhere:
#   BJOIN_HOME=~/batch_joins OUT=~/MNMGDatalog/logs/ncu bash run_ncu_bjoin.sh
#
# Instruction count is deterministic; energy comes from logs/power_{tc,sg}.csv.

set -u
BJOIN_HOME=${BJOIN_HOME:-$HOME/batch_joins}
OUT=${OUT:-$HOME/MNMGDatalog/logs/ncu}
MEM=${MEM:-90}
mkdir -p "$OUT/tc" "$OUT/sg"
NCU="ncu --metrics sm__inst_executed.sum --target-processes all --csv"

cd "$BJOIN_HOME/build" || { echo "no $BJOIN_HOME/build (build TC/SG first)"; exit 1; }

# dataset -> input file under $BJOIN_HOME/build/data (see setup step 4)
declare -A TC=( [fe_body]=fe_body.txt [vsp]=vsp.txt [sf]=sf.txt [usroads]=usroads.txt )
declare -A SG=( [fe_body]=fe_body.txt [loc-brightkite]=loc-brightkite.txt [fe_sphere]=fe_sphere.txt [ca_hepth]=ca_hepth.txt )

done_already() { [ -s "$1" ] && grep -q inst_executed "$1"; }

echo "=== TC: BJoin ==="
for d in "${!TC[@]}"; do
  log="$OUT/tc/${d}_BJoin.csv"; f="../data/${TC[$d]}"
  done_already "$log" && { echo "  skip $log"; continue; }
  [ -f "$f" ] || { echo "  MISSING $f"; continue; }
  echo ">>> $(date +%T) TC $d"
  $NCU --log-file "$log" ./TC "$f" "$MEM"
done

echo "=== SG: BJoin ==="
for d in "${!SG[@]}"; do
  log="$OUT/sg/${d}_BJoin.csv"; f="../data/${SG[$d]}"
  done_already "$log" && { echo "  skip $log"; continue; }
  [ -f "$f" ] || { echo "  MISSING $f"; continue; }
  echo ">>> $(date +%T) SG $d"
  $NCU --log-file "$log" ./SG "$f" "$MEM"
done

echo "Done. Combine from ~/MNMGDatalog:"
echo "  python instructions_per_joule.py logs/power_tc.csv logs/ncu/tc"
echo "  python instructions_per_joule.py logs/power_sg.csv logs/ncu/sg"
