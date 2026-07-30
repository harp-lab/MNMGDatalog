# Agent instructions for cc_benchmark

This benchmark mirrors `tc_benchmark` for **(Weakly) Connected Components (CC)**.
Same four-version structure, same CSV schema, same scripts/charts. The algorithm
is min-label propagation (not an insert-only set), so the fused versions use a
dense label array with `atomicMin`.

## The CC rule
```
edge(x, y) :- edge(y, x).             (symmetric / weakly connected)
cc(x, x)   :- edge(x, _).              (each node seeds itself)
cc(y, c)   :- cc(x, c), edge(x, y).    (propagate; keep the minimum c per node)
```
Canonical result: one `(node, component)` row per node, component = minimum
reachable node id. All four versions agree on this exact set.

## Reading program results in scripts (do NOT parse stdout)
- Shell scripts (`benchmark.sh`, `verify.sh`) obtain metrics from the binary's
  **`CC_CSV=<file>`** output, never stdout. 15-column row via `cc_print_row`.
- **Never use `awk` or `grep` on program stdout.** Use `CC_CSV`.
- Column order (1-indexed): `version,input,iterations(3),cc(4)=num_nodes,
  total_time(5),fileio(6),h2d(7),setup(8),build(9),compute(10),compute_min(11),
  d2h(12),peak_mem_mb(13),repeats(14),data(15)`.
- Tuple-level correctness (`verify.sh`) uses **`CC_DUMP=<file>`** (one
  `node component` per line) + `sort`/`diff` against the MNMGDatalog reference.
- `CC_NO_OUTPUT=1` skips only the disk write of the `_cc.bin` result file.

## Important: round counts may differ; the RESULT set must not
The sort-merge reference (v0) and the atomicMin fused versions (v1-v3) can take a
**different number of rounds** to converge (atomicMin pulls labels to their final
value faster). `verify.sh` therefore requires the final `(node,component)` SET to
be byte-identical and the node count to match, but NOT identical round counts.
`benchmark.sh` prints a `rounds` column and does not warn on round differences.

## Timing model (identical to TC/SG)
`TotalTime = FileIO + H2D + Setup + Build + Compute(median) + D2H`. Compute
includes the one-shot label compaction; D2H = device->host memcpy only. H2D also
builds the symmetric edge list on the host before transfer. `make benchmark` runs
with `CC_NO_OUTPUT=1` by default; `BENCH_KEEP_OUTPUT=1` to write result files.

## Charts / Naming
- Always emit **both `.png` and `.pdf`** (via `_save()`); charts go to
  `results/charts/`, never `docs/`. Two figures only: `total_time`, `breakdown`.
- Never abbreviate the reference as `mnmg`; write **MNMGDatalog**. Version display
  names: MNMGDatalog (sort-merge) / fused operators (host loop) / + CUDA Graph
  (CPU condition) / + Conditional CUDA Graph (GPU condition).

## Datasets
Default CC datasets (present in ../data): CA-HepTh (`data_51971`), WikiTalk,
web-Google, as-skitter, roadNet-CA. The paper's target graphs **com-Orkut**,
**wiki-topcats**, **ML_Geer** are NOT shipped in ../data; drop their `.bin` files
there and pass them explicitly to `benchmark.sh`.
