# Connected Components (CC) on one GPU: sort-merge vs. fused vs. CUDA graphs

Four single-GPU implementations of **(Weakly) Connected Components** as a Datalog
min-label fixpoint, in the same structure as `tc_benchmark`. All four compute the
identical `(node, component)` labeling; they differ only in how the propagation
fixpoint is executed.

```
edge(x, y) :- edge(y, x).             (symmetric / weakly connected)
cc(x, x)   :- edge(x, _).              (each node seeds itself)
cc(y, c)   :- cc(x, c), edge(x, y).    (propagate; keep the minimum c per node)
```

CC is different from TC/SG: the derived fact is not an insert-only pair — each
node keeps a single, monotonically decreasing label. The fused versions use a
dense label array `label[node]` updated with `atomicMin` along every (symmetric)
edge, driven by a `changed` flag; the reference uses the original MNMGDatalog
sort/unique(min)/merge/set_difference machinery.

## The four versions

| Dir | Version | What it changes |
|-----|---------|-----------------|
| `v0_reference/`   | **MNMGDatalog (sort-merge)** | faithful single-GPU port of `MNMGDatalog/wcc.cu`: hash join + Thrust sort/unique(min-label)/merge/set_difference. Performance **reference**. |
| `v1_baseline/`    | **fused operators (host loop)** | one `atomicMin` propagation kernel over the symmetric edge list; host `while` loop checks a changed flag. |
| `v2_cudagraph/`   | **+ CUDA Graph (CPU condition)** | the propagation round captured into a CUDA graph, replayed each round; host checks the changed flag. |
| `v3_conditional/` | **+ Conditional CUDA Graph (GPU condition)** | the whole fixpoint as a CUDA-graph conditional WHILE node; one launch runs the entire loop on the GPU. |

`v0 → v1` is an *algorithm* change (materialized min-label sort-merge → dense
atomicMin propagation); `v1 → v2 → v3` are *execution* changes.

## Correctness note (rounds may differ)

The reference (v0) and the fused versions (v1-v3) can converge in a **different
number of rounds** — `atomicMin` pulls a node's label to its final value faster
than one-hop-per-round sort-merge. This is expected. What must match (and is
checked by `make test`) is the final **(node, component) set** and the node count;
round counts are reported but not required to be equal.

## Build & run (JLSE)

**v3 needs CUDA 12.4+** (conditional graph nodes); `cuda/12.9.1` is recommended.

```
module load cuda/12.9.1
make GPU_ARCH=sm_80 all       # A100 = sm_80; Hopper = sm_90
make test                     # v1-v3 (node,component) sets == v0
make benchmark REPEATS=3      # writes results/benchmark_<ts>.csv
make plot                     # -> results/charts/{total_time,breakdown}.{png,pdf}
```

Run a single version: `make run0 DATA=../data/WikiTalk.bin REPEATS=3`
(similarly `run1`/`run2`/`run3`).

## Results

Populate after a JLSE run. End-to-end **total time** (ms) with total-time speedup
(`t↑`) and **compute-only** speedup (`c↑`) vs MNMGDatalog.

![End-to-end total time (log)](results/charts/total_time.png)
![Per-phase breakdown (broken y-axis)](results/charts/breakdown.png)

## Datasets

Defaults present in `../data`: CA-HepTh (`data_51971`), WikiTalk, web-Google,
as-skitter, roadNet-CA. The paper's target graphs **com-Orkut**, **wiki-topcats**,
**ML_Geer** are not shipped here — drop their `.bin` files (int32 src,dst pairs)
into `../data` and pass them explicitly:

```
make benchmark DS="com-Orkut.bin wiki-topcats.bin"
```

## Phase timing / memory

- **Phase timing:** `H2D` = build symmetric edge list + transfer; `D2H` =
  device→host copy of the compacted `(node,component)` pairs (memcpy only);
  `fileio` = input read + optional result write; the label compaction is counted
  in `compute`.
- `make benchmark` writes no `_cc.bin` files by default (`CC_NO_OUTPUT=1`); pass
  `BENCH_KEEP_OUTPUT=1` to also write them.

## Files

```
common/cc_core.cuh       shared kernels, IO, setup/reset/main, CSV output
v0_reference/cc_v0.cu    MNMGDatalog min-label sort-merge reference
v1_baseline/cc_v1.cu     fused atomicMin propagation, host while-loop
v2_cudagraph/cc_v2.cu    fused propagation, replayed CUDA graph (CPU condition)
v3_conditional/cc_v3.cu  fused propagation, conditional WHILE node (GPU condition)
tests/verify.sh          correctness: v1-v3 (node,component) == MNMGDatalog
tests/benchmark.sh       timing + breakdown + speedups, writes results CSV
tests/plot_results.py    two charts (total time, per-phase breakdown)
Makefile
```
