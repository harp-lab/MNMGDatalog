#!/usr/bin/env python3
"""Cross-engine fixpoint-compute comparison chart (TC + SG).

Reads the TC and SG benchmark CSVs (our engines) and the GPUlog comparison CSVs,
and writes a single-column, two-panel grouped bar chart (TC on top, SG on the
bottom) on a log y-axis so the order-of-magnitude gaps between engines are legible:

    results/charts/compute.png
    results/charts/compute.pdf

Engines (per dataset group): MNMGDatalog, fused, +CUDA graph, +cond node, GPUlog.
Only the fixpoint *compute* phase is plotted (GPUlog reports compute only), so this
is an apples-to-apples comparison of the recursive-loop kernels, not end-to-end.

Usage (paths default to the newest CSVs found next to this repo):
  python3 tests/plot_compute.py \
      [--tc results/benchmark_*.csv] [--tc-gpulog results/gpulog_*.csv] \
      [--sg ../sg_benchmark/results/benchmark_*.csv] \
      [--sg-gpulog ../sg_benchmark/results/gpulog_*.csv] \
      [--outdir results/charts]

Requires only matplotlib (no pandas). Uses the Agg backend (no display needed).
"""
import argparse
import csv
import glob
import os

import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt

plt.rcParams.update({
    "font.size": 24,
    "axes.labelsize": 24,
    "xtick.labelsize": 20,
    "ytick.labelsize": 20,
    "legend.fontsize": 20,
})

# Column order = draw order (left->right within each dataset group).
# key: (legend label, color). "gpulog" is synthesised from the GPUlog CSV.
ENGINES = [
    ("reference",   "MNMGDatalog",  "#9e9e9e"),
    ("baseline",    "fused",        "#1f77b4"),
    ("cudagraph",   "+CUDA graph",  "#2ca02c"),
    ("conditional", "+cond node",   "#d62728"),
    ("gpulog",      "GPUlog",       "#9467bd"),
]

# Dataset display order per query (matches the paper tables).
TC_ORDER = ["OL", "TG", "SF", "fe_body", "Gnutella31", "vsp_finan"]
SG_ORDER = ["CA-HepTh", "fe_sphere", "loc-Brightkite", "fe_body"]

# Our benchmark CSV `name` field -> the short label used on the axis / GPUlog CSV.
NAME_TC = {
    "OL.cedge": "OL", "TG.cedge": "TG", "SF.cedge": "SF", "fe_body": "fe_body",
    "p2p-Gnutella31": "Gnutella31", "vsp_finan": "vsp_finan",
}
NAME_SG = {  # SG benchmark `name` already matches the axis labels
    "CA-HepTh": "CA-HepTh", "fe_sphere": "fe_sphere",
    "loc-Brightkite": "loc-Brightkite", "fe_body": "fe_body",
}


def _save(fig, outpath):
    """Save a figure as BOTH .png and .pdf (AGENTS.md: always emit png + pdf)."""
    base = os.path.splitext(outpath)[0]
    for ext in (".png", ".pdf"):
        fig.savefig(base + ext, dpi=130, bbox_inches="tight")
        print("wrote", base + ext)
    plt.close(fig)


def _newest(pattern):
    files = sorted(glob.glob(pattern))
    return files[-1] if files else None


def load_ours(path, name_map):
    """compute-ms per {display_dataset: {version: ms}} from a benchmark CSV."""
    out = {}
    with open(path, newline="") as f:
        for r in csv.DictReader(f):
            disp = name_map.get(r["name"], r["name"])
            out.setdefault(disp, {})[r["version"]] = float(r["compute"]) * 1000.0
    return out


def load_gpulog(path):
    """compute-ms per {display_dataset: ms} from a gpulog CSV."""
    out = {}
    with open(path, newline="") as f:
        for r in csv.DictReader(f):
            out[r["name"]] = float(r["gpulog_time_s"]) * 1000.0
    return out


def _panel(ax, order, ours, gpulog, tag):
    n = len(order)
    m = len(ENGINES)
    w = 0.9 / m
    top = 0.0
    for j, (key, label, color) in enumerate(ENGINES):
        vals = []
        for d in order:
            if key == "gpulog":
                vals.append(gpulog.get(d, 0.0))
            else:
                vals.append(ours.get(d, {}).get(key, 0.0))
        top = max([top] + vals)
        pos = [i + j * w - 0.45 + w / 2 for i in range(n)]
        bars = ax.bar(pos, vals, width=w, label=label, color=color)
        for b, v in zip(bars, vals):
            if v > 0:
                ax.annotate(f"{v:.0f}" if v >= 10 else f"{v:.1f}",
                            (b.get_x() + b.get_width() / 2, v),
                            ha="center", va="bottom", fontsize=14, rotation=90)
    ax.set_yscale("log")
    ax.set_ylim(top=top * 4.0)   # headroom for the rotated value labels
    ax.set_xlim(-0.5, n - 0.5)
    ax.set_xticks(range(n))
    ax.set_xticklabels(order, rotation=0, ha="center", fontsize=22)
    ax.set_ylabel("compute (ms, log)")
    ax.grid(axis="y", ls=":", alpha=0.5)
    # per-panel query tag in the top-left corner
    ax.text(0.012, 0.93, tag, transform=ax.transAxes, fontsize=24,
            fontweight="bold", va="top",
            bbox=dict(boxstyle="round,pad=0.2", fc="white", ec="0.7", alpha=0.9))


def main():
    here = os.path.dirname(os.path.abspath(__file__))
    root = os.path.dirname(here)            # tc_benchmark/
    sg_root = os.path.join(root, "..", "sg_benchmark")

    ap = argparse.ArgumentParser()
    ap.add_argument("--tc", default=_newest(os.path.join(root, "results", "benchmark_*.csv")))
    ap.add_argument("--tc-gpulog", default=_newest(os.path.join(root, "results", "gpulog_*.csv")))
    ap.add_argument("--sg", default=_newest(os.path.join(sg_root, "results", "benchmark_*.csv")))
    ap.add_argument("--sg-gpulog", default=_newest(os.path.join(sg_root, "results", "gpulog_*.csv")))
    ap.add_argument("--outdir", default=os.path.join(root, "results", "charts"))
    a = ap.parse_args()

    for label, p in [("TC", a.tc), ("TC gpulog", a.tc_gpulog),
                     ("SG", a.sg), ("SG gpulog", a.sg_gpulog)]:
        if not p or not os.path.exists(p):
            raise SystemExit(f"missing {label} CSV: {p}")
        print("reading", label, "->", p)

    tc = load_ours(a.tc, NAME_TC)
    tc_g = load_gpulog(a.tc_gpulog)
    sg = load_ours(a.sg, NAME_SG)
    sg_g = load_gpulog(a.sg_gpulog)

    os.makedirs(a.outdir, exist_ok=True)
    fig, (ax_tc, ax_sg) = plt.subplots(2, 1, figsize=(13.0, 11.0))
    _panel(ax_tc, TC_ORDER, tc, tc_g, "TC")
    _panel(ax_sg, SG_ORDER, sg, sg_g, "SG")

    # single shared legend above both panels
    handles, labels = ax_tc.get_legend_handles_labels()
    fig.legend(handles, labels, loc="lower center", ncol=len(ENGINES),
               frameon=True, bbox_to_anchor=(0.5, 0.985))
    fig.tight_layout(pad=0.6, rect=(0, 0, 1, 0.97))
    _save(fig, os.path.join(a.outdir, "compute.png"))


if __name__ == "__main__":
    main()
