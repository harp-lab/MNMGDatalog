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
# JLSE uses a personal miniconda (from ~/.zshrc: `source ~/miniconda3/bin/activate`).
# Batch shells don't source ~/.zshrc, so activate it explicitly here.
CONDA_BASE=${CONDA_BASE:-$HOME/miniconda3}
CONDA_ENV=${CONDA_ENV:-}                    # optional: a specific env with cudf (blank = base)

if [ -f "$CONDA_BASE/etc/profile.d/conda.sh" ]; then
  source "$CONDA_BASE/etc/profile.d/conda.sh"
elif [ -f "$CONDA_BASE/bin/activate" ]; then
  source "$CONDA_BASE/bin/activate"
fi
[ -n "$CONDA_ENV" ] && conda activate "$CONDA_ENV"

echo "using ncu:    $(command -v ncu)"
echo "using python: $(command -v python)"
python -c "import cudf; print('cudf', cudf.__version__)" || {
  echo "ERROR: cudf not importable in $CONDA_BASE (env='${CONDA_ENV:-base}').";
  echo "Install once:  source ~/miniconda3/bin/activate && pip install --extra-index-url https://pypi.nvidia.com cudf-cu12";
  echo "Or set CONDA_ENV=<env-with-cudf> and resubmit."; exit 1; }

OUT=${OUT:-$HOME/MNMGDatalog/logs/ncu}
bash run_ncu_cudf.sh
