import subprocess
import sys
import time
import csv

NS_IN_S = 1_000_000_000  # Number of nanoseconds in a second


def log(message):
    print(message, file=sys.stdout)


def get_power_draw():
    proc = subprocess.run(
        ["nvidia-smi", "--query-gpu=power.draw", "--format=csv"],
        capture_output=True
    )
    stdout = proc.stdout.decode("utf-8")
    return float(stdout.split('\n')[1].split(' ')[0])  # Extract numeric power value in watts


def get_summary(values):
    values = sorted(values)
    n = len(values)

    def percentile(p):
        k = (n - 1) * (p / 100)
        f = int(k)
        c = min(f + 1, n - 1)
        if f == c:
            return values[int(k)]
        d0 = values[f] * (c - k)
        d1 = values[c] * (k - f)
        return d0 + d1

    minimum = values[0]
    q1 = percentile(25)
    median = percentile(50)
    q3 = percentile(75)
    maximum = values[-1]
    return minimum, q1, median, q3, maximum


def measure_power(args, resolution=0.1):
    # Warm-up GPU with an initial power draw call to ensure accurate first sample.
    # This call is not included in energy calculations.
    get_power_draw()
    # First arg is the CSV filename, rest of the args are the executable arguments
    energy_j = 0
    proc = subprocess.Popen(args[1:])
    filename = args[0]
    start_time_ns = time.time_ns()
    time_ns = start_time_ns
    power_draw_values = []
    while True:
        timeout = False
        try:
            proc.wait(timeout=resolution)
        except subprocess.TimeoutExpired:
            timeout = True
            new_time_ns = time.time_ns()
            draw_w = get_power_draw()
            power_draw_values.append(draw_w)
            delay_ns = new_time_ns - time_ns
            energy_j += delay_ns * draw_w / NS_IN_S
            time_ns = new_time_ns

        if not timeout:
            break

    total_time_s = (time_ns - start_time_ns) / NS_IN_S
    avg_power = energy_j / total_time_s
    min_draw, q1_draw, median_draw, q3_draw, max_draw = get_summary(power_draw_values)
    all_draws_str = ",".join(f"{v:.2f}" for v in power_draw_values)

    # Write to CSV
    with open(filename, 'w', newline='') as csvfile:
        writer = csv.writer(csvfile)
        writer.writerow([
            "TotalTime(S)",
            "TotalEnergy(J)",
            "AvgPowerDrawTimed(W)",
            "MinDrawSampled(W)",
            "Q1DrawSampled(W)",
            "MedianDrawSampled(W)",
            "Q3DrawSampled(W)",
            "MaxDrawSampled(W)",
            "AllDrawSamples(W)"
        ])
        writer.writerow([
            f"{total_time_s:.4f}",
            f"{energy_j:.4f}",
            f"{avg_power:.4f}",
            f"{min_draw:.2f}",
            f"{q1_draw:.2f}",
            f"{median_draw:.2f}",
            f"{q3_draw:.2f}",
            f"{max_draw:.2f}",
            all_draws_str
        ])

    # Log to stdout
    log("\n" + "-" * 50)
    log("GPU USAGE REPORT")
    log("-" * 50)
    log(f"Generated Report File: {filename}")
    log("TotalTime(S),TotalEnergy(J),AvgPowerDrawTimed(W),MinDrawSampled(W),Q1DrawSampled(W),MedianDrawSampled(W),Q3DrawSampled(W),MaxDrawSampled(W)")
    log(f"{total_time_s:.4f},{energy_j:.4f},{avg_power:.4f},{min_draw:.2f},{q1_draw:.2f},{median_draw:.2f},{q3_draw:.2f},{max_draw:.2f}")
    log("-" * 50 + "\n")

def main(argv):
    measure_power(argv[1:])


if __name__ == "__main__":
    main(sys.argv)

# python3 power.py tc_ol.csv mpirun -np 1 ./tc.out data/data_163734.bin 0 0 1