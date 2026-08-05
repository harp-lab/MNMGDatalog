#!/bin/bash -l
# Full single-GPU CPU+GPU energy sweep on JLSE (A100-PCIE), all 5 engines, TC+SG.
# CPU package energy via perf (power/energy-pkg/); GPU energy via nvidia-smi.
# Multi-GPU is NOT covered (JLSE has 1 GPU) -- that stays Polaris-only.
#
# Run from ~/MNMGDatalog:
#   qsub -q gpu_a100 -t 300 -n 1 run_cpu_gpu_energy.sh    (batch, recommended)
#   or interactively: bash run_cpu_gpu_energy.sh
#
# Output: logs/cpugpu/{tc,sg}/<Dataset>_<Engine>.csv  (resumable)
set -u

if ! command -v module >/dev/null 2>&1; then
  for f in /etc/profile.d/modules.sh /etc/profile.d/lmod.sh \
           /usr/share/lmod/lmod/init/bash /usr/share/Modules/init/bash; do
    [ -f "$f" ] && source "$f" && break
  done
fi
module use /soft/modulefiles
module load cuda/12.9.1 nvhpc/nvhpc/25.11 gcc/12.2.0 2>/dev/null
CUDA129_LIB=$(ls -d /soft/compilers/cuda/cuda-12.9*/lib64 2>/dev/null | head -1)
TBB_LIB=$(ls -d "$HOME/.local/oneTBB_v2022.1.0"/lib64 "$HOME/.local/oneTBB_v2022.1.0"/lib 2>/dev/null | head -1)
export LD_LIBRARY_PATH="$CUDA129_LIB:$TBB_LIB:$HOME/miniconda3/lib:${LD_LIBRARY_PATH:-}"

# Batch shells don't source ~/.zshrc; put miniconda python3 (has cudf) on PATH.
# Otherwise `python` = system Python 2.7 and everything fails.
export PATH="$HOME/miniconda3/bin:$PATH"
PY=$HOME/miniconda3/bin/python
$PY --version

cd "${PBS_O_WORKDIR:-$HOME/MNMGDatalog}"
MNMG=$(pwd)
PROF="$PY $MNMG/power_cpu_gpu.py"
GDLOG=$HOME/gdlog
BJOIN=$HOME/batch_joins
mkdir -p logs/cpugpu/tc logs/cpugpu/sg

have() { [ -s "$1" ] && grep -q GPUEnergy "$1"; }   # resumable

# dataset -> files. .bin for MNMG/INLJoin; gdlog folder; bjoin/cudf .txt names.
declare -A BIN=( [fe_body]=data_163734 [vsp]=vsp_finan512_scagr7-2c_rlfddd [sf]=data_223001 [usroads]=data_165435
                 [loc-brightkite]=data_214078 [fe_sphere]=data_49152 [ca_hepth]=data_51971 )
declare -A GDIR=( [fe_body]=fe_body [vsp]=vsp_finan [sf]=SF.cedge [usroads]=usroad
                  [loc-brightkite]=loc-Brightkite [fe_sphere]=fe-sphere [ca_hepth]=CA-HepTH )
declare -A BTXT=( [fe_body]=fe_body [vsp]=vsp [sf]=sf [usroads]=usroads
                  [loc-brightkite]=loc-brightkite [fe_sphere]=fe_sphere [ca_hepth]=ca_hepth )
declare -A TXT=( [fe_body]=data_163734 [sf]=data_223001 [usroads]=data_165435 [vsp]=data_552020
                 [loc-brightkite]=data_214078 [fe_sphere]=data_49152 [ca_hepth]=data_51971 )

TC_SETS="fe_body vsp sf usroads"
SG_SETS="fe_body loc-brightkite fe_sphere ca_hepth"
# cuDF only where it had valid (nonzero) results:
CUDF_TC="fe_body sf"
CUDF_SG="loc-brightkite fe_sphere ca_hepth"

profile_mpi()  { local o=$1 b=$2 f=$3; have "$o" && { echo "skip $o"; return; }; $PROF "$o" mpiexec -n 1 "$b" "$f" 0 1 1; }
profile_gdlog(){ local o=$1 app=$2 f=$3 m=${4:-}; have "$o" && { echo "skip $o"; return; }; ( cd "$GDLOG" && "$PY" "$MNMG/power_cpu_gpu.py" "$o" "./build/$app" "$f" $m ); }
BJOIN_MEM=${BJOIN_MEM:-90}   # % free GPU mem for BJoin; lower (e.g. 80) if async-alloc aborts on the 40GB PCIE card
profile_bjoin(){ local o=$1 app=$2 f=$3; have "$o" && { echo "skip $o"; return; }; ( cd "$BJOIN/build" && "$PY" "$MNMG/power_cpu_gpu.py" "$o" "./$app" "$f" "$BJOIN_MEM" ); }
profile_cudf() { local o=$1 prog=$2 f=$3; have "$o" && { echo "skip $o"; return; }; $PROF "$o" "$PY" "related/cudf_programs/$prog" "$f"; }

echo "############ TC ############"
for d in $TC_SETS; do
  echo ">>> TC $d"
  profile_mpi   "$MNMG/logs/cpugpu/tc/${d}_MNMGDatalog.csv" ./tc.out    "data/${BIN[$d]}.bin"
  profile_mpi   "$MNMG/logs/cpugpu/tc/${d}_INLJoin.csv"     ./tc_nl.out "data/${BIN[$d]}.bin"
  profile_gdlog "$MNMG/logs/cpugpu/tc/${d}_GPULog.csv"      TC "./data/${GDIR[$d]}/edge.facts" 0
  profile_bjoin "$MNMG/logs/cpugpu/tc/${d}_BJoin.csv"       TC "../data/${BTXT[$d]}.txt"
done
for d in $CUDF_TC; do
  profile_cudf "$MNMG/logs/cpugpu/tc/${d}_cuDF.csv" tc.py "data/${TXT[$d]}.txt"
done

echo "############ SG ############"
for d in $SG_SETS; do
  echo ">>> SG $d"
  profile_mpi   "$MNMG/logs/cpugpu/sg/${d}_MNMGDatalog.csv" ./sg.out    "data/${BIN[$d]}.bin"
  profile_mpi   "$MNMG/logs/cpugpu/sg/${d}_INLJoin.csv"     ./sg_nl.out "data/${BIN[$d]}.bin"
  profile_gdlog "$MNMG/logs/cpugpu/sg/${d}_GPULog.csv"      SG "./data/${GDIR[$d]}/edge.facts"
  profile_bjoin "$MNMG/logs/cpugpu/sg/${d}_BJoin.csv"       SG "../data/${BTXT[$d]}.txt"
done
for d in $CUDF_SG; do
  profile_cudf "$MNMG/logs/cpugpu/sg/${d}_cuDF.csv" sg.py "data/${TXT[$d]}.txt"
done

echo "############ DONE ############"
echo "Combine: python cpu_gpu_energy_tables.py logs/cpugpu/tc  ;  ... logs/cpugpu/sg"
