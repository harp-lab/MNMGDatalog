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

    return grouped

def slog_vs_mnmgjoin(filepath, output_file='slog_vs_mnmgjoin.png'):
    df = pd.read_csv(filepath)

    # Extract datasets
    datasets = df.iloc[:, 0].tolist()

    # Automatically extract GPU and Node columns from the first row
    columns = df.columns.tolist()
    gpu_columns = [col for col in columns if 'GPU' in col]
    node_columns = [col for col in columns if 'Node' in col]

    # Colors for mnmgJOIN and SLOG
    default_colors = plt.rcParams['axes.prop_cycle'].by_key()['color']
    mnmgjoin_color = default_colors[0]  # First default color
    slog_color = default_colors[1]      # Second default color

    # Merge GPU and Node configurations
    config_labels = []
    for i in range(len(gpu_columns)):
        node, threads = node_columns[i].split("(")
        config_labels.append((gpu_columns[i], node, f"({threads}"))

    gpu_data = df[gpu_columns].values
    node_data = df[node_columns].values

    # Create subplots
    fig, axes = plt.subplots(1, len(datasets), figsize=(20, 4), sharey=True)

    for i, dataset in enumerate(datasets):
        ax = axes[i]

        # Plot GPU and Node data for the same configuration
        ax.plot(range(len(config_labels)), gpu_data[i], marker='o', label='mnmgJOIN', color=mnmgjoin_color)
        ax.plot(range(len(config_labels)), node_data[i], marker='s', linestyle='--', label='SLOG', color=slog_color)

        # Add text labels slightly above the data points
        for j, (gpu_time, node_time) in enumerate(zip(gpu_data[i], node_data[i])):
            ax.text(j, gpu_time * 1.2, f'{gpu_time:.1f}', ha='center', va='bottom', fontsize=12)
            ax.text(j, node_time * 1.2, f'{node_time:.1f}', ha='center', va='bottom', fontsize=12)

        ax.set_yscale('log')
        ax.set_title(f'{dataset}', fontsize=14)

        # Remove all y-axis ticks and labels
        ax.set_yticks([], minor=False)
        # ax.yaxis.set_minor_locator(NullLocator())
        # ax.tick_params(left=False, labelleft=False)

        # Set empty x-tick labels (we'll add custom text manually)
        ax.set_xticks(range(len(config_labels)))
        ax.set_xticklabels(['' for _ in config_labels])

        # Manually add multi-colored x-axis labels
        for j, (gpu, node, threads) in enumerate(config_labels):
            ax.text(j, -0.02, gpu, ha='center', va='top', fontsize=10, color=mnmgjoin_color, transform=ax.get_xaxis_transform())
            ax.text(j, -0.09, node, ha='center', va='top', fontsize=10, color=slog_color, transform=ax.get_xaxis_transform())
            ax.text(j, -0.16, threads, ha='center', va='top', fontsize=10, color=slog_color, transform=ax.get_xaxis_transform())

        if i == 0:
            ax.set_ylabel('Time (log scale)', fontsize=12)

        ax.legend(fontsize=12, loc='upper right')

    # Adjust layout with more bottom padding
    plt.subplots_adjust(wspace=0, hspace=0, bottom=0.3)
    plt.tight_layout()
    plt.savefig(output_file, dpi=600)
    print(f"Generated {output_file}")
    plt.close()

def plot_breakdown_chart(filepath, output_folder, app_name):
    df = pd.read_csv(filepath)

    # Selected breakdown components
    selected_components = ['Join', 'Communication', 'Deduplication', 'Merge', 'Clear']
    all_components = df.columns[5:]  # All time-related components (excluding metadata columns)

    datasets = df['# Input'].unique()

    for dataset in datasets:
        df_dataset = df[df['# Input'] == dataset].sort_values(by='# Process')
        gpu_configs = df_dataset['# Process'].astype(str) + ' GPU'

        # Calculate breakdown and "Other"
        breakdown_data = df_dataset[selected_components]

        # Exclude 'File I/O' from 'Other'
        excluded_components = selected_components + ['File I/O']
        other_data = df_dataset[all_components].sum(axis=1) - df_dataset[excluded_components].sum(axis=1)
        breakdown_data['Other'] = other_data

        # Plotting
        fig, ax = plt.subplots(figsize=(12, 6))

        # Stacked Bar Chart
        bottom = np.zeros(len(df_dataset))
        for component in selected_components + ['Other']:
            ax.bar(gpu_configs, breakdown_data[component], bottom=bottom, label=component, alpha=0.8)
            bottom += breakdown_data[component]

        # Total Time as Line Chart
        ax.plot(gpu_configs, df_dataset['Total Time'], marker='o', color='black', linestyle='-', label='Total Time')

        # Annotate the total time values on top of the points
        for i, total_time in enumerate(df_dataset['Total Time']):
            ax.text(i, total_time * 1.02, f'{total_time:.2f}', ha='center', va='bottom', fontsize=10)

        # Y-axis settings
        ax.set_ylabel('Time (s)', fontsize=12)
        ax.set_ylim(0, df_dataset['Total Time'].max() * 1.2)  # Dynamic range with some padding

        # X-axis label
        ax.set_xlabel('GPU Configuration', fontsize=12)

        # Title
        ax.set_title(f'{dataset}', fontsize=14)

        # Legend
        ax.legend(loc='upper right', fontsize=12)

        plt.tight_layout()

        # Save the figure
        output_filename = os.path.join(output_folder, f'{app_name}_{dataset}_breakdown.png')
        plt.savefig(output_filename, dpi=600)
        plt.close()

        print(f"Generated {output_filename}")

def plot_breakdown_chart_single_figure(filepath, output_folder, app_name):
    df = pd.read_csv(filepath)

    # Selected breakdown components
    selected_components = ['Join','Buffer preparation', 'Communication', 'Deduplication', 'Merge', 'Clear']
    all_components = df.columns[5:]  # All time-related components (excluding metadata columns)

    datasets = df['# Input'].unique()

    # Create a single figure with subplots for each dataset in a single row
    fig, axes = plt.subplots(1, len(datasets), figsize=(6 * len(datasets), 6))

    # Ensure axes is iterable
    if len(datasets) == 1:
        axes = [axes]

    # Store legend handles and labels
    legend_handles = []
    legend_labels = []

    for idx, dataset in enumerate(datasets):
        ax = axes[idx]
        df_dataset = df[df['# Input'] == dataset].sort_values(by='# Process')
        gpu_configs = df_dataset['# Process'].astype(str) + ' GPU'

        # Calculate breakdown and "Other"
        breakdown_data = df_dataset[selected_components]

        excluded_components = selected_components + ['File I/O']
        other_data = df_dataset[all_components].sum(axis=1) - df_dataset[excluded_components].sum(axis=1)
        breakdown_data['Other'] = other_data

        # Stacked Bar Chart
        bottom = np.zeros(len(df_dataset))
        for component in selected_components + ['Other']:
            bars = ax.bar(gpu_configs, breakdown_data[component], bottom=bottom, label=component, alpha=0.8)
            bottom += breakdown_data[component]

            # Store legend handles and labels
            if not legend_handles:
                legend_handles.append(bars[0])
                legend_labels.append(component)

        # Total Time as Line Chart
        line, = ax.plot(gpu_configs, df_dataset['Total Time'], marker='o', color='black', linestyle='-', label='Total Time')

        # Annotate the total time values on top of the points
        for i, total_time in enumerate(df_dataset['Total Time']):
            ax.text(i, total_time * 1.02, f'{total_time:.2f}', ha='center', va='bottom', fontsize=12)

        # Titles and labels
        ax.set_title(f'{dataset}', fontsize=14)
        ax.legend(loc='upper right', fontsize=12)

    # Add a common y-axis label
    fig.text(0.0, 0.5, 'Time (s)', va='center', rotation='vertical', fontsize=12)

    # # Add common x-axis label
    # fig.text(0.5, 0.02, 'GPU Configuration', ha='center', fontsize=12)

    plt.tight_layout()  # Adjust layout to fit labels and legend

    # Save the figure
    output_filename = os.path.join(output_folder, f'{app_name}_breakdown.png')
    plt.savefig(output_filename, dpi=600)
    plt.close()

    print(f"Generated {output_filename}")

def plot_technique_total_time(filepath, output_file='technique_total_time.png', title="Chart title"):
    df = pd.read_csv(filepath)

    # Extract unique techniques
    techniques = df.iloc[:, 3].unique()  # Column 3 contains the technique names

    # Extract GPU configurations dynamically
    df['GPU Configuration'] = df.iloc[:, 1].astype(str) + ' GPU'  # Column 1 contains the process count
    gpu_configs = df['GPU Configuration'].unique()

    # Adjust total time by subtracting the copy time
    df['Adjusted Total Time'] = df['Total Time'] - df['Copy']

    # Create a single plot
    fig, ax = plt.subplots(figsize=(10, 6))

    # Plot each technique as a separate line
    for technique in techniques:
        df_technique = df[df.iloc[:, 3] == technique].sort_values(by=df.columns[1])  # Sorting by process count

        ax.plot(df_technique['GPU Configuration'], df_technique['Adjusted Total Time'],
                marker='o', linestyle='-', label=technique)

        # Annotate total time values
        for i, total_time in enumerate(df_technique['Adjusted Total Time']):
            ax.text(i, total_time * 1.02, f'{total_time:.2f}', ha='center', va='bottom', fontsize=10)

    # Titles and labels
    ax.set_title(title, fontsize=14)
    ax.set_xlabel('GPU Configuration', fontsize=12)
    ax.set_ylabel('Time (s)', fontsize=12)

    # Add legend
    ax.legend(fontsize=10, loc='upper right')

    plt.xticks(rotation=0)
    plt.tight_layout()

    # Save the figure
    plt.savefig(output_file, dpi=600)
    plt.close()

    print(f"Generated {output_file}")

def plot_technique_breakdown(filepath, output_file='technique_breakdown.png'):
    df = pd.read_csv(filepath)

    # Extract unique techniques
    techniques = df.iloc[:, 3].unique()  # Column 3 contains the technique names

    # Extract GPU configurations dynamically
    df['GPU Configuration'] = df.iloc[:, 1].astype(str) + ' GPU'  # Column 1 contains the process count
    gpu_configs = df['GPU Configuration'].unique()

    # Adjust total time by subtracting the copy time
    df['Adjusted Total Time'] = df['Total Time'] - df['Copy']

    # Breakdown and other columns
    breakdown_columns = [
        'Join', 'Buffer preparation (data distribution)', 'Communication (data distribution)',
        'Buffer preparation (join result)', 'Communication (join result)', 'Deduplication', 'Clear'
    ]
    other_columns = ['Finalization', 'Initialization', 'Hashtable']

    # Create subplots for each technique in a single row
    fig, axes = plt.subplots(1, len(techniques), figsize=(6 * len(techniques), 6), sharey=True)

    # Ensure axes is iterable for a single technique case
    if len(techniques) == 1:
        axes = [axes]

    # Store legend handles and labels
    legend_handles = []
    legend_labels = []

    for idx, technique in enumerate(techniques):
        ax = axes[idx]
        df_technique = df[df.iloc[:, 3] == technique].sort_values(by=df.columns[1])  # Sorting by process count

        # Compute "Other" category (sum of other columns)
        breakdown_data = df_technique[breakdown_columns].copy()
        other_time = df_technique[other_columns].sum(axis=1)
        breakdown_data['Other'] = other_time

        # Stacked Bar Chart
        bottom = np.zeros(len(df_technique))
        for component in breakdown_columns + ['Other']:
            bars = ax.bar(df_technique['GPU Configuration'], breakdown_data[component], bottom=bottom, label=component, alpha=0.8)
            bottom += breakdown_data[component]

            # Store legend handles and labels only once
            if idx == 0 and component not in legend_labels:
                legend_handles.append(bars[0])
                legend_labels.append(component)

        # Total Time as Line Chart
        line, = ax.plot(df_technique['GPU Configuration'], df_technique['Adjusted Total Time'],
                        marker='o', color='black', linestyle='-', label='Total Time')

        # Annotate total time values on top of the points
        for i, total_time in enumerate(df_technique['Adjusted Total Time']):
            ax.text(i, total_time * 1.02, f'{total_time:.2f}', ha='center', va='bottom', fontsize=10)

        # Titles and labels
        ax.set_title(f'{technique}', fontsize=14)
        ax.legend(handles=legend_handles + [line], labels=legend_labels + ['Total Time'], fontsize=10, frameon=True)

    # Add a common y-axis label
    fig.text(0.0, 0.5, 'Time (s)', va='center', rotation='vertical', fontsize=12)


    plt.tight_layout()  # Adjust layout to fit labels and legend

    # Save the figure
    plt.savefig(output_file, dpi=600)
    plt.close()

    print(f"Generated {output_file}")


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

    if breakdown_columns:
        # Update 'Total Time' with the sum of the breakdown columns
        df[total_time_column] = df[breakdown_columns].sum(axis=1)


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
            output_million = int(df["# Output"].iloc[i].replace(',', '')) / 1e6
        except:
            input_million = int(df["# Input"].iloc[i]) / 1e6
            output_million = int(df["# Output"].iloc[i]) / 1e6
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
        if breakdown_columns:
            # Update 'Total Time' with the sum of the breakdown columns
            subset[total_time_column] = subset[breakdown_columns].sum(axis=1)


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

    if breakdown_columns:
        # Update 'Total Time' with the sum of the breakdown columns
        df[total_time_column] = df[breakdown_columns].sum(axis=1)


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
            output_million = int(df["# Output"].iloc[i].replace(',', '')) / 1e6
        except:
            input_million = int(df["# Input"].iloc[i]) / 1e6
            output_million = int(df["# Output"].iloc[i]) / 1e6
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


def show_line_chart_total_time(dfs, labels, application, figure_name=None, title="", annotate=True, breakdown_columns=None):
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

        if breakdown_columns:
            # Update 'Total Time' with the sum of the breakdown columns
            subset['Total Time'] = subset[breakdown_columns].sum(axis=1)

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
                         'Buffer preparation (after)', 'Communication (after)', 'Deduplication',
                         'Other']
    # "Initialization", "Finalization","Copy",
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
    # weak_traditional_two_pass_local_file = f"logs/single-join-weak-traditional-two-pass-local.md"
    # weak_traditional_two_pass_local_file = f"logs/single-join-weak-traditional-two-pass-local.md"
    # Define the header line
    # header = "| # Input | # Process | # Iterations | # Output | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |\n"
    header = "| # Input | # Process | # Iterations | # Output | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation (before) | Communication (before) | Buffer preparation (after) | Communication (after) | Deduplication | Clear | Copy | Finalization | Output |\n"
    # other_columns = ["Clear", "Hashtable"]
    other_columns = ["Hashtable"]

    strong_cam_two_pass_file = f"logs/small/single-join-strong-cam-two-pass.md"
    weak_cam_two_pass_file = f"logs/small/single-join-weak-cam-two-pass.md"
    strong_cam_sort_file = f"logs/small/single-join-strong-cam-sort.md"
    weak_cam_sort_file = f"logs/small/single-join-weak-cam-sort.md"
    strong_traditional_two_pass_file = f"logs/small/single-join-strong-traditional-two-pass.md"
    weak_traditional_two_pass_file = f"logs/small/single-join-weak-traditional-two-pass.md"
    strong_traditional_sort_file = f"logs/small/single-join-strong-traditional-sort.md"
    weak_traditional_sort_file = f"logs/small/single-join-weak-traditional-sort.md"
    strong_cam_two_pass_df = read_markdown_table(strong_cam_two_pass_file, "Strong CAM-Two pass", replacement_dict=None,
                                                 group=1, header=header, other_columns=other_columns)
    strong_traditional_two_pass_df = read_markdown_table(strong_traditional_two_pass_file, "Strong CPU-Two pass",
                                                         replacement_dict=None, group=1, header=header,
                                                         other_columns=other_columns)
    strong_cam_sort_df = read_markdown_table(strong_cam_sort_file, "Strong CAM-Sort", replacement_dict=None, group=1,
                                             header=header, other_columns=other_columns)
    strong_traditional_sort_df = read_markdown_table(strong_traditional_sort_file, "Strong CPU-Sort",
                                                     replacement_dict=None, group=1, header=header,
                                                     other_columns=other_columns)
    weak_cam_two_pass_df = read_markdown_table(weak_cam_two_pass_file, "Weak CAM-Two pass", replacement_dict=None,
                                               group=1, header=header, other_columns=other_columns)
    weak_traditional_two_pass_df = read_markdown_table(weak_traditional_two_pass_file, "Weak CPU-Two pass",
                                                       replacement_dict=None, group=1, header=header,
                                                       other_columns=other_columns)
    weak_cam_sort_df = read_markdown_table(weak_cam_sort_file, "Weak CAM-Sort", replacement_dict=None, group=1,
                                           header=header, other_columns=other_columns)
    weak_traditional_sort_df = read_markdown_table(weak_traditional_sort_file, "Weak CPU-Sort", replacement_dict=None,
                                                   group=1, header=header, other_columns=other_columns)

    # line charts
    application = "Single join small"
    dfs = [strong_cam_two_pass_df, strong_traditional_two_pass_df, strong_cam_sort_df, strong_traditional_sort_df]
    labels = ["CAM Two Pass", "CPU Two Pass", "CAM Sort", "CPU Sort"]
    show_line_chart_total_time(dfs, labels, application, figure_name="strong_scaling_combined", title="Strong scaling (#Input 10M, #Output 1037M, #Rand Range 90K)", annotate=False, breakdown_columns=breakdown_columns)

    dfs = [weak_cam_two_pass_df, weak_traditional_two_pass_df, weak_cam_sort_df, weak_traditional_sort_df]
    labels = ["CAM Two Pass", "CPU Two Pass", "CAM Sort", "CPU Sort"]
    show_line_chart_total_time(dfs, labels, application, figure_name="weak_scaling_combined", title="Weak scaling (#Input 10M/Rank, #Rand Range 100K/Rank)", breakdown_columns=breakdown_columns)



    # Breakdown charts
    # application = "Single Join Polaris 2 nodes"
    title = "Weak scaling (#Input 10M/Rank, #Rand Range 100K/Rank), CAM TWO PASS"
    show_breakdown_bar_chart_single_join_weak(weak_cam_two_pass_df, "weak_cam_two_pass_df", breakdown_columns, application, title)

    title = "Weak scaling (#Input 10M/Rank, #Rand Range 100K/Rank), CPU TWO PASS"
    show_breakdown_bar_chart_single_join_weak(weak_traditional_two_pass_df, "weak_traditional_two_pass_df", breakdown_columns, application, title)

    title = "Weak scaling (#Input 10M/Rank, #Rand Range 100K/Rank), CAM Sort"
    show_breakdown_bar_chart_single_join_weak(weak_cam_sort_df, "weak_cam_sort_df", breakdown_columns, application, title)

    title = "Weak scaling (#Input 10M/Rank, #Rand Range 100K/Rank), CPU Sort"
    show_breakdown_bar_chart_single_join_weak(weak_traditional_sort_df, "weak_traditional_sort_df", breakdown_columns, application, title)

    title = "Strong scaling (#Input 10M, #Rand Range 90K), CAM TWO PASS"
    show_breakdown_bar_chart_single_join_strong(strong_cam_two_pass_df, "strong_cam_two_pass_df", breakdown_columns, application, title)

    title = "Strong scaling (#Input 10M, #Rand Range 90K), CPU TWO PASS"
    show_breakdown_bar_chart_single_join_strong(strong_traditional_two_pass_df, "strong_traditional_two_pass_df", breakdown_columns, application, title)

    title = "Strong scaling (#Input 10M, #Rand Range 90K), CAM Sort"
    show_breakdown_bar_chart_single_join_strong(strong_cam_sort_df, "strong_cam_sort_df", breakdown_columns, application, title)

    title = "Strong scaling (#Input 10M, #Rand Range 90K), CPU Sort"
    show_breakdown_bar_chart_single_join_strong(strong_traditional_sort_df, "strong_traditional_sort_df", breakdown_columns, application, title)



    # breakdown charts
    # weak_cam_two_pass_polaris_file = f"logs/single-join-weak-cam-two-pass-polaris-2.md"
    # strong_cam_two_pass_polaris_file = f"logs/single-join-strong-cam-two-pass-polaris-2.md"
    # strong_cam_two_pass_polaris_file_2 = f"logs/single-join-strong-cam-two-pass-polaris-2_2.md"
    # weak_cam_two_pass_df = read_markdown_table(weak_cam_two_pass_polaris_file, "Weak CAM-Two pass",
    #                                            replacement_dict=None, group=1, header=header,
    #                                            other_columns=other_columns)
    #
    # strong_cam_two_pass_df = read_markdown_table(strong_cam_two_pass_polaris_file, "Strong CAM-Two pass",
    #                                            replacement_dict=None, group=1, header=header,
    #                                            other_columns=other_columns)
    # strong_cam_two_pass_df_2 = read_markdown_table(strong_cam_two_pass_polaris_file_2, "Strong CAM-Two pass",
    #                                              replacement_dict=None, group=1, header=header,
    #                                              other_columns=other_columns)
    # Breakdown charts
    # application = "Single Join Polaris 2 nodes"
    # title = "Weak scaling (#Input 10M/Rank, #Rand Range 100K/Rank)"
    # show_breakdown_bar_chart_single_join_weak(weak_cam_two_pass_df, "weak_cam_two_pass_df", breakdown_columns, application, title)
    #
    # title = "Strong scaling (#Input 10M, #Rand Range 90K)"
    # show_breakdown_bar_chart_single_join_strong(strong_cam_two_pass_df, "strong_cam_two_pass_df", breakdown_columns, application, title)
    #
    # title = "Strong scaling (#Input 25M, #Rand Range 60K)"
    # show_breakdown_bar_chart_single_join_strong(strong_cam_two_pass_df_2, "strong_cam_two_pass_df_2", breakdown_columns, application, title)





if __name__ == "__main__":
    warnings.simplefilter(action='ignore', category=FutureWarning)

    # slog_vs_mnmgjoin("drawing/charts/tc.csv", "drawing/charts/mnmgJOIN_slog.png")
    # plot_breakdown_chart_single_figure("drawing/charts/tc_breakdown.csv", "drawing/charts/", "tc")


    # plot_technique_total_time("drawing/charts/single_join_strong.csv", "drawing/charts/single_join_strong.png", "Strong scaling, 10M tuples (range 90K)")
    # plot_technique_total_time("drawing/charts/single_join_weak.csv", "drawing/charts/single_join_weak.png", "Weak scaling, 10M tuples/rank (range 50K/rank)")

    plot_technique_breakdown("drawing/charts/single_join_strong.csv", "drawing/charts/single_join_strong_breakdown.png")
    plot_technique_breakdown("drawing/charts/single_join_weak.csv", "drawing/charts/single_join_weak_breakdown.png")
    # show_single_join()
    # generate_charts(application="TC")
    # generate_charts(application="SG")
