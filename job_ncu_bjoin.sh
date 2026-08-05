#!/bin/bash -l
# JLSE batch job: BJoin (batch_joins) GPU instruction counts via Nsight Compute.
# Non-MPI; ncu wraps ./build/TC ./build/SG directly. ncu replay is slow -> long wall.
#
# Submit from ~/MNMGDatalog:
#   qsub -q gpu_a100 -t 300 -n 1 job_ncu_bjoin.sh
#
# Prereqs: BJoin built (see BJOIN_JLSE_SETUP.md) and data/ populated.
# Uses the SAME cuda module as the other engines (cuda/12.9.1) for ncu.

set -u
cd "${PBS_O_WORKDIR:-$HOME/MNMGDatalog}"

# Batch shells don't define `module`; source the init first.
if ! command -v module >/dev/null 2>&1; then
  for f in /etc/profile.d/modules.sh /etc/profile.d/lmod.sh \
           /usr/share/lmod/lmod/init/bash /usr/share/Modules/init/bash; do
    [ -f "$f" ] && source "$f" && break
  done
fi
module use /soft/modulefiles
module load cuda/12.9.1
module load gcc/12.2.0 2>/dev/null   # BJoin links libstdc++ 12 (built with gcc-12)
if ! command -v ncu >/dev/null 2>&1; then
  NCU_BIN=$(find /soft -name ncu -type f 2>/dev/null | head -1)
  [ -n "$NCU_BIN" ] && export PATH="$(dirname "$NCU_BIN"):$PATH"
fi
command -v ncu >/dev/null 2>&1 || { echo "ERROR: ncu not found"; exit 1; }

# TBB/RMM runtime libs may be needed at load time (librmm installs to the conda
# prefix by default; oneTBB to ~/.local). Adjust RMM_PREFIX if you used another.
RMM_PREFIX=${RMM_PREFIX:-$HOME/miniconda3}
export LD_LIBRARY_PATH="$HOME/.local/oneTBB_v2022.1.0/lib64:$HOME/.local/oneTBB_v2022.1.0/lib:$RMM_PREFIX/lib:$RMM_PREFIX/lib64:${LD_LIBRARY_PATH:-}"

echo "using ncu: $(command -v ncu)"; nvidia-smi -L

BJOIN_HOME=${BJOIN_HOME:-$HOME/batch_joins} OUT=${OUT:-$HOME/MNMGDatalog/logs/ncu} \
  bash run_ncu_bjoin.sh
