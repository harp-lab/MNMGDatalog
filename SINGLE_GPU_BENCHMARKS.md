# Single-GPU Datalog benchmarks: sort-merge vs. fused vs. CUDA graphs

Three self-contained single-GPU benchmarks that take one recursive Datalog query
each and compare **four execution strategies** for its fixpoint on one NVIDIA
A100. All four versions of a query compute the **identical result** (verified
tuple-for-tuple); they differ only in *how* the recursive loop is executed.

| Query | Folder | Rule |
|-------|--------|------|
| **Transitive Closure** | [`tc_benchmark/`](tc_benchmark/) | `path(a,c) :- path(a,b), edge(b,c)` |
| **Same Generation** | [`sg_benchmark/`](sg_benchmark/) | `sg(x,y) :- edge(p,x),edge(p,y),x≠y` ; `sg(x,y) :- edge(a,x),sg(a,b),edge(b,y)` |
| **Weakly Connected Components** | [`cc_benchmark/`](cc_benchmark/) | `cc(x,x) :- edge(x,_)` ; `cc(y,c) :- cc(x,c), edge(x,y)` (keep min `c`) |

## The four versions (identical across all three benchmarks)

| Version | Display name | What it changes |
|---------|--------------|-----------------|
| **v0** | MNMGDatalog (sort-merge) | faithful single-GPU port of the original engine (`tc.cu`/`sg.cu`/`wcc.cu`): materialized relational-algebra with Thrust sort/unique/set_difference/merge. Performance **reference**. |
| **v1** | fused operators (host loop) | the RA chain fused into one CUDA kernel (open-addressing hash set for TC/SG; dense `atomicMin` label array for CC); host `while` loop. |
| **v2** | + CUDA Graph (CPU condition) | one iteration captured into a CUDA graph, replayed each round; host checks the termination flag. |
| **v3** | + Conditional CUDA Graph (GPU condition) | the whole fixpoint as a CUDA-graph conditional WHILE node — one launch runs the entire loop on the GPU. |

`v0 → v1` is an **algorithm** change; `v1 → v2 → v3` are **execution** changes.

## Headline results (JLSE A100-PCIE-40GB, CUDA 12.9.1, median of 3 runs)

Speedups are vs. MNMGDatalog (v0). "compute" = fixpoint kernels only; "total" =
end-to-end (file IO + H2D + setup + graph build + compute + D2H). Ranges span all
datasets and the three fused versions.

| Query | Best total speedup | Best compute speedup | When fusion wins |
|-------|:------------------:|:--------------------:|------------------|
| **TC** | up to **24×** | up to **35×** | grows with iteration count; loses only on very-few-round billion-pair closures |
| **SG** | up to **4.1×** | up to **5.1×** | only on **high-iteration** graphs; **loses (0.7–0.8×)** on ≤18-round graphs |
| **CC** | up to **136×** | up to **~2700×** | **always** here — dense `atomicMin` crushes materialized min-label |

Two cross-cutting findings:

- **Fusion is the dominant lever, but its payoff depends on the query and the
  round count.** CC (a simple monotone min-label pass) benefits enormously; TC
  benefits strongly and increasingly with iterations; SG (a two-hop, two-join rule
  whose fused kernel re-derives a per-round cross product) only wins once there are
  enough rounds to amortize that work — on few-round SG graphs the reference's
  batched Thrust joins win.
- **CUDA graphs / conditional nodes add a few percent at most here**, and only when
  a workload is *launch-bound* (many short rounds). Every large TC/SG/CC workload
  in this study is compute- or IO-bound with heavy rounds, so `+graph`/`+cond`
  track `fused` closely. They never hurt end-to-end time except when a very large
  one-shot graph `setup` is not amortized (a handful of TC billion-pair cases).

### Per-query result tables & charts
See each benchmark's own README for the full per-dataset tables, the two figures
(total-time log chart + per-phase broken-axis breakdown), and detailed analysis:

- **TC** → [`tc_benchmark/README.md`](tc_benchmark/README.md)
- **SG** → [`sg_benchmark/README.md`](sg_benchmark/README.md)
- **CC** → [`cc_benchmark/README.md`](cc_benchmark/README.md)

Charts live in each folder's `results/charts/{total_time,breakdown}.{png,pdf}` and
the raw per-run CSVs in `results/benchmark_*.csv`.

## Correctness

`make test` in each folder checks that v1–v3 reproduce v0's result exactly:

- **TC / SG:** byte-identical tuple sets (sorted `diff`) **and** identical
  iteration counts.
- **CC:** byte-identical `(node, component)` labelings and node counts. Round
  counts are reported but **not** required to match — `atomicMin` converges in
  fewer rounds than one-hop sort-merge, yet min-label has a unique fixpoint, so
  the final labeling is identical.

## Reproduce on JLSE

Each benchmark is independent and built the same way. **v3 requires CUDA 12.4+**
(conditional graph nodes); `cuda/12.9.1` is recommended. A100 = `sm_80`,
Hopper = `sm_90`.

```bash
module load cuda/12.9.1

for d in tc_benchmark sg_benchmark cc_benchmark; do
  cd "$d"
  make GPU_ARCH=sm_80 all      # build v0-v3
  make test                    # correctness: v1-v3 == MNMGDatalog
  make benchmark REPEATS=3     # writes results/benchmark_<timestamp>.csv
  make plot                    # -> results/charts/{total_time,breakdown}.{png,pdf}
  cd ..
done
```

Notes:
- Datasets are read from `../data` (the repo's `data/` directory; raw int32
  `(src,dst)` pairs). Default dataset lists live in each `tests/benchmark.sh`.
- `make benchmark` runs with `*_NO_OUTPUT=1` (no multi-GB `_tc/_sg/_cc.bin` result
  files written); the device→host transfer is still timed. Pass
  `BENCH_KEEP_OUTPUT=1` to also write the result files.
- Override datasets: `make benchmark DS="a.bin b.bin"`. The CC paper targets
  **com-Orkut**, **wiki-topcats**, **ML_Geer** are not shipped in `../data`; drop
  their `.bin` files there and pass them explicitly.
- Scripts read each run's metrics from the binary's `*_CSV=<file>` output (never by
  parsing stdout) and verify tuples via `*_DUMP=<file>` — robust to stray output.

## Timing model (identical across all three)

```
TotalTime = FileIO + H2D + Setup + Build + Compute(median) + D2H
```

- **Compute** is the median fixpoint time over the timed repeats, **plus** the
  one-shot result materialization/compaction (v1–v3 densify their sparse
  set/labels; MNMGDatalog densifies inside its timed fixpoint) — so compute is
  apples-to-apples across versions.
- **D2H** is purely the device→host `cudaMemcpy` of the compacted result (host
  receive-buffer allocation excluded), symmetric across versions.
- **Setup** = one-shot allocation + initialization (hash tables / label arrays /
  memset); **Build** = CUDA-graph build/instantiate (v2/v3 only).

## Layout

```
tc_benchmark/    Transitive Closure   (v0-v3, common/tc_core.cuh, tests, results)
sg_benchmark/    Same Generation      (v0-v3, common/sg_core.cuh, tests, results)
cc_benchmark/    Weakly Connected Components (v0-v3, common/cc_core.cuh, tests, results)
```

Each folder: `common/<q>_core.cuh` (shared kernels + timing + CSV), `v0_reference/`
… `v3_conditional/`, `tests/{verify.sh,benchmark.sh,plot_results.py}`, `Makefile`,
`README.md`, `AGENTS.md`, and `results/` (CSVs + `charts/`).
