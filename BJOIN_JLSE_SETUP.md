# BJoin (batch_joins) on JLSE: build, run, and collect instruction counts

BJoin needs **oneTBB** and **RMM** (RAPIDS Memory Manager). It is **non-MPI**;
`./TC <file> 90` / `./SG <file> 90` (last arg = % of free GPU memory to use).
Input is a tab-separated 2-column edge list (same format as gdlog `edge.facts`
and the MNMG `.txt` graphs), so we reuse the same graphs. CUDA arch is A100 (80).

Do everything in the **same CUDA env as the other engines**. JLSE's system gcc is
7.5 (too old); load the gcc-12 module and use `gcc`/`g++` (not `gcc-12`):
```bash
module use /soft/modulefiles
module load cuda/12.9.1 cmake gcc/12.2.0
gcc --version    # should be 12.2.0
```
Use the SAME gcc for oneTBB, RMM, and BJoin so their ABIs match, and keep
`gcc/12.2.0` loaded when running the binaries (the counter batch job loads it).

## 0. Transfer the repo from Polaris (optional; you already have it locally)
```bash
# from JLSE:
scp -r 'arsho@polaris.alcf.anl.gov:/eagle/dist_relational_alg/arsho/batch_joins' ~/batch_joins
# (or copy your local batch_joins/ up to JLSE)
```

## 1. Build oneTBB v2022.1.0 -> ~/.local
```bash
cd ~
git clone https://github.com/uxlfoundation/oneTBB
cd oneTBB && git checkout v2022.1.0
mkdir -p $HOME/.local
mkdir build && cd build
CC=gcc CXX=g++ cmake -DCMAKE_INSTALL_PREFIX=$HOME/.local/oneTBB_v2022.1.0 -DTBB_TEST=OFF ..
make -j && make install
# TBB cmake dir -> $HOME/.local/oneTBB_v2022.1.0/lib64/cmake/TBB  (or lib/cmake/TBB)
```

## 2. Build RMM v24.12.00 -> ~/rmm/build/install
```bash
cd ~
git clone https://github.com/rapidsai/rmm
cd rmm && git checkout v24.12.00
CC=gcc CXX=g++ ./build.sh librmm rmm
# install prefix -> ~/rmm/build/install
```

## 3. Point BJoin's CMakeLists at your TBB/RMM, then build TC + SG
Edit `~/batch_joins/CMakeLists.txt` (lines ~4-7) to YOUR paths (replace `arsho`):
```cmake
set(CMAKE_PREFIX_PATH "$ENV{HOME}/rmm/build/install" ${CMAKE_PREFIX_PATH})
set(TBB_DIR "$ENV{HOME}/.local/oneTBB_v2022.1.0/lib64/cmake/TBB")
```
Then:
```bash
cd ~/batch_joins
rm -rf build && mkdir build && cd build
cmake ..
make -j TC SG          # produces ~/batch_joins/build/TC and .../SG
```

## 4. Provide input graphs (reuse MNMG graphs; tab-separated 2-col)
BJoin reads any tab-separated edge list. Point it at the MNMG graphs (same ones
used for energy). `.bin`-only graphs are converted with bin_to_txt:
```bash
cd ~/MNMGDatalog
mkdir -p ~/batch_joins/data
python3 binary_file_utils.py bin_to_txt data/data_165435.bin ~/batch_joins/data/usroads.txt
python3 binary_file_utils.py bin_to_txt data/vsp_finan512_scagr7-2c_rlfddd.bin ~/batch_joins/data/vsp.txt
ln -sf ~/MNMGDatalog/data/data_223001.txt ~/batch_joins/data/sf.txt
ln -sf ~/MNMGDatalog/data/data_163734.txt ~/batch_joins/data/fe_body.txt
ln -sf ~/MNMGDatalog/data/data_214078.txt ~/batch_joins/data/loc-brightkite.txt
ln -sf ~/MNMGDatalog/data/data_49152.txt  ~/batch_joins/data/fe_sphere.txt
ln -sf ~/MNMGDatalog/data/data_51971.txt  ~/batch_joins/data/ca_hepth.txt
```

## 5. Sanity run (confirm it reads rows and finishes)
```bash
cd ~/batch_joins/build
./TC ./data/usroads.txt 90        # should print row size + TC result
```

## 6. Collect instruction counts (Nsight, non-MPI -> ncu directly)
Batch job (recommended; ncu replay is slow) from ~/MNMGDatalog:
```bash
qsub -q gpu_a100 -t 300 -n 1 job_ncu_bjoin.sh
```
Or interactive:
```bash
BJOIN_HOME=~/batch_joins OUT=~/MNMGDatalog/logs/ncu bash run_ncu_bjoin.sh
```

Individual command form:
```bash
ncu --metrics sm__inst_executed.sum --target-processes all --csv \
    --log-file ~/MNMGDatalog/logs/ncu/tc/usroads_BJoin.csv \
    ./TC ./data/usroads.txt 90
```

## 7. Combine (from ~/MNMGDatalog)
```bash
python instructions_per_joule.py logs/power_tc.csv logs/ncu/tc
python instructions_per_joule.py logs/power_sg.csv logs/ncu/sg
```
Fills the BJoin column (last of the five engines).

## Notes
- If `gcc-12`/`g++-12` are not available on JLSE, use the default gcc (>= 11) and
  omit `CC=/CXX=`. Keep the SAME cuda/12.9.1 module used for the other engines.
- If cmake cannot find TBB, check whether it installed under `lib/cmake/TBB`
  instead of `lib64/cmake/TBB` and set `TBB_DIR` accordingly.
- Datasets: TC {fe_body, vsp, sf, usroads}; SG {fe_body, loc-brightkite,
  fe_sphere, ca_hepth}. BJoin has valid energy for all of these.
