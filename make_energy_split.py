#!/usr/bin/env python3
"""CPU-vs-GPU energy split figure (column-width, two representative datasets).

Renders CPU energy independently of GPU: for each engine, a stacked bar shows GPU
energy (bottom) + CPU energy (top), in kJ, from the aggregate per-run CSVs
(logs/cpugpu/<tc|sg>/<Dataset>_<Engine>.csv). Two panels (1 TC + 1 SG). cuDF is
far taller than the specialized engines, so the y-axis is clipped to the
specialized range and cuDF's bar is capped with an arrow + its true total.
"""
import csv
import glob
import os
import sys

import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
import numpy as np

ENGINES = ["GPULog", "MNMGDatalog", "cuDF", "BJoin", "INLJoin"]
LABELS = {"GPULog": "GPULog", "MNMGDatalog": "MNMG", "cuDF": "cuDF",
          "BJoin": "BJoin", "INLJoin": "INLJoin"}
# one representative dataset per task; both have a cuDF run
PANELS = [("tc", "fe_body", "TC (fe_body)"), ("sg", "fe_sphere", "SG (fe_sphere)")]
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
    fig, axes = plt.subplots(1, 2, figsize=(3.5, 1.95))
    x = np.arange(len(ENGINES))
    for ax, (task, ds, title) in zip(axes, PANELS):
        data = load(task)[ds]
        gpu = np.array([data.get(e, (0, 0))[0] / 1000.0 for e in ENGINES])  # kJ
        cpu = np.array([data.get(e, (0, 0))[1] / 1000.0 for e in ENGINES])
        tot = gpu + cpu
        # clip y-axis to the specialized engines (exclude cuDF), leave headroom
        spec_max = max(t for e, t in zip(ENGINES, tot) if e != "cuDF")
        ymax = spec_max * 1.30
        ax.bar(x, gpu, 0.68, color=GPU_C, edgecolor="black", linewidth=0.4, label="GPU")
        ax.bar(x, cpu, 0.68, bottom=gpu, color=CPU_C, edgecolor="black", linewidth=0.4, label="CPU")
        ax.set_ylim(0, ymax)
        # annotate cuDF (clipped) with its true total
        ci = ENGINES.index("cuDF")
        if tot[ci] > ymax:
            ax.annotate("", xy=(x[ci], ymax * 0.99), xytext=(x[ci], ymax * 0.72),
                        arrowprops=dict(arrowstyle="-|>", color="black", lw=1.0))
            ax.text(x[ci], ymax * 0.68, f"{tot[ci]:.1f}\u2009kJ",
                    ha="center", va="top", fontsize=6, fontweight="bold")
        ax.set_xticks(x)
        ax.set_xticklabels([LABELS[e] for e in ENGINES], fontsize=5.5, rotation=30, ha="right")
        ax.margins(x=0.05)
        ax.set_title(title, fontsize=8)
        ax.tick_params(axis="y", labelsize=7)
        ax.grid(True, axis="y", linestyle="--", alpha=0.35)
        ax.set_axisbelow(True)
    axes[0].set_ylabel("Energy (kJ)", fontsize=8)
    axes[1].legend(loc="upper right", fontsize=6.5, frameon=True, handlelength=1.0,
                   borderpad=0.3, labelspacing=0.2)
    fig.tight_layout(pad=0.3, w_pad=0.6)
    fig.savefig(out, bbox_inches="tight", dpi=300)
    print("wrote", out)


if __name__ == "__main__":
    main()
