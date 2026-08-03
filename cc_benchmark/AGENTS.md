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

## Incremental / streaming mode (edge insertions)
- Setting **`CC_DELTA_FRAC`** switches the binary from the batch benchmark to
  `cc_incremental_main`: it splits the input in-driver (first `1-f` rows = base
  graph, last `f` rows = insertion stream), computes base WCC, then per batch
  times INCREMENTAL maintenance (reuse the resident `d_label`) vs. full RECOMPUTE
  (re-init labels) on the identical cumulative graph, and verifies the maintained
  labeling equals the recomputed one.
- The edge count is **device-resident** (`ctx.d_n_edges`, read by `cc_propagate`)
  so a captured graph (v2/v3) stays valid after `cc_append_edges` grows the edge
  list. `d_edges` is pre-allocated to the full graph's symmetric capacity; batches
  are memcpy'd in at the current offset (no realloc).
- Env: `CC_DELTA_FRAC`, `CC_DELTA_BATCHES`, `CC_INC_CSV` (appended; header written
  by `tests/incremental.sh`), `CC_NAME`. Driver: `tests/incremental.sh`; plot:
  `tests/plot_incremental.py` -> `results/charts/incremental.{png,pdf}`.
- **Scope:** insertions only (WCC is monotone, so this is sound and complete);
  deletions are non-monotone and out of scope; incremental TC/SG are future work.
  Only the fused family (v1/v2/v3) runs incrementally; v0 is the from-scratch
  MNMGDatalog reference.

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
