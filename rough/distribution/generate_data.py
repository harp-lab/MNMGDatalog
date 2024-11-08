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

