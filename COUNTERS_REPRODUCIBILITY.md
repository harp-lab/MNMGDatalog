# Reproducing GPU instruction counts (instructions-per-joule) on JLSE

This documents how we collect **total GPU instructions executed**
(`sm__inst_executed.sum`, via Nsight Compute) for each engine on JLSE, and
combine them with the existing energy measurements to report
**instructions per joule** (Eq. in the paper).

- Instruction count is **deterministic** for a given (engine source, dataset,
  args), so it is collected in a *separate* Nsight run (whose kernel replay
  perturbs timing/power but **not** the count) and paired with the energy from
  `logs/power_tc.csv` / `logs/power_sg.csv`.
- GPU used: **NVIDIA A100-PCIE-40GB** (JLSE). `ncu` 2025.2/2025.3.

**Status: COMPLETE.** All five engines (MNMGDatalog, INLJoin, GPULog, BJoin, cuDF)
have instruction counts for TC (fe\_body, vsp, sf, usroads) and SG (fe\_body,
loc-brightkite, fe\_sphere, ca\_hepth). CSVs are committed under
`logs/ncu/{tc,sg}/<Dataset>_<Engine>.csv` on branch `feature/counters`. cuDF has
no entry for the two TC road networks (\textit{usroads}, \textit{vsp}) and SG
\textit{fe\_body} because those runs ran out of memory / produced no output. If
the CSVs go missing from the working tree, recover them with
`git checkout feature/counters -- logs/ncu`.

## Final results

Regenerate any time with:
```bash
python instructions_per_joule.py logs/power_tc.csv logs/ncu/tc
python instructions_per_joule.py logs/power_sg.csv logs/ncu/sg
```

### Instructions per joule (M-instructions/J; higher = more efficient)

Transitive Closure (TC):

| Dataset | GPULog | MNMGDatalog | cuDF | BJoin | INLJoin |
| --- | --- | --- | --- | --- | --- |
| fe_body | 283.2 | 208.6 | 147.5 | 290.3 | 197.7 |
| sf | 257.1 | 194.8 | 142.0 | 99.6 | 191.9 |
| usroads | 199.0 | 179.1 | -- | 407.1 | 162.5 |
| vsp | 225.6 | 179.5 | -- | 408.5 | 172.9 |

Same Generation (SG):

| Dataset | GPULog | MNMGDatalog | cuDF | BJoin | INLJoin |
| --- | --- | --- | --- | --- | --- |
| ca_hepth | 274.8 | 321.2 | 136.0 | 210.2 | 350.2 |
| fe_body | 368.6 | 286.3 | -- | 457.2 | 310.8 |
| fe_sphere | 345.7 | 290.9 | 170.4 | 357.2 | 315.0 |
| loc-brightkite | 320.8 | 405.3 | 174.7 | 312.2 | 420.3 |

### Total GPU instructions (billions, `sm__inst_executed.sum`)

Transitive Closure (TC):

| Dataset | GPULog | MNMGDatalog | cuDF | BJoin | INLJoin |
| --- | --- | --- | --- | --- | --- |
| fe_body | 183.1 | 95.5 | 1262.3 | 174.2 | 96.5 |
| sf | 99.4 | 57.2 | 858.0 | 99.3 | 57.6 |
| usroads | 1934.7 | 1186.2 | -- | 1897.4 | 1193.7 |
| vsp | 2413.1 | 1292.5 | -- | 2005.6 | 1293.4 |

Same Generation (SG):

| Dataset | GPULog | MNMGDatalog | cuDF | BJoin | INLJoin |
| --- | --- | --- | --- | --- | --- |
| ca_hepth | 137.6 | 60.1 | 131.0 | 135.1 | 59.7 |
| fe_body | 697.0 | 328.9 | -- | 686.3 | 336.9 |
| fe_sphere | 307.5 | 141.7 | 1115.7 | 299.6 | 145.0 |
| loc-brightkite | 379.9 | 168.1 | 331.9 | 370.2 | 166.1 |

Energy (Joules) used as the denominator comes from `logs/power_tc.csv` /
`logs/power_sg.csv` (the original POWERLOG runs); only instruction counts are
from Nsight. (cuDF counts were taken with RAPIDS cudf-cu12 26.06 on JLSE.)

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

Full sweep. `ncu` kernel-replay is slow (a single high-iteration TC run can take
15--20 min), so an interactive node usually times out. **Use the batch job**
`job_ncu_gpulog.sh` (in this repo) with a long wall time; it is resumable and
skips any dataset whose CSV already has counter data:

```bash
cd ~/MNMGDatalog
qsub -q gpu_a100 -t 300 -n 1 job_ncu_gpulog.sh   # -t is MINUTES on JLSE Cobalt (300 = 5 h)
```

The batch script runs the gdlog binaries in `$GDLOG_HOME` (default `~/gdlog`),
sources the module system itself (batch shells do not define `module`), locates
`ncu`, and writes to `$OUT/{tc,sg}` (default `~/MNMGDatalog/logs/ncu`). Set
`TC_MODE` to match the EBM mode of the timing runs (default `0`).

Check progress and outputs:

```bash
qstat -u $USER
tail <jobid>.output          # per-dataset progress; first line should be "using ncu: ..."
cat  <jobid>.error           # should be empty
ls -la logs/ncu/tc/*_GPULog.csv logs/ncu/sg/*_GPULog.csv
```

(Interactive alternative, only for small datasets:
`cd ~/gdlog && OUT=~/MNMGDatalog/logs/ncu TC_MODE=0 bash run_ncu_gpulog.sh`.)

gdlog dataset folders: usroad, vsp_finan, SF.cedge, fe_body (TC);
fe_body, loc-Brightkite, fe-sphere, CA-HepTH (SG). Input = `data/<folder>/edge.facts`.

## 3. cuDF (RAPIDS, non-MPI)

cuDF is pure RAPIDS Python (`related/cudf_programs/tc.py` / `sg.py`), reads a
tab-separated `.txt` edge list, and is non-MPI, so `ncu` wraps the python process
directly. `tc.py`/`sg.py` derive the row count from the digits in the filename,
so keep the numeric `data_<N>.txt` names.

Only datasets with nonzero cuDF energy in the paper are profiled (the others were
OOM/timeout): **TC {fe_body, sf}; SG {loc-brightkite, fe_sphere, ca_hepth}**.

Needs a RAPIDS/cudf env. On JLSE this is a **personal miniconda**
(`~/.zshrc` does `source ~/miniconda3/bin/activate`). Batch shells do not source
`~/.zshrc`, so `job_ncu_cudf.sh` activates `~/miniconda3` itself. One-time cudf
install (CUDA 12.x -> `cudf-cu12`):

```bash
source ~/miniconda3/bin/activate
pip install --extra-index-url https://pypi.nvidia.com cudf-cu12
python -c "import cudf; print(cudf.__version__)"
```

Batch job from `~/MNMGDatalog` (override `CONDA_BASE`/`CONDA_ENV` only if cudf
lives in a non-default location/env):

```bash
qsub -q gpu_a100 -t 300 -n 1 job_ncu_cudf.sh
```

Or interactively (with the rapids env active):

```bash
OUT=~/MNMGDatalog/logs/ncu bash run_ncu_cudf.sh
```

Individual command form:

```bash
ncu --metrics sm__inst_executed.sum --target-processes all --csv \
    --log-file logs/ncu/tc/fe_body_cuDF.csv \
    python related/cudf_programs/tc.py data/data_163734.txt
```

## 4. BJoin (batch_joins, non-MPI)

BJoin needs oneTBB + RMM and is built with cmake; it is non-MPI
(`./build/TC <file> 90` / `./build/SG <file> 90`, tab-separated 2-col input).
Full build+run steps are in [`BJOIN_JLSE_SETUP.md`](BJOIN_JLSE_SETUP.md). Once
built and `data/` is populated, collect counts with the batch job (from
`~/MNMGDatalog`):

```bash
qsub -q gpu_a100 -t 300 -n 1 job_ncu_bjoin.sh
```

or interactively: `BJOIN_HOME=~/batch_joins OUT=~/MNMGDatalog/logs/ncu bash run_ncu_bjoin.sh`.

## 5. Combine counts with energy -> instructions per joule

```bash
cd ~/MNMGDatalog
python instructions_per_joule.py logs/power_tc.csv logs/ncu/tc
python instructions_per_joule.py logs/power_sg.csv logs/ncu/sg
```

Prints a per-(dataset, engine) table of total instructions, energy (J), and
instructions/joule, plus LaTeX rows (auto-scaled to G/M/k-instr/J) for the paper.
The combine only needs the CSVs present under `logs/ncu/{tc,sg}/` named
`<Dataset>_<Engine>.csv`; missing engines/datasets show `--`.

## CPU + GPU energy (single-GPU, JLSE)

`power_cpu_gpu.py` measures **both** CPU and GPU energy for one run:
- **GPU energy**: integrate `nvidia-smi` `power.draw` at a fixed interval (as in `power.py`).
- **CPU energy**: wrap the process in `perf stat -e power/energy-pkg/`, which reads
  the CPU's **RAPL package-domain** energy counter.

What the RAPL package domain covers (important for correct interpretation):
- **Package = cores + uncore.** *Core* energy is the compute cores (ALUs/FPUs,
  L1/L2, registers). *Uncore* is everything else on the socket: shared **L3
  cache, memory controllers, Infinity Fabric/interconnect, PCIe/IO**. For
  data-movement-bound Datalog, much of the CPU cost is uncore, so package is the
  right, inclusive number.
- **DRAM energy is NOT included.** Intel exposes a separate `power/energy-ram/`
  domain; **AMD EPYC (our JLSE node) does not**, so DIMM energy is excluded.
- It is **socket-wide** (not per-process); on a dedicated node this reflects the
  node's CPU energy during the run.

Caveats to state in the paper: AMD RAPL package energy is measured/estimated at
the socket level and has known accuracy limits (like `nvidia-smi` for the GPU);
we therefore emphasize the **CPU fraction of total energy** rather than absolute
CPU joules. Check which RAPL domains a node exposes with `perf list | grep -i energy`.

Collect the full single-GPU sweep (all 5 engines, TC+SG):
```bash
qsub -q gpu_a100 -t 300 -n 1 run_cpu_gpu_energy.sh
python cpu_gpu_energy_tables.py logs/cpugpu/tc
python cpu_gpu_energy_tables.py logs/cpugpu/sg
```
Note: JLSE is A100-PCIE, a *different* GPU/node than the Polaris A100-SXM used for
the original energy tables, so JLSE energy is not directly comparable to Polaris.

## Notes / gotchas

- `ncu` replay makes the profiled run slow (minutes for large iteration counts);
  this is expected. Only the **count** is used, never ncu's timing.
- Keep all engines on the **same GPU model** (A100) so counts are comparable.
- If a run shows `Input graph rows: 0`, the `edge.facts` path is empty/missing.
- If `ERR_NVGPUCTRPERM` appears, the node blocks perf counters; request a node
  with counter access enabled.
- `perf`/RAPL: batch shells default to system Python 2.7 — the scripts force
  `~/miniconda3/bin/python`. If `power/energy-pkg/` is absent, the kernel/node
  does not expose CPU RAPL.
