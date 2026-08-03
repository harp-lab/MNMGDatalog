#!/bin/bash
# Collect total GPU instruction counts (sm__inst_executed.sum) for all five
# engines on the paper's TC and SG datasets, using Nsight Compute.
#
# Fast: ONE metric, ONE pass per run (no --set full). We take only the COUNT
# from ncu (deterministic per input), then combine offline with the existing
# energy CSVs via instructions_per_joule.py.
#
# Run on JLSE from the mnmgJOIN working dir, after:
#   module load cuda/12.9.1
#   module load nvhpc/nvhpc/25.11      # provides mpiexec (HPCX OpenMPI)
#
# MPI engines (MNMGDatalog, INLJoin) are launched via `mpiexec -n 1 ncu ...`.
# Non-MPI engines (GPULog, BJoin, cuDF) run ncu directly.
#
# Output: logs/ncu/<Dataset>_<Engine>_<app>.csv   (one row per kernel; summed later)

set -u
mkdir -p logs/ncu

NCU="ncu --metrics sm__inst_executed.sum --target-processes all --csv"
MPI="mpiexec -n 1"

# --- adjust if your JLSE binary names differ ---
TC_MNMG=./tc_interactive.out
SG_MNMG=./sg_interactive.out
TC_INL=./tc_nl_interactive.out      # NOTE: your `ls` showed tcnl_interactive.out; fix if needed
SG_INL=./sg_nl_interactive.out
GDLOG_DIR=~/gdlog/build             # GPULog: ./TC ./SG , mode 1
BJOIN_DIR=~/batch_joins/build       # BJoin:  ./TC ./SG , mode 90
DATA=data                           # .bin dir for MNMG/INLJoin and .txt for cuDF
GDATA=/eagle/dist_relational_alg/arsho/mnmgJOIN/data   # .txt dir for GPULog/BJoin

# dataset -> file stem
declare -A BIN=(
  [fe_body]=data_163734  [vsp]=vsp_finan512_scagr7-2c_rlfddd  [sf]=data_223001  [usroads]=data_165435
  [loc-brightkite]=data_214078  [fe_sphere]=data_49152  [ca_hepth]=data_51971
)
TC_SETS="fe_body vsp sf usroads"
SG_SETS="fe_body loc-brightkite fe_sphere ca_hepth"

run() {  # run <logfile> <command...>
  local log=$1; shift
  echo ">>> $log"
  "$@" --log-file "logs/ncu/$log" "${@:$#}" >/dev/null 2>&1 || echo "   (check $log)"
}

##############################  TRANSITIVE CLOSURE  ##############################
for d in $TC_SETS; do
  b=${BIN[$d]}
  # MNMGDatalog (MPI, .bin)
  $MPI $NCU --log-file "logs/ncu/${d}_MNMGDatalog.csv" $TC_MNMG $DATA/$b.bin 0 1 1
  # INLJoin (MPI, .bin)
  $MPI $NCU --log-file "logs/ncu/${d}_INLJoin.csv"     $TC_INL  $DATA/$b.bin 0 1 1
  # GPULog (no MPI, .txt, mode 1)
  ( cd "$GDLOG_DIR" && $NCU --log-file "$OLDPWD/logs/ncu/${d}_GPULog.csv" ./TC $GDATA/$b.txt 1 )
  # BJoin (no MPI, .txt, mode 90)
  ( cd "$BJOIN_DIR" && $NCU --log-file "$OLDPWD/logs/ncu/${d}_BJoin.csv"  ./TC $GDATA/$b.txt 90 )
  # cuDF (no MPI, python, .txt)
  $NCU --log-file "logs/ncu/${d}_cuDF.csv" python related/cudf_programs/tc.py $DATA/$b.txt
done

##############################  SAME GENERATION  ##############################
for d in $SG_SETS; do
  b=${BIN[$d]}
  $MPI $NCU --log-file "logs/ncu/${d}_MNMGDatalog.csv" $SG_MNMG $DATA/$b.bin 0 1 1
  $MPI $NCU --log-file "logs/ncu/${d}_INLJoin.csv"     $SG_INL  $DATA/$b.bin 0 1 1
  ( cd "$GDLOG_DIR" && $NCU --log-file "$OLDPWD/logs/ncu/${d}_GPULog.csv" ./SG $GDATA/$b.txt 1 )
  ( cd "$BJOIN_DIR" && $NCU --log-file "$OLDPWD/logs/ncu/${d}_BJoin.csv"  ./SG $GDATA/$b.txt 90 )
  $NCU --log-file "logs/ncu/${d}_cuDF.csv" python related/cudf_programs/sg.py $DATA/$b.txt
done

echo "Done. Combine with: python instructions_per_joule.py logs/power_tc.csv logs/ncu"
