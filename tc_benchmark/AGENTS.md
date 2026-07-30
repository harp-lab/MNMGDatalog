# Agent instructions for tc_benchmark

## Reading program results in scripts (do NOT parse stdout)
- Shell scripts (`benchmark.sh`, `verify.sh`) must obtain each run's metrics from
  the binary's **`TC_CSV=<file>`** output, never by parsing stdout. Every binary
  writes its single 15-column data row (no sentinel) to `TC_CSV` via
  `tc_print_row`. The scripts read that file (`cut`/`read`), so results are immune
  to stray stdout, driver/library messages, and `awk`/`grep` dialect differences.
- **Never use `awk` or `grep` on program stdout** to extract results. This class
  of parsing repeatedly produced spurious `BADLINE:`/`72`/`48`/`24` rows across
  environments. Use the `TC_CSV` file.
- Column order in the `TC_CSV` file (1-indexed): `version,input,iterations(3),
  tc(4),total_time(5),fileio(6),h2d(7),setup(8),build(9),compute(10),
  compute_min(11),d2h(12),peak_mem_mb(13),repeats(14),data(15)`.
- Tuple-level correctness (`verify.sh`) uses **`TC_DUMP=<file>`** (one `src dst`
  per line) + `sort`/`diff` against the MNMGDatalog reference — also file-based.

## Charts
- Whenever you generate a chart locally, always emit **both `.png` and `.pdf`**
  for every figure (PNG for quick viewing / README embedding, PDF for
  papers/vector use). The `tests/plot_results.py` `_save()` helper already does
  this — keep it that way, and route all figure saving through `_save()`.
- Committed example charts live under `docs/charts/` (both formats). Fresh
  benchmark runs write to `results/charts/` via `make plot`.

## Naming
- Never abbreviate the reference version as `mnmg`; always write **MNMGDatalog**.
- Version display names (charts + README):
  - MNMGDatalog (sort-merge)
  - fused operators (host loop)
  - + CUDA Graph (CPU condition)
  - + Conditional CUDA Graph (GPU condition)

## Charts scope
- Keep it to the two figures: `total_time` and `breakdown`. Speedup and peak
  memory are reported as tables in the README, not extra charts.
- Do not put chart titles on the figures; use axis labels and the dataset
  sub-titles only.
