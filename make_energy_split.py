#!/usr/bin/env python3
"""CPU-vs-GPU energy split figure (column-width, single row).

Renders CPU energy independently of GPU: for each engine, a stacked bar shows GPU
energy (bottom) + CPU energy (top), from the aggregate per-run CSVs
(logs/cpugpu/<tc|sg>/<Dataset>_<Engine>.csv). Two panels (TC | SG) side by side,
engines labeled on the x-axis. cuDF omitted (off-scale/OOM); the point is the
CPU vs GPU balance across the specialized engines.
"""
import csv
import glob
import os
import sys

import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
import numpy as np

ENGINES = ["GPULog", "MNMGDatalog", "BJoin", "INLJoin"]
LABELS = {"GPULog": "GPULog", "MNMGDatalog": "MNMG", "BJoin": "BJoin", "INLJoin": "INLJoin"}
# one representative dataset per task
PANELS = [("tc", "fe_body", "TC (fe_body)"), ("sg", "loc-brightkite", "SG (loc-brightkite)")]
GPU_C = "#a9d18e"   # green (GPU)
CPU_C = "#bfbfbf"   # grey (CPU)


def load(task):
    d = {}
    for p in glob.glob(f"logs/cpugpu/{task}/*.csv"):
        ds, eng = os.path.splitext(os.path.basename(p))[0].rsplit("_", 1)
        r = list(csv.DictReader(open(p)))[0]
        d.setdefault(ds, {})[eng] = (float(r["GPUEnergy(J)"]), float(r["CPUEnergy(J)"]))
    return d


def main():
    out = sys.argv[1] if len(sys.argv) > 1 else "drawing/charts/energy_split.pdf"
    # column-width and short: wider, low height to save vertical space
    fig, axes = plt.subplots(1, 2, figsize=(3.5, 1.75))
    x = np.arange(len(ENGINES))
    for ax, (task, ds, title) in zip(axes, PANELS):
        data = load(task)[ds]
        gpu = [data[e][0] / 1000.0 for e in ENGINES]   # kJ
        cpu = [data[e][1] / 1000.0 for e in ENGINES]
        ax.bar(x, gpu, 0.62, color=GPU_C, edgecolor="black", linewidth=0.4, label="GPU")
        ax.bar(x, cpu, 0.62, bottom=gpu, color=CPU_C, edgecolor="black", linewidth=0.4, label="CPU")
        ax.set_xticks(x)
        ax.set_xticklabels([LABELS[e] for e in ENGINES], fontsize=6)
        ax.margins(x=0.08)
        ax.set_title(title, fontsize=8)
        ax.tick_params(axis="y", labelsize=7)
        ax.grid(True, axis="y", linestyle="--", alpha=0.35)
        ax.set_axisbelow(True)
    axes[0].set_ylabel("Energy (kJ)", fontsize=8)
    axes[0].legend(loc="upper right", fontsize=6.5, frameon=True, handlelength=1.0,
                   borderpad=0.3, labelspacing=0.2)
    fig.tight_layout(pad=0.3, w_pad=0.6)
    fig.savefig(out, bbox_inches="tight", dpi=300)
    print("wrote", out)


if __name__ == "__main__":
    main()
