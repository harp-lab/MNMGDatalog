import os
import warnings
import pandas as pd
import matplotlib.pyplot as plt
from io import StringIO
import numpy as np


def read_markdown_table(file_path, method, replacement_dict=None, group=5, header=None, other_columns=[]):
    lines = []
    # Read and filter lines that start with '|'
    with open(file_path, 'r') as file:
        lines = [line for line in file if line.startswith('|')]

    lines = [line.replace("|\n", "\n") for line in lines]

    if header:
        lines.insert(0, header)

    # print(lines)

    # Join the filtered lines into a single string and use StringIO to read into pandas
    data = StringIO(''.join(lines))

    # Load the filtered data into a DataFrame
    df = pd.read_table(data, sep="|", header=0, skipinitialspace=True).dropna(axis=1, how='all')
    # df.drop('Unnamed: 0', axis=1, inplace=True)
    # print(df)

    df.columns = df.columns.str.strip()

    # df.drop('Unnamed: 0', axis=1, inplace=True)
    # if "Unnamed: 0" in df.columns:
    #     df.columns = df.columns[1:]
    # print(df.columns)
    drop_column = "Output"
    if drop_column in df.columns:
        df = df.drop(columns=[drop_column])
    df['Method'] = method
    df['Dataset'] = df['# Input']
    # Strip leading and trailing whitespace from all string values in the DataFrame
    for col in df.columns:
        if df[col].dtype == 'object':  # Check if the column is of type object (string)
            df[col] = df[col].str.strip()
            df[col] = pd.to_numeric(df[col], errors='ignore')

    # Replace values in the 'Dataset' column
    if replacement_dict:
        df['Dataset'] = df['Dataset'].replace(replacement_dict)
    # Group every five rows together and calculate the mean for numeric columns
    df = df.reset_index(drop=True)
    grouped = df.groupby(df.index // group).agg(
        {col: 'mean' if df[col].dtype != 'object' else 'first' for col in df.columns})
    if len(other_columns) == 0:
        grouped["Other"] = grouped['Initialization'] + grouped['Hashtable'] + grouped['Finalization']
    else:
        grouped["Other"] = 0
        for other_column in other_columns:
            grouped["Other"] += grouped[other_column]

    # # Drop the 'Unnamed: 0' column
    # grouped = grouped.drop(columns=['Unnamed: 0'])
    #
    # # Verify the DataFrame
    # print(grouped.head())
    # print(grouped.columns)
    # if "Unnamed: 0" in grouped.columns:
    #     grouped.columns = grouped.columns[1:]
    # print(len(grouped.columns), grouped.columns)

    # print(grouped['Unnamed: 0'])
    # print(grouped.head(1))
    # print(grouped['Unnamed: 0'], grouped['# Process'], grouped['# Iterations'])
    return grouped


def show_line_chart(df, figure_name=None, application=None):
    # Loop through each dataset and method
    datasets = df['Dataset'].unique()
    methods = df['Method'].unique()

    # Create subplots - one for each dataset
    fig, axs = plt.subplots(len(datasets), 1, figsize=(8, 2 * len(datasets)), sharex=True)

    # If there's only one dataset, axs is not an array, so we need to wrap it in a list
    if len(datasets) == 1:
        axs = [axs]

    # Loop through each dataset and plot in a separate subplot
    for i, dataset in enumerate(datasets):
        ax = axs[i]
        min_val = df[df['Dataset'] == dataset]['Total Time'].min()
        max_val = df[df['Dataset'] == dataset]['Total Time'].max()
        padding = (max_val - min_val) * 0.05  # Add 10% padding on both sides
        for method in methods:
            subset = df[(df['Dataset'] == dataset) & (df['Method'] == method)]
            ax.plot(subset['# Process'], subset['Total Time'], marker='o', label=f'{method}')
        ax.set_title(f'{dataset}')
        ax.legend()
        ax.set_ylim([min_val - padding, max_val + padding])
        ax.grid(True)
        # Set X-axis ticks to the unique number of processes
        unique_processes = sorted(df[df['Dataset'] == dataset]['# Process'].unique())
        ax.set_xticks(unique_processes)
    fig.text(0.5, 0, 'Process Count', ha='center')
    fig.text(-0.02, 0.5, 'Time (s)', va='center', rotation='vertical')
    plt.tight_layout()
    figure_path = ""
    if not figure_name:
        figure_path = os.path.join("drawing", "total_time", f"line_chart_{application}")
    else:
        # Define the directory path
        directory = os.path.join("drawing", f"{application.lower()}_total_time")
        # Create the directory if it doesn't exist
        os.makedirs(directory, exist_ok=True)
        figure_path = os.path.join(directory, figure_name)
    fig.savefig(figure_path, dpi=400, bbox_inches="tight")
    print(f"Figure saved in {figure_path}")


def show_breakdown_bar_chart(df, figure_name=None, breakdown_columns=None, application=None, title=None):
    total_time_column = 'Total Time'
    bar_width = 4  # Adjust this value to make the bars wider (default is 0.8)
    # Loop through each dataset
    datasets = df['Dataset'].unique()
    for dataset in datasets:
        # Create a new figure and axis
        # fig, ax = plt.subplots()
        fig, ax = plt.subplots(figsize=(12, 8))
        # Filter the subset of data for the current dataset
        subset = df[df['Dataset'] == dataset]
        # Plot stacked bar chart for breakdown columns
        bar_bottom = None
        for column in breakdown_columns:
            if bar_bottom is None:
                bar_bottom = subset[column]
                ax.bar(subset['# Process'], subset[column], width=bar_width, label=column)
            else:
                ax.bar(subset['# Process'], subset[column], bottom=bar_bottom, width=bar_width, label=column)
                bar_bottom += subset[column]

        # Plot the Total Time as a line chart on the same axis
        ax.plot(subset['# Process'], subset[total_time_column], color='black', marker='o',
                label=total_time_column, linewidth=2)

        # Annotate the total time values on top of the points
        for i, process in enumerate(subset['# Process']):
            ax.text(process, subset[total_time_column].iloc[i] + (0.02 * subset[total_time_column].max()),
                    f'{subset[total_time_column].iloc[i]:.2f}',
                    ha='center', va='baseline', fontsize=12, color='black')

        # Set titles and labels
        method = subset["Method"].unique()[0]
        if title:
            ax.set_title(f'{title}')
        else:
            ax.set_title(f'{method}: {dataset}')
        ax.set_xlabel('Process Count')
        ax.set_ylabel('Time (S)')

        # Set X-axis ticks to the unique number of processes
        unique_processes = sorted(subset['# Process'].unique())
        ax.set_xticks(unique_processes)

        # Add a single merged legend
        ax.legend()

        # Adjust the layout
        plt.tight_layout()
        figure_path = ""
        if not figure_name:
            figure_path = os.path.join("drawing", "breakdown", f"{dataset}.png")
        else:
            # Define the directory path
            directory = os.path.join("drawing", f"{application.lower()}_breakdown")
            # Create the directory if it doesn't exist
            os.makedirs(directory, exist_ok=True)
            figure_path = os.path.join(directory, f"{figure_name}_{dataset}.png")

        # Save the figure
        fig.savefig(figure_path, bbox_inches="tight")
        print(f"Figure saved in {figure_path}")

        # Close the figure to avoid too many open figures
        plt.close(fig)


def show_breakdown_bar_chart_single_join_strong(df, figure_name=None, breakdown_columns=None, application=None, title=None):
    total_time_column = 'Total Time'
    bar_width = 0.6  # Adjusted for better visual spacing

    # Loop through each dataset
    datasets = df['Dataset'].unique()
    for dataset in datasets:
        # Create a new figure and axis
        fig, ax = plt.subplots(figsize=(12, 8))

        # Filter the subset of data for the current dataset
        subset = df[df['Dataset'] == dataset]

        # Convert '# Process' to a string to treat as categorical
        subset['# Process'] = subset['# Process'].astype(str)

        # Plot stacked bar chart for breakdown columns
        bar_bottom = None
        for column in breakdown_columns:
            if bar_bottom is None:
                bar_bottom = subset[column]
                ax.bar(subset['# Process'], subset[column], width=bar_width, label=column)
            else:
                ax.bar(subset['# Process'], subset[column], bottom=bar_bottom, width=bar_width, label=column)
                bar_bottom += subset[column]

        # Plot the Total Time as a line chart on the same axis
        ax.plot(subset['# Process'], subset[total_time_column], color='black', marker='o',
                label=total_time_column, linewidth=2)

        # Annotate the total time values on top of the points
        for i, process in enumerate(subset['# Process']):
            ax.text(process, subset[total_time_column].iloc[i] + (0.02 * subset[total_time_column].max()),
                    f'{subset[total_time_column].iloc[i]:.2f}s',
                    ha='center', va='baseline', fontsize=12, color='black')

        # Set titles and labels
        method = subset["Method"].unique()[0]
        if title:
            ax.set_title(f'{title}')
        else:
            ax.set_title(f'{method}: {dataset}')
        ax.set_xlabel('Process Count')
        ax.set_ylabel('Time (s)')

        # Set X-axis ticks to the unique values of '# Process' as categorical
        ax.set_xticks(range(len(subset['# Process'])))
        ax.set_xticklabels(subset['# Process'])

        # Add a single merged legend for breakdown columns and Total Time
        ax.legend()

        # Adjust the layout
        plt.tight_layout()

        # Save the figure to the specified path
        if figure_name:
            directory = os.path.join("drawing", f"{application.lower()}_breakdown")
            os.makedirs(directory, exist_ok=True)
            figure_path = os.path.join(directory, f"{figure_name}_{dataset}.png")
        else:
            figure_path = os.path.join("drawing", "breakdown", f"{dataset}.png")

        # Save the figure
        fig.savefig(figure_path, bbox_inches="tight")
        print(f"Figure saved in {figure_path}")

        # Close the figure to avoid too many open figures
        plt.close(fig)


def show_breakdown_bar_chart_single_join_weak(df, figure_name=None, breakdown_columns=None, application=None,
                                              title="Weak scaling bar chart #Input 10M/Rank, #Rand Range 100K/Rank"):
    # # X-axis: Number of processes
    x = df['# Process']
    # Define the total time column
    total_time_column = 'Total Time'

    # Plot the stacked bar chart
    fig, ax = plt.subplots(figsize=(12, 8))

    # Initialize the bottom for stacking
    bottom = np.zeros(len(x))

    # Plot the stacked bars
    for column in breakdown_columns:
        ax.bar(
            x.astype(str),  # Treat x-axis as categorical
            df[column],
            label=column,
            bottom=bottom,
        )
        # Update the bottom for the next stack
        bottom += df[column]

    # Plot the Total Time as a line chart on the same axis
    ax.plot(
        x.astype(str),
        df[total_time_column],
        color='black',
        marker='o',
        label=total_time_column,
        linewidth=2,
    )

    # Annotate the total time values on top of the points
    for i, process in enumerate(x):
        try:
            input_million = int(df["# Input"].iloc[i].replace(',', '')) / 1e6
            output_million = int(df["# Join"].iloc[i].replace(',', '')) / 1e6
        except:
            input_million = int(df["# Input"].iloc[i]) / 1e6
            output_million = int(df["# Join"].iloc[i]) / 1e6
        # print(input_million, output_million)
        ax.text(
            str(process),
            df[total_time_column].iloc[i] + (0.02 * df[total_time_column].max()),
            f'{input_million:.1f}M, '
            f'{output_million:.1f}M, '
            f'{df[total_time_column].iloc[i]:.2f}s',
            ha='center',
            va='baseline',
            fontsize=12,
            color='black',
        )

    # Add labels and legend
    ax.set_xlabel("# Processes", fontsize=14)
    ax.set_ylabel("Time (s)", fontsize=14)
    if title:
        ax.set_title(title, fontsize=16)
    ax.legend(title="Breakdown & Total Time", fontsize=10)

    plt.tight_layout()

    # Save the figure to the specified path
    if figure_name:
        directory = os.path.join("drawing", f"{application.lower()}_breakdown")
        os.makedirs(directory, exist_ok=True)
        figure_path = os.path.join(directory, f"{figure_name}.png")
    else:
        figure_path = os.path.join("drawing", "breakdown", "combined_datasets.png")

    fig.savefig(figure_path, bbox_inches="tight")
    print(f"Figure saved in {figure_path}")

    # Close the figure to avoid too many open figures
    plt.close(fig)


def show_breakdown_bar_chart_single_join(df, figure_name=None, breakdown_columns=None, application=None):
    total_time_column = 'Total Time'
    bar_width = 0.8  # Adjust for wider bars if needed

    # Initialize a new figure and axis for all datasets
    fig, ax1 = plt.subplots()

    # Set consistent x-axis spacing
    unique_processes = sorted(df['# Process'].unique())
    ax1.set_xticks(unique_processes)

    # Loop through each dataset and plot stacked bars in the same figure
    datasets = df['Dataset'].unique()
    color_index = 0  # Track color for each dataset plot (color will vary per dataset)

    for dataset in datasets:
        # Filter data for the current dataset
        subset = df[df['Dataset'] == dataset]

        # Start the stack at the baseline for each dataset
        bar_bottom = None
        for column in breakdown_columns:
            if bar_bottom is None:
                bar_bottom = subset[column]
                ax1.bar(subset['# Process'], subset[column], width=bar_width, label=column if color_index == 0 else "",
                        color=f"C{color_index}")
            else:
                ax1.bar(subset['# Process'], subset[column], bottom=bar_bottom, width=bar_width,
                        color=f"C{color_index}")
                bar_bottom += subset[column]
            color_index += 1

        # Plot Total Time as a line chart on the same axis for each dataset
        ax1.plot(subset['# Process'], subset[total_time_column], marker='o', color=f"C{color_index}",
                 label=dataset if color_index == 0 else "")
        color_index += 1  # Ensure color uniqueness across datasets

        # Annotate Total Time values for each dataset
        for i, process in enumerate(subset['# Process']):
            ax1.text(process, subset[total_time_column].iloc[i] + (0.02 * subset[total_time_column].max()),
                     f'{subset[total_time_column].iloc[i]:.2f}', ha='center', va='baseline', fontsize=12, color='black')

    # Set titles and labels
    ax1.set_title('Weak Scaling Breakdown Across Datasets')
    ax1.set_xlabel('Process Count')
    ax1.set_ylabel('Time (s)')

    # Single legend for breakdown columns only
    handles, labels = ax1.get_legend_handles_labels()
    breakdown_labels = labels[:len(breakdown_columns)]
    ax1.legend(handles[:len(breakdown_columns)], breakdown_labels, loc="upper left", bbox_to_anchor=(1, 1))

    # Adjust the layout
    plt.tight_layout()

    # Save the figure
    if figure_name:
        directory = os.path.join("drawing", f"{application.lower()}_breakdown")
        os.makedirs(directory, exist_ok=True)
        figure_path = os.path.join(directory, f"{figure_name}.png")
    else:
        figure_path = os.path.join("drawing", "breakdown", "combined_datasets.png")

    fig.savefig(figure_path, bbox_inches="tight")
    print(f"Figure saved in {figure_path}")

    # Close the figure to free up memory
    plt.close(fig)


def show_breakdown_line_chart(df, figure_name=None, breakdown_columns=None, application=None):
    # Loop through each dataset and method
    datasets = df['Dataset'].unique()

    # Loop through each dataset and create a separate figure
    for dataset in datasets:
        fig, ax = plt.subplots()

        # Plot data for each breakdown column
        for column in breakdown_columns:
            subset = df[df['Dataset'] == dataset]
            ax.plot(subset['# Process'], subset[column], marker='o', label=column)

        method = subset["Method"].unique()[0]

        # Set titles and labels
        ax.set_title(f'{method}: {dataset}')
        ax.set_xlabel('Process Count')
        ax.set_ylabel('Time (Log scale)')
        ax.set_yscale('log')
        ax.legend(loc='upper right')
        ax.grid(True)

        # Set X-axis ticks to the unique number of processes
        unique_processes = sorted(df[df['Dataset'] == dataset]['# Process'].unique())
        ax.set_xticks(unique_processes)

        # Adjust the layout
        plt.tight_layout()
        figure_path = ""
        if not figure_name:
            figure_path = os.path.join("drawing", "breakdown", f"{dataset}.png")
        else:
            # Define the directory path
            directory = os.path.join("drawing", f"{application.lower()}_breakdown_line")
            # Create the directory if it doesn't exist
            os.makedirs(directory, exist_ok=True)
            figure_path = os.path.join(directory, figure_name)
            figure_path = os.path.join(directory, f"{figure_name}_{dataset}.png")
        # Save the figure
        fig.savefig(figure_path, bbox_inches="tight")
        print(f"Figure saved in {figure_path}")

        # Close the figure to avoid too many open figures
        plt.close(fig)


def show_line_chart_total_time(dfs, labels, application, figure_name=None, title="", annotate=True):
    # Concatenate the DataFrames and add a column indicating their source label
    combined_df = pd.DataFrame()
    for df, label in zip(dfs, labels):
        df = df.copy()  # Make a copy to avoid modifying the original
        df['Label'] = label  # Add a label column to distinguish each DataFrame
        combined_df = pd.concat([combined_df, df], ignore_index=True)

    # Convert '# Process' to numeric to handle any decimal values
    combined_df['# Process'] = pd.to_numeric(combined_df['# Process'], errors='coerce')

    # Get unique values for '# Process' and labels for line plotting
    processes = sorted(combined_df['# Process'].unique(), key=lambda x: int(x))
    labels_unique = combined_df['Label'].unique()
    # Create a new figure and axis
    fig, ax = plt.subplots(figsize=(10, 6))
    # Loop over each unique label and plot a line
    for label in labels_unique:
        subset = combined_df[combined_df['Label'] == label]
        # Sort by process count to ensure lines are plotted correctly
        subset = subset.sort_values(by='# Process', key=lambda x: x.map(lambda v: int(v)))

        # Plot the line for 'Total Time'
        ax.plot(subset['# Process'], subset['Total Time'], marker='o', label=label)

        if annotate:
            for i, row in subset.iterrows():
                input_size_million = int(row['# Input'].replace(",", "")) / 1_000_000  # Convert to millions
                output_size_million = int(row['# Output'].replace(",", "")) / 1_000_000  # Convert to millions
                ax.annotate(f"{input_size_million:.0f}M:{output_size_million:.0f}M",
                            xy=(row['# Process'], row['Total Time']),
                            xytext=(5, 5), textcoords="offset points", fontsize=10, color='black')

    # Set the x-axis with the processes as categorical labels
    ax.set_xlabel('Process Count')
    ax.set_ylabel('Total Time (s)')
    ax.set_title(title)

    # Set x-axis ticks and labels to represent process count
    ax.set_xticks(processes)
    ax.set_xticklabels(processes)

    # Add a single merged legend
    ax.legend()

    # Adjust layout for readability
    plt.tight_layout()

    # Save the figure
    if figure_name:
        directory = os.path.join("drawing", f"{application.lower()}_breakdown")
        os.makedirs(directory, exist_ok=True)
        figure_path = os.path.join(directory, f"{figure_name}.png")
    else:
        figure_path = os.path.join("drawing", "breakdown", "combined_datasets.png")

    fig.savefig(figure_path, bbox_inches="tight")
    print(f"Figure saved in {figure_path}")


def generate_charts(application="TC"):
    breakdown_columns = ['Join', 'Buffer preparation',
                         'Communication', 'Deduplication', 'Merge', 'Other']
    replacement_dict = None
    if application == "TC":
        row_numbers = ["409,593", "165,435", "147,892", "1,049,866", "552,020"]
        dataset_names = ["fe_ocean, 247, 1669M", "usroad, 606, 871M", "p2p-Gnutella31, 31, 884M", "com-dblp, 31, 1911M",
                         "vsp_finan, 520, 910M"]
        replacement_dict = dict(zip(row_numbers, dataset_names))
    elif application == "SG":
        row_numbers = ["409,593", "165,435", "147,892", "163,734", "552,020"]
        dataset_names = ["fe_ocean, 77, 65M", "usroad, 588, 3137M", "p2p-Gnutella31, 20, 3700M", "fe_body, 40, 408M",
                         "vsp_finan, 513, 864M"]
        replacement_dict = dict(zip(row_numbers, dataset_names))
    cam_two_pass_file = f"drawing/{application.lower()}_cam_two_pass.md"
    cam_sort_file = f"drawing/{application.lower()}_cam_sort.md"
    mpi_cpu_two_pass_file = f"drawing/{application.lower()}_traditional_two_pass.md"
    mpi_cpu_sort_file = f"drawing/{application.lower()}_traditional_sort.md"

    cam_sort_df = read_markdown_table(cam_sort_file, "CUDA Aware MPI - Sort", replacement_dict)
    cam_two_pass_df = read_markdown_table(cam_two_pass_file, "CUDA Aware MPI - Two pass", replacement_dict)
    mpi_cpu_sort_df = read_markdown_table(mpi_cpu_sort_file, "Traditional MPI - Sort", replacement_dict)
    mpi_cpu_two_pass_df = read_markdown_table(mpi_cpu_two_pass_file, "Traditional MPI - Two pass", replacement_dict)

    # Compare CUDA AWARE MPI (Two Pass vs Sort)
    cam_df = pd.concat([cam_two_pass_df, cam_sort_df])
    show_line_chart(cam_df, "cuda_aware_mpi_pass_vs_sort.png", application)

    # Compare Traditional MPI (Two Pass vs Sort)
    traditional_df = pd.concat([mpi_cpu_two_pass_df, mpi_cpu_sort_df])
    show_line_chart(traditional_df, "traditional_mpi_pass_vs_sort.png", application)

    # Compare CUDA AWARE MPI vs Traditional MPI (Two pass)
    two_pass_df = pd.concat([cam_two_pass_df, mpi_cpu_two_pass_df])
    show_line_chart(two_pass_df, "cuda_aware_mpi_pass_vs_traditional_mpi_pass.png", application)

    # Compare CUDA AWARE MPI vs Traditional MPI (Sort)
    sort_df = pd.concat([cam_sort_df, mpi_cpu_sort_df])
    show_line_chart(sort_df, "cuda_aware_mpi_sort_vs_traditional_mpi_sort.png", application)

    # Breakdown charts
    show_breakdown_bar_chart(cam_two_pass_df, "cuda_aware_mpi_two_pass", breakdown_columns, application)
    show_breakdown_bar_chart(cam_sort_df, "cuda_aware_mpi_sort", breakdown_columns, application)
    show_breakdown_bar_chart(mpi_cpu_two_pass_df, "traditional_mpi_two_pass", breakdown_columns, application)
    show_breakdown_bar_chart(mpi_cpu_sort_df, "traditional_mpi_sort", breakdown_columns, application)


def show_single_join():
    breakdown_columns = ['Join', 'Buffer preparation (before)', 'Communication (before)',
                         'Buffer preparation (after)', 'Communication (after)', 'Deduplication', "Copy",
                         'Other']
    # replacement_dict = None
    # if application == "TC":
    #     row_numbers = ["409,593", "165,435", "147,892", "1,049,866", "552,020"]
    #     dataset_names = ["fe_ocean, 247, 1669M", "usroad, 606, 871M", "p2p-Gnutella31, 31, 884M", "com-dblp, 31, 1911M",
    #                      "vsp_finan, 520, 910M"]
    #     replacement_dict = dict(zip(row_numbers, dataset_names))
    # elif application == "SG":
    #     row_numbers = ["409,593", "165,435", "147,892", "163,734", "552,020"]
    #     dataset_names = ["fe_ocean, 77, 65M", "usroad, 588, 3137M", "p2p-Gnutella31, 20, 3700M", "fe_body, 40, 408M",
    #                      "vsp_finan, 513, 864M"]
    #     replacement_dict = dict(zip(row_numbers, dataset_names))
    # Define the header line
    # header = "| # Input | # Process | # Iterations | # Output | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |\n"
    header = "| # Input | # Process | # Iterations | # Join | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation (before) | Communication (before) | Buffer preparation (after) | Communication (after) | Deduplication | Clear | Copy | Finalization | Output |\n"
    other_columns = ["Initialization", "Clear", "Hashtable", "Finalization"]
    # weak_traditional_two_pass_local_file = f"logs/single-join-weak-traditional-two-pass-local.md"
    # weak_traditional_two_pass_local_file = f"logs/single-join-weak-traditional-two-pass-local.md"
    weak_cam_two_pass_polaris_file = f"logs/single-join-weak-cam-two-pass-polaris-2.md"
    strong_cam_two_pass_polaris_file = f"logs/single-join-strong-cam-two-pass-polaris-2.md"
    strong_cam_two_pass_polaris_file_2 = f"logs/single-join-strong-cam-two-pass-polaris-2_2.md"
    # strong_cam_two_pass_file = f"logs/single-join-strong-cam-two-pass.md"
    # weak_cam_two_pass_file = f"logs/single-join-weak-cam-two-pass.md"
    # strong_cam_sort_file = f"logs/single-join-strong-cam-sort.md"
    # weak_cam_sort_file = f"logs/single-join-weak-cam-sort.md"
    # strong_traditional_two_pass_file = f"logs/single-join-strong-traditional-two-pass.md"
    # weak_traditional_two_pass_file = f"logs/single-join-weak-traditional-two-pass.md"
    # strong_traditional_sort_file = f"logs/single-join-strong-traditional-sort.md"
    # weak_traditional_sort_file = f"logs/single-join-weak-traditional-sort.md"

    # strong_cam_two_pass_df = read_markdown_table(strong_cam_two_pass_file, "Strong CAM-Two pass", replacement_dict=None,
    #                                              group=3, header=header, other_columns=other_columns)
    # strong_traditional_two_pass_df = read_markdown_table(strong_traditional_two_pass_file, "Strong CPU-Two pass",
    #                                                      replacement_dict=None, group=3, header=header,
    #                                                      other_columns=other_columns)
    # strong_cam_sort_df = read_markdown_table(strong_cam_sort_file, "Strong CAM-Sort", replacement_dict=None, group=3,
    #                                          header=header, other_columns=other_columns)
    # strong_traditional_sort_df = read_markdown_table(strong_traditional_sort_file, "Strong CPU-Sort",
    #                                                  replacement_dict=None, group=3, header=header,
    #                                                  other_columns=other_columns)
    # weak_cam_two_pass_df = read_markdown_table(weak_cam_two_pass_file, "Weak CAM-Two pass", replacement_dict=None,
    #                                            group=3, header=header, other_columns=other_columns)
    # weak_traditional_two_pass_df = read_markdown_table(weak_traditional_two_pass_file, "Weak CPU-Two pass",
    #                                                    replacement_dict=None, group=3, header=header,
    #                                                    other_columns=other_columns)
    # weak_cam_sort_df = read_markdown_table(weak_cam_sort_file, "Weak CAM-Sort", replacement_dict=None, group=3,
    #                                        header=header, other_columns=other_columns)
    # weak_traditional_sort_df = read_markdown_table(weak_traditional_sort_file, "Weak CPU-Sort", replacement_dict=None,
    #                                                group=3, header=header, other_columns=other_columns)

    weak_cam_two_pass_df = read_markdown_table(weak_cam_two_pass_polaris_file, "Weak CAM-Two pass",
                                               replacement_dict=None, group=1, header=header,
                                               other_columns=other_columns)

    strong_cam_two_pass_df = read_markdown_table(strong_cam_two_pass_polaris_file, "Strong CAM-Two pass",
                                               replacement_dict=None, group=1, header=header,
                                               other_columns=other_columns)
    strong_cam_two_pass_df_2 = read_markdown_table(strong_cam_two_pass_polaris_file_2, "Strong CAM-Two pass",
                                                 replacement_dict=None, group=1, header=header,
                                                 other_columns=other_columns)
    # Breakdown charts
    application = "Single Join Polaris 2 nodes"
    title = "Weak scaling (#Input 10M/Rank, #Rand Range 100K/Rank)"
    show_breakdown_bar_chart_single_join_weak(weak_cam_two_pass_df, "weak_cam_two_pass_df", breakdown_columns, application, title)

    title = "Strong scaling (#Input 10M, #Rand Range 90K)"
    show_breakdown_bar_chart_single_join_strong(strong_cam_two_pass_df, "strong_cam_two_pass_df", breakdown_columns, application, title)

    title = "Strong scaling (#Input 25M, #Rand Range 60K)"
    show_breakdown_bar_chart_single_join_strong(strong_cam_two_pass_df_2, "strong_cam_two_pass_df_2", breakdown_columns, application, title)



    # show_breakdown_bar_chart_single_join(weak_cam_two_pass_df, "weak_cam_two_pass_df", breakdown_columns, application)
    # show_breakdown_bar_chart_single_join_strong(strong_cam_two_pass_df, "strong_cam_two_pass_df", breakdown_columns, application)
    # dfs = [strong_cam_two_pass_df, strong_traditional_two_pass_df, strong_cam_sort_df, strong_traditional_sort_df]
    # labels = ["CAM Two Pass", "CPU Two Pass", "CAM Sort", "CPU Sort"]
    # show_line_chart_total_time(dfs, labels, application, figure_name="strong_scaling_combined", title="Strong scaling experiment for single join: Input 15M: Output 225M", annotate=False)
    #
    # dfs = [weak_cam_two_pass_df, weak_traditional_two_pass_df, weak_cam_sort_df, weak_traditional_sort_df]
    # labels = ["CAM Two Pass", "CPU Two Pass", "CAM Sort", "CPU Sort"]
    # show_line_chart_total_time(dfs, labels, application, figure_name="weak_scaling_combined", title="Weak scaling experiment for single join")


if __name__ == "__main__":
    warnings.simplefilter(action='ignore', category=FutureWarning)

    show_single_join()
    # generate_charts(application="TC")
    # generate_charts(application="SG")
