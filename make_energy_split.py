#!/usr/bin/env python3
"""CPU-vs-GPU energy split figure (Fig.\\ energy_split).

Renders CPU energy independently of GPU energy: for each engine on each dataset,
a stacked bar shows GPU energy (bottom) + CPU energy (top), from the aggregate
per-run CSVs (logs/cpugpu/<tc|sg>/<Dataset>_<Engine>.csv). Two panels: TC and SG.
cuDF is omitted from the bars (off-scale / OOM on several datasets); the point is
the CPU vs GPU balance across the specialized engines.
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
ORDER = {
    "tc": ["fe_body", "sf", "usroads", "vsp"],
    "sg": ["ca_hepth", "fe_body", "fe_sphere", "loc-brightkite"],
}
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
    fig, axes = plt.subplots(1, 2, figsize=(12, 3.4))
    for ax, task, title in zip(axes, ("tc", "sg"), ("Transitive Closure (TC)", "Same Generation (SG)")):
        data = load(task)
        datasets = [d for d in ORDER[task] if d in data]
        n_e = len(ENGINES)
        group_w = 0.8
        bar_w = group_w / n_e
        x = np.arange(len(datasets))
        for i, eng in enumerate(ENGINES):
            gpu = [data[ds].get(eng, (0, 0))[0] for ds in datasets]
            cpu = [data[ds].get(eng, (0, 0))[1] for ds in datasets]
            xi = x - group_w / 2 + (i + 0.5) * bar_w
            ax.bar(xi, gpu, bar_w * 0.95, color=GPU_C, edgecolor="black", linewidth=0.4,
                   label="GPU" if i == 0 else None)
            ax.bar(xi, cpu, bar_w * 0.95, bottom=gpu, color=CPU_C, edgecolor="black",
                   linewidth=0.4, label="CPU" if i == 0 else None)
        ax.set_xticks(x)
        ax.set_xticklabels(datasets, fontsize=13)
        ax.set_title(title, fontsize=15, fontweight="bold")
        ax.tick_params(axis="y", labelsize=12)
        ax.grid(True, axis="y", linestyle="--", alpha=0.35)
        ax.set_axisbelow(True)
        # engine labels: annotate the group with a small legend of order
    axes[0].set_ylabel("Energy (J)", fontsize=14)
    # one shared legend (GPU/CPU) + engine order note
    handles, labels = axes[0].get_legend_handles_labels()
    axes[0].legend(handles, labels, loc="upper left", fontsize=12, frameon=True)
    order_txt = "Bars per dataset (L\u2192R): " + ", ".join(LABELS[e] for e in ENGINES)
    fig.text(0.5, -0.02, order_txt, ha="center", fontsize=11)
    fig.tight_layout()
    fig.savefig(out, bbox_inches="tight", dpi=300)
    print("wrote", out)


if __name__ == "__main__":
    main()
