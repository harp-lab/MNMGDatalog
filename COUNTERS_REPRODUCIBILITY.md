# Reproducing GPU instruction counts (instructions-per-joule) on JLSE

This documents how we collect **total GPU instructions executed**
(`sm__inst_executed.sum`, via Nsight Compute) for each engine on JLSE, and
combine them with the existing energy measurements to report
**instructions per joule** (Eq. in the paper).

- Instruction count is **deterministic** for a given (engine source, dataset,
  args), so it is collected in a *separate* Nsight run (whose kernel replay
  perturbs timing/power but **not** the count) and paired with the energy from
  `logs/power_tc.csv` / `logs/power_sg.csv`.
- GPU used: **NVIDIA A100-PCIE-40GB** (JLSE `gpu07`). `ncu` 2025.2/2025.3.

## 0. Environment (JLSE interactive GPU node)

```bash
qsub -q gpu_a100 -t 60 -n 1 -I          # interactive A100 node
module use /soft/modulefiles
module load cuda/12.9.1 nvhpc/nvhpc/25.11   # nvcc + ncu + mpiexec (HPCX OpenMPI)
```

## 1. MNMGDatalog and INLJoin (this repo, MPI engines)

Build against the nvhpc HPCX MPI (auto-detected):

```bash
make buildjlsetc buildjlsesg buildjlsetcnl buildjlsesgnl   # tc/sg/tc_nl/sg_nl .out
```

Collect counts (MPI engines must be launched via `mpiexec -n 1`; the script does
this and is resumable — it skips any CSV that already has counter data):

```bash
bash run_ncu_mnmg.sh
```

Individual command form (for reference):

```bash
mpiexec -n 1 ncu --metrics sm__inst_executed.sum --target-processes all --csv \
    --log-file logs/ncu/tc/usroads_MNMGDatalog.csv ./tc.out data/data_165435.bin 0 1 1
```

Dataset -> file (`.bin`):

| Dataset | file | Workload |
|---|---|---|
| fe_body | data_163734.bin | TC, SG |
| vsp | vsp_finan512_scagr7-2c_rlfddd.bin | TC |
| sf | data_223001.bin | TC |
| usroads | data_165435.bin | TC |
| loc-brightkite | data_214078.bin | SG |
| fe_sphere | data_49152.bin | SG |
| ca_hepth | data_51971.bin | SG |

## 2. GPULog (gdlog repo, non-MPI)

gdlog is **not** MPI: run `ncu` directly on `./build/TC` / `./build/SG`. It reads a
2-column, headerless, tab/space-separated edge list at `data/<name>/edge.facts`
(row count = number of `\n`). TC arg: `0` = with EBM (optimized, used here),
`1` = without EBM. SG takes no arg.

The gdlog `data/<name>/` folders ship empty; populate `edge.facts` from the graphs
in `MNMGDatalog/data/` (same graphs). `.txt` graphs are symlinked; `.bin`-only
graphs are converted with `binary_file_utils.py bin_to_txt`:

```bash
cd ~/MNMGDatalog
# .bin-only graphs -> text into gdlog
python3 binary_file_utils.py bin_to_txt data/data_165435.bin ~/gdlog/data/usroad/edge.facts
python3 binary_file_utils.py bin_to_txt data/vsp_finan512_scagr7-2c_rlfddd.bin ~/gdlog/data/vsp_finan/edge.facts
# existing .txt graphs -> symlink (same format)
ln -sf ~/MNMGDatalog/data/data_223001.txt ~/gdlog/data/SF.cedge/edge.facts
ln -sf ~/MNMGDatalog/data/data_163734.txt ~/gdlog/data/fe_body/edge.facts
ln -sf ~/MNMGDatalog/data/data_214078.txt ~/gdlog/data/loc-Brightkite/edge.facts
ln -sf ~/MNMGDatalog/data/data_49152.txt  ~/gdlog/data/fe-sphere/edge.facts
ln -sf ~/MNMGDatalog/data/data_51971.txt  ~/gdlog/data/CA-HepTH/edge.facts
```

Verify a graph loads (should print `Input graph rows: 165435`):

```bash
cd ~/gdlog
ncu --metrics sm__inst_executed.sum --target-processes all --csv \
    --log-file ~/MNMGDatalog/logs/ncu/tc/usroads_GPULog.csv \
    ./build/TC ./data/usroad/edge.facts 0
```

Full sweep (resumable; `run_ncu_gpulog.sh` lives in the gdlog repo):

```bash
cd ~/gdlog
OUT=~/MNMGDatalog/logs/ncu TC_MODE=0 bash run_ncu_gpulog.sh
```

gdlog dataset folders: usroad, vsp_finan, SF.cedge, fe_body (TC);
fe_body, loc-Brightkite, fe-sphere, CA-HepTH (SG). Input = `data/<folder>/edge.facts`.

## 3. BJoin and cuDF (pending on JLSE)

BJoin (batch_joins, non-MPI, `./TC <file> 90` / `./SG <file> 90`) and cuDF
(`python related/cudf_programs/tc.py <file>`) are profiled the same way with
`ncu` (no mpiexec). Add once their builds/env are available on JLSE.

## 4. Combine counts with energy -> instructions per joule

```bash
cd ~/MNMGDatalog
python instructions_per_joule.py logs/power_tc.csv logs/ncu/tc
python instructions_per_joule.py logs/power_sg.csv logs/ncu/sg
```

Prints a per-(dataset, engine) table of total instructions, energy (J), and
instructions/joule, plus LaTeX rows (auto-scaled to G/M/k-instr/J) for the paper.
The combine only needs the CSVs present under `logs/ncu/{tc,sg}/` named
`<Dataset>_<Engine>.csv`; missing engines/datasets show `--`.

## Notes / gotchas

- `ncu` replay makes the profiled run slow (minutes for large iteration counts);
  this is expected. Only the **count** is used, never ncu's timing.
- Keep all engines on the **same GPU model** (A100) so counts are comparable.
- If a run shows `Input graph rows: 0`, the `edge.facts` path is empty/missing.
- If `ERR_NVGPUCTRPERM` appears, the node blocks perf counters; request a node
  with counter access enabled.
