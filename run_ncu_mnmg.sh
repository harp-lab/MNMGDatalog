#!/bin/bash
# Instruction counts (sm__inst_executed.sum) for MNMGDatalog only, TC + SG.
# Other engines (GPULog, BJoin, cuDF) will be added once available on JLSE.
#
# Prereqs on JLSE:
#   module load cuda/12.9.1 nvhpc/nvhpc/25.11   # provides nvcc + mpiexec (HPCX)
#   make buildjlsetc buildjlsesg                # produces tc.out / sg.out (HPCX MPI)
#
# ncu takes only the (deterministic) instruction count; energy comes from the
# existing power CSVs. TC and SG kept in separate dirs (shared dataset names).

set -u
mkdir -p logs/ncu/tc logs/ncu/sg

NCU="ncu --metrics sm__inst_executed.sum --target-processes all --csv"
MPI="mpiexec -n 1"
TC=./tc.out          # from `make buildtc`  (use ./tc_interactive.out if you kept that)
SG=./sg.out          # from `make buildsg`
DATA=data

declare -A BIN=(
  [fe_body]=data_163734
  [vsp]=vsp_finan512_scagr7-2c_rlfddd
  [sf]=data_223001
  [usroads]=data_165435
  [loc-brightkite]=data_214078
  [fe_sphere]=data_49152
  [ca_hepth]=data_51971
)

echo "=== TC: MNMGDatalog ==="
for d in fe_body vsp sf usroads; do
  echo ">>> $d"
  $MPI $NCU --log-file "logs/ncu/tc/${d}_MNMGDatalog.csv" $TC $DATA/${BIN[$d]}.bin 0 1 1
done

echo "=== SG: MNMGDatalog ==="
for d in fe_body loc-brightkite fe_sphere ca_hepth; do
  echo ">>> $d"
  $MPI $NCU --log-file "logs/ncu/sg/${d}_MNMGDatalog.csv" $SG $DATA/${BIN[$d]}.bin 0 1 1
done

echo "Done. Combine:"
echo "  python instructions_per_joule.py logs/power_tc.csv logs/ncu/tc"
echo "  python instructions_per_joule.py logs/power_sg.csv logs/ncu/sg"
