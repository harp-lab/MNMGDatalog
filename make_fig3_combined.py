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


def panel_ymax(data):
    m = 0
    for eng in ENGINES:
        d = samples(data.get(eng))
        if d is not None:
            m = max(m, float(d[1].max()))
    return m


def draw_panel(ax, data, dataset, show_ylabel, row_ymax=None):
    ax.set_title(dataset, fontsize=17, pad=3, fontweight="bold")
    ax.tick_params(axis="both", labelsize=14)

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
    xmax = right * 1.22
    ax.set_xlim(0, xmax)
    # y headroom (28%) so de-collided labels never leave the box; use the
    # row-shared max when provided so both panels in a row align.
    top = (row_ymax if row_ymax else ymax_data) * 1.28
    ax.set_ylim(0, top if top else 1)

    # de-collide energy labels vertically, keep inside ylim
    if endpoints:
        y0, y1 = ax.get_ylim()
        yspan = y1 - y0
        min_gap = 0.13 * yspan
        x_near = 0.32 * (ax.get_xlim()[1] - ax.get_xlim()[0])
        endpoints.sort(key=lambda e: (e[0], e[1]))
        ly = [e[1] for e in endpoints]
        for i in range(1, len(endpoints)):
            if abs(endpoints[i][0] - endpoints[i - 1][0]) <= x_near and (ly[i] - ly[i - 1]) < min_gap:
                ly[i] = ly[i - 1] + min_gap
        # if the whole stack exceeds the top, shift it down so nothing clips
        overflow = max(ly) - (y1 - 0.05 * yspan)
        if overflow > 0:
            ly = [y - overflow for y in ly]
        for (tt, py, E, c), yy in zip(endpoints, ly):
            if abs(yy - py) > 1e-6:
                ax.plot([tt, tt], [py, yy], color=c, lw=0.9, alpha=0.75, zorder=2)
            ax.text(tt + 0.012 * right, yy, f"{E:.0f}J", fontsize=13, color=c,
                    va="center", ha="left", fontweight="bold", zorder=4)

    if zoom_dom:
        zt, zp, ztt, ze = zoom
        # cuDF's power at the clip edge; arrow runs to the true right axis edge.
        y_edge = float(zp.iloc[max(np.searchsorted(zt, right) - 1, 0)])
        ax.annotate("", xy=(xmax, y_edge), xytext=(right, y_edge),
                    arrowprops=dict(arrowstyle="-|>", color=COLORS[ZOOM_ENGINE], lw=1.8),
                    annotation_clip=False)
        ax.text(0.5, 0.06, f"cuDF off-axis: {ztt:.0f}s, {ze:.0f}J",
                transform=ax.transAxes, ha="center", va="bottom",
                fontsize=12, color=COLORS[ZOOM_ENGINE], fontweight="bold",
                bbox=dict(boxstyle="round,pad=0.2", fc="white",
                          ec=COLORS[ZOOM_ENGINE], alpha=0.85))
    elif ZOOM_ENGINE not in data:
        # cuDF ran out of memory on this dataset: mark it explicitly.
        ax.text(0.5, 0.06, "cuDF: out of memory",
                transform=ax.transAxes, ha="center", va="bottom",
                fontsize=12, color=COLORS[ZOOM_ENGINE], fontweight="bold",
                bbox=dict(boxstyle="round,pad=0.2", fc="white",
                          ec=COLORS[ZOOM_ENGINE], alpha=0.85))

    ax.grid(True, linestyle="--", alpha=0.4)


def main():
    out = sys.argv[1] if len(sys.argv) > 1 else "drawing/charts/power_traces.pdf"
    tc, sg = load("tc"), load("sg")
    n = 4
    # taller panels; sharey='row' so the two panels in each row use one y-scale
    # and the right column drops its (duplicate) y tick labels.
    fig, axes = plt.subplots(n, 2, figsize=(18, 3.0 * n), squeeze=False, sharey="row")

    cols = (("tc", tc), ("sg", sg))
    for row_i in range(n):
        # shared y-max across the two panels in this row
        rymax = 0
        for (task, rows) in cols:
            ds = ORDER[task][row_i]
            if ds in rows:
                rymax = max(rymax, panel_ymax(rows[ds]))
        for col, (task, rows) in enumerate(cols):
            ax = axes[row_i][col]
            ds = ORDER[task][row_i]
            if ds in rows:
                draw_panel(ax, rows[ds], ds, show_ylabel=(col == 0), row_ymax=rymax)
            if row_i == 0:
                title = "Transitive Closure (TC)" if task == "tc" else "Same Generation (SG)"
                ax.annotate(title, xy=(0.5, 1.16), xycoords="axes fraction",
                            ha="center", va="bottom", fontsize=18, fontweight="bold")

    handles = [mlines.Line2D([], [], color=COLORS[e], lw=4, label=LEGEND[e]) for e in ENGINES]
    fig.legend(handles=handles, loc="upper center", ncol=len(ENGINES),
               fontsize=15, frameon=True, bbox_to_anchor=(0.5, 1.005))
    fig.supxlabel("Total Time (Seconds)", fontsize=18, y=0.012)
    fig.supylabel("Power Draw (W)", fontsize=18, x=0.008)
    fig.subplots_adjust(left=0.055, right=0.995, top=0.90, bottom=0.075,
                        hspace=0.40, wspace=0.06)
    fig.savefig(out, bbox_inches="tight", dpi=300)
    print("wrote", out)


if __name__ == "__main__":
    main()
