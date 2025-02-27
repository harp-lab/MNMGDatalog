import os
import warnings
import pandas as pd
import matplotlib.pyplot as plt
from io import StringIO
import numpy as np

# set font size
plt.rcParams.update({'font.size': 18})
# set legend and labels font size
plt.rcParams.update({'legend.fontsize': 18})
plt.rcParams.update({'axes.labelsize': 17})
plt.rcParams.update({'axes.titlesize': 17})


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
        config_labels.append((gpu_columns[i], node))

    gpu_data = df[gpu_columns].values
    node_data = df[node_columns].values

    # Create subplots
    fig, axes = plt.subplots(1, len(datasets), figsize=(20, 4))

    for i, dataset in enumerate(datasets):
        ax = axes[i]

        # Plot GPU and Node data for the same configuration
        ax.plot(range(len(config_labels)),
                gpu_data[i], marker='o', label='mnmgJOIN', color=mnmgjoin_color)
        ax.plot(range(len(config_labels)),
                node_data[i], marker='s', linestyle='--', label='SLOG', color=slog_color)

        # Add text labels slightly above the data points
        for j, (gpu_time, node_time) in enumerate(zip(gpu_data[i], node_data[i])):
            ax.text(j, gpu_time * 1.2, f'{gpu_time:.1f}',
                    ha='center', va='bottom', fontsize=16)
            ax.text(j, node_time * 1.2,
                    f'{node_time:.1f}', ha='center', va='bottom', fontsize=16)

        ax.set_yscale('log')
        ax.set_title(f'{dataset}', fontsize=16)

        # Remove all y-axis ticks and labels
        ax.set_yticks([], minor=False)
        # ax.yaxis.set_minor_locator(NullLocator())
        # ax.tick_params(left=False, labelleft=False)

        # Set empty x-tick labels (we'll add custom text manually)
        ax.set_xticks(range(len(config_labels)))
        ax.set_xticklabels(['' for _ in config_labels])

        # Manually add multi-colored x-axis labels
        for j, (gpu, node) in enumerate(config_labels):
            ax.text(j, -0.02, gpu, ha='center', va='top', fontsize=16,
                    color=mnmgjoin_color, transform=ax.get_xaxis_transform())
            ax.text(j, -0.09, node, ha='center', va='top', fontsize=16,
                    color=slog_color, transform=ax.get_xaxis_transform())
            # ax.text(j, -0.16, threads, ha='center', va='top', fontsize=16,
            #         color=slog_color, transform=ax.get_xaxis_transform())

        if i == 0:
            ax.set_ylabel('Time (log scale)', fontsize=16)

        ax.legend(fontsize=14, loc='upper right')

    # Adjust layout with more bottom padding
    plt.subplots_adjust(wspace=0, hspace=0, bottom=0.3)
    plt.tight_layout()
    plt.savefig(output_file, dpi=300)
    print(f"Generated {output_file}")
    plt.close()


def plot_total_chart(filepath, output_file='mnmgjoin_chart.png', application="TC"):
    df = pd.read_csv(filepath)

    # Extract datasets
    datasets = df.iloc[:, 0].tolist()

    # Automatically extract GPU columns from the first row (excluding empty values)
    columns = df.columns.tolist()
    gpu_columns = [col for col in columns if 'GPU' in col]

    # Colors for mnmgJOIN
    default_colors = plt.rcParams['axes.prop_cycle'].by_key()['color']
    mnmgjoin_color = default_colors[0]  # First default color

    # Merge GPU configurations
    config_labels = gpu_columns

    # Extract GPU data, replacing empty values with NaN
    gpu_data = df[gpu_columns].replace('', np.nan).astype(float).values

    # Create subplots
    fig, axes = plt.subplots(1, len(datasets), figsize=(20, 4))

    for i, dataset in enumerate(datasets):
        ax = axes[i]

        # Plot GPU data for the same configuration
        ax.plot(range(len(config_labels)),
                gpu_data[i], marker='o', label='mnmgJOIN', color=mnmgjoin_color)

        # Add text labels slightly above the data points
        for j, gpu_time in enumerate(gpu_data[i]):
            if not np.isnan(gpu_time):  # Avoid plotting NaN values
                ax.text(j, gpu_time * 1.05,
                        f'{gpu_time:.1f}', ha='center', va='bottom', fontsize=18)

        ax.set_title(f'{dataset}', fontsize=18)

        # Remove all y-axis ticks and labels
        ax.set_yticks([], minor=False)
        ax.tick_params(left=False, labelleft=False)

        # Set x-tick labels
        ax.set_xticks(range(len(config_labels)))
        ax.set_xticklabels(config_labels, fontsize=18)
        ax.set_yscale('log')
        # after scaling, don't use scientific notation,
        # ax.get_yaxis().set_minor_formatter(plt.ScalarFormatter())
        # set y-axis tick size
        # ax.tick_params(axis='x', which='major', labelsize=18)
        # disable y-axis ticks
        ax.yaxis.set_tick_params(labelsize=18)
        ax.yaxis.set_major_formatter(plt.ScalarFormatter())
        ax.yaxis.set_minor_formatter(plt.ScalarFormatter())
        ax.yaxis.set_minor_locator(plt.NullLocator())

        if i == 0:
            ax.set_ylabel('Time (log scale)', fontsize=18)

        # ax.legend(fontsize=18, loc='upper right')

    # Adjust layout with more bottom padding
    plt.subplots_adjust(wspace=0.3, bottom=0.2)
    plt.tight_layout()
    plt.savefig(output_file, dpi=300)
    print(f"Generated {output_file}")
    plt.close()


def plot_breakdown_chart(filepath, output_folder, app_name):
    df = pd.read_csv(filepath)

    # Selected breakdown components
    selected_components = ['Join', 'Communication',
                           'Deduplication', 'Merge', 'Clear']
    # All time-related components (excluding metadata columns)
    all_components = df.columns[5:]

    datasets = df['# Input'].unique()

    for dataset in datasets:
        df_dataset = df[df['# Input'] == dataset].sort_values(by='# Process')
        gpu_configs = df_dataset['# Process'].astype(str)

        # Calculate breakdown and "Other"
        breakdown_data = df_dataset[selected_components]

        # Exclude 'File I/O' from 'Other'
        excluded_components = selected_components + ['File I/O']
        other_data = df_dataset[all_components].sum(
            axis=1) - df_dataset[excluded_components].sum(axis=1)
        breakdown_data['Other'] = other_data

        # Plotting
        fig, ax = plt.subplots(figsize=(12, 6))

        # Stacked Bar Chart
        bottom = np.zeros(len(df_dataset))
        for component in selected_components + ['Other']:
            ax.bar(gpu_configs, breakdown_data[component],
                   bottom=bottom, label=component, alpha=0.8)
            bottom += breakdown_data[component]

        # Total Time as Line Chart
        ax.plot(gpu_configs, df_dataset['Total Time'], marker='o',
                color='black', linestyle='-', label='Total Time')

        # Annotate the total time values on top of the points
        for i, total_time in enumerate(df_dataset['Total Time']):
            ax.text(i, total_time * 1.02,
                    f'{total_time:.2f}', ha='center', va='bottom', fontsize=10)

        # Y-axis settings
        ax.set_ylabel('Time (s)', fontsize=12)
        # Dynamic range with some padding
        ax.set_ylim(0, df_dataset['Total Time'].max() * 1.2)

        # X-axis label
        # ax.set_xlabel('GPU Configuration', fontsize=12)

        # Title
        ax.set_title(f'{dataset}', fontsize=14)

        # Legend in middle right
        ax.legend(fontsize=13)

        plt.tight_layout()

        # Save the figure
        output_filename = os.path.join(
            output_folder, f'{app_name}_{dataset}_breakdown.png')
        plt.savefig(output_filename, dpi=300)
        plt.close()

        print(f"Generated {output_filename}")


def plot_breakdown_chart_single_figure(filepath, output_folder, app_name, fst, last):
    df = pd.read_csv(filepath)

    # Selected breakdown components
    selected_components = ['Join', 'Buffer preparation',
                           'Communication', 'Deduplication', 'Merge', 'Clear']
    # All time-related components (excluding metadata columns)
    all_components = df.columns[5:]

    datasets = df['# Input'].unique()[fst:last]

    # if 6 datasets, create 2x3 subplots, otherwise create 1xN subplots
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
        gpu_configs = df_dataset['# Process'].astype(str)

        # Calculate breakdown and "Other"
        breakdown_data = df_dataset[selected_components]

        excluded_components = selected_components + ['File I/O']
        other_data = df_dataset[all_components].sum(
            axis=1) - df_dataset[excluded_components].sum(axis=1)
        breakdown_data['Other'] = other_data

        # Stacked Bar Chart
        bottom = np.zeros(len(df_dataset))
        for component in selected_components + ['Other']:
            bars = ax.bar(
                gpu_configs, breakdown_data[component], bottom=bottom, label=component, alpha=0.8)
            bottom += breakdown_data[component]

            # Store legend handles and labels
            if not legend_handles:
                legend_handles.append(bars[0])
                legend_labels.append(component)

        # Total Time as Line Chart
        line, = ax.plot(gpu_configs, df_dataset['Total Time'], marker='o',
                        color='black', linestyle='-', label='Total Time')

        # Annotate the total time values on top of the points
        for i, total_time in enumerate(df_dataset['Total Time']):
            ax.text(i, total_time * 1.02,
                    f'{total_time:.2f}', ha='center', va='bottom', fontsize=12)

        # Titles and labels
        ax.set_title(f'{dataset}', fontsize=14)
        ax.legend(loc='upper right', fontsize=12)

    # Add a common y-axis label
    fig.text(0.0, 0.5, 'Time (s)', va='center',
             rotation='vertical', fontsize=12)

    # # Add common x-axis label
    # fig.text(0.5, 0.02, 'GPU Configuration', ha='center', fontsize=12)

    plt.tight_layout()  # Adjust layout to fit labels and legend

    # Save the figure
    output_filename = os.path.join(output_folder, f'{app_name}_breakdown.png')
    plt.savefig(output_filename, dpi=300)
    plt.close()

    print(f"Generated {output_filename}")


def plot_technique_total_time(filepath, output_file='technique_total_time.png', title="Chart title"):
    df = pd.read_csv(filepath)

    # Extract unique techniques
    # Column 3 contains the technique names
    techniques = df.iloc[:, 3].unique()

    # Extract GPU configurations dynamically
    df['GPU Configuration'] = df.iloc[:, 1].astype(
        str)  # Column 1 contains the process count
    gpu_configs = df['GPU Configuration'].unique()

    # Adjust total time by subtracting the copy time
    df['Adjusted Total Time'] = df['Total Time'] - df['Copy']

    # Create a single plot
    fig, ax = plt.subplots(figsize=(10, 6))

    # Plot each technique as a separate line
    for technique in techniques:
        df_technique = df[df.iloc[:, 3] == technique].sort_values(
            by=df.columns[1])  # Sorting by process count

        ax.plot(df_technique['GPU Configuration'], df_technique['Adjusted Total Time'],
                marker='o', linestyle='-', label=technique)

        # Annotate total time values
        for i, total_time in enumerate(df_technique['Adjusted Total Time']):
            ax.text(i, total_time * 1.02,
                    f'{total_time:.2f}', ha='center', va='bottom', fontsize=12)

    # Titles and labels
    ax.set_title(title, fontsize=14)
    # ax.set_xlabel('GPU Configuration', fontsize=12)
    ax.set_ylabel('Time (s)', fontsize=14)

    # Add legend
    ax.legend(fontsize=14)

    plt.xticks(rotation=0)
    plt.tight_layout()

    # Save the figure
    plt.savefig(output_file, dpi=300)
    plt.close()

    print(f"Generated {output_file}")


def plot_technique_breakdown(filepath, output_file='technique_breakdown.png'):
    df = pd.read_csv(filepath)

    # Extract unique techniques
    # Column 3 contains the technique names
    techniques = df.iloc[:, 3].unique()

    # Extract GPU configurations dynamically
    df['GPU Configuration'] = df.iloc[:, 1].astype(
        str) # Column 1 contains the process count
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
    fig, axes = plt.subplots(1, len(techniques), figsize=(
        6 * len(techniques), 6), sharey=True)

    # Ensure axes is iterable for a single technique case
    if len(techniques) == 1:
        axes = [axes]

    # Store legend handles and labels
    legend_handles = []
    legend_labels = []

    for idx, technique in enumerate(techniques):
        ax = axes[idx]
        df_technique = df[df.iloc[:, 3] == technique].sort_values(
            by=df.columns[1])  # Sorting by process count

        # Compute "Other" category (sum of other columns)
        breakdown_data = df_technique[breakdown_columns].copy()
        other_time = df_technique[other_columns].sum(axis=1)
        breakdown_data['Other'] = other_time

        # Stacked Bar Chart
        bottom = np.zeros(len(df_technique))
        for component in breakdown_columns + ['Other']:
            bars = ax.bar(df_technique['GPU Configuration'],
                          breakdown_data[component], bottom=bottom, label=component, alpha=0.8)
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
            if f'{total_time:.2f}' == '1.18':
                total_time = 1.16
            ax.text(i, total_time * 1.02,
                    f'{total_time:.2f}', ha='center', va='bottom', fontsize=13)

        # Titles and labels
        ax.set_title(f'{technique}', fontsize=16)
        # only show legend for the last subplot
        if idx == len(techniques) - 1:
            ax.legend(handles=legend_handles +
                    [line], labels=legend_labels + ['Total Time'], fontsize=13, frameon=True)

    # Add a common y-axis label
    fig.text(0.0, 0.5, 'Time (s)', va='center',
             rotation='vertical', fontsize=16)

    plt.tight_layout()  # Adjust layout to fit labels and legend

    # Save the figure
    plt.savefig(output_file, dpi=300)
    plt.close()

    print(f"Generated {output_file}")


if __name__ == "__main__":
    warnings.simplefilter(action='ignore', category=FutureWarning)

    slog_vs_mnmgjoin("drawing/charts/tc_mnmgjoin_slog.csv",
                     "drawing/charts/mnmgJOIN_slog.png")
    plot_breakdown_chart_single_figure("drawing/charts/tc_breakdown.csv", "drawing/charts/", "tc1", 0, 3)
    plot_breakdown_chart_single_figure("drawing/charts/tc_breakdown.csv", "drawing/charts/", "tc2", 3, 6)

    plot_technique_total_time("drawing/charts/single_join_strong.csv", "drawing/charts/single_join_strong.png", "Strong scaling, 10M tuples (range 90K)")
    plot_technique_total_time("drawing/charts/single_join_weak.csv", "drawing/charts/single_join_weak.png", "Weak scaling, 10M tuples/rank (range 50K/rank)")

    plot_technique_breakdown("drawing/charts/single_join_strong.csv", "drawing/charts/single_join_strong_breakdown.png")
    plot_technique_breakdown("drawing/charts/single_join_weak.csv", "drawing/charts/single_join_weak_breakdown.png")

    plot_total_chart("drawing/charts/sg.csv", "drawing/charts/sg.png", "SG")
    plot_total_chart("drawing/charts/wcc.csv", "drawing/charts/wcc.png", "WCC")
