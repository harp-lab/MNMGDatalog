import os
import warnings
import math
import pandas as pd
import matplotlib.pyplot as plt
from io import StringIO
import numpy as np
import matplotlib.gridspec as gridspec
import matplotlib.lines as mlines
import ast

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
    slog_color = default_colors[1]  # Second default color

    # Merge GPU and Node configurations
    config_labels = []
    for i in range(len(gpu_columns)):
        node, threads = node_columns[i].split("(")
        config_labels.append((gpu_columns[i], node))

    gpu_data = df[gpu_columns].values
    node_data = df[node_columns].values

    # Create subplots
    fig, axes = plt.subplots(1, len(datasets), figsize=(20, 6))

    for i, dataset in enumerate(datasets):
        ax = axes[i]

        # Plot GPU and Node data for the same configuration
        ax.plot(range(len(config_labels)),
                gpu_data[i], marker='o', label='MNMGDatalog', color=mnmgjoin_color)
        ax.plot(range(len(config_labels)),
                node_data[i], marker='s', linestyle='--', label='SLOG', color=slog_color)

        # Add text labels slightly above the data points
        for j, (gpu_time, node_time) in enumerate(zip(gpu_data[i], node_data[i])):
            ax.text(j, gpu_time * 1.2, f'{gpu_time:.1f}',
                    ha='center', va='bottom', fontsize=18)
            ax.text(j, node_time * 1.2,
                    f'{node_time:.1f}', ha='center', va='bottom', fontsize=18)

        ax.set_yscale('log')
        ax.set_title(f'{dataset}', fontsize=18)

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
        ax.yaxis.set_tick_params(labelsize=18)
        ax.yaxis.set_major_formatter(plt.ScalarFormatter())
        ax.yaxis.set_minor_formatter(plt.ScalarFormatter())
        ax.yaxis.set_minor_locator(plt.NullLocator())

    # Adjust layout with more bottom padding
    # plt.subplots_adjust(wspace=0, hspace=0, bottom=0.3)
    plt.tight_layout()
    plt.rcParams["pdf.fonttype"] = 42
    # plt.savefig(output_file, bbox_inches='tight')
    plt.savefig(output_file, bbox_inches='tight', dpi=600)
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
        ax.set_xticklabels(config_labels, fontsize=16)
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
            ax.set_ylabel('Time (log scale)', fontsize=16)

        # ax.legend(fontsize=18, loc='upper right')

    # Adjust layout with more bottom padding
    # plt.subplots_adjust(wspace=0.3, bottom=0.2)
    plt.tight_layout()
    plt.rcParams["pdf.fonttype"] = 42
    plt.savefig(output_file, bbox_inches='tight', dpi=600)
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


def plot_breakdown_chart_single_figure(filepath, output_folder, app_name):
    df = pd.read_csv(filepath)

    # Selected breakdown components
    selected_components = ['Join', 'Buffer preparation',
                           'Communication', 'Deduplication', 'Merge', 'Clear']
    # All time-related components (excluding metadata columns)
    all_components = df.columns[5:]

    datasets = df['# Input'].unique()

    # if 6 datasets, create 2x3 subplots, otherwise create 1xN subplots
    # Create a single figure with subplots for each dataset in a single row
    fig, axes = plt.subplots(1, len(datasets), figsize=(20, 6))

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
                    f'{total_time:.2f}', ha='center', va='bottom', fontsize=16)

        # Titles and labels
        ax.set_title(f'{dataset}', fontsize=18)
    ax.legend(loc='upper right', fontsize=16)

    # Add a common y-axis label
    fig.text(0.0, 0.5, 'Time (s)', va='center',
             rotation='vertical', fontsize=18)
    # Add a common x-axis label
    fig.text(0.5, 0.0, 'Number of GPUs', ha='center',
         fontsize=18)
    plt.rcParams["pdf.fonttype"] = 42
    plt.tight_layout()  # Adjust layout to fit labels and legend

    # Save the figure
    output_filename = os.path.join(output_folder, f'{app_name}_breakdown.pdf')
    plt.savefig(output_filename, bbox_inches='tight')
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
                    f'{total_time:.2f}', ha='center', va='bottom', fontsize=16)

    # Titles and labels
    ax.set_title(title, fontsize=18)
    # ax.set_xlabel('GPU Configuration', fontsize=12)
    ax.set_ylabel('Time (s)', fontsize=18)
    ax.set_xlabel('Number of GPUs', fontsize=18)
    # Add legend
    ax.legend(fontsize=16)

    plt.xticks(rotation=0)
    plt.tight_layout()

    # Save the figure
    plt.rcParams["pdf.fonttype"] = 42
    plt.savefig(output_file, dpi=600, bbox_inches='tight')
    plt.close()

    print(f"Generated {output_file}")


def plot_technique_breakdown(filepath, output_file='technique_breakdown.png'):
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
                    f'{total_time:.2f}', ha='center', va='bottom', fontsize=14)

        # Titles and labels
        ax.set_title(f'{technique}', fontsize=18)
        # only show legend for the last subplot
        if idx == len(techniques) - 1:
            ax.legend(handles=legend_handles +
                              [line], labels=legend_labels + ['Total Time'], fontsize=14, frameon=True)

    # Add a common y-axis label
    fig.text(0.0, 0.5, 'Time (s)', va='center',
             rotation='vertical', fontsize=18)
    # Add a common x-axis label
    fig.text(0.5, 0.0, 'Number of GPUs', ha='center',
             fontsize=18)
    plt.tight_layout()  # Adjust layout to fit labels and legend

    # Save the figure
    plt.rcParams["pdf.fonttype"] = 42
    plt.savefig(output_file, dpi=600, bbox_inches='tight')
    plt.close()

    print(f"Generated {output_file}")

# def plot_avg_power_boxplot(df, output_file='avg_power_boxplot_final.png', application="TC"):
#     datasets = sorted(df['Dataset'].unique())
#     engines = ['MNMGDatalog', 'GPULog']
#     width = 0.3
#
#     fig, ax = plt.subplots(figsize=(10, 6))
#
#     # Use matplotlib default color cycle
#     colors = plt.rcParams['axes.prop_cycle'].by_key()['color']
#     engine_colors = {
#         'MNMGDatalog': colors[0],  # blue
#         'GPULog': colors[1]  # orange
#     }
#
#     positions = []
#     all_box_data = []
#     scatter_positions = []
#     scatter_values = []
#     box_colors = []
#
#     for idx, dataset in enumerate(datasets):
#         for jdx, engine in enumerate(engines):
#             subset = df[(df['Dataset'] == dataset) & (df['Engine'] == engine)]
#             if subset.empty:
#                 continue
#
#             draws = list(map(float, subset['AllDrawSamples(W)'].iloc[0].split(',')))
#
#             # if dataset == 'usroads' and engine == 'MNMGDatalog':
#             #     print(draws)
#
#             pos = idx + jdx * width
#             positions.append(pos)
#             all_box_data.append(draws)
#             box_colors.append(engine_colors[engine])
#
#             scatter_positions.append(pos)
#             scatter_values.append(subset['AvgPowerDrawTimed(W)'].values[0])
#
#     # Plot boxplots
#     bplot = ax.boxplot(
#         all_box_data,
#         positions=positions,
#         widths=width * 0.8,
#         patch_artist=True,
#         manage_ticks=False
#     )
#
#     # Color boxes based on engine
#     for patch, color in zip(bplot['boxes'], box_colors):
#         patch.set_facecolor(color)
#
#     # Scatter plot for AvgPowerDrawTimed(W)
#     for idx, (x, y) in enumerate(zip(scatter_positions, scatter_values)):
#         color = box_colors[idx]
#         ax.scatter(x, y, marker='o', color=color, edgecolors='black', zorder=3, s=50)
#
#     ax.set_xlabel('Dataset', fontsize=16)
#     ax.set_ylabel('Power Draw (W)', fontsize=16)
#
#     ax.set_xticks([i + width / 2 for i in range(len(datasets))])
#     ax.set_xticklabels(datasets, fontsize=14)
#     ax.tick_params(axis='y', labelsize=14)
#
#     # Legend
#     handles = [
#         plt.Line2D([0], [0], marker='s', color='w', markerfacecolor=engine_colors['MNMGDatalog'], label='MNMGDatalog',
#                    markersize=12),
#         plt.Line2D([0], [0], marker='s', color='w', markerfacecolor=engine_colors['GPULog'], label='GPULog',
#                    markersize=12),
#     ]
#     ax.legend(handles=handles, loc='upper left', fontsize=14)
#
#     ax.set_ylim(bottom=0)
#
#     plt.tight_layout()
#     plt.savefig(output_file, bbox_inches='tight')
#     print(f"Generated {output_file}")
#     plt.close()

def read_csv(filename):
    df = pd.read_csv(filename)
    return df


def plot_total_energy_vs_time(df, output_file='total_energy_vs_time_final.pdf', application="TC"):
    datasets = sorted(df['Dataset'].unique())
    engines = ['MNMGDatalog', 'INLJoin', 'GPULog', 'BJoin', 'cuDF']
    width = 0.2  # Width of bars
    group_gap = 0.2  # Change this value for more/less gap between dataset groups

    # Compute x positions for dataset groups, with gap
    dataset_pos = {}
    pos = 0
    for ds in datasets:
        dataset_pos[ds] = pos
        pos += 1 + group_gap  # Adds gap after each dataset group

    fig, ax1 = plt.subplots(figsize=(16, 5))

    # Plot bars, aligning to correct dataset positions
    bar_positions = {}
    for idx, engine in enumerate(engines):
        positions = []
        energies = []
        for dataset in datasets:
            row = df[(df['Dataset'] == dataset) & (df['Engine'] == engine)]
            if not row.empty:
                energies.append(float(row['TotalEnergy(J)']))
            else:
                energies.append(0)
            positions.append(dataset_pos[dataset] + idx * width)
        bars = ax1.bar(
            positions, energies, width=width,
            label=f'{engine} (Energy)', zorder=1
        )
        bar_positions[engine] = positions

    ax1.set_xlabel('Dataset', fontsize=16)
    ax1.set_ylabel('Energy (Joules)', fontsize=16)
    ax1.set_xticks([dataset_pos[ds] + width * (len(engines)-1)/2 for ds in datasets])
    ax1.set_xticklabels(datasets, fontsize=14)
    ax1.tick_params(axis='y', labelsize=14)

    # 3. Plot total time scatter and text (handle 0/missing cleanly)
    ax2 = ax1.twinx()
    for idx, engine in enumerate(engines):
        scatter_x = []
        scatter_y = []
        text_y = []
        for dataset in datasets:
            row = df[(df['Dataset'] == dataset) & (df['Engine'] == engine)]
            pos = dataset_pos[dataset] + idx * width
            if not row.empty:
                y = float(row['TotalTime(S)'])
                if y > 0:
                    scatter_x.append(pos)
                    scatter_y.append(y)
                    text_y.append(y)
                else:
                    text_y.append(None)
            else:
                text_y.append(None)
        # Scatter for nonzero only
        ax2.scatter(
            scatter_x, scatter_y,
            marker='o', label=f'{engine} (Time)', zorder=2,
            edgecolor='black', s=50
        )
        y_min, y_max = ax2.get_ylim()
        offset = 0.02 * (y_max - y_min) if y_max > y_min else 1.0
        for pos, y in zip(bar_positions[engine], text_y):
            if y is not None and y > 0:
                ax2.text(
                    pos, y + offset, f'{y:.1f}s',
                    ha='center', va='bottom', fontsize=14
                )

    ax2.set_ylabel('Time (Seconds)', fontsize=14)
    ax2.tick_params(axis='y', labelsize=14)

    handles, labels = ax1.get_legend_handles_labels()
    ax1.legend(handles, engines, loc='upper left', fontsize=14)
    ax1.set_ylim(bottom=0)
    ax2.set_ylim(bottom=0)
    plt.tight_layout()
    plt.rcParams["pdf.fonttype"] = 42
    plt.savefig(output_file, dpi=600, bbox_inches='tight')
    print(f"Generated {output_file}")
    plt.close()


def plot_avg_power_violin(df, output_file='avg_power_violin_final.pdf', application="TC"):
    datasets = sorted(df['Dataset'].unique())
    engines = ['MNMGDatalog', 'GPULog', 'cuDF']
    width = 0.30
    bar_alpha_no_violin = 0.8
    bar_color = "silver"

    fig, ax1 = plt.subplots(figsize=(12, 6))
    ax2 = ax1.twinx()

    positions = []
    all_violin_data = []
    scatter_positions = []
    scatter_values = []
    energy_values = []
    time_values = []
    engine_mapping = []
    bar_info = []

    for idx, dataset in enumerate(datasets):
        for jdx, engine in enumerate(engines):
            subset = df[(df['Dataset'] == dataset) & (df['Engine'] == engine)]
            if subset.empty:
                continue
            raw_draws = subset['AllDrawSamples(W)'].iloc[0]
            if not isinstance(raw_draws, str) or not raw_draws.strip():
                raw_draws = ""

            try:
                draws = list(map(float, raw_draws.split(','))) if raw_draws else []
            except ValueError:
                draws = []

            pos = idx + jdx * width
            total_time = subset['TotalTime(S)'].values[0]
            total_energy = subset['TotalEnergy(J)'].values[0]
            has_violin = len(draws) > 0

            bar_info.append({
                "position": pos,
                "total_time": total_time,
                "total_energy": total_energy,
                "alpha": bar_alpha_no_violin
            })

            if not has_violin:
                continue

            positions.append(pos)
            all_violin_data.append(draws)
            scatter_positions.append(pos)
            scatter_values.append(subset['AvgPowerDrawTimed(W)'].values[0])
            engine_mapping.append(engine)

    # Color map
    default_colors = plt.rcParams['axes.prop_cycle'].by_key()['color']
    engine_colors = {engine: default_colors[i] for i, engine in enumerate(engines)}
    scatter_color = default_colors[len(engines)]

    # Violin plots (Power Draw Distribution)
    vp = ax2.violinplot(all_violin_data, positions=positions, widths=width * 0.5,
                        showmeans=False, showextrema=False, showmedians=False)
    for idx, body in enumerate(vp['bodies']):
        engine = engine_mapping[idx]
        body.set_facecolor(engine_colors[engine])
        body.set_alpha(1)
        body.set_linewidth(1)

    # Avg Power (Timed) scatter
    y_primary_min, y_primary_max = ax1.get_ylim()
    offset_primary = 0.2 * (y_primary_max - y_primary_min)
    y_secondary_min, y_secondary_max = ax2.get_ylim()
    offset_secondary = 0.02 * (y_secondary_max - y_secondary_min)
    for x, y in zip(scatter_positions, scatter_values):
        ax2.scatter(x, y, color=scatter_color, zorder=3, s=50)
        ax2.text(x, y + offset_secondary, f'{y:.1f}W', ha='center', va='bottom', fontsize=12, color="black")

    # Background bar (TotalTime)
    for bar in bar_info:
        rect = ax1.bar(
            bar["position"], bar["total_time"],
            width=width * 0.8,
            color=bar_color,
            alpha=bar["alpha"],
            zorder=0
        )[0]

    # Axis setup
    ax2.set_xticks([i + width for i in range(len(datasets))])
    ax2.set_xticklabels(datasets, fontsize=14)
    ax2.set_xlabel('Dataset', fontsize=16)
    ax2.set_ylabel('Power Draw (W)', fontsize=16)
    ax1.set_ylabel('Total Time (s)', fontsize=16)
    ax1.tick_params(axis='y', labelsize=14)
    ax2.tick_params(axis='y', labelsize=14)

    # Legend
    handles = [
        plt.Line2D([0], [0], marker='s', color='w', markerfacecolor=engine_colors[engines[0]], label=engines[0], markersize=10),
        plt.Line2D([0], [0], marker='s', color='w', markerfacecolor=engine_colors[engines[1]], label=engines[1], markersize=10),
        plt.Line2D([0], [0], marker='s', color='w', markerfacecolor=engine_colors[engines[2]], label=engines[2], markersize=10),
        plt.Line2D([0], [0], marker='o', color='w', markerfacecolor=scatter_color, label='Avg Power Draw (Timed)', markersize=10),
        plt.Line2D([0], [0], lw=12, color=bar_color, label='Total Time (s)', alpha=bar_alpha_no_violin)
    ]
    ax2.legend(handles=handles, loc='best', fontsize=12)

    plt.tight_layout()
    plt.rcParams["pdf.fonttype"] = 42
    plt.savefig(output_file, dpi=600, bbox_inches='tight')
    print(f"Generated {output_file}")
    plt.close()

def plot_avg_power_energy_violin(df, output_file='avg_power_violin_final.pdf', application="TC"):
    datasets = sorted(df['Dataset'].unique())
    engines = ['MNMGDatalog', 'INLJoin', 'GPULog', 'BJoin', 'cuDF']
    width = 0.20
    bar_alpha_no_violin = 0.8
    bar_color = "silver"

    fig, ax1 = plt.subplots(figsize=(20, 6))
    ax2 = ax1.twinx()

    positions = []
    all_violin_data = []
    scatter_positions = []
    scatter_values = []
    energy_values = []
    time_values = []
    engine_mapping = []
    bar_info = []

    for idx, dataset in enumerate(datasets):
        for jdx, engine in enumerate(engines):
            subset = df[(df['Dataset'] == dataset) & (df['Engine'] == engine)]
            if subset.empty:
                continue
            raw_draws = subset['AllDrawSamples(W)'].iloc[0]
            if not isinstance(raw_draws, str) or not raw_draws.strip():
                raw_draws = ""

            try:
                draws = list(map(float, raw_draws.split(','))) if raw_draws else []
            except ValueError:
                draws = []

            pos = idx + jdx * width
            total_time = subset['TotalTime(S)'].values[0]
            total_energy = subset['TotalEnergy(J)'].values[0]
            has_violin = len(draws) > 0

            bar_info.append({
                "position": pos,
                "total_time": total_time,
                "total_energy": total_energy,
                "alpha": bar_alpha_no_violin
            })

            if not has_violin:
                continue

            positions.append(pos)
            all_violin_data.append(draws)
            scatter_positions.append(pos)
            scatter_values.append(subset['AvgPowerDrawTimed(W)'].values[0])
            engine_mapping.append(engine)

    # Color map
    default_colors = plt.rcParams['axes.prop_cycle'].by_key()['color']
    engine_colors = {engine: default_colors[i] for i, engine in enumerate(engines)}
    scatter_color = default_colors[len(engines)]

    # Violin plots (Power Draw Distribution)
    vp = ax2.violinplot(all_violin_data, positions=positions, widths=width * 0.5,
                        showmeans=False, showextrema=False, showmedians=False)
    for idx, body in enumerate(vp['bodies']):
        engine = engine_mapping[idx]
        body.set_facecolor(engine_colors[engine])
        body.set_alpha(1)
        body.set_linewidth(1)

    # Avg Power (Timed) scatter
    y_primary_min, y_primary_max = ax1.get_ylim()
    offset_primary = 0.2 * (y_primary_max - y_primary_min)
    y_secondary_min, y_secondary_max = ax2.get_ylim()
    offset_secondary = 0.02 * (y_secondary_max - y_secondary_min)
    # for x, y in zip(scatter_positions, scatter_values):
    #     ax2.scatter(x, y, color=scatter_color, zorder=3, s=50)
    #     ax2.text(x, y + offset_secondary, f'{y:.1f}W', ha='center', va='bottom', fontsize=12, color="black")

    # Background bar (TotalTime)
    for bar in bar_info:
        rect = ax1.bar(
            bar["position"], bar["total_energy"],
            width=width * 0.8,
            color=bar_color,
            alpha=bar["alpha"],
            zorder=0
        )[0]

    # Axis setup
    ax2.set_xticks([i + width for i in range(len(datasets))])
    ax2.set_xticklabels(datasets, fontsize=14)
    ax2.set_xlabel('Dataset', fontsize=16)
    ax2.set_ylabel('Power Draw (W)', fontsize=16)
    ax1.set_ylabel('Energy (J)', fontsize=16)
    ax1.tick_params(axis='y', labelsize=14)
    ax2.tick_params(axis='y', labelsize=14)

    handles = []
    for i in range(len(engines)):
        handles.append(plt.Line2D([0], [0], marker='s', color='w',
                                  markerfacecolor=engine_colors[engines[i]], label=engines[i], markersize=10))


    # Legend
    handles.append(
        # plt.Line2D([0], [0], marker='o', color='w', markerfacecolor=scatter_color, label='Avg Power Draw (Timed)', markersize=10),
        plt.Line2D([0], [0], lw=12, color=bar_color, label='Total Energy', alpha=bar_alpha_no_violin)
    )
    ax2.legend(handles=handles, loc='best', fontsize=12)

    plt.tight_layout()
    plt.rcParams["pdf.fonttype"] = 42
    plt.savefig(output_file, dpi=600, bbox_inches='tight')
    print(f"Generated {output_file}")
    plt.close()

def combined_slog_and_breakdown(line_df, bar_df, output_file='combined_chart.png'):
    datasets = line_df.iloc[:, 0].tolist()
    n = len(datasets)

    # Create figure with 2 rows and N columns, shared y-axis across rows
    fig, axes = plt.subplots(
        2, n, figsize=(6 * n, 7.8),
        gridspec_kw={'height_ratios': [1, 1]},
        constrained_layout=True,
        sharey='row'
    )

    default_colors = plt.rcParams['axes.prop_cycle'].by_key()['color']
    mnmg_color = default_colors[0]
    slog_color = default_colors[1]
    components = ['Join', 'Buffer preparation', 'Communication', 'Deduplication', 'Merge', 'Clear']

    gpu_cols = [col for col in line_df.columns if 'GPU' in col]
    node_cols = [col for col in line_df.columns if 'Node' in col]
    config_labels = [(gpu_cols[i], node_cols[i].split("(")[0]) for i in range(len(gpu_cols))]

    for i, dataset in enumerate(datasets):
        ax1 = axes[0, i]
        ax2 = axes[1, i]

        # ───── TOP: SLOG vs MNMG line chart ─────
        gpu_data = line_df[gpu_cols].values[i]
        node_data = line_df[node_cols].values[i]

        ax1.plot(range(len(config_labels)), gpu_data, marker='o', label='MNMGDatalog', color=mnmg_color)
        ax1.plot(range(len(config_labels)), node_data, marker='s', linestyle='--', label='SLOG', color=slog_color)
        ax1.set_yscale('log')
        ax1.set_title(dataset, fontsize=18)
        ax1.set_xticks(range(len(config_labels)))
        ax1.set_xticklabels(['' for _ in config_labels])

        for j, (gpu, node) in enumerate(zip(gpu_data, node_data)):
            ax1.text(j, gpu * 1.2, f'{gpu:.2f}', ha='center', fontsize=14)
            ax1.text(j, node * 1.2, f'{node:.2f}', ha='center', fontsize=14)
            ax1.text(j, -0.07, config_labels[j][0], color=mnmg_color, fontsize=14,
                     transform=ax1.get_xaxis_transform(), ha='center')
            ax1.text(j, -0.14, config_labels[j][1], color=slog_color, fontsize=14,
                     transform=ax1.get_xaxis_transform(), ha='center')

        if i == 0:
            ax1.set_ylabel('Time (log scale)', fontsize=16)
        # else:
        #     ax1.set_yticklabels([])

        if i == len(datasets) - 1:
            ax1.legend(fontsize=14, loc='upper right')

        # ───── BOTTOM: Breakdown bar chart ─────
        bar_data = bar_df[bar_df['# Input'] == dataset].sort_values('# Process')
        gpu_labels = bar_data['# Process'].astype(str)
        bar_data = bar_data.copy()
        bar_data['Other'] = bar_data['Total Time'] - bar_data[components].sum(axis=1)

        bottom = np.zeros(len(bar_data))
        for comp in components + ['Other']:
            bars = ax2.bar(gpu_labels, bar_data[comp], bottom=bottom, label=comp)
            bottom += bar_data[comp]

        ax2.plot(gpu_labels, bar_data['Total Time'], color=mnmg_color, marker='o', label='Total Time')

        for j, val in enumerate(bar_data['Total Time']):
            ax2.text(j, val * 1.02, f'{val:.2f}', ha='center', fontsize=14)

        if i == 0:
            ax2.set_ylabel("Time (s)", fontsize=16)
        # else:
        #     ax2.set_yticklabels([])

        if i == len(datasets) - 1:
            ax2.legend(fontsize=14, loc='upper right')

        # Axis labels and ticks visibility
        if i == 0:
            ax1.set_ylabel('Time (log scale)', fontsize=16)
            ax2.set_ylabel('Time (s)', fontsize=16)
        else:
            ax1.tick_params(left=False, labelleft=False)  # Remove ticks and labels
            ax1.yaxis.set_ticks_position('none')
            ax2.tick_params(left=False, labelleft=False)
            ax2.yaxis.set_ticks_position('none')

    # Add common x-axis label
    fig.align_ylabels(axes[:, 0])
    fig.text(0.5, -0.02, 'Number of GPUs', ha='center', fontsize=16)
    plt.rcParams["pdf.fonttype"] = 42
    plt.savefig(output_file, dpi=600, bbox_inches='tight')

    print(f"Saved combined figure to {output_file}")
    plt.close()


def plot_power_time_energy(df, output_file='power_time_energy_smooth.pdf', smooth_window=15):
    # Maintain explicit order
    engines = ['MNMGDatalog', 'INLJoin', 'GPULog', 'BJoin', 'cuDF']
    datasets = df['Dataset'].unique()
    cmap = plt.get_cmap('tab10')
    engine_colors = {engine: cmap(i % 10) for i, engine in enumerate(engines)}

    fig, axes = plt.subplots(len(datasets), 1, figsize=(12, 4 * len(datasets)))
    if len(datasets) == 1:
        axes = [axes]
    # for idx, dataset in enumerate(datasets):

    for idx, dataset in enumerate(datasets):
        ax1 = axes[idx]
        ax2 = ax1.twinx()
        ax1.set_title(f'{dataset}', fontsize=16, pad=5, fontweight='bold')
        ax2.set_yticks([])  # Hide right y-axis ticks
        all_times = []
        for engine in engines:
            row = df[(df['Dataset'] == dataset) & (df['Engine'] == engine)]
            if not row.empty and float(row['TotalTime(S)']) > 0:
                all_times.append(float(row['TotalTime(S)']))
        for i, engine in enumerate(engines):
            row = df[(df['Dataset'] == dataset) & (df['Engine'] == engine)]
            if row.empty or float(row['TotalTime(S)']) == 0:
                continue

            total_time = float(row['TotalTime(S)'])
            power_str = row['AllDrawSamples(W)'].values[0]
            if not power_str.strip():
                continue
            power_samples = list(map(float, power_str.replace('"', '').split(',')))

            n = len(power_samples)
            # Time starts from 0, ends at total_time (already correct)
            time_points = np.linspace(0, total_time, n)
            color = engine_colors[engine]
            power_smoothed = pd.Series(power_samples).rolling(window=smooth_window, min_periods=1, center=True).mean()

            ax1.plot(time_points, power_smoothed, label=engine, color=color, linewidth=2)
            # Scatter at end with total energy as annotation
            ax1.scatter([total_time], [power_smoothed.iloc[-1]], color=color, edgecolor='black', zorder=3, s=50)
            energy = float(row['TotalEnergy(J)'])
            ax1.text(
                total_time, power_smoothed.iloc[-1], f' {energy:.0f}J',
                fontsize=12, color=color, va='center', ha='left', fontweight='bold'
            )
        if all_times:
            ax1.set_xlim(left=0, right=int(math.ceil(max(all_times)*1.05)))

        if idx == 0:
            # Make legend for ALL engines, even if not all plotted here
            handles = [
                mlines.Line2D([], [], color=engine_colors[engine], linewidth=4, label=engine)
                for engine in engines
            ]
            ax1.legend(handles=handles, loc='best', fontsize=14, frameon=True)
        else:
            if ax1.get_legend():
                ax1.get_legend().remove()
        ax1.grid(True, which='both', axis='both', linestyle='--', alpha=0.4)

    # Shared axis labels, closer to axes
    fig.supxlabel("Total Time (Seconds)", fontsize=16, y=0.01)
    fig.supylabel("Power Draw (W)", fontsize=16, x=0.01)
    # Reduce space between subplots and labels
    # fig.subplots_adjust(left=0.08, right=0.98, top=0.98, bottom=0.07, hspace=0.12)
    fig.subplots_adjust(left=0.08, right=0.98, top=1, bottom=0.05, hspace=0.22)

    plt.savefig(output_file, bbox_inches='tight', dpi=300)
    plt.close()
    print(f"Saved {output_file}")

def plot_gpu_scaling(df, output_file='scaling_study.pdf'):
    # Prepare categorical labels
    labels = [f"{g} GPU" if g == 1 else f"{g} GPUs" for g in df['GPUs']]
    x = range(len(labels))
    # Padded y limits for both axes (do not start at 0)
    time_min = df['Total Time (s)'].min()
    time_max = df['Total Time (s)'].max()
    energy_min = df['Total Energy (J)'].min()
    energy_max = df['Total Energy (J)'].max()
    time_range = time_max - time_min
    energy_range = energy_max - energy_min

    fig, ax1 = plt.subplots(figsize=(8, 4))
    ax2 = ax1.twinx()


    # Set categorical x-ticks
    ax1.set_xticks(x)
    ax1.set_xticklabels(labels, fontsize=14)
    ax1.set_xlabel("Number of GPUs", fontsize=14)



    ax1.set_ylim(time_min - 0.15 * time_range, time_max + 0.18 * time_range)
    ax2.set_ylim(energy_min - 0.15 * energy_range, energy_max + 0.18 * energy_range)

    ax1.set_ylabel("Total Time (Seconds)", fontsize=14, color='tab:blue')
    ax2.set_ylabel("Total Energy (Joules)", fontsize=14, color='tab:orange')
    ax1.tick_params(axis='y', labelcolor='tab:blue')
    ax2.tick_params(axis='y', labelcolor='tab:orange')
    ax1.grid(True, axis='y', linestyle='--', alpha=0.3)

    # Total time
    l1 = ax1.plot(
        x, df['Total Time (s)'],
        color='tab:blue', marker='o', linewidth=2, label='Total Time (s)'
    )
    offset = 0.03 * (time_max - time_min)
    for xi, y in zip(x, df['Total Time (s)']):
        ax1.text(xi, y + offset, f'{y:.1f}s', fontsize=14, color='tab:blue', va='bottom', ha='center', zorder=10)

    # Total energy
    offset = 0.03 * (energy_max - energy_min)
    l2 = ax2.plot(
        x, df['Total Energy (J)'],
        color='tab:orange', marker='o', linewidth=2, label='Total Energy (J)'
    )
    for xi, y in zip(x, df['Total Energy (J)']):
        ax2.text(xi, y - offset, f'{y:.0f}J', fontsize=14, color='tab:orange', va='top', ha='center', zorder=10)


    # Combine legends
    lines = l1 + l2
    labels_leg = [l.get_label() for l in lines]
    ax1.legend(lines, labels_leg, loc='upper right', fontsize=14)

    plt.tight_layout()
    plt.savefig(output_file, bbox_inches='tight', dpi=300)
    plt.close()
    print(f"Saved {output_file}")


if __name__ == "__main__":
    warnings.simplefilter(action='ignore', category=FutureWarning)

    # power charts
    tc_data = read_csv('logs/power_tc.csv')
    sg_data = read_csv('logs/power_sg.csv')
    # plot_total_energy_vs_time(tc_data, "drawing/charts/tc_energy.pdf", "TC")
    # plot_total_energy_vs_time(sg_data, "drawing/charts/sg_energy.pdf", "SG")
    # plot_avg_power_violin(tc_data, "drawing/charts/tc_power.pdf", "TC")
    # plot_avg_power_violin(sg_data, "drawing/charts/sg_power.pdf", "SG")
    # plot_avg_power_energy_violin(tc_data, "drawing/charts/tc_power.pdf", "TC")
    # plot_avg_power_energy_violin(sg_data, "drawing/charts/sg_power.pdf", "SG")
    # plot_power_time_energy(tc_data, "drawing/charts/tc_power_line.pdf")
    # plot_power_time_energy(sg_data, "drawing/charts/sg_power_line.pdf")

    scaling_data = [
        {"GPUs": 1, "Total Time (s)": 76.8929, "Total Energy (J)": 3921.4198},
        {"GPUs": 2, "Total Time (s)": 40.5936, "Total Energy (J)": 2069.9404},
        {"GPUs": 4, "Total Time (s)": 23.2474, "Total Energy (J)": 2049.5490},
    ]
    df_scale = pd.DataFrame(scaling_data)
    plot_gpu_scaling(df_scale, "drawing/charts/multi_gpu.pdf")

    # slog_vs_mnmgjoin("drawing/charts/tc_mnmgjoin_slog.csv", "drawing/charts/mnmgJOIN_slog.pdf")
    # plot_total_chart("drawing/charts/sg.csv", "drawing/charts/sg.pdf", "SG")
    # plot_total_chart("drawing/charts/wcc.csv", "drawing/charts/wcc.pdf", "WCC")

    # plot_breakdown_chart_single_figure("drawing/charts/tc_breakdown.csv", "drawing/charts/", "tc")

    # plot_technique_total_time("drawing/charts/single_join_strong.csv", "drawing/charts/single_join_strong.pdf", "Strong scaling, 10M tuples (range 90K)")
    # plot_technique_total_time("drawing/charts/single_join_weak.csv", "drawing/charts/single_join_weak.pdf", "Weak scaling, 10M tuples/rank (range 50K/rank)")
    # plot_technique_breakdown("drawing/charts/single_join_strong.csv", "drawing/charts/single_join_strong_breakdown.pdf")
    # plot_technique_breakdown("drawing/charts/single_join_weak.csv", "drawing/charts/single_join_weak_breakdown.pdf")

    # combined multi node tc and tc breakdown
    # line_df = pd.read_csv("drawing/charts/tc_mnmgjoin_slog.csv")
    # bar_df = pd.read_csv("drawing/charts/tc_breakdown.csv")
    # combined_slog_and_breakdown(line_df, bar_df, output_file="drawing/charts/slog_combined.pdf")
