# Reproducing the single-GPU benchmarks on JLSE

Step-by-step instructions to rebuild and re-run every number in the paper on the
ALCF **JLSE** A100 nodes. All three benchmarks (`tc_benchmark/`, `sg_benchmark/`,
`cc_benchmark/`) and the GPUlog comparison are covered.

> These commands were run on an **NVIDIA A100-PCIE (40 GB)** node with
> **`cuda/12.9.1`**. The four in-repo versions require CUDA **12.4+** (v3 uses
> CUDA-graph conditional nodes); GPUlog builds under 12.x/13.x once C++17 is forced
> (see [GPUlog comparison](#gpulog-comparison)).

## 0. Environment

```bash
module load cuda/12.9.1          # provides nvcc; A100 is sm_80
module list                      # confirm cuda/12.9.1 is the active CUDA
nvcc --version                   # sanity check
nvidia-smi                       # confirm an A100-PCIE-40GB is visible
```

Everything below assumes the repo is checked out and the graph data lives in a
sibling `data/` directory (the default the scripts probe as `../data`). Override
with `DATA_DIR=/path/to/data` on any `make` line.

- Build architecture: `GPU_ARCH=sm_80` for the A100 (default is `native`, which
  also works on the build node but pin `sm_80` for reproducibility).
- All metrics come from each binary's `*_CSV` file, **never** stdout — see the
  per-benchmark `AGENTS.md`.

## 1. Correctness first (fast)

Each benchmark's `make test` builds all four versions and verifies they produce
**byte-identical** result tuples against the MNMGDatalog reference (v0). Run this
before trusting any timing.

```bash
cd tc_benchmark && make GPU_ARCH=sm_80 test && cd ..
cd sg_benchmark && make GPU_ARCH=sm_80 test && cd ..
cd cc_benchmark && make GPU_ARCH=sm_80 test && cd ..
```

`cc_benchmark` allows a *different round count* (order-independent `atomicMin`
converges in fewer rounds) but still checks the final labeling is identical.

## 2. Timed benchmarks (the paper's tables/figures)

```bash
# TC  -> results/benchmark_<ts>.csv  (tab:results, fig:breakdown, fig:compute[TC])
cd tc_benchmark && make GPU_ARCH=sm_80 benchmark REPEATS=3 && cd ..

# SG  -> results/benchmark_<ts>.csv  (tab:sgcc[SG], fig:compute[SG])
cd sg_benchmark && make GPU_ARCH=sm_80 benchmark REPEATS=3 && cd ..

# WCC -> results/benchmark_<ts>.csv  (tab:sgcc[WCC])
cd cc_benchmark && make GPU_ARCH=sm_80 benchmark REPEATS=3 && cd ..
```

Each writes a timestamped CSV to that benchmark's `results/`. The columns are
documented in the benchmark's `AGENTS.md` (`version,input,iterations,tc/sg,
total_time,fileio,h2d,setup,build,compute,compute_min,d2h,peak_mem_mb,repeats,...`).
`total = fileio + h2d + setup + build + compute + d2h`.

### WCC incremental / streaming (fig:incremental)

```bash
cd cc_benchmark && make GPU_ARCH=sm_80 incremental REPEATS=3   # incremental_<ts>.csv
```

Splits each graph into a base (first `1-f`) + insertion batch (last `f`) and times
incremental maintenance vs. full recompute, gating on identical labelings.

## 3. Charts

```bash
cd tc_benchmark && make plot && cd ..     # total_time, breakdown  -> results/charts/
cd sg_benchmark && make plot && cd ..
cd cc_benchmark && make plot && cd ..
cd cc_benchmark && make plot-incremental && cd ..

# Cross-engine compute chart (TC+SG incl. GPUlog): needs the gpulog CSVs from step 4
cd tc_benchmark && python3 tests/plot_compute.py && cd ..
```

Charts are written as **both `.png` and `.pdf`** into each `results/charts/`.
Paper figures are refreshed by copying the newest PDFs into
`tc_benchmark/docs/<overleaf-id>/figures/`.

## 4. GPUlog comparison

`make gpulog` runs the third-party **GPUlog (gdlog, ASPLOS'25)** engine on the
*same* graphs and writes `results/gpulog_<ts>.csv`. GPUlog reports fixpoint
**compute** time only (no end-to-end), and covers **TC and SG** (no WCC).

```bash
git clone <gdlog repo> ~/gdlog            # or use an existing checkout
export GDLOG_DIR=~/gdlog

cd tc_benchmark && make GPU_ARCH=sm_80 gpulog REPEATS=3 GDLOG_DIR=$GDLOG_DIR && cd ..
cd sg_benchmark && make GPU_ARCH=sm_80 gpulog REPEATS=3 GDLOG_DIR=$GDLOG_DIR && cd ..
```

The harness converts each `.bin` to the tab-separated text GPUlog expects (via
`tests/bin_to_txt.py`) when a `.txt` is not already present, so both tools consume
the identical graph. GPUlog is the **only** place we parse a binary's stdout
(`TC time:` / `sg time:`, `Path counts` / `sg counts`); our own binaries always
report via `*_CSV`.

### GPUlog build gotchas (both hit on JLSE)

1. **C++ standard.** gdlog's CMake sets no C++ standard, and modern CCCL/CUB
   (CUDA 12.4+/13.x) hard-errors with *"CUB requires at least C++17."* Our harness
   already injects `-DCMAKE_CXX_STANDARD=17 -DCMAKE_CUDA_STANDARD=17`
   (+ `CCCL_IGNORE_DEPRECATED_CPP_DIALECT`) at configure time — **without modifying
   gdlog**. If you build gdlog by hand, add those flags yourself.

2. **Stale build dir.** If a *previous* gdlog configure cached the wrong settings,
   the new flags won't apply. Wipe and re-run:

   ```bash
   rm -rf $GDLOG_DIR/build
   cd tc_benchmark && make GPU_ARCH=sm_80 gpulog GDLOG_DIR=$GDLOG_DIR && cd ..
   ```

3. **Toolchain parity.** If `nvhpc` is loaded it can shadow `cuda/12.9.1` and pull
   in CUDA 13.0 headers for the gdlog build. Confirm with `module list`; for exact
   parity, build gdlog under the same `cuda/12.9.1` you use for our benchmarks. The
   paper notes GPUlog "built with its default toolchain" precisely because this is
   easy to get wrong.

### Validating the GPUlog run (result-size cross-check)

A GPUlog run is only trustworthy if its **result size** matches ours on the same
graph (identical query, identical input). Compare `gpulog_tc`/`gpulog_sg` in the
GPUlog CSV against the `tc`/`sg` column of our benchmark CSV:

| Query | Datasets that **match exactly** | Datasets that differ (and by how much) |
|-------|----------------------------------|-----------------------------------------|
| **SG** | CA-HepTh, fe_sphere, loc-Brightkite, fe_body — **all match** | none |
| **TC** | fe_body, Gnutella31, vsp_finan — **match** | OL (+126), TG (+2942), SF (+12948) |

**The three differing TC graphs are exactly the road-network `.cedge` graphs**
(OL/TG/SF), and the gap is tiny (0.02–0.09%). These graphs contain self-edges
`(v,v)`, and the two engines treat a self-derived path pair differently
(our hash-set closure keeps `(v,v)` once; GPUlog's semi-naïve/HISA evaluation
handles the self-loop differently). This is a **benign engine-semantics
difference, not a broken run** — the timings are still a fair compute-phase
comparison of the same closure on the same graph. The `.cedge` self-loop question
is the only known discrepancy; every other TC graph and all SG graphs agree to the
tuple. If you re-run and see a *large* or *new* size divergence, treat that as a
real error (bad conversion, truncated `.txt`, wrong dataset) and investigate.

## 5. Datasets used

Place these as `data/data_<edges>.bin` (raw int32 `src,dst` pairs). The scripts map
short names to files; defaults per benchmark:

- **TC:** `data_7035` (OL), `data_23874` (TG), `data_223001` (SF), `data_163734`
  (fe_body), `data_147892` (p2p-Gnutella31), `vsp_finan512_scagr7-2c_rlfddd`
  (vsp_finan).
- **SG:** `data_51971` (CA-HepTh), `data_49152` (fe_sphere), `data_214078`
  (loc-Brightkite), `data_163734` (fe_body).
- **WCC / streaming:** WikiTalk, web-Google, as-skitter, roadNet-CA.

Pass a custom list to any target with `DS="data_7035.bin data_23874.bin"`.

## 6. One-shot recap

```bash
module load cuda/12.9.1
export GDLOG_DIR=~/gdlog
for b in tc_benchmark sg_benchmark cc_benchmark; do
  ( cd $b && make GPU_ARCH=sm_80 test && make GPU_ARCH=sm_80 benchmark REPEATS=3 && make plot )
done
( cd cc_benchmark && make GPU_ARCH=sm_80 incremental REPEATS=3 && make plot-incremental )
rm -rf $GDLOG_DIR/build
for b in tc_benchmark sg_benchmark; do
  ( cd $b && make GPU_ARCH=sm_80 gpulog REPEATS=3 GDLOG_DIR=$GDLOG_DIR )
done
( cd tc_benchmark && python3 tests/plot_compute.py )
```
