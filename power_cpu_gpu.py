#!/usr/bin/env python3
"""Measure BOTH CPU (RAPL package via perf) and GPU (nvidia-smi) energy for a run.

CPU energy: `perf stat -e power/energy-pkg/` around the whole process (works
without root on JLSE where perf_event_paranoid=-1). AMD EPYC exposes only the
package domain (no DRAM). GPU energy: integrate nvidia-smi power.draw at a fixed
interval, exactly like power.py.

Usage:
  python power_cpu_gpu.py <out.csv> <cmd> [args...]
e.g.:
  python power_cpu_gpu.py out.csv mpiexec -n 1 ./tc.out data/data_165435.bin 0 1 1
  python power_cpu_gpu.py out.csv ./TC ../data/usroads.txt 90

Writes one CSV row: TotalTime, GPUEnergy(J), CPUEnergy(J), Total(J), AvgGPUPower,
CPUfrac, plus the GPU draw samples. perf writes its own tmp file that we parse.
"""
import csv
import subprocess
import sys
import tempfile
import time
import os

NS_IN_S = 1000000000


def get_gpu_power():
    """Instantaneous GPU power draw (W), summed over visible GPUs."""
    out = subprocess.run(
        ["nvidia-smi", "--query-gpu=power.draw", "--format=csv,noheader,nounits"],
        capture_output=True, text=True,
    ).stdout.strip().splitlines()
    return sum(float(x) for x in out if x.strip())


def parse_perf_energy(perf_file):
    """Extract Joules for power/energy-pkg/ from perf stat output."""
    try:
        with open(perf_file) as f:
            for line in f:
                if "energy-pkg" in line:
                    # format: "   58.35 Joules power/energy-pkg/ ..."
                    tok = line.strip().split()
                    for i, t in enumerate(tok):
                        if t.lower().startswith("joule"):
                            return float(tok[i - 1].replace(",", ""))
    except FileNotFoundError:
        pass
    return float("nan")


def measure(out_csv, cmd, resolution=0.1):
    get_gpu_power()  # warm-up

    perf_tmp = tempfile.NamedTemporaryFile(prefix="perf_", suffix=".txt", delete=False).name
    # Wrap the whole command in perf stat for CPU package energy.
    perf_cmd = ["perf", "stat", "-e", "power/energy-pkg/", "-o", perf_tmp] + cmd

    gpu_energy_j = 0.0
    draws = []
    proc = subprocess.Popen(perf_cmd)
    start = last = time.time_ns()
    while True:
        try:
            proc.wait(timeout=resolution)
            break
        except subprocess.TimeoutExpired:
            now = time.time_ns()
            w = get_gpu_power()
            draws.append(w)
            gpu_energy_j += (now - last) * w / NS_IN_S
            last = now

    total_s = (time.time_ns() - start) / NS_IN_S
    cpu_energy_j = parse_perf_energy(perf_tmp)
    os.unlink(perf_tmp)

    total_j = gpu_energy_j + (cpu_energy_j if cpu_energy_j == cpu_energy_j else 0)
    avg_gpu = gpu_energy_j / total_s if total_s else 0
    cpu_frac = (cpu_energy_j / total_j) if (total_j and cpu_energy_j == cpu_energy_j) else float("nan")

    headers = ["TotalTime(S)", "GPUEnergy(J)", "CPUEnergy(J)", "TotalEnergy(J)",
               "AvgGPUPower(W)", "CPUFraction", "AllGPUDraws(W)"]
    row = [f"{total_s:.4f}", f"{gpu_energy_j:.4f}", f"{cpu_energy_j:.4f}",
           f"{total_j:.4f}", f"{avg_gpu:.4f}", f"{cpu_frac:.4f}",
           ",".join(f"{v:.2f}" for v in draws)]
    with open(out_csv, "w", newline="") as f:
        w = csv.writer(f); w.writerow(headers); w.writerow(row)
    print(f"[{out_csv}] time={total_s:.1f}s  GPU={gpu_energy_j:.1f}J  "
          f"CPU(pkg)={cpu_energy_j:.1f}J  total={total_j:.1f}J  CPUfrac={cpu_frac:.2%}")


if __name__ == "__main__":
    if len(sys.argv) < 3:
        print("usage: python power_cpu_gpu.py <out.csv> <cmd> [args...]")
        sys.exit(1)
    measure(sys.argv[1], sys.argv[2:])
