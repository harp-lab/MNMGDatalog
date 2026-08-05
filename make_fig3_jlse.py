#!/usr/bin/env python3
"""Regenerate Fig. 3 (GPU power traces) from the JLSE CPU+GPU per-run CSVs.

Reads logs/cpugpu/<tc|sg>/<Dataset>_<Engine>.csv (each has TotalTime(S),
GPUEnergy(J), AllGPUDraws(W)) and builds the wide format expected by
generate_graphs.plot_power_time_energy, then writes the TC/SG power-line PDFs.
"""
import glob
import os
import sys
import pandas as pd

import generate_graphs as g

ENGINES = ["MNMGDatalog", "INLJoin", "GPULog", "BJoin", "cuDF"]
# dataset order to match the paper panels
ORDER = {
    "tc": ["fe_body", "vsp", "sf", "usroads"],
    "sg": ["fe_body", "loc-brightkite", "fe_sphere", "ca_hepth"],
}


def build_wide(d):
    rows = []
    for path in glob.glob(os.path.join(d, "*.csv")):
        base = os.path.splitext(os.path.basename(path))[0]
        if "_" not in base:
            continue
        dataset, engine = base.rsplit("_", 1)
        try:
            r = pd.read_csv(path).iloc[0]
        except Exception:
            continue
        rows.append({
            "Dataset": dataset,
            "Engine": engine,
            "TotalTime(S)": float(r["TotalTime(S)"]),
            "TotalEnergy(J)": float(r["GPUEnergy(J)"]),   # trace is GPU power -> GPU energy endpoint
            "AllDrawSamples(W)": str(r["AllGPUDraws(W)"]),
        })
    return pd.DataFrame(rows)


def main():
    which = sys.argv[1] if len(sys.argv) > 1 else "tc"
    out = sys.argv[2] if len(sys.argv) > 2 else f"drawing/charts/{which}_power_line.pdf"
    df = build_wide(f"logs/cpugpu/{which}")
    # order datasets as in the paper
    order = ORDER[which]
    df["__o"] = df["Dataset"].apply(lambda x: order.index(x) if x in order else 99)
    df = df.sort_values("__o").drop(columns="__o")
    # y-label "Power Draw (W)" only on the LEFT panel (tc); x-label added once,
    # centered, in LaTeX below both halves -> omit per-image x-labels.
    show_y = (which == "tc")
    g.plot_power_time_energy(df, out, show_ylabel=show_y, show_xlabel=False)
    print("wrote", out)


if __name__ == "__main__":
    main()
