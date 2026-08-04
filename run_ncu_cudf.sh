#!/bin/bash
# cuDF GPU instruction counts via Nsight Compute.
# cuDF is NON-MPI (RAPIDS Python); ncu wraps the python process directly.
# Only datasets with nonzero cuDF energy in the paper are profiled (others were
# OOM/timeout): TC {fe_body, sf}; SG {loc-brightkite, fe_sphere, ca_hepth}.
#
# Prereqs on JLSE: a RAPIDS/cudf env active (e.g. conda rapids-XX.YY) so
# `python -c "import cudf"` works, plus cuda module for ncu.
# Run from ~/MNMGDatalog:
#   OUT=~/MNMGDatalog/logs/ncu bash run_ncu_cudf.sh
#
# NOTE: cudf tc.py/sg.py derive row count from digits in the filename, so keep
# the numeric data_<N>.txt names. Instruction count is deterministic; energy
# comes from logs/power_{tc,sg}.csv.

set -u
OUT=${OUT:-$HOME/MNMGDatalog/logs/ncu}
PY=${PY:-python}
mkdir -p "$OUT/tc" "$OUT/sg"
NCU="ncu --metrics sm__inst_executed.sum --target-processes all --csv"

done_already() { [ -s "$1" ] && grep -q inst_executed "$1"; }

# dataset -> .txt file (must match the energy runs; keep numeric names)
declare -A TC=( [fe_body]=data_163734.txt [sf]=data_223001.txt )
declare -A SG=( [loc-brightkite]=data_214078.txt [fe_sphere]=data_49152.txt [ca_hepth]=data_51971.txt )

echo "=== TC: cuDF ==="
for d in "${!TC[@]}"; do
  log="$OUT/tc/${d}_cuDF.csv"; f="data/${TC[$d]}"
  done_already "$log" && { echo "  skip $log"; continue; }
  [ -f "$f" ] || { echo "  MISSING $f"; continue; }
  echo ">>> $(date +%T) TC $d"
  $NCU --log-file "$log" $PY related/cudf_programs/tc.py "$f"
done

echo "=== SG: cuDF ==="
for d in "${!SG[@]}"; do
  log="$OUT/sg/${d}_cuDF.csv"; f="data/${SG[$d]}"
  done_already "$log" && { echo "  skip $log"; continue; }
  [ -f "$f" ] || { echo "  MISSING $f"; continue; }
  echo ">>> $(date +%T) SG $d"
  $NCU --log-file "$log" $PY related/cudf_programs/sg.py "$f"
done

echo "Done. Combine:"
echo "  python instructions_per_joule.py logs/power_tc.csv logs/ncu/tc"
echo "  python instructions_per_joule.py logs/power_sg.csv logs/ncu/sg"
