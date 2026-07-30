#!/usr/bin/env python3
"""Generate the loop-control flowchart for the four TC versions.

Writes docs/charts/workflow.{png,pdf} (AGENTS.md: always emit png + pdf).
Pure matplotlib. Three panels contrast how the recursive fixpoint loop is
driven: host loop (MNMGDatalog / fused), replayed CUDA graph (fused+graph), and
the on-GPU conditional WHILE node (fused+cond).
"""
import os
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
from matplotlib.patches import FancyBboxPatch, FancyArrowPatch, Patch

HERE = os.path.dirname(os.path.abspath(__file__))
OUT = os.path.join(os.path.dirname(HERE), "docs", "charts", "workflow")

CPU = "#d9e8fb"    # host / CPU boxes
GPU = "#dff0d8"    # device / GPU boxes
COND = "#fde9d9"   # convergence test
NODE = "#eef7e9"   # conditional-node container


def box(ax, x, y, w, h, text, fc, fs=9.5, style="round,pad=0.02,rounding_size=0.06",
        italic=False):
    ax.add_patch(FancyBboxPatch((x - w / 2, y - h / 2), w, h, boxstyle=style,
                 linewidth=1.1, edgecolor="#333", facecolor=fc, zorder=3))
    if text:
        ax.text(x, y, text, ha="center", va="center", fontsize=fs, zorder=5,
                style="italic" if italic else "normal")


def arr(ax, p, q, color="#333", lw=1.3):
    ax.annotate("", q, p, arrowprops=dict(arrowstyle="-|>", color=color, lw=lw),
                zorder=2)


def loopback(ax, y_from, x_left, y_to, label):
    # elbow arrow from the test box (left side) back up to the body box (left)
    ax.annotate("", (x_left, y_from), (2.4, y_from),
                arrowprops=dict(arrowstyle="-", color="#b00", lw=1.3))
    ax.annotate("", (x_left, y_to), (x_left, y_from),
                arrowprops=dict(arrowstyle="-", color="#b00", lw=1.3))
    ax.annotate("", (2.4, y_to), (x_left, y_to),
                arrowprops=dict(arrowstyle="-|>", color="#b00", lw=1.3))
    ax.text(x_left - 0.25, (y_from + y_to) / 2, label, rotation=90, va="center",
            ha="center", fontsize=8.5, color="#b00")


def panel(ax, title, mode):
    ax.set_xlim(0, 10); ax.set_ylim(0, 10); ax.axis("off")
    ax.set_title(title, fontsize=11, pad=8)
    box(ax, 5, 9.0, 5.4, 1.0, "seed frontier\n(base edges)", GPU)

    if mode in ("host", "graph"):
        body = ("GPU iteration body\n(reset $\\to$ expand $\\to$ promote $\\to$ sizes)"
                if mode == "host" else
                "launch captured CUDA graph\n(= one iteration body)")
        box(ax, 5, 6.6, 7.0, 1.3, body, GPU)
        box(ax, 5, 4.1, 4.8, 1.1, "copy new_count\nto host (D2H)", CPU)
        box(ax, 4.3, 1.8, 4.2, 1.0, "new_count > 0 ?", COND)
        box(ax, 8.4, 1.8, 2.2, 1.0, "done", CPU)
        arr(ax, (5, 8.5), (5, 7.25))
        arr(ax, (5, 5.95), (5, 4.65))
        arr(ax, (5, 3.55), (5, 2.3))
        arr(ax, (6.4, 1.8), (7.3, 1.8))              # no -> done
        ax.text(6.85, 2.05, "no", fontsize=8, ha="center")
        loopback(ax, 1.8, 1.0, 6.6,
                 "yes: host relaunch" if mode == "host" else "yes: replay graph")

    else:  # conditional
        # container = the conditional WHILE node (runs entirely on GPU)
        box(ax, 5, 5.2, 8.2, 4.0, "", NODE)
        ax.text(5, 6.85, "conditional WHILE node (on GPU)", ha="center",
                fontsize=9.5, style="italic")
        box(ax, 4.6, 5.4, 5.4, 1.2,
            "iteration body\n(reset $\\to$ expand $\\to$ promote $\\to$ sizes)", "#ffffff")
        box(ax, 4.6, 3.6, 6.0, 0.9,
            "set condition = (new_count > 0)  [device]", COND, fs=8.5)
        # in-node self loop (right side)
        ax.annotate("", (8.2, 5.4), (7.3, 5.4),
                    arrowprops=dict(arrowstyle="-", color="#b00", lw=1.3))
        ax.annotate("", (8.2, 3.6), (8.2, 5.4),
                    arrowprops=dict(arrowstyle="-", color="#b00", lw=1.3))
        ax.annotate("", (7.6, 3.6), (8.2, 3.6),
                    arrowprops=dict(arrowstyle="-|>", color="#b00", lw=1.3))
        ax.text(8.55, 4.5, "while true", rotation=90, va="center", ha="center",
                fontsize=8.5, color="#b00")
        arr(ax, (4.6, 4.8), (4.6, 4.05))
        arr(ax, (5, 8.5), (5, 7.3))
        box(ax, 5, 1.2, 3.2, 0.9, "done", GPU)
        arr(ax, (5, 3.15), (5, 1.65))


def main():
    os.makedirs(os.path.dirname(OUT), exist_ok=True)
    fig, axes = plt.subplots(1, 3, figsize=(12.5, 3.6))
    panel(axes[0], "(a) host loop  [MNMGDatalog, fused]", "host")
    panel(axes[1], "(b) replayed CUDA graph  [fused+graph]", "graph")
    panel(axes[2], "(c) conditional WHILE node  [fused+cond]", "cond")
    handles = [Patch(facecolor=CPU, edgecolor="#333", label="host / CPU step"),
               Patch(facecolor=GPU, edgecolor="#333", label="device / GPU step"),
               Patch(facecolor=COND, edgecolor="#333", label="convergence test")]
    fig.legend(handles=handles, loc="lower center", ncol=3, frameon=True,
               fontsize=9.5, bbox_to_anchor=(0.5, -0.03))
    fig.tight_layout(rect=(0, 0.06, 1, 1))
    for ext in (".png", ".pdf"):
        fig.savefig(OUT + ext, dpi=130, bbox_inches="tight")
        print("wrote", OUT + ext)
    plt.close(fig)


if __name__ == "__main__":
    main()
