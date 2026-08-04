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

# --- activate conda + cudf env ---
# JLSE provides conda via a module (like Polaris `module load conda/...`).
# Set CONDA_MODULE to your JLSE conda module, and CONDA_ENV to the env that has cudf.
CONDA_MODULE=${CONDA_MODULE:-conda}        # e.g. conda/2023-10-04 (see `module avail conda`)
CONDA_ENV=${CONDA_ENV:-}                   # e.g. rapids-25.04 (blank = use module's base env)

module load "$CONDA_MODULE" 2>/dev/null || echo "note: could not 'module load $CONDA_MODULE'"

# make `conda activate` available, then activate
if command -v conda >/dev/null 2>&1; then
  source "$(conda info --base)/etc/profile.d/conda.sh" 2>/dev/null
  if [ -n "$CONDA_ENV" ]; then conda activate "$CONDA_ENV"; else conda activate; fi
fi

echo "using ncu:    $(command -v ncu)"
echo "using python: $(command -v python)"
python -c "import cudf; print('cudf', cudf.__version__)" || {
  echo "ERROR: cudf not importable. Load the right conda module/env, e.g.:";
  echo "  module load conda/2023-10-04 && conda activate && pip install --extra-index-url https://pypi.nvidia.com cudf-cu11";
  echo "then resubmit with CONDA_MODULE=... CONDA_ENV=... as needed."; exit 1; }

OUT=${OUT:-$HOME/MNMGDatalog/logs/ncu}
bash run_ncu_cudf.sh
