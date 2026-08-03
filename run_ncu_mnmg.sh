#!/bin/bash
# Instruction counts (sm__inst_executed.sum) for the in-repo engines:
# MNMGDatalog (tc/sg) and INLJoin (tc_nl/sg_nl), TC + SG.
# External engines (GPULog, BJoin, cuDF) added once available on JLSE.
#
# Prereqs on JLSE:
#   module load cuda/12.9.1 nvhpc/nvhpc/25.11
#   make buildjlsetc buildjlsesg buildjlsetcnl buildjlsesgnl   # tc/sg/tc_nl/sg_nl .out (HPCX MPI)
# Resumable: re-running skips any CSV that already has counter data.
#
# ncu takes only the (deterministic) instruction count; energy comes from the
# existing power CSVs. TC and SG kept in separate dirs (shared dataset names).

set -u
mkdir -p logs/ncu/tc logs/ncu/sg

NCU="ncu --metrics sm__inst_executed.sum --target-processes all --csv"
MPI="mpiexec -n 1"
TC=./tc.out          # MNMGDatalog, from `make buildjlsetc`
SG=./sg.out          # MNMGDatalog, from `make buildjlsesg`
TC_NL=./tc_nl.out    # INLJoin,     from `make buildjlsetcnl`
SG_NL=./sg_nl.out    # INLJoin,     from `make buildjlsesgnl`
DATA=data

# External GPULog (gdlog): non-MPI ./TC ./SG, .txt input, mode 1.
GDLOG_DIR=${GDLOG_DIR:-/home/ashovon/gdlog/build}
GDATA=${GDATA:-/eagle/dist_relational_alg/arsho/mnmgJOIN/data}   # .txt dataset dir

declare -A BIN=(
  [fe_body]=data_163734
  [vsp]=vsp_finan512_scagr7-2c_rlfddd
  [sf]=data_223001
  [usroads]=data_165435
  [loc-brightkite]=data_214078
  [fe_sphere]=data_49152
  [ca_hepth]=data_51971
)

# Resumable: skip a run if its CSV already has ncu counter data.
done_already() {  # done_already <csvfile>
  [ -s "$1" ] && grep -q 'inst_executed' "$1"
}

profile() {  # profile <binary> <logfile> <datafile>   (MPI engines: MNMG/INLJoin)
  local bin=$1 log=$2 data=$3
  if done_already "$log"; then echo "    skip (already done): $log"; return; fi
  $MPI $NCU --log-file "$log" "$bin" "$data" 0 1 1
}

profile_txt() {  # profile_txt <binary> <logfile> <txtfile> <mode>   (non-MPI: GPULog/BJoin)
  local bin=$1 log=$2 data=$3 mode=$4
  if done_already "$log"; then echo "    skip (already done): $log"; return; fi
  $NCU --log-file "$log" "$bin" "$data" "$mode"
}

echo "=== TC: MNMGDatalog ==="
for d in fe_body vsp sf usroads; do
  echo ">>> $d"
  profile "$TC" "logs/ncu/tc/${d}_MNMGDatalog.csv" "$DATA/${BIN[$d]}.bin"
done

echo "=== TC: INLJoin ==="
for d in fe_body vsp sf usroads; do
  echo ">>> $d"
  profile "$TC_NL" "logs/ncu/tc/${d}_INLJoin.csv" "$DATA/${BIN[$d]}.bin"
done

echo "=== SG: MNMGDatalog ==="
for d in fe_body loc-brightkite fe_sphere ca_hepth; do
  echo ">>> $d"
  profile "$SG" "logs/ncu/sg/${d}_MNMGDatalog.csv" "$DATA/${BIN[$d]}.bin"
done

echo "=== SG: INLJoin ==="
for d in fe_body loc-brightkite fe_sphere ca_hepth; do
  echo ">>> $d"
  profile "$SG_NL" "logs/ncu/sg/${d}_INLJoin.csv" "$DATA/${BIN[$d]}.bin"
done

# GPULog (gdlog): non-MPI, .txt input, mode 1. Run from its build dir so ./TC ./SG resolve.
if [ -x "$GDLOG_DIR/TC" ]; then
  echo "=== TC: GPULog ==="
  for d in fe_body vsp sf usroads; do
    echo ">>> $d"
    profile_txt "$GDLOG_DIR/TC" "logs/ncu/tc/${d}_GPULog.csv" "$GDATA/${BIN[$d]}.txt" 1
  done
  echo "=== SG: GPULog ==="
  for d in fe_body loc-brightkite fe_sphere ca_hepth; do
    echo ">>> $d"
    profile_txt "$GDLOG_DIR/SG" "logs/ncu/sg/${d}_GPULog.csv" "$GDATA/${BIN[$d]}.txt" 1
  done
else
  echo "(skip GPULog: $GDLOG_DIR/TC not found; set GDLOG_DIR=...)"
fi

echo "Done. Combine:"
echo "  python instructions_per_joule.py logs/power_tc.csv logs/ncu/tc"
echo "  python instructions_per_joule.py logs/power_sg.csv logs/ncu/sg"
