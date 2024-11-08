import argparse
import pandas as pd
import matplotlib.pyplot as plt


def show_histogram(datafile):
    data = pd.read_csv(datafile, sep='\s+', names=['x', 'y'])

    # Calculate the frequency distribution of x values
    frequency_counts = data['x'].value_counts()

    # Calculate the mean, median, max, and min of the frequencies
    mean_frequency = frequency_counts.mean()
    median_frequency = frequency_counts.median()
    max_frequency = frequency_counts.max()
    min_frequency = frequency_counts[frequency_counts > 0].min()  # Exclude zero counts

    # Plot the histogram of x values, which automatically shows frequency on the y-axis
    plt.hist(data['x'], bins=len(frequency_counts), edgecolor='black', alpha=0.7)

    # Add horizontal lines for the mean and median frequencies
    plt.axhline(mean_frequency, color='blue', linestyle='--', linewidth=1.5)
    plt.axhline(median_frequency, color='green', linestyle='-', linewidth=1.5)

    # Display max and min frequency as text on the plot
    plt.text(0.95, 0.95, f'Max Frequency: {max_frequency}', ha='right', va='top', transform=plt.gca().transAxes,
             color='black')
    plt.text(0.95, 0.90, f'Min Frequency: {min_frequency}', ha='right', va='top', transform=plt.gca().transAxes,
             color='black')
    plt.text(0.95, 0.85, f'Mean Frequency: {mean_frequency:.2f}', ha='right', va='top', transform=plt.gca().transAxes,
             color='blue')
    plt.text(0.95, 0.80, f'Median Frequency: {median_frequency:.2f}', ha='right', va='top',
             transform=plt.gca().transAxes, color='green')

    plt.xlabel('Keys')
    plt.ylabel('Frequency')
    plt.title('Histogram of Keys')
    plt.show()


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Display a histogram of keys from a dataset.")
    parser.add_argument('data', type=str, help="Path to the data file (tab or space-separated).")
    args = parser.parse_args()
    show_histogram(args.data)

# python generate_data.py data/data_88234.txt

#
#
# def generate_skewed_data(filename, skewness_factor, total_edges):
#     data = []
#
#     # Define the range for regular nodes (3 to 149)
#     uniform_start = 3
#     uniform_end = 150
#
#     # Calculate how many edges will be uniformly distributed
#     num_uniform_edges = int(total_edges * (1 - skewness_factor))
#     uniform_edge_count = 0
#
#     # Add uniformly distributed edges
#     for i in range(uniform_start, uniform_end):
#         for j in range(uniform_start, uniform_end):
#             if uniform_edge_count >= num_uniform_edges:
#                 break
#             data.append([i, j])
#             uniform_edge_count += 1
#         if uniform_edge_count >= num_uniform_edges:
#             break
#
#     uniform_row_count = len(data)
#
#     # Calculate remaining edges to add for skewness
#     num_skewed_edges = total_edges - len(data)
#     skewed_nodes = [1, 2]  # Nodes that will have higher degrees
#
#     # Add skewed edges from nodes 1 and 2
#     skewed_edge_count = 0
#     for i in skewed_nodes:
#         for j in range(uniform_start, uniform_start + num_skewed_edges // len(skewed_nodes)):
#             data.append([i, j])
#             skewed_edge_count += 1
#             if skewed_edge_count >= num_skewed_edges:
#                 break
#         if skewed_edge_count >= num_skewed_edges:
#             break
#
#     total_row = len(data)
#     skewed_row_count = total_row - uniform_row_count
#
#     with open(filename, "w") as f:
#         for edge in data:
#             f.write(f"{edge[0]}\t{edge[1]}\n")
#     print(f"Generated {filename} with {total_row} rows (uniform: {uniform_row_count}, skewed: {skewed_row_count})")
