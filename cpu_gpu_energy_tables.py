#!/usr/bin/env python3
"""Summarize CPU+GPU energy CSVs (from power_cpu_gpu.py) into LaTeX-ready tables.

Reads logs/cpugpu/<tc|sg>/<Dataset>_<Engine>.csv and prints, per (dataset,engine):
total energy (J), GPU energy, CPU package energy, and CPU fraction; plus pivoted
LaTeX rows for total energy and CPU fraction.

Usage: python cpu_gpu_energy_tables.py logs/cpugpu/tc
"""
import glob
import os
import sys
import pandas as pd

ENGINES = ["GPULog", "MNMGDatalog", "cuDF", "BJoin", "INLJoin"]


def main():
    if len(sys.argv) < 2:
        print("usage: python cpu_gpu_energy_tables.py <dir with *_<Engine>.csv>")
        sys.exit(1)
    d = sys.argv[1]
    rows = []
    for path in glob.glob(os.path.join(d, "*.csv")):
        base = os.path.splitext(os.path.basename(path))[0]
        if "_" not in base:
            continue
        dataset, engine = base.rsplit("_", 1)
        try:
            df = pd.read_csv(path)
            r = df.iloc[0]
            rows.append(dict(Dataset=dataset, Engine=engine,
                             Total=float(r["TotalEnergy(J)"]),
                             GPU=float(r["GPUEnergy(J)"]),
                             CPU=float(r["CPUEnergy(J)"]),
                             Time=float(r["TotalTime(S)"])))
        except Exception as e:
            print(f"skip {path}: {e}")
    if not rows:
        print(f"no CSVs in {d}"); sys.exit(1)
    m = pd.DataFrame(rows)
    m["CPUfrac"] = m["CPU"] / m["Total"] * 100
    print(m.sort_values(["Dataset", "Engine"]).to_string(index=False))

    def pivot_latex(col, fmt, title):
        p = m.pivot(index="Dataset", columns="Engine", values=col).reindex(columns=ENGINES)
        print(f"\n% {title}")
        print("Dataset & " + " & ".join(ENGINES) + r" \\")
        for ds, row in p.iterrows():
            cells = ["--" if pd.isna(row[e]) else format(row[e], fmt) for e in ENGINES]
            print(f"{ds:15} & " + " & ".join(cells) + r" \\")

    pivot_latex("Total", ".0f", "Total energy CPU+GPU (J)")
    pivot_latex("CPUfrac", ".0f", "CPU package energy fraction (%)")
    pivot_latex("GPU", ".0f", "GPU energy (J)")


if __name__ == "__main__":
    main()
