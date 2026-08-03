#!/usr/bin/env python3
"""Compute instructions-per-joule for the GPU Datalog engines.

Workflow (no engine code changes needed):
  1. Run each engine once under Nsight Compute collecting ONLY the instruction
     counter, e.g.:

       ncu --metrics sm__inst_executed.sum --target-processes all \
           --csv --log-file <Dataset>_<Engine>.csv \
           ./tc_interactive.out data/data_165435.bin 0 1 1

     ncu prints one row per kernel; this script SUMS them to a per-run total.
  2. Put every ncu csv under a directory (default: logs/ncu/) named
     "<Dataset>_<Engine>.csv"  (e.g. usroads_MNMGDatalog.csv).
  3. Run:  python instructions_per_joule.py logs/power_tc.csv logs/ncu

It joins total instructions to the existing energy CSV (TotalEnergy(J)) and
emits a LaTeX table of instructions, energy, and instructions/joule.

Instruction count is deterministic for a given (engine, dataset, args), so it is
valid to combine an ncu run with a separately measured energy run. ncu perturbs
timing/power (kernel replay), so we take only the COUNT from it, never time.
"""
import os
import re
import sys
import glob
import pandas as pd


def parse_ncu_csv(path):
    """Return total instructions (sum of sm__inst_executed.sum over kernels)."""
    # ncu --csv output: a header row then one row per kernel invocation.
    # The metric column is "sm__inst_executed.sum" (unit column may precede value).
    try:
        df = pd.read_csv(path, skip_blank_lines=True)
    except Exception:
        # Some ncu versions emit preamble lines before the CSV header.
        with open(path) as f:
            lines = f.readlines()
        start = next((i for i, l in enumerate(lines) if l.count(",") > 3), 0)
        from io import StringIO
        df = pd.read_csv(StringIO("".join(lines[start:])))

    # Find the metric column (name match is robust to quoting/units).
    col = None
    for c in df.columns:
        if "inst_executed" in c.replace('"', ''):
            col = c
            break
    if col is None:
        # Fallback: ncu sometimes uses long "Metric Name"/"Metric Value" layout.
        if {"Metric Name", "Metric Value"}.issubset(df.columns):
            sub = df[df["Metric Name"].astype(str).str.contains("inst_executed")]
            vals = pd.to_numeric(
                sub["Metric Value"].astype(str).str.replace(",", ""), errors="coerce")
            return float(vals.sum())
        raise ValueError(f"No inst_executed column found in {path}: {list(df.columns)}")

    vals = pd.to_numeric(df[col].astype(str).str.replace(",", ""), errors="coerce")
    return float(vals.sum())


def collect_instructions(ncu_dir):
    """Map (Dataset, Engine) -> total instructions from <Dataset>_<Engine>.csv."""
    rows = []
    for path in glob.glob(os.path.join(ncu_dir, "*.csv")):
        base = os.path.splitext(os.path.basename(path))[0]
        if "_" not in base:
            print(f"skip (need Dataset_Engine.csv): {path}")
            continue
        dataset, engine = base.rsplit("_", 1)
        try:
            total = parse_ncu_csv(path)
        except Exception as e:
            print(f"skip {path}: {e}")
            continue
        rows.append({"Dataset": dataset, "Engine": engine, "Instructions": total})
    return pd.DataFrame(rows)


def main():
    if len(sys.argv) < 3:
        print("usage: python instructions_per_joule.py <power_csv> <ncu_dir>")
        sys.exit(1)
    power_csv, ncu_dir = sys.argv[1], sys.argv[2]

    power = pd.read_csv(power_csv)
    inst = collect_instructions(ncu_dir)
    if inst.empty:
        print(f"No ncu CSVs parsed under {ncu_dir}")
        sys.exit(1)

    merged = power.merge(inst, on=["Dataset", "Engine"], how="left")
    merged["InstrPerJoule"] = merged.apply(
        lambda r: r["Instructions"] / r["TotalEnergy(J)"]
        if pd.notna(r.get("Instructions")) and r["TotalEnergy(J)"] > 0 else float("nan"),
        axis=1,
    )

    cols = ["Dataset", "Engine", "Instructions", "TotalEnergy(J)", "InstrPerJoule"]
    print(merged[cols].to_string(index=False))

    # LaTeX pivot: instructions/joule (in giga-instr/J for readability)
    engines = ["GPULog", "MNMGDatalog", "cuDF", "BJoin", "INLJoin"]
    merged["GInstrPerJoule"] = merged["InstrPerJoule"] / 1e9
    pivot = merged.pivot(index="Dataset", columns="Engine", values="GInstrPerJoule").reindex(columns=engines)
    print("\n% Instructions per joule (Giga-instructions/J)")
    print("Dataset & " + " & ".join(engines) + " \\\\")
    for dataset, row in pivot.iterrows():
        cells = ["--" if pd.isna(row[e]) else f"{row[e]:.2f}" for e in engines]
        print(f"{dataset:15} & " + " & ".join(cells) + " \\\\")


if __name__ == "__main__":
    main()
