#!/usr/bin/env python3
"""Plot TC benchmark results (two charts, no chart titles).

Reads a benchmark CSV (produced by tests/benchmark.sh) and writes:
  1. total_time.png  - end-to-end total time per dataset, per version (grouped, log)
  2. breakdown.png   - absolute stacked per-phase total time, all versions
                       (one panel per dataset; bar height = total time)

Usage:
  python3 tests/plot_results.py [results/benchmark_*.csv] [--outdir results/charts]

Requires only matplotlib (no pandas). Uses the Agg backend (no display needed).
"""
import csv
import glob
import os
import sys

import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt

# Larger default fonts for readable charts.
plt.rcParams.update({
    "font.size": 13,
    "axes.titlesize": 13,
    "axes.labelsize": 13,
    "xtick.labelsize": 11,
    "ytick.labelsize": 11,
    "legend.fontsize": 12,
})

VERSIONS = ["reference", "baseline", "cudagraph", "conditional"]
# Legend / full display names (never abbreviate MNMGDatalog).
VLABEL = {
    "reference": "MNMGDatalog (sort-merge)",
    "baseline": "fused operators (host loop)",
    "cudagraph": "fused operators + CUDA graph (CPU cond.)",
    "conditional": "fused operators + conditional graph (GPU cond.)",
}
# Short two-line x-axis tags for the breakdown (kept narrow so they fit
# horizontally without rotation).
SHORT = {
    "reference": "MNMG\nDatalog",
    "baseline": "fused",
    "cudagraph": "+graph",
    "conditional": "+cond",
}
VCOLOR = {
    "reference": "#9e9e9e",
    "baseline": "#1f77b4",
    "cudagraph": "#2ca02c",
    "conditional": "#d62728",
}
# phase column -> label/color for the stacked breakdown.
# "transfer" = H2D + D2H (host<->device copies) merged into one data-transfer band.
# Colors chosen to be clearly distinct from each other.
PHASES = [
    ("fileio", "file IO", "#8c564b"),      # brown
    ("transfer", "data transfer (H2D+D2H)", "#17becf"),  # cyan
    ("setup", "setup (table+buffers alloc)", "#ff7f0e"),  # orange
    ("build", "graph build", "#2ca02c"),   # green
    ("compute", "compute", "#1f77b4"),     # blue
]


def _save(fig, outpath):
    """Save a figure as BOTH .png and .pdf (AGENTS.md: always emit png + pdf)."""
    base = os.path.splitext(outpath)[0]
    for ext in (".png", ".pdf"):
        fig.savefig(base + ext, dpi=130, bbox_inches="tight")
        print("wrote", base + ext)
    plt.close(fig)


def latest_csv():
    here = os.path.dirname(os.path.abspath(__file__))
    root = os.path.dirname(here)
    files = sorted(glob.glob(os.path.join(root, "results", "benchmark_*.csv")))
    return files[-1] if files else None


def load(path):
    """Return (datasets, rows) where rows[dataset][version] = dict of floats."""
    rows = {}
    datasets = []
    with open(path, newline="") as f:
        for r in csv.DictReader(f):
            ds = r.get("name") or r.get("dataset")
            if ds not in rows:
                rows[ds] = {}
                datasets.append(ds)
            def fnum(k):
                try:
                    return float(r[k])
                except (KeyError, ValueError):
                    return 0.0
            rows[ds][r["version"]] = {
                "total": fnum("total_time") * 1000.0,   # ms
                "compute": fnum("compute") * 1000.0,
                "fileio": fnum("fileio") * 1000.0,
                "transfer": (fnum("h2d") + fnum("d2h")) * 1000.0,  # H2D + D2H
                "setup": fnum("setup") * 1000.0,
                "build": fnum("build") * 1000.0,
                "mem": fnum("peak_mem_mb"),
                "iters": r.get("iterations", ""),
            }
    return datasets, rows


def plot_total_time(datasets, rows, outpath):
    """Grouped bars: end-to-end total time (ms), log y (no chart title)."""
    versions = [v for v in VERSIONS if any(v in rows[d] for d in datasets)]
    n, m = len(datasets), len(versions)
    x = range(n)
    w = 0.9 / max(m, 1)
    fig, ax = plt.subplots(figsize=(max(9, 1.7 * n), 4.6))
    top = 0.0
    for j, v in enumerate(versions):
        vals = [rows[d].get(v, {}).get("total", 0.0) for d in datasets]
        top = max(top, max(vals) if vals else 0.0)
        pos = [i + j * w - 0.45 + w / 2 for i in x]
        bars = ax.bar(pos, vals, width=w, label=VLABEL[v], color=VCOLOR[v])
        for b, val in zip(bars, vals):
            if val > 0:
                ax.annotate(f"{val:.0f}" if val >= 10 else f"{val:.1f}",
                            (b.get_x() + b.get_width() / 2, val),
                            ha="center", va="bottom", fontsize=8, rotation=90)
    ax.set_yscale("log")
    ax.set_ylim(top=top * 3.0)          # headroom for the tallest label, not more
    ax.set_xlim(-0.5, n - 0.5)
    ax.set_xticks(list(x))
    ax.set_xticklabels(datasets, rotation=0, ha="center")
    ax.set_ylabel("end-to-end total time (ms, log)")
    ax.legend(frameon=True, loc="upper left")
    ax.grid(axis="y", ls=":", alpha=0.5)
    fig.tight_layout(pad=0.6)
    _save(fig, outpath)


def _stacked(ax, rows, d, vers, xs, only=None):
    """Draw the phase-stacked bars for one dataset on `ax`; return per-bar totals.

    `only` (optional set of version keys) restricts which bars are actually drawn
    while keeping the x positions aligned across the top/bottom broken panels. This
    lets the broken top slice draw *only* the towering reference bar's cap, so the
    shorter fused bars can never leak in as spurious floating bars.
    """
    bottoms = [0.0] * len(vers)
    for col, lbl, color in PHASES:
        vals = [rows[d].get(v, {}).get(col, 0.0) for v in vers]
        drawn = [val if (only is None or v in only) else 0.0
                 for v, val in zip(vers, vals)]
        ax.bar(xs, drawn, width=0.6, bottom=bottoms, label=lbl, color=color)
        bottoms = [b + v for b, v in zip(bottoms, vals)]
    return bottoms


def plot_breakdown(datasets, rows, outpath, versions):
    # Absolute stacked bars, ALL versions, with a BROKEN y-axis per dataset so
    # MNMGDatalog's tall (~all-compute) bar and the much shorter fused bars are
    # both readable: a thin top slice shows its magnitude, a zoomed bottom shows
    # the fused versions' setup / transfer / build / compute split. Break marks
    # separate the two. Stacked bars stay linear (log would misrepresent a stack).
    #
    # Layout: a single figure with a nested GridSpec. One shared y-axis label,
    # x-axis tags only on the bottom dataset row (all panels share the same 4
    # versions), tight spacing to avoid whitespace.
    # Panel grid: default 3 columns (override with BD_NCOL) => a clean 2x3 for the
    # six datasets. Rendered as a full-width figure* in the paper.
    # One uniform font size for every text element. The figure is placed at
    # \columnwidth in the paper; sizing it near that physical width (below) keeps the
    # on-page font close to the single-column streaming figure (fig 4).
    FS = 13
    AXFS = 16  # axis labels (x-axis version tags + y-axis label): ~20% larger than FS
    ncol_env = os.environ.get("BD_NCOL")
    dcol = int(ncol_env) if ncol_env else min(3, len(datasets))
    dcol = max(1, min(dcol, len(datasets)))
    drow = (len(datasets) + dcol - 1) // dcol
    fig = plt.figure(figsize=(4.4 * dcol, 2.4 * drow))
    # Tight left margin (just enough for the y-label + tick numbers) so there is no
    # left whitespace, and a top strip for the legend.
    outer = fig.add_gridspec(drow, dcol, hspace=0.18, wspace=0.24,
                             left=0.075, right=0.997, top=0.90, bottom=0.11)

    legend_handles = None
    for idx, d in enumerate(datasets):
        dr, dc = divmod(idx, dcol)
        inner = outer[dr, dc].subgridspec(2, 1, height_ratios=[1, 6], hspace=0.06)
        top = fig.add_subplot(inner[0])
        bot = fig.add_subplot(inner[1])
        vers = [v for v in versions if v in rows[d]]
        xs = list(range(len(vers)))

        # Decide whether MNMGDatalog towers over the fused bars enough to warrant a
        # broken y-axis. Compute totals first (draw bars afterwards so the top slice
        # is only populated when we actually break the axis).
        totals = [sum(rows[d].get(v, {}).get(col, 0.0) for col, _, _ in PHASES)
                  for v in vers]
        overall = max(totals)
        fused = [t for v, t in zip(vers, totals) if v != "reference"]
        low = (max(fused) if fused else overall) * 1.20
        broken = overall > 1.4 * low   # only break when MNMGDatalog towers over

        # Bottom panel always carries every bar. The top slice gets ONLY the
        # reference cap, and ONLY when broken (otherwise it stays empty/off so no
        # stray cap floats above a single-panel dataset like p2p-Gnutella31).
        _stacked(bot, rows, d, vers, xs)
        if broken:
            _stacked(top, rows, d, vers, xs, only={"reference"})
        if legend_handles is None:
            legend_handles = bot.get_legend_handles_labels()

        for ax in (top, bot):
            ax.set_xlim(-0.6, len(vers) - 0.4)
            ax.grid(axis="y", ls=":", alpha=0.5)
            ax.tick_params(labelsize=FS)

        if broken:
            bot.set_ylim(0, low)
            # Top slice shows only the reference bar's cap, sitting tight against
            # the break with a small headroom for its value label. The window is a
            # thin band just below `overall` (sized to the top panel's 1:6 height
            # ratio) so the cap looks proportional in every dataset.
            top_span = low / 6.0
            top.set_ylim(overall - top_span, overall + top_span * 0.45)
            top.spines["bottom"].set_visible(False)
            bot.spines["top"].set_visible(False)
            top.tick_params(labelbottom=False, bottom=False)
            top.set_yticks([round(overall)])
            dxy = dict(marker=[(-1, -0.5), (1, 0.5)], markersize=11,
                       linestyle="none", color="k", mec="k", mew=2.2, clip_on=False)
            top.plot([0, 1], [0, 0], transform=top.transAxes, **dxy)
            bot.plot([0, 1], [1, 1], transform=bot.transAxes, **dxy)
            top.annotate(f"{overall:.0f}", (0, overall), ha="center", va="bottom",
                         fontsize=FS, clip_on=False)
        else:
            top.axis("off")
            bot.set_ylim(0, overall * 1.18)

        for xi, v, tot in zip(xs, vers, totals):
            if v == "reference" and broken:
                continue
            bot.annotate(f"{tot:.1f}", (xi, tot), ha="center", va="bottom",
                         fontsize=FS)

        # dataset title tight above the top slice
        top.set_title(d, fontsize=FS, pad=3)

        # x-axis tags only on the bottom dataset row (identical across rows).
        bot.set_xticks(xs)
        if dr == drow - 1:
            bot.set_xticklabels([SHORT[v] for v in vers], fontsize=AXFS)
        else:
            bot.set_xticklabels([])

    # shared y-axis label (larger), placed clear of the left tick numbers
    fig.supylabel("total time (ms)", fontsize=AXFS, x=0.022)
    # single-line legend with compact color handles (like the compute figure)
    if legend_handles:
        fig.legend(*legend_handles, loc="lower center", ncol=len(PHASES),
                   frameon=True, bbox_to_anchor=(0.5, 0.92), fontsize=FS,
                   columnspacing=0.8, handlelength=1.0, handletextpad=0.35)
    _save(fig, outpath)


def main():
    args = [a for a in sys.argv[1:]]
    outdir = None
    if "--outdir" in args:
        i = args.index("--outdir")
        outdir = args[i + 1]
        del args[i:i + 2]
    csv_path = args[0] if args else latest_csv()
    if not csv_path or not os.path.exists(csv_path):
        print("No CSV found. Run 'make benchmark' first, or pass a CSV path.")
        sys.exit(1)
    if outdir is None:
        outdir = os.path.join(os.path.dirname(csv_path), "charts")
    os.makedirs(outdir, exist_ok=True)
    print("reading", csv_path)

    datasets, rows = load(csv_path)
    # Two charts embedded in the README:
    plot_total_time(datasets, rows, os.path.join(outdir, "total_time.png"))
    # The breakdown is dense; restrict it to a few representative datasets (one per
    # regime) for readability. Override with BD_DATASETS="name1,name2,name3".
    bd = os.environ.get("BD_DATASETS")
    if bd:
        want = [x.strip() for x in bd.split(",") if x.strip()]
        bd_datasets = [d for d in want if d in rows] or datasets
    else:
        bd_datasets = datasets
    plot_breakdown(bd_datasets, rows, os.path.join(outdir, "breakdown.png"),
                   versions=VERSIONS)
    print("charts written to", outdir)


if __name__ == "__main__":
    main()
