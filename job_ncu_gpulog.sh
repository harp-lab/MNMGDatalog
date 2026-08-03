#!/bin/bash -l
# JLSE batch job: collect GPULog (gdlog) GPU instruction counts via Nsight Compute.
# ncu kernel-replay is slow for high-iteration TC/SG runs, so request a long wall time.
#
# This script lives in the MNMGDatalog repo but runs the gdlog binaries in
# $GDLOG_HOME (default ~/gdlog). Submit from anywhere:
#   qsub -q gpu_a100 -t 300 -n 1 job_ncu_gpulog.sh
# (-t is WALL TIME IN MINUTES on JLSE Cobalt; 300 = 5 hours; -n 1 = one node)
#
# Prereqs (done once, before submitting), in the gdlog repo:
#   - build/TC and build/SG exist (the binaries you benchmarked)
#   - data/<folder>/edge.facts populated (see COUNTERS_REPRODUCIBILITY.md)
#
# Output CSVs -> $OUT/{tc,sg}/<Dataset>_GPULog.csv  (default: MNMGDatalog/logs/ncu)
# Resumable: re-running skips any CSV that already has counter data.

set -u
GDLOG_HOME=${GDLOG_HOME:-$HOME/gdlog}
OUT=${OUT:-$HOME/MNMGDatalog/logs/ncu}
TC_MODE=${TC_MODE:-0}          # 0 = with EBM (match the timing runs)

# Batch shells don't define `module`; source the init first.
if ! command -v module >/dev/null 2>&1; then
  for f in /etc/profile.d/modules.sh /etc/profile.d/lmod.sh \
           /usr/share/lmod/lmod/init/bash /usr/share/Modules/init/bash; do
    [ -f "$f" ] && source "$f" && break
  done
fi
module use /soft/modulefiles
module load cuda/12.9.1

# Fallback: if ncu still isn't on PATH, locate it under the CUDA install.
if ! command -v ncu >/dev/null 2>&1; then
  NCU_BIN=$(ls -d /soft/compilers/cuda/cuda-12.9.1*/bin/ncu 2>/dev/null | head -1)
  [ -z "$NCU_BIN" ] && NCU_BIN=$(find /soft -name ncu -type f 2>/dev/null | head -1)
  [ -n "$NCU_BIN" ] && export PATH="$(dirname "$NCU_BIN"):$PATH"
fi
command -v ncu >/dev/null 2>&1 || { echo "ERROR: ncu not found on PATH"; exit 1; }
echo "using ncu: $(command -v ncu)"

cd "$GDLOG_HOME" || { echo "gdlog dir not found: $GDLOG_HOME"; exit 1; }
mkdir -p "$OUT/tc" "$OUT/sg"

NCU="ncu --metrics sm__inst_executed.sum --target-processes all --csv"

# paper dataset -> gdlog data/ folder (input = data/<folder>/edge.facts)
declare -A DIRTC=( [fe_body]=fe_body [vsp]=vsp_finan [sf]=SF.cedge [usroads]=usroad )
declare -A DIRSG=( [fe_body]=fe_body [loc-brightkite]=loc-Brightkite [fe_sphere]=fe-sphere [ca_hepth]=CA-HepTH )

done_already() { [ -s "$1" ] && grep -q inst_executed "$1"; }

echo "=== GPU ==="; nvidia-smi -L
echo "=== TC: GPULog (mode=$TC_MODE) ==="
for d in "${!DIRTC[@]}"; do
  log="$OUT/tc/${d}_GPULog.csv"; f="./data/${DIRTC[$d]}/edge.facts"
  done_already "$log" && { echo "  skip $log"; continue; }
  [ -f "$f" ] || { echo "  MISSING $f"; continue; }
  echo ">>> $(date +%T) TC $d"
  $NCU --log-file "$log" ./build/TC "$f" "$TC_MODE"
done

echo "=== SG: GPULog ==="
for d in "${!DIRSG[@]}"; do
  log="$OUT/sg/${d}_GPULog.csv"; f="./data/${DIRSG[$d]}/edge.facts"
  done_already "$log" && { echo "  skip $log"; continue; }
  [ -f "$f" ] || { echo "  MISSING $f"; continue; }
  echo ">>> $(date +%T) SG $d"
  $NCU --log-file "$log" ./build/SG "$f"
done

echo "=== $(date +%T) DONE. Combine from ~/MNMGDatalog: ==="
echo "  python instructions_per_joule.py logs/power_tc.csv logs/ncu/tc"
echo "  python instructions_per_joule.py logs/power_sg.csv logs/ncu/sg"
