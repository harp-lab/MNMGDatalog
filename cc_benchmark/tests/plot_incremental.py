#!/usr/bin/env python3
"""Plot the incremental / streaming WCC experiment (no chart titles).

Reads an incremental CSV (from tests/incremental.sh) and writes one figure with
two panels: (a) speedup of incremental maintenance over full recompute, and
(b) incremental maintenance latency, both vs. insertion batch size, one line per
graph. Emits BOTH .png and .pdf.

Usage:
  python3 tests/plot_incremental.py [results/incremental_*.csv] [--outdir results/charts]

Requires only matplotlib (Agg backend).
"""
import csv
import glob
import os
import sys

import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt

plt.rcParams.update({
    "font.size": 13, "axes.titlesize": 13, "axes.labelsize": 13,
    "xtick.labelsize": 11, "ytick.labelsize": 11, "legend.fontsize": 11,
})

# Which fused version to plot for the headline (incrementality is version-agnostic;
# same kernels). baseline = fused host loop.
PLOT_VERSION = "baseline"
MARKERS = ["o", "s", "^", "D", "v", "P", "X"]


def _save(fig, outpath):
    base = os.path.splitext(outpath)[0]
    for ext in (".png", ".pdf"):
        fig.savefig(base + ext, dpi=130, bbox_inches="tight")
        print("wrote", base + ext)
    plt.close(fig)


def latest_csv():
    here = os.path.dirname(os.path.abspath(__file__))
    root = os.path.dirname(here)
    files = sorted(glob.glob(os.path.join(root, "results", "incremental_*.csv")))
    return files[-1] if files else None


def load(path):
    """Return per-dataset sorted lists of (delta_edges, inc_ms, rec_ms, speedup)."""
    by = {}
    order = []
    with open(path, newline="") as f:
        for r in csv.DictReader(f):
            if r["version"] != PLOT_VERSION:
                continue
            d = r["name"]
            if d not in by:
                by[d] = []
                order.append(d)
            # delta_rows are undirected input rows == edge insertions in the batch
            by[d].append((
                int(r["delta_rows"]),
                float(r["inc_ms"]) * 1000.0,
                float(r["rec_ms"]) * 1000.0,
                float(r["speedup"]),
            ))
    for d in by:
        by[d].sort(key=lambda t: t[0])
    return order, by


def main():
    args = list(sys.argv[1:])
    outdir = None
    if "--outdir" in args:
        i = args.index("--outdir")
        outdir = args[i + 1]
        del args[i:i + 2]
    csv_path = args[0] if args else latest_csv()
    if not csv_path or not os.path.exists(csv_path):
        print("no incremental CSV found; run tests/incremental.sh first")
        return
    print("reading", csv_path)
    if outdir is None:
        outdir = os.path.join(os.path.dirname(csv_path), "charts")
    os.makedirs(outdir, exist_ok=True)

    order, by = load(csv_path)
    if not order:
        print("no rows for version", PLOT_VERSION)
        return

    # Stacked 2-row, compact layout so the figure fits a single paper column.
    fig, (axs, axl) = plt.subplots(2, 1, figsize=(4.0, 3.9))
    for k, d in enumerate(order):
        rows = by[d]
        xs = [r[0] for r in rows]
        sp = [r[3] for r in rows]
        inc = [r[1] for r in rows]
        m = MARKERS[k % len(MARKERS)]
        axs.plot(xs, sp, marker=m, label=d)
        axl.plot(xs, inc, marker=m, label=d)

    axs.axhline(1.0, ls=":", color="k", alpha=0.6)  # break-even
    axs.set_xscale("log")
    axs.set_yscale("log")
    axs.set_ylabel(r"speedup ($\times$)")
    axs.grid(True, which="both", ls=":", alpha=0.5)
    axs.legend(frameon=True, fontsize=8, ncol=2, loc="upper right")
    axs.tick_params(labelbottom=False)  # shared x with bottom panel

    axl.set_xscale("log")
    axl.set_yscale("log")
    axl.set_xlabel("edge insertions in batch")
    axl.set_ylabel("maint. time (ms)")
    axl.grid(True, which="both", ls=":", alpha=0.5)

    fig.tight_layout(pad=0.4)
    _save(fig, os.path.join(outdir, "incremental.png"))
    print("charts written to", outdir)


if __name__ == "__main__":
    main()
