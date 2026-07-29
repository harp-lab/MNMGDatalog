# Agent instructions for tc_benchmark

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
