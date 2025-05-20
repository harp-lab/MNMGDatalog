import subprocess
import sys
import time
import csv
import argparse

NS_IN_S = 1_000_000_000  # Nanoseconds in a second

def log(message):
    print(message, file=sys.stdout)

def get_power_draw(total_gpu_on_node=1):
    proc = subprocess.run(
        ["nvidia-smi", "--query-gpu=power.draw", "--format=csv,noheader,nounits"],
        capture_output=True
    )
    stdout = proc.stdout.decode("utf-8").strip()
    power_values = [float(line.strip()) for line in stdout.splitlines()]
    return sum(power_values[:total_gpu_on_node])

def measure_power(cmd_args, resolution=0.1, total_gpu_on_node=1):
    get_power_draw()  # warm-up
    energy_j = 0
    power_draw_samples = []

    proc = subprocess.Popen(cmd_args)
    start_time_ns = time.time_ns()
    time_ns = start_time_ns

    while True:
        try:
            proc.wait(timeout=resolution)
        except subprocess.TimeoutExpired:
            new_time_ns = time.time_ns()
            draw_w = get_power_draw()
            delay_ns = new_time_ns - time_ns
            energy_j += delay_ns * draw_w / NS_IN_S
            power_draw_samples.append((new_time_ns, draw_w))
            time_ns = new_time_ns
        else:
            break

    end_time_ns = time_ns
    total_time_s = (end_time_ns - start_time_ns) / NS_IN_S
    sampled_draws = [v[1] for v in power_draw_samples]
    avg_power_sampled = sum(sampled_draws) / len(sampled_draws)
    avg_power_timed = energy_j / total_time_s
    min_draw = min(sampled_draws)
    max_draw = max(sampled_draws)

    return {
        "total_time_s": total_time_s,
        "energy_j": energy_j,
        "avg_power_sampled": avg_power_sampled,
        "avg_power_timed": avg_power_timed,
        "min_draw": min_draw,
        "max_draw": max_draw,
        "samples": power_draw_samples
    }

def save_summary_csv(path, result):
    with open(path, 'w', newline='') as csvfile:
        writer = csv.writer(csvfile)
        writer.writerow([
            "Total Time (s)",
            "Total Energy (J)",
            "Avg Power Sampled (W)",
            "Avg Power Timed (W)",
            "Min Power Sampled (W)",
            "Max Power Sampled (W)"
        ])
        writer.writerow([
            f"{result['total_time_s']:.4f}",
            f"{result['energy_j']:.4f}",
            f"{result['avg_power_sampled']:.4f}",
            f"{result['avg_power_timed']:.4f}",
            f"{result['min_draw']:.2f}",
            f"{result['max_draw']:.2f}"
        ])

def save_samples_csv(path, samples):
    with open(path, 'w', newline='') as csvfile:
        writer = csv.writer(csvfile)
        writer.writerow(["Timestamp (ns)", "Power Draw (W)"])
        for t_ns, draw in samples:
            writer.writerow([t_ns, f"{draw:.2f}"])

def main():
    parser = argparse.ArgumentParser(description="Measure GPU power during execution.")
    parser.add_argument("cmd", nargs='+', help="Command to run (mandatory)")
    parser.add_argument("--output", type=str, help="Output CSV base name (optional)")
    parser.add_argument("--gpu", type=int, default=1, help="Number of GPUs per node (default 1)")

    try:
        args = parser.parse_args()
    except:
        parser.print_help()
        sys.exit(0)

    log(f"Running command: {' '.join(args.cmd)} on {args.gpu} GPU")
    result = measure_power(args.cmd, total_gpu_on_node = args.gpu)

    # Display to stdout
    log("\n" + "=" * 60)
    log("GPU POWER USAGE SUMMARY")
    log(f"Total Time:           {result['total_time_s']:.4f} s")
    log(f"Total Energy:         {result['energy_j']:.4f} J")
    log(f"Avg Power (Timed):    {result['avg_power_timed']:.4f} W")
    log(f"Avg Power (Sampled):  {result['avg_power_sampled']:.4f} W")
    log(f"Min Power (Sampled):  {result['min_draw']:.2f} W")
    log(f"Max Power (Sampled):  {result['max_draw']:.2f} W")
    log("=" * 60)

    # Save to CSVs if output requested
    if args.output:
        summary_csv = args.output if args.output.endswith(".csv") else args.output + ".csv"
        samples_csv = summary_csv.replace(".csv", "_samples.csv")
        save_summary_csv(summary_csv, result)
        save_samples_csv(samples_csv, result["samples"])
        log(f"Saved summary to: {summary_csv}")
        log(f"Saved power samples to: {samples_csv}")

if __name__ == "__main__":
    main()


# python power_time.py  --output power_report.csv --gpu 4 ./tc.out data/data_7035.bin 0 0 1
