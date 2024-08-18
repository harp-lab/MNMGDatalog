import os
import warnings
import pandas as pd
import matplotlib.pyplot as plt


def read_markdown_table(file_path, method, replacement_dict):
    df = pd.read_table(file_path, sep="|", header=0, skipinitialspace=True).dropna(axis=1, how='all').iloc[1:]
    df.columns = df.columns.str.strip()
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
    df['Dataset'] = df['Dataset'].replace(replacement_dict)
    # Group every five rows together and calculate the mean for numeric columns
    df = df.reset_index(drop=True)
    grouped = df.groupby(df.index // 5).agg(
        {col: 'mean' if df[col].dtype != 'object' else 'first' for col in df.columns})
    grouped["Other"] = grouped['Initialization'] + grouped['Hashtable'] + grouped['Finalization']
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


def show_breakdown_bar_chart(df, figure_name=None, breakdown_columns=None, application=None):
    total_time_column = 'Total Time'
    bar_width = 4  # Adjust this value to make the bars wider (default is 0.8)
    # Loop through each dataset
    datasets = df['Dataset'].unique()
    for dataset in datasets:
        # Create a new figure and axis
        fig, ax = plt.subplots()
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
            ax.text(process, subset[total_time_column].iloc[i]+ (0.02 * subset[total_time_column].max()),
                    f'{subset[total_time_column].iloc[i]:.2f}',
                    ha='center', va='baseline', fontsize=12, color='black')

        # Set titles and labels
        method = subset["Method"].unique()[0]
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


if __name__ == "__main__":
    warnings.simplefilter(action='ignore', category=FutureWarning)
    generate_charts(application="TC")
    generate_charts(application="SG")
