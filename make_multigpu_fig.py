#!/usr/bin/env python3
"""Multi-GPU scaling figure: Total Time, Total Energy, and EDP vs #GPUs, for
TC (usroads) and SG (vsp), in one figure. Replaces the separate scaling figure +
EDP table by showing all three metrics together (EDP = Energy x Time).
"""
import sys
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt

PANELS = [
    ("TC (usroads)", [
        {"GPUs": 1, "t": 76.8981, "E": 7964.3256},
        {"GPUs": 2, "t": 44.0347, "E": 8282.3856},
        {"GPUs": 4, "t": 26.3303, "E": 9847.8178},
    ]),
    ("SG (vsp)", [
        {"GPUs": 1, "t": 91.0825, "E": 9629.6954},
        {"GPUs": 2, "t": 64.7545, "E": 12405.1685},
        {"GPUs": 4, "t": 35.7745, "E": 13648.2719},
    ]),
]

T_C, E_C, D_C = "tab:blue", "tab:orange", "tab:green"


def main():
    out = sys.argv[1] if len(sys.argv) > 1 else "drawing/charts/multi_gpu_combined.pdf"
    FS = 15
    fig, axes = plt.subplots(1, 2, figsize=(7.0, 3.0))
    h_all = None
    for ax1, (title, rows) in zip(axes, PANELS):
        gpus = [r["GPUs"] for r in rows]
        t = [r["t"] for r in rows]
        e = [r["E"] / 1000.0 for r in rows]          # kJ
        d = [r["E"] * r["t"] / 1e5 for r in rows]     # EDP (1e5 J.s)
        x = range(len(gpus))

        ax2 = ax1.twinx()          # energy
        ax3 = ax1.twinx()          # EDP (offset spine)
        ax3.spines["right"].set_position(("axes", 1.28))

        l1, = ax1.plot(x, t, color=T_C, marker="o", lw=2, ms=6, label="Time (s)")
        l2, = ax2.plot(x, e, color=E_C, marker="s", lw=2, ms=6, label="Energy (kJ)")
        l3, = ax3.plot(x, d, color=D_C, marker="^", lw=2, ms=6, ls="--",
                       label="EDP ($10^5$ J$\\cdot$s)")

        ax1.set_xticks(list(x))
        ax1.set_xticklabels(gpus, fontsize=FS - 2)
        ax1.set_title(title, fontsize=FS)
        ax1.tick_params(axis="y", labelcolor=T_C, labelsize=FS - 4)
        ax2.tick_params(axis="y", labelcolor=E_C, labelsize=FS - 4)
        ax3.tick_params(axis="y", labelcolor=D_C, labelsize=FS - 4)
        ax1.grid(True, axis="y", linestyle="--", alpha=0.3)
        ax1.margins(x=0.12)
        if h_all is None:
            h_all = [l1, l2, l3]

    axes[0].set_ylabel("Time (s)", fontsize=FS - 1, color=T_C)
    fig.legend(h_all, [h.get_label() for h in h_all], loc="upper center",
               ncol=3, fontsize=FS - 3, bbox_to_anchor=(0.5, 1.14), frameon=True)
    fig.text(0.5, -0.02, "Number of GPUs", ha="center", fontsize=FS - 1)
    fig.tight_layout(w_pad=3.5, rect=[0, 0, 1, 0.96])
    fig.savefig(out, bbox_inches="tight", dpi=300)
    print("wrote", out)


if __name__ == "__main__":
    main()
