# TC Benchmark: three CUDA execution strategies

Three versions of the same single-GPU, Datalog-style **Transitive Closure (TC)**
computation. They share identical kernels and identical fixpoint logic; they
differ *only* in how the recursive `while` loop is driven. This makes them a
clean baseline for porting the same workload to other architectures.

```
path(a, c) :- path(a, b), edge(b, c).
```

| Version          | Loop driver                                            | Control returns to CPU |
|------------------|--------------------------------------------------------|------------------------|
| `v1_baseline`    | host `while` loop, direct kernel launches              | every iteration        |
| `v2_cudagraph`   | one iteration captured into a CUDA graph, replayed     | every iteration        |
| `v3_conditional` | CUDA graph **conditional WHILE node** (whole fixpoint) | never (single launch)  |

The kernels and semi-naive fixpoint mirror `MNMGDatalog/tc.cu` and
`MNMGDatalog/common/*` (same Murmur3 hashing, same open-addressing join), but the
code is simplified to a single GPU (no MPI) and self-contained.

## Algorithm

Semi-naive evaluation with a **frontier** (delta) of newly discovered facts:

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

Per-iteration kernel sequence (identical in all three versions):

```
tc_reset      -> new_count = 0
tc_expand     -> join frontier with edges, insert new facts, fill new_frontier
tc_promote    -> copy new_frontier -> frontier
tc_set_sizes  -> frontier_size = new_count   (v3 also sets the WHILE condition)
```

## Files

```
common/tc_core.cuh      shared kernels, IO, setup/teardown, shared main
v1_baseline/tc_v1.cu    host while-loop
v2_cudagraph/tc_v2.cu   stream-captured graph, replayed per iteration
v3_conditional/tc_v3.cu conditional WHILE node, whole fixpoint on GPU
tests/verify.sh         builds nothing; runs all 3 on 4 datasets, checks TC size
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

## Run

Datasets come from the parent `../data` checkout.

```shell
make run1 DATA=../data/data_7035.bin   # baseline
make run2 DATA=../data/data_7035.bin   # cudagraph
make run3 DATA=../data/data_7035.bin   # conditional

# or directly:  ./v1_baseline/tc_v1.out <data.bin> [capacity_mult]
```

Output is one CSV line:

```
# Version,# Input,# Iterations,# TC,Time,# Data
baseline,7035,64,146120,0.0123,../data/data_7035.bin
```

`capacity_mult` (default 64) sizes the result hash set as
`next_pow2(n_edges * mult)`. Increase it for very dense graphs.

## Verify

`tests/verify.sh` runs all three versions on four datasets and checks the TC
size against the `MNMGDatalog` README. The expected iteration counts also match.

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
non-zero if any TC size is wrong. All three versions must produce identical TC
sizes.
