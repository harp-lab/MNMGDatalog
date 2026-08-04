#!/bin/bash -l
# JLSE batch job: cuDF GPU instruction counts via Nsight Compute.
# cuDF is NON-MPI (RAPIDS Python); ncu wraps the python process directly.
# ncu replay over many RAPIDS kernels is slow -> request a long wall time.
#
# Submit from ~/MNMGDatalog (edit CONDA_ENV to your rapids env):
#   qsub -q gpu_a100 -t 300 -n 1 job_ncu_cudf.sh
#
# Only paper-usable (nonzero-energy) cuDF datasets are profiled:
#   TC {fe_body, sf};  SG {loc-brightkite, fe_sphere, ca_hepth}.

set -u
cd "${PBS_O_WORKDIR:-$HOME/MNMGDatalog}"

# --- environment: modules for ncu + activate the RAPIDS/cudf conda env ---
if ! command -v module >/dev/null 2>&1; then
  for f in /etc/profile.d/modules.sh /etc/profile.d/lmod.sh \
           /usr/share/lmod/lmod/init/bash /usr/share/Modules/init/bash; do
    [ -f "$f" ] && source "$f" && break
  done
fi
module use /soft/modulefiles
module load cuda/12.9.1
if ! command -v ncu >/dev/null 2>&1; then
  NCU_BIN=$(find /soft -name ncu -type f 2>/dev/null | head -1)
  [ -n "$NCU_BIN" ] && export PATH="$(dirname "$NCU_BIN"):$PATH"
fi

CONDA_ENV=${CONDA_ENV:-rapids-25.04}     # <-- set to your cudf env name
# activate conda (base is already on PATH in the login shell)
source "$(conda info --base)/etc/profile.d/conda.sh" 2>/dev/null && conda activate "$CONDA_ENV" 2>/dev/null

echo "using ncu: $(command -v ncu)"
python -c "import cudf; print('cudf', cudf.__version__)" || { echo "ERROR: cudf not importable; set CONDA_ENV"; exit 1; }

OUT=${OUT:-$HOME/MNMGDatalog/logs/ncu}
bash run_ncu_cudf.sh
