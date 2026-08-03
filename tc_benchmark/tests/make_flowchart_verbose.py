#!/usr/bin/env python3
"""Verbose (text-heavy) loop-control reference for the four TC versions.

Writes results/charts/workflow_verbose.{png,pdf}. This is a REFERENCE draft with
full sentences in every box, meant to be redrawn by hand (like hashset_draw.pdf);
it is NOT the figure included in the paper. Three panels spell out exactly how the
recursive fixpoint loop is driven, so the wording can be lifted directly:
  (a) host loop        [MNMGDatalog, fused]
  (b) replayed graph   [fused+graph]
  (c) conditional node [fused+cond]
"""
import os
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
from matplotlib.patches import FancyBboxPatch, Patch

HERE = os.path.dirname(os.path.abspath(__file__))
OUT = os.path.join(os.path.dirname(HERE), "results", "charts", "workflow_verbose")

CPU = "#cfe2f7"; GPU = "#d7ecc7"; COND = "#fbe0c8"; NODE = "#eef7e9"


def box(ax, x, y, w, h, text, fc, fs=9):
    ax.add_patch(FancyBboxPatch((x - w / 2, y - h / 2), w, h,
                 boxstyle="round,pad=0.02,rounding_size=0.06",
                 linewidth=1.1, edgecolor="#333", facecolor=fc, zorder=3))
    ax.text(x, y, text, ha="center", va="center", fontsize=fs, zorder=5)


def arr(ax, p, q, color="#333", lw=1.4):
    ax.annotate("", q, p, arrowprops=dict(arrowstyle="-|>", color=color, lw=lw),
                zorder=2)


def loopback(ax, x_left, y_from, y_to, label):
    for a, b in (((2.2, y_from), (x_left, y_from)),
                 ((x_left, y_from), (x_left, y_to))):
        ax.annotate("", b, a, arrowprops=dict(arrowstyle="-", color="#b00", lw=1.4))
    ax.annotate("", (2.2, y_to), (x_left, y_to),
                arrowprops=dict(arrowstyle="-|>", color="#b00", lw=1.4))
    ax.text(x_left - 0.45, (y_from + y_to) / 2, label, rotation=90, va="center",
            ha="center", fontsize=9, color="#b00")


def panel(ax, title, mode):
    ax.set_xlim(0, 10); ax.set_ylim(0, 10); ax.axis("off")
    ax.set_title(title, fontsize=12, pad=6, fontweight="bold")

    box(ax, 5.6, 9.1, 7.4, 1.2,
        "seed frontier $F$ with base facts\n$path(a,b)\\!:\\!-\\,edge(a,b)$", GPU)

    if mode in ("host", "graph"):
        if mode == "host":
            body = ("GPU iteration body (4 kernels):\n"
                    "reset $\\to$ expand (join $F$ with edges,\n"
                    "insert into result set) $\\to$ promote $\\to$ sizes")
            loop = "yes: relaunch the 4 kernels"
        else:
            body = ("launch the captured CUDA graph\n"
                    "(= one iteration body: reset $\\to$ expand\n"
                    "$\\to$ promote $\\to$ sizes), replayed as a unit")
            loop = "yes: replay the graph"
        box(ax, 5.6, 6.7, 7.4, 1.7, body, GPU)
        box(ax, 5.6, 4.3, 7.4, 1.2, "copy new_count from\ndevice to host (D2H)", CPU)
        box(ax, 5.6, 2.1, 6.0, 1.1, "host tests:\nnew_count $>$ 0 ?", COND)
        box(ax, 5.6, 0.4, 5.6, 1.0, "no $\\Rightarrow$ done\n(compact + copy result)", CPU)
        arr(ax, (5.6, 8.5), (5.6, 7.55)); arr(ax, (5.6, 5.85), (5.6, 4.9))
        arr(ax, (5.6, 3.7), (5.6, 2.65)); arr(ax, (5.6, 1.55), (5.6, 0.9))
        loopback(ax, 1.3, 2.1, 6.7, loop)

    else:  # conditional WHILE node
        ax.add_patch(FancyBboxPatch((1.2, 2.2), 8.4, 5.2,
                     boxstyle="round,pad=0.02,rounding_size=0.1",
                     linewidth=1.2, edgecolor="#333", facecolor=NODE, zorder=1))
        ax.text(5.4, 7.0, "CUDA-graph conditional WHILE node\n(runs entirely on the GPU)",
                ha="center", fontsize=9.5, style="italic", zorder=5)
        box(ax, 5.2, 5.4, 6.8, 1.3,
            "iteration body:\nreset $\\to$ expand $\\to$ promote $\\to$ sizes", "#ffffff")
        box(ax, 5.2, 3.3, 7.4, 1.3,
            "device kernel sets loop condition\n"
            "$=$ (new_count $>$ 0) via\ncudaGraphSetConditional", COND, fs=8.5)
        arr(ax, (5.2, 4.75), (5.2, 3.95))
        for a, b in (((8.9, 3.3), (9.9, 3.3)), ((9.9, 3.3), (9.9, 5.4))):
            ax.annotate("", b, a, arrowprops=dict(arrowstyle="-", color="#b00", lw=1.4))
        ax.annotate("", (8.9, 5.4), (9.9, 5.4),
                    arrowprops=dict(arrowstyle="-|>", color="#b00", lw=1.4))
        ax.text(10.25, 4.35, "loop on GPU\nwhile condition holds", rotation=90,
                va="center", ha="center", fontsize=8.5, color="#b00")
        box(ax, 5.4, 0.7, 7.6, 1.0,
            "done after ONE cudaGraphLaunch\n(no per-round host round-trip)", GPU)
        arr(ax, (5.6, 8.5), (5.4, 7.45)); arr(ax, (5.4, 2.2), (5.4, 1.2))


def main():
    os.makedirs(os.path.dirname(OUT), exist_ok=True)
    fig, axes = plt.subplots(1, 3, figsize=(15.5, 5.4))
    panel(axes[0], "(a) host loop  [MNMGDatalog, fused]", "host")
    panel(axes[1], "(b) replayed CUDA graph  [fused+graph]", "graph")
    panel(axes[2], "(c) conditional WHILE node  [fused+cond]", "cond")
    handles = [Patch(facecolor=CPU, edgecolor="#333", label="host / CPU step"),
               Patch(facecolor=GPU, edgecolor="#333", label="device / GPU step"),
               Patch(facecolor=COND, edgecolor="#333", label="convergence test")]
    fig.legend(handles=handles, loc="lower center", ncol=3, frameon=True,
               fontsize=11, bbox_to_anchor=(0.5, -0.02))
    fig.tight_layout(rect=(0, 0.06, 1, 1), w_pad=2.0)
    for ext in (".png", ".pdf"):
        fig.savefig(OUT + ext, dpi=150, bbox_inches="tight")
        print("wrote", OUT + ext)
    plt.close(fig)


if __name__ == "__main__":
    main()
