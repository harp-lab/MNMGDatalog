#!/bin/bash
# GPULog (gdlog) GPU instruction counts via Nsight Compute.
# gdlog is NON-MPI: ncu wraps ./build/TC and ./build/SG directly (no mpiexec).
# Uses the existing build/ binaries (the ones you benchmarked). No rebuild needed.
#
# Run from the gdlog repo root:
#   module load cuda/12.9.1
#   OUT=/home/ashovon/MNMGDatalog/logs/ncu TC_MODE=0 bash run_ncu_gpulog.sh
#
# TC_MODE must match the EBM mode used for your timing runs (0 = with EBM, 1 = without).
# SG takes no mode arg. Instruction count is deterministic; energy comes from power CSVs.

set -u
OUT=${OUT:-/home/ashovon/MNMGDatalog/logs/ncu}
TC_MODE=${TC_MODE:-0}
mkdir -p "$OUT/tc" "$OUT/sg"
NCU="ncu --metrics sm__inst_executed.sum --target-processes all --csv"

# paper dataset -> gdlog data/ folder (input = data/<folder>/edge.facts)
declare -A DIRTC=( [fe_body]=fe_body [vsp]=vsp_finan [sf]=SF.cedge [usroads]=usroad )
declare -A DIRSG=( [fe_body]=fe_body [loc-brightkite]=loc-Brightkite [fe_sphere]=fe-sphere [ca_hepth]=CA-HepTH )

done_already() { [ -s "$1" ] && grep -q inst_executed "$1"; }

echo "=== TC: GPULog (mode=$TC_MODE) ==="
for d in "${!DIRTC[@]}"; do
  log="$OUT/tc/${d}_GPULog.csv"; f="./data/${DIRTC[$d]}/edge.facts"
  done_already "$log" && { echo "  skip $log"; continue; }
  [ -f "$f" ] || { echo "  MISSING $f"; continue; }
  echo ">>> $d"
  $NCU --log-file "$log" ./build/TC "$f" "$TC_MODE"
done

echo "=== SG: GPULog ==="
for d in "${!DIRSG[@]}"; do
  log="$OUT/sg/${d}_GPULog.csv"; f="./data/${DIRSG[$d]}/edge.facts"
  done_already "$log" && { echo "  skip $log"; continue; }
  [ -f "$f" ] || { echo "  MISSING $f"; continue; }
  echo ">>> $d"
  $NCU --log-file "$log" ./build/SG "$f"
done

echo "Done. Combine from ~/MNMGDatalog:"
echo "  python instructions_per_joule.py logs/power_tc.csv logs/ncu/tc"
echo "  python instructions_per_joule.py logs/power_sg.csv logs/ncu/sg"
