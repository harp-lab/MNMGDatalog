import pandas as pd
import matplotlib.pyplot as plt
import os
import warnings


def read_markdown_table(file_path, method):
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

    # Replacement mapping
    row_numbers = ["409,593", "165,435", "147,892", "1,049,866", "552,020"]
    dataset_names = ["fe_ocean", "usroad", "p2p-Gnutella31", "com-dblp", "vsp_finan"]
    replacement_dict = dict(zip(row_numbers, dataset_names))

    # Replace values in the 'Dataset' column
    df['Dataset'] = df['Dataset'].replace(replacement_dict)

    return df


def show_line_chart(df, figure_name=None):
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
        figure_path = os.path.join("drawing", "total_time", "line_chart")
    else:
        figure_path = os.path.join("drawing", "total_time", figure_name)
    fig.savefig(figure_path, dpi=400, bbox_inches="tight")
    print(f"Figure saved in {figure_path}")


def show_breakdown_line_chart(df, figure_name=None):
    # Loop through each dataset and method
    datasets = df['Dataset'].unique()
    breakdown_columns = ['Total Time', 'Initialization', 'File I/O', 'Hashtable', 'Join', 'Buffer preparation',
                         'Communication', 'Merge', 'Finalization']

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
        ax.set_ylabel('Time (s)')
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
            figure_path = os.path.join("drawing", "breakdown", f"{figure_name}_{dataset}.png")
        # Save the figure
        fig.savefig(figure_path, bbox_inches="tight")
        print(f"Figure saved in {figure_path}")

        # Close the figure to avoid too many open figures
        plt.close(fig)


if __name__ == "__main__":
    warnings.simplefilter(action='ignore', category=FutureWarning)
    cam_two_pass_file = "drawing/cam_two_pass.md"
    cam_sort_file = "drawing/cam_sort.md"
    mpi_cpu_two_pass_file = "drawing/mpi_cpu_two_pass.md"
    mpi_cpu_sort_file = "drawing/mpi_cpu_sort.md"

    cam_sort_df = read_markdown_table(cam_sort_file, "CUDA Aware MPI - Sort")
    cam_two_pass_df = read_markdown_table(cam_two_pass_file, "CUDA Aware MPI - Two pass")
    mpi_cpu_sort_df = read_markdown_table(mpi_cpu_sort_file, "Traditional MPI - Sort")
    mpi_cpu_two_pass_df = read_markdown_table(mpi_cpu_two_pass_file, "Traditional MPI - Two pass")

    # Compare CUDA AWARE MPI (Two Pass vs Sort)
    cam_df = pd.concat([cam_two_pass_df, cam_sort_df])
    show_line_chart(cam_df, "cuda_aware_mpi_pass_vs_sort.png")

    # Compare Traditional MPI (Two Pass vs Sort)
    traditional_df = pd.concat([mpi_cpu_two_pass_df, mpi_cpu_sort_df])
    show_line_chart(traditional_df, "traditional_mpi_pass_vs_sort.png")

    # Compare CUDA AWARE MPI vs Traditional MPI (Two pass)
    two_pass_df = pd.concat([cam_two_pass_df, mpi_cpu_two_pass_df])
    show_line_chart(two_pass_df, "cuda_aware_mpi_pass_vs_traditional_mpi_pass.png")

    # Compare CUDA AWARE MPI vs Traditional MPI (Sort)
    sort_df = pd.concat([cam_sort_df, mpi_cpu_sort_df])
    show_line_chart(sort_df, "cuda_aware_mpi_sort_vs_traditional_mpi_sort.png")

    # Breakdown charts
    show_breakdown_line_chart(cam_two_pass_df, "cuda_aware_mpi_two_pass")
    show_breakdown_line_chart(cam_sort_df, "cuda_aware_mpi_sort")
    show_breakdown_line_chart(mpi_cpu_two_pass_df, "traditional_mpi_two_pass")
    show_breakdown_line_chart(mpi_cpu_sort_df, "traditional_mpi_sort")
