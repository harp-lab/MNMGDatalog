#!/usr/bin/env python3
"""Generate the loop-control flowchart for the four TC versions.

Writes results/charts/workflow.{png,pdf} (AGENTS.md: always emit png + pdf).
Three compact column-width panels contrast how the recursive fixpoint loop is
driven: host loop (MNMGDatalog / fused), replayed CUDA graph (fused+graph), and
the on-GPU conditional WHILE node (fused+cond). Labels are short but meaningful,
and the per-round driver differs across panels so (a) and (b) are distinguishable.
"""
import os
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
from matplotlib.patches import FancyBboxPatch, Patch

HERE = os.path.dirname(os.path.abspath(__file__))
OUT = os.path.join(os.path.dirname(HERE), "results", "charts", "workflow")

CPU = "#cfe2f7"    # host / CPU step
GPU = "#d7ecc7"    # device / GPU step
COND = "#fbe0c8"   # convergence test
NODE = "#eef7e9"   # conditional-node container


def box(ax, x, y, w, h, text, fc, fs=7.6):
    ax.add_patch(FancyBboxPatch((x - w / 2, y - h / 2), w, h,
                 boxstyle="round,pad=0.02,rounding_size=0.08",
                 linewidth=1.0, edgecolor="#333", facecolor=fc, zorder=3))
    ax.text(x, y, text, ha="center", va="center", fontsize=fs, zorder=5)


def arr(ax, p, q, color="#333", lw=1.1):
    ax.annotate("", q, p, arrowprops=dict(arrowstyle="-|>", color=color, lw=lw),
                zorder=2)


def loopback(ax, x_left, y_from, y_to, label):
    for a, b in (((3.0, y_from), (x_left, y_from)),
                 ((x_left, y_from), (x_left, y_to))):
        ax.annotate("", b, a, arrowprops=dict(arrowstyle="-", color="#b00", lw=1.1))
    ax.annotate("", (3.0, y_to), (x_left, y_to),
                arrowprops=dict(arrowstyle="-|>", color="#b00", lw=1.1))
    ax.text(x_left - 0.35, (y_from + y_to) / 2, label, rotation=90, va="center",
            ha="center", fontsize=7.2, color="#b00")


def panel(ax, title, mode):
    ax.set_xlim(0, 10); ax.set_ylim(0, 10); ax.axis("off")
    ax.set_title(title, fontsize=9, pad=3)

    if mode in ("host", "graph"):
        # per-round driver differs: relaunch kernels (host) vs replay one graph
        drv = "launch\nkernels" if mode == "host" else "replay\nCUDA graph"
        loop = "relaunch" if mode == "host" else "replay"
        box(ax, 5.6, 9.1, 6.0, 1.4, "seed frontier", GPU)
        box(ax, 5.6, 6.7, 6.0, 1.6, drv, GPU)
        box(ax, 5.6, 4.4, 6.0, 1.4, "copy count\n(D2H)", CPU)
        box(ax, 5.6, 2.2, 6.0, 1.3, "test on host", COND)
        box(ax, 5.6, 0.5, 4.4, 1.0, "done", CPU)
        for y0, y1 in ((8.4, 7.5), (5.9, 5.1), (3.7, 2.85), (1.55, 1.0)):
            arr(ax, (5.6, y0), (5.6, y1))
        ax.text(6.1, 1.35, "no", fontsize=7, ha="left")
        loopback(ax, 1.6, 2.2, 6.7, loop)

    else:  # conditional WHILE node (entirely on GPU)
        box(ax, 5, 9.1, 6.0, 1.4, "seed frontier", GPU)
        ax.add_patch(FancyBboxPatch((1.3, 2.5), 7.4, 4.6,
                     boxstyle="round,pad=0.02,rounding_size=0.12",
                     linewidth=1.1, edgecolor="#333", facecolor=NODE, zorder=1))
        ax.text(5, 6.6, "WHILE node\n(on GPU)", ha="center", fontsize=7.6,
                style="italic", zorder=5)
        box(ax, 4.5, 4.7, 5.2, 1.2, "iteration\nbody", "#ffffff")
        box(ax, 4.5, 3.1, 5.2, 1.0, "test on\ndevice", COND)
        arr(ax, (4.5, 4.1), (4.5, 3.6))
        for a, b in (((7.1, 3.1), (8.2, 3.1)), ((8.2, 3.1), (8.2, 4.7))):
            ax.annotate("", b, a, arrowprops=dict(arrowstyle="-", color="#b00", lw=1.1))
        ax.annotate("", (7.1, 4.7), (8.2, 4.7),
                    arrowprops=dict(arrowstyle="-|>", color="#b00", lw=1.1))
        ax.text(8.55, 3.9, "loop", rotation=90, va="center", ha="center",
                fontsize=7.2, color="#b00")
        box(ax, 5, 0.7, 4.4, 1.0, "done", GPU)
        arr(ax, (5, 8.4), (5, 7.15)); arr(ax, (5, 2.5), (5, 1.25))


def main():
    os.makedirs(os.path.dirname(OUT), exist_ok=True)
    fig, axes = plt.subplots(1, 3, figsize=(3.4, 2.7))
    panel(axes[0], "(a) host loop", "host")
    panel(axes[1], "(b) CUDA graph", "graph")
    panel(axes[2], "(c) cond. node", "cond")
    handles = [Patch(facecolor=CPU, edgecolor="#333", label="host/CPU"),
               Patch(facecolor=GPU, edgecolor="#333", label="device/GPU"),
               Patch(facecolor=COND, edgecolor="#333", label="test")]
    fig.legend(handles=handles, loc="lower center", ncol=3, frameon=True,
               fontsize=7, bbox_to_anchor=(0.5, -0.03), handlelength=1.1,
               columnspacing=0.9)
    fig.tight_layout(rect=(0, 0.08, 1, 1), w_pad=0.4)
    for ext in (".png", ".pdf"):
        fig.savefig(OUT + ext, dpi=150, bbox_inches="tight")
        print("wrote", OUT + ext)
    plt.close(fig)


if __name__ == "__main__":
    main()
