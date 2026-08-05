#!/bin/bash -l
# DRY RUN: CPU+GPU energy for ONE dataset (fe_body) across all 5 engines, TC.
# Confirms perf (CPU pkg energy) + nvidia-smi (GPU energy) work together on JLSE
# for every engine's launch style before doing a full sweep.
#
# Run on a JLSE A100 node from ~/MNMGDatalog:
#   bash dryrun_cpu_gpu.sh
#
# Prereqs already set up for the instruction-count work:
#   - MNMG/INLJoin built (tc.out / tc_nl.out), nvhpc for mpiexec
#   - GPULog ~/gdlog/build/TC, BJoin ~/batch_joins/build/TC, cudf in miniconda
set -u

module use /soft/modulefiles
module load cuda/12.9.1 nvhpc/nvhpc/25.11 gcc/12.2.0 2>/dev/null

OUT=${OUT:-logs/cpugpu_dryrun}
mkdir -p "$OUT"
PROF="python power_cpu_gpu.py"

echo "=== perf sanity (CPU pkg energy readable?) ==="
perf stat -e power/energy-pkg/ sleep 1 2>&1 | grep -i joule || { echo "perf energy NOT available"; exit 1; }
echo "=== GPU ==="; nvidia-smi -L

# fe_body graph in each engine's expected location/format
BIN=data/data_163734.bin                 # MNMG/INLJoin (.bin)
GDLOG=$HOME/gdlog                         # ./build/TC data/fe_body/edge.facts 0
BJOIN=$HOME/batch_joins                   # ./build/TC ../data/fe_body.txt 90
CUDF_TXT=data/data_163734.txt            # cuDF python

MNMG=$(pwd)     # absolute output paths so we can cd for the external engines

echo "=== MNMGDatalog (TC, MPI) ==="
$PROF "$MNMG/$OUT/fe_body_MNMGDatalog.csv" mpiexec -n 1 ./tc.out "$BIN" 0 1 1

echo "=== INLJoin (TC, MPI) ==="
$PROF "$MNMG/$OUT/fe_body_INLJoin.csv" mpiexec -n 1 ./tc_nl.out "$BIN" 0 1 1

echo "=== GPULog (TC, non-MPI) ==="
( cd "$GDLOG" && python "$MNMG/power_cpu_gpu.py" "$MNMG/$OUT/fe_body_GPULog.csv" ./build/TC ./data/fe_body/edge.facts 0 )

echo "=== BJoin (TC, non-MPI) ==="
( cd "$BJOIN/build" && python "$MNMG/power_cpu_gpu.py" "$MNMG/$OUT/fe_body_BJoin.csv" ./TC ../data/fe_body.txt 90 )

echo "=== cuDF (TC, python) ==="
$PROF "$MNMG/$OUT/fe_body_cuDF.csv" python related/cudf_programs/tc.py "$CUDF_TXT"

echo "=== SUMMARY ==="
for f in "$OUT"/fe_body_*.csv; do echo "-- $f --"; cat "$f"; echo; done
