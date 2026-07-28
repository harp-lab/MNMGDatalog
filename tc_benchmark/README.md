# TC Benchmark: one reference + three CUDA execution strategies

Four versions of the same single-GPU, Datalog-style **Transitive Closure (TC)**
computation:

```
path(a, c) :- path(a, b), edge(b, c).
```

- **`v0_reference`** is a faithful single-GPU port of the original
  `MNMGDatalog/tc.cu` (MPI removed). It keeps the original *sort–merge*
  machinery. It is the **performance reference**: everything else is measured
  against it.
- **`v1`–`v3`** are a redesign that replaces the sort–merge machinery with a
  single open-addressing **hash set**, then progressively move loop control onto
  the GPU. They share identical kernels and differ *only* in how the recursive
  `while` loop is driven.

| Version          | Dedup / fixpoint machinery                         | Loop driver                                    | Control → CPU        |
|------------------|----------------------------------------------------|------------------------------------------------|----------------------|
| `v0_reference`   | Thrust `sort`+`unique`+`set_difference`+`merge`    | host `while` loop, kernels + Thrust calls      | every iteration      |
| `v1_baseline`    | open-addressing hash set (`atomicCAS`)             | host `while` loop, direct kernel launches      | every iteration      |
| `v2_cudagraph`   | open-addressing hash set (`atomicCAS`)             | one iteration captured in a CUDA graph, replayed | every iteration    |
| `v3_conditional` | open-addressing hash set (`atomicCAS`)             | CUDA graph **conditional WHILE node**          | never (single launch)|

`v1`–`v3` mirror the Murmur3 hashing and open-addressing join from
`MNMGDatalog/common/*`; all four are single-GPU and self-contained. All four
produce **identical TC sizes and iteration counts**.

## Why two different designs?

The original `v0` fixpoint relies on Thrust algorithms (`reduce`, `unique`,
`set_difference`, `merge`) that **synchronize the device and return sizes to the
host**, plus a per-iteration `cudaMalloc`/`cudaFree`. That pattern:

- is fine for a host-driven loop (v0, v1),
- **cannot be captured into a CUDA graph** (stream capture forbids synchronizing
  calls), and
- **cannot run inside a conditional WHILE node** (which must be pure device
  kernels/memops, no host-side size decisions).

So to make v2/v3 possible at all, `v1`–`v3` replace the whole
`sort → unique → set_difference → merge` pipeline with **one `atomicCAS` insert**
into a pair hash set: the insert simultaneously deduplicates *and* answers "is
this fact new?" — exactly what `unique` + `set_difference` computed together —
while being fully device-resident. Comparing v1/v2/v3 against v0 shows the gain
from (a) the hash-set redesign and (b) moving loop control onto the GPU.

## The four versions, side by side

```
                         v0_reference (ORIGINAL)          v1 / v2 / v3 (REDESIGN)
                         --------------------------        -------------------------
 per-iteration body:     hash join                         hash join (tc_expand)
                         + thrust::sort                     + atomicCAS insert into
                         + thrust::unique                     a global pair hash set
                         + thrust::set_difference             (dedup + novelty in one)
                         + thrust::merge  (new t_full)
                         + cudaMalloc/cudaFree each iter    fixed pre-allocated buffers
 convergence test:       t_full stopped growing (host)     new_count == 0
 loop driver:            host while                         v1 host while
                                                            v2 replayed CUDA graph
                                                            v3 GPU conditional WHILE
```

Loop-control flow for each version:

```mermaid
flowchart TB
  subgraph v0["v0_reference / v1_baseline (host-driven)"]
    A0([seed]) --> B0[iteration body]
    B0 --> C0{new facts?<br/>checked on CPU}
    C0 -- yes --> B0
    C0 -- no --> D0([done])
  end
  subgraph v2["v2_cudagraph (replayed graph)"]
    A2([seed]) --> B2[launch captured graph<br/>= one iteration]
    B2 --> C2{new facts?<br/>copied to CPU}
    C2 -- yes --> B2
    C2 -- no --> D2([done])
  end
  subgraph v3["v3_conditional (whole loop on GPU)"]
    A3([seed]) --> B3[single graph launch]
    B3 --> W3[[conditional WHILE node<br/>runs the iteration body<br/>until new_count == 0]]
    W3 --> D3([done])
  end
```

In `v0`/`v1`/`v2` the CPU evaluates the convergence test every iteration; in
`v3` the test is done on the GPU via `cudaGraphSetConditional`, so the entire
fixpoint runs from **one** `cudaGraphLaunch`.

## Algorithm (v1–v3, semi-naive with a frontier)

1. **Setup** – load edges, build an open-addressing edge hash table keyed by
   source, seed the frontier and a global pair hash set with the base edges.
2. **Iterate** (`tc_expand`) – for each frontier fact `path(a,b)`, probe the
   edge table for every `edge(b,c)` and try to insert `path(a,c)` into the pair
   set. Only pairs that win the `atomicCAS` insert are appended to the next
   frontier.
3. **Stop** when an iteration produces no new facts.

Sizes change every iteration, so they live in **device memory**
(`d_frontier_size`, `d_new_count`) and the kernels read them at launch. That is
what lets a single instantiated graph be reused (v2) and self-drive (v3).

Per-iteration kernel sequence (identical in v1, v2, v3):

```
tc_reset      -> new_count = 0
tc_expand     -> join frontier with edges, insert new facts, fill new_frontier
tc_promote    -> copy new_frontier -> frontier
tc_set_sizes  -> frontier_size = new_count   (v3 also sets the WHILE condition)
```

`v0` instead runs the original per-iteration body:
`get_join → sort → unique → set_difference → merge` (see `v0_reference/tc_v0.cu`).

## Files

```
common/tc_core.cuh       shared kernels, IO, setup/teardown, shared main (v1-v3)
v0_reference/tc_v0.cu    ORIGINAL thrust sort/merge algorithm (perf reference)
v1_baseline/tc_v1.cu     hash-set redesign, host while-loop
v2_cudagraph/tc_v2.cu    stream-captured graph, replayed per iteration
v3_conditional/tc_v3.cu  conditional WHILE node, whole fixpoint on GPU
tests/verify.sh          runs all 4 on 4 datasets, checks TC size
tests/benchmark.sh       times all 4, speedups vs v0, writes results CSV
Makefile
```

## Build

Requires CUDA. **v3 needs CUDA 12.4+** (conditional graph nodes) and a recent
driver; `cudaStreamBeginCaptureToGraph` needs CUDA 12.3+.

```shell
# Set GPU_ARCH to your device if `native` is not detected, e.g. sm_90 / sm_80.
make all
make GPU_ARCH=sm_90 all
```

### On JLSE (verified)

Verified on a JLSE **A100-PCIE-40GB** node (driver 610.43.02 / CUDA UMD 13.3):

```shell
module load cuda/12.9.1          # 12.4+ required for v3; 12.9.1 recommended
make GPU_ARCH=sm_80 all          # A100 = sm_80  (H100 = sm_90)
make test                        # -> Passed: 16  Failed: 0  (4 versions x 4 datasets)
```

Notes:
- `cuda/12.3.0` is too old for v3 (no conditional node API). Use `cuda/12.9.1`
  (or `cuda/13.3.1`).
- No `gcc` module is required; the system compiler builds this `-std=c++17`
  code. If you do load a newer `gcc` (e.g. `gcc/12.2.0`) for the build, load the
  same module at run time so `libstdc++` matches.
- `GPU_ARCH=native` also works when compiling on the GPU node itself.

## Run

Datasets come from the parent `../data` checkout.

```shell
make run1 DATA=../data/data_7035.bin   # baseline
make run2 DATA=../data/data_7035.bin   # cudagraph
make run3 DATA=../data/data_7035.bin   # conditional

# or directly:  ./v1_baseline/tc_v1.out <data.bin> [capacity_mult] [repeats]
```

Output is one CSV line:

```
# Version,# Input,# Iterations,# TC,MedianTime,MinTime,BuildTime,Repeats,# Data
baseline,7035,64,146120,0.001234,0.001200,0.000000,10,../data/data_7035.bin
```

- `capacity_mult` (default 64) sizes the result hash set as
  `next_pow2(n_edges * mult)`. Increase it for very dense graphs.
- `repeats` (default 1) is the number of **timed** fixpoint runs; a warm-up run
  always precedes them. `MedianTime`/`MinTime` are over the timed runs and cover
  the fixpoint only. `BuildTime` is the one-time graph build+instantiate cost
  (0 for the baseline), reported separately so it is not counted in the loop
  time.

## Benchmark

`tests/benchmark.sh` runs all four versions with a warm-up + N timed runs over a
set of datasets, prints median fixpoint times with **speedups relative to the
original reference (v0)**, and writes a CSV under `results/` for plotting.

```shell
make benchmark                       # REPEATS=10, default dataset spread
make benchmark REPEATS=20            # more timed runs
make benchmark DS="data_7035.bin data_165435.bin"   # pick datasets

# or directly:
bash tests/benchmark.sh [REPEATS] [MULT] [dataset.bin ...]
```

The default dataset spread favours high iteration counts, where the CUDA-graph
strategies (fewer/zero per-iteration launches) matter most — e.g. `data_165435`
(606 iterations) and `data_409593` (247 iterations). For few-iteration graphs the
versions perform similarly.

Table columns (times = median fixpoint time in ms; `sp_* = ref(v0) / version`,
higher is faster):

```
dataset          iters      TC    ref(ms)  base(ms) graph(ms)  cond(ms)  sp_base  sp_grph  sp_cond
---------------------------------------------------------------------------------------------------------------
data_7035.bin       64  146120       ...      ...      ...       ...       ...x     ...x     ...x
```

`sp_base` isolates the gain from the **hash-set redesign** (v1 vs v0); `sp_grph`
and `sp_cond` add the gain from **CUDA graphs** (v2) and the **on-GPU loop**
(v3). The combined CSV in `results/` has one row per (version, dataset) with
`median_time`, `min_time`, and `build_time` for plotting (e.g. with the repo's
`generate_graphs.py`).

## Verify

`tests/verify.sh` runs all four versions on four datasets and asserts **both**
the TC size **and** the iteration count against the `MNMGDatalog` README. A run
only passes if both match (TC size = correct result; iteration count = the
semi-naive fixpoint converged in the expected number of rounds).

| Dataset      | File            | # Input | # Iterations | # TC    |
|--------------|-----------------|---------|--------------|---------|
| Extra small  | `hipc_2019.bin` | 5       | 3            | 9       |
| Small        | `data_10.bin`   | 10      | 3            | 18      |
| OL.cedge     | `data_7035.bin` | 7,035   | 64           | 146,120 |
| TG.cedge     | `data_23874.bin`| 23,874  | 58           | 481,121 |

```shell
make test
# or
bash tests/verify.sh
```

Each line reports `PASS`/`FAIL` per version per dataset; the script exits
non-zero if any TC size **or** iteration count is wrong. All four versions must
produce identical TC sizes and iteration counts (4 versions × 4 datasets = 16
checks).
