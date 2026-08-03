# Full ncu instruction-count command list (all datasets, all engines)

Metric: `sm__inst_executed.sum` (one pass). Output CSVs: `logs/ncu/<tc|sg>/<Dataset>_<Engine>.csv`.
Run MPI engines (MNMGDatalog, INLJoin) with `mpiexec -n 1`; non-MPI (GPULog, BJoin, cuDF) directly.

## MNMGDatalog + INLJoin (from ~/MNMGDatalog, .bin inputs)

```bash
NCU="ncu --metrics sm__inst_executed.sum --target-processes all --csv"

# --- TC ---
mpiexec -n 1 $NCU --log-file logs/ncu/tc/fe_body_MNMGDatalog.csv ./tc.out    data/data_163734.bin 0 1 1
mpiexec -n 1 $NCU --log-file logs/ncu/tc/vsp_MNMGDatalog.csv     ./tc.out    data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
mpiexec -n 1 $NCU --log-file logs/ncu/tc/sf_MNMGDatalog.csv      ./tc.out    data/data_223001.bin 0 1 1
mpiexec -n 1 $NCU --log-file logs/ncu/tc/usroads_MNMGDatalog.csv ./tc.out    data/data_165435.bin 0 1 1
mpiexec -n 1 $NCU --log-file logs/ncu/tc/fe_body_INLJoin.csv     ./tc_nl.out data/data_163734.bin 0 1 1
mpiexec -n 1 $NCU --log-file logs/ncu/tc/vsp_INLJoin.csv         ./tc_nl.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
mpiexec -n 1 $NCU --log-file logs/ncu/tc/sf_INLJoin.csv          ./tc_nl.out data/data_223001.bin 0 1 1
mpiexec -n 1 $NCU --log-file logs/ncu/tc/usroads_INLJoin.csv     ./tc_nl.out data/data_165435.bin 0 1 1

# --- SG ---
mpiexec -n 1 $NCU --log-file logs/ncu/sg/fe_body_MNMGDatalog.csv        ./sg.out    data/data_163734.bin 0 1 1
mpiexec -n 1 $NCU --log-file logs/ncu/sg/loc-brightkite_MNMGDatalog.csv ./sg.out    data/data_214078.bin 0 1 1
mpiexec -n 1 $NCU --log-file logs/ncu/sg/fe_sphere_MNMGDatalog.csv      ./sg.out    data/data_49152.bin 0 1 1
mpiexec -n 1 $NCU --log-file logs/ncu/sg/ca_hepth_MNMGDatalog.csv       ./sg.out    data/data_51971.bin 0 1 1
mpiexec -n 1 $NCU --log-file logs/ncu/sg/fe_body_INLJoin.csv            ./sg_nl.out data/data_163734.bin 0 1 1
mpiexec -n 1 $NCU --log-file logs/ncu/sg/loc-brightkite_INLJoin.csv     ./sg_nl.out data/data_214078.bin 0 1 1
mpiexec -n 1 $NCU --log-file logs/ncu/sg/fe_sphere_INLJoin.csv          ./sg_nl.out data/data_49152.bin 0 1 1
mpiexec -n 1 $NCU --log-file logs/ncu/sg/ca_hepth_INLJoin.csv           ./sg_nl.out data/data_51971.bin 0 1 1
```

## GPULog (from ~/gdlog, non-MPI, data/<folder>/edge.facts, TC mode 0)

```bash
NCU="ncu --metrics sm__inst_executed.sum --target-processes all --csv"
OUT=~/MNMGDatalog/logs/ncu

# --- TC (mode 0 = with EBM) ---
$NCU --log-file $OUT/tc/usroads_GPULog.csv ./build/TC ./data/usroad/edge.facts 0
$NCU --log-file $OUT/tc/vsp_GPULog.csv     ./build/TC ./data/vsp_finan/edge.facts 0
$NCU --log-file $OUT/tc/sf_GPULog.csv      ./build/TC ./data/SF.cedge/edge.facts 0
$NCU --log-file $OUT/tc/fe_body_GPULog.csv ./build/TC ./data/fe_body/edge.facts 0

# --- SG (no mode arg) ---
$NCU --log-file $OUT/sg/fe_body_GPULog.csv        ./build/SG ./data/fe_body/edge.facts
$NCU --log-file $OUT/sg/loc-brightkite_GPULog.csv ./build/SG ./data/loc-Brightkite/edge.facts
$NCU --log-file $OUT/sg/fe_sphere_GPULog.csv      ./build/SG ./data/fe-sphere/edge.facts
$NCU --log-file $OUT/sg/ca_hepth_GPULog.csv       ./build/SG ./data/CA-HepTH/edge.facts
```

## Combine

```bash
cd ~/MNMGDatalog
python instructions_per_joule.py logs/power_tc.csv logs/ncu/tc
python instructions_per_joule.py logs/power_sg.csv logs/ncu/sg
```
