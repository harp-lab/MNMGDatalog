#!/usr/bin/env python3
"""Combined GPU power-trace figure: TC (left column) and SG (right column),
4 datasets each, in ONE aligned 4x2 grid. Fixes reviewer complaints that the
old side-by-side figure was dense, misaligned, and had numbers outside the axes.

Reads logs/cpugpu/<tc|sg>/<Dataset>_<Engine>.csv (TotalTime(S), GPUEnergy(J),
AllGPUDraws(W)) and writes figures/power_traces.pdf.
"""
import glob
import math
import os
import sys

import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
import matplotlib.lines as mlines
import numpy as np
import pandas as pd

ENGINES = ["MNMGDatalog", "INLJoin", "GPULog", "BJoin", "cuDF"]
LEGEND = {"MNMGDatalog": "MNMGDatalog", "INLJoin": "INLJoin", "GPULog": "GPULog",
          "BJoin": "BJoin", "cuDF": "cuDF"}
ORDER = {
    "tc": ["fe_body", "vsp", "sf", "usroads"],
    "sg": ["fe_body", "loc-brightkite", "fe_sphere", "ca_hepth"],
}
SMOOTH = 15
ZOOM_ENGINE = "cuDF"
ZOOM_MARGIN = 1.15
CMAP = plt.get_cmap("tab10")
COLORS = {e: CMAP(i % 10) for i, e in enumerate(ENGINES)}


def load(task):
    rows = {}
    for path in glob.glob(f"logs/cpugpu/{task}/*.csv"):
        base = os.path.splitext(os.path.basename(path))[0]
        if "_" not in base:
            continue
        ds, eng = base.rsplit("_", 1)
        try:
            r = pd.read_csv(path).iloc[0]
        except Exception:
            continue
        rows.setdefault(ds, {})[eng] = {
            "t": float(r["TotalTime(S)"]),
            "E": float(r["GPUEnergy(J)"]),
            "draws": str(r["AllGPUDraws(W)"]),
        }
    return rows


def samples(rec):
    if rec is None or rec["t"] == 0 or not rec["draws"].strip():
        return None
    p = list(map(float, rec["draws"].replace('"', "").split(",")))
    t = np.linspace(0, rec["t"], len(p))
    ps = pd.Series(p).rolling(window=SMOOTH, min_periods=1, center=True).mean()
    return t, ps, rec["t"], rec["E"]


def draw_panel(ax, data, dataset, show_ylabel):
    ax.set_title(dataset, fontsize=15, pad=4, fontweight="bold")
    ax.tick_params(axis="both", labelsize=12)

    other_times = [data[e]["t"] for e in ENGINES
                   if e != ZOOM_ENGINE and e in data and data[e]["t"] > 0]
    zoom = samples(data.get(ZOOM_ENGINE))
    zoom_dom = bool(other_times) and zoom is not None and zoom[2] > ZOOM_MARGIN * max(other_times)

    endpoints = []
    ymax_data = 0
    for eng in ENGINES:
        d = samples(data.get(eng))
        if d is None:
            continue
        t, ps, tt, E = d
        ax.plot(t, ps, color=COLORS[eng], linewidth=1.8)
        ymax_data = max(ymax_data, float(ps.max()))
        if not (zoom_dom and eng == ZOOM_ENGINE):
            ax.scatter([tt], [ps.iloc[-1]], color=COLORS[eng],
                       edgecolor="black", zorder=3, s=32)
            endpoints.append([tt, float(ps.iloc[-1]), E, COLORS[eng]])

    # x range clipped to the fast engines; leave right headroom for labels
    if zoom_dom:
        right = math.ceil(max(other_times) * 1.05)
    else:
        all_t = other_times + ([zoom[2]] if zoom else [])
        right = math.ceil(max(all_t) * 1.05) if all_t else 1
    # add 22% right padding so endpoint "NNNJ" labels stay inside the axes
    ax.set_xlim(0, right * 1.22)
    # y headroom (25%) so de-collided labels never leave the box
    ax.set_ylim(0, ymax_data * 1.28 if ymax_data else 1)

    # de-collide energy labels vertically, keep inside ylim
    if endpoints:
        y0, y1 = ax.get_ylim()
        yspan = y1 - y0
        min_gap = 0.11 * yspan
        x_near = 0.28 * (ax.get_xlim()[1] - ax.get_xlim()[0])
        endpoints.sort(key=lambda e: (e[0], e[1]))
        ly = [e[1] for e in endpoints]
        for i in range(1, len(endpoints)):
            if abs(endpoints[i][0] - endpoints[i - 1][0]) <= x_near and (ly[i] - ly[i - 1]) < min_gap:
                ly[i] = ly[i - 1] + min_gap
        for (tt, py, E, c), yy in zip(endpoints, ly):
            yy = min(yy, y1 - 0.04 * yspan)  # clamp inside top
            if abs(yy - py) > 1e-6:
                ax.plot([tt, tt], [py, yy], color=c, lw=0.8, alpha=0.7, zorder=2)
            ax.text(tt + 0.01 * right, yy, f"{E:.0f}J", fontsize=11, color=c,
                    va="center", ha="left", fontweight="bold", zorder=4)

    if zoom_dom:
        zt, zp, ztt, ze = zoom
        y_edge = float(zp.iloc[np.searchsorted(zt, right) - 1])
        ax.annotate("", xy=(right, y_edge), xytext=(right * 0.90, y_edge),
                    arrowprops=dict(arrowstyle="-|>", color=COLORS[ZOOM_ENGINE], lw=1.8))
        ax.text(0.5, 0.05, f"cuDF off-axis: {ztt:.0f}s, {ze:.0f}J",
                transform=ax.transAxes, ha="center", va="bottom",
                fontsize=10, color=COLORS[ZOOM_ENGINE], fontweight="bold",
                bbox=dict(boxstyle="round,pad=0.2", fc="white",
                          ec=COLORS[ZOOM_ENGINE], alpha=0.85))

    ax.grid(True, linestyle="--", alpha=0.4)
    if show_ylabel:
        ax.set_ylabel("Power (W)", fontsize=12)


def main():
    out = sys.argv[1] if len(sys.argv) > 1 else "drawing/charts/power_traces.pdf"
    tc, sg = load("tc"), load("sg")
    n = 4
    # +50% taller panels: 2.1 -> ~3.2 in per row
    fig, axes = plt.subplots(n, 2, figsize=(12, 3.2 * n), squeeze=False)

    for col, (task, rows) in enumerate((("tc", tc), ("sg", sg))):
        title = "Transitive Closure (TC)" if task == "tc" else "Same Generation (SG)"
        for row_i, ds in enumerate(ORDER[task]):
            ax = axes[row_i][col]
            if ds in rows:
                draw_panel(ax, rows[ds], ds, show_ylabel=(col == 0))
            if row_i == 0:
                ax.annotate(title, xy=(0.5, 1.30), xycoords="axes fraction",
                            ha="center", va="bottom", fontsize=17, fontweight="bold")

    handles = [mlines.Line2D([], [], color=COLORS[e], lw=4, label=LEGEND[e]) for e in ENGINES]
    fig.legend(handles=handles, loc="upper center", ncol=len(ENGINES),
               fontsize=14, frameon=True, bbox_to_anchor=(0.5, 1.03))
    fig.supxlabel("Total Time (Seconds)", fontsize=16, y=0.005)
    fig.subplots_adjust(left=0.07, right=0.99, top=0.90, bottom=0.05,
                        hspace=0.45, wspace=0.16)
    fig.savefig(out, bbox_inches="tight", dpi=300)
    print("wrote", out)


if __name__ == "__main__":
    main()
