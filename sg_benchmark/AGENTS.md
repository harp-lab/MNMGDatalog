# Agent instructions for sg_benchmark

This benchmark mirrors `tc_benchmark` for the **Same Generation (SG)** query. Same
four-version structure, same CSV schema, same scripts/charts. The differences are
algorithmic (SG is a two-hop / two-join recursive rule) and cosmetic (SG naming).

## The SG rule
```
sg(X, Y) :- edge(P, X), edge(P, Y), X != Y.        (base)
sg(X, Y) :- edge(A, X), sg(A, B), edge(B, Y).      (recursive, two joins)
```
The derived fact `sg(X,Y)` is a pair, so v1-v3 dedup/novelty use the same
open-addressing pair hash set as TC; only the `sg_expand` kernel is a two-hop join.

## Reading program results in scripts (do NOT parse stdout)
- Shell scripts (`benchmark.sh`, `verify.sh`) must obtain each run's metrics from
  the binary's **`SG_CSV=<file>`** output, never by parsing stdout. Every binary
  writes its single 15-column data row to `SG_CSV` via `sg_print_row`.
- **Never use `awk` or `grep` on program stdout** to extract results. Use `SG_CSV`.
- Column order in the `SG_CSV` file (1-indexed): `version,input,iterations(3),
  sg(4),total_time(5),fileio(6),h2d(7),setup(8),build(9),compute(10),
  compute_min(11),d2h(12),peak_mem_mb(13),repeats(14),data(15)`.
- Tuple-level correctness (`verify.sh`) uses **`SG_DUMP=<file>`** (one `x y`
  per line) + `sort`/`diff` against the MNMGDatalog reference (v0).
- `SG_NO_OUTPUT=1` skips only the disk write of the `_sg.bin` result file.

## Timing model (identical to TC)
`TotalTime = FileIO + H2D + Setup + Build + Compute(median) + D2H`. Compute
includes the one-shot result compaction (v1-v3 densify their sparse hash set;
MNMGDatalog densifies inside its timed fixpoint). D2H = only the device->host
memcpy; host receive-buffer malloc excluded. `make benchmark` runs with
`SG_NO_OUTPUT=1` by default; `BENCH_KEEP_OUTPUT=1` to write result files.

## Charts
- Always emit **both `.png` and `.pdf`** for every figure (via `_save()`).
- Generate all charts into `results/charts/` (both formats), **never** into
  `docs/`. Keep it to the two figures: `total_time` and `breakdown` (no titles).

## Naming
- Never abbreviate the reference version as `mnmg`; always write **MNMGDatalog**.
- Version display names (charts + README):
  - MNMGDatalog (sort-merge)
  - fused operators (host loop)
  - + CUDA Graph (CPU condition)
  - + Conditional CUDA Graph (GPU condition)

## Datasets
Default SG datasets (single-GPU, fit a 40 GB A100): CA-HepTh (`data_51971`),
fe_sphere (`data_49152`), loc-Brightkite (`data_214078`), fe_body (`data_163734`).
SG closures blow up fast (two-hop), so right-size `ds_mult` in `benchmark.sh`.

## Comparing against GPUlog (gdlog, ASPLOS'25)
- `tests/gpulog_compare.sh` (`make gpulog`) runs GPUlog on the SAME graphs and
  writes `results/gpulog_<ts>.csv`. Set `GDLOG_DIR=/path/to/gdlog` (default: a
  sibling checkout). It converts `.bin`->`.txt` via `tests/bin_to_txt.py` when a
  `.txt` is absent (GPUlog reads tab-separated text).
- GPUlog is a THIRD-PARTY binary with no machine-readable output, so parsing its
  stdout with `grep` (`sg time:`, `sg counts`) is acceptable here; this is the ONLY
  place we parse a binary's stdout. Our own binaries still report via `SG_CSV`.
- GPUlog reports fixpoint `compute` time (compare to our `compute` column). It
  covers TC and SG only (no WCC).
