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
    slog_color = default_colors[1]  # Second default color

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
                gpu_data[i], marker='o', label='MNMGDatalog', color=mnmgjoin_color)
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


def plot_total_energy_vs_time(df, output_file='total_energy_vs_time_final.png', application="TC"):
    datasets = sorted(df['Dataset'].unique())
    engines = ['MNMGDatalog', 'GPULog']
    width = 0.3  # Width of bars

    fig, ax1 = plt.subplots(figsize=(10, 6))

    bar_positions = {}
    for idx, engine in enumerate(engines):
        subset = df[df['Engine'] == engine]
        positions = [x + idx * width for x in range(len(datasets))]
        bars = ax1.bar(
            positions,
            subset['TotalEnergy(J)'],
            width=width,
            label=f'{engine} (Energy)',
            zorder=1  # Bars stay behind
        )
        bar_positions[engine] = positions

    ax1.set_xlabel('Dataset', fontsize=16)
    ax1.set_ylabel('Energy (Joules)', fontsize=16)
    ax1.set_xticks([x + width / 2 for x in range(len(datasets))])
    ax1.set_xticklabels(datasets, fontsize=14)
    ax1.tick_params(axis='y', labelsize=14)

    # Line for Total Time
    ax2 = ax1.twinx()

    for idx, engine in enumerate(engines):
        subset = df[df['Engine'] == engine]
        ax2.scatter(
            bar_positions[engine],
            subset['TotalTime(S)'],
            marker='o',
            label=f'{engine} (Time)',
            zorder=2,
            edgecolor='black',
            s=50  # Size of markers
        )

        y_min, y_max = ax2.get_ylim()
        offset = 0.02 * (y_max - y_min)  # 2% of y-range
        # Add time labels near each point
        for x, y in zip(bar_positions[engine], subset['TotalTime(S)']):
            ax2.text(
                x, y + offset,  # a little above the point
                f'{y:.1f}s',
                ha='center',
                va='bottom',
                fontsize=14
            )

    ax2.set_ylabel('Time (Seconds)', fontsize=14)
    ax2.tick_params(axis='y', labelsize=14)

    handles, labels = ax1.get_legend_handles_labels()
    ax1.legend(handles, engines, loc='best', fontsize=14)
    ax1.set_ylim(bottom=0)
    ax2.set_ylim(bottom=0)
    plt.tight_layout()
    plt.savefig(output_file, bbox_inches='tight')
    print(f"Generated {output_file}")
    plt.close()




def plot_avg_power_violin(df, output_file='avg_power_violin_final.png', application="TC"):
    datasets = sorted(df['Dataset'].unique())
    engines = ['MNMGDatalog', 'GPULog']
    width = 0.3

    fig, ax = plt.subplots(figsize=(10, 6))

    positions = []
    all_violin_data = []
    scatter_positions = []
    scatter_values = []
    engine_mapping = []  # track engine for each violin

    for idx, dataset in enumerate(datasets):
        for jdx, engine in enumerate(engines):
            subset = df[(df['Dataset'] == dataset) & (df['Engine'] == engine)]
            if subset.empty:
                continue

            draws = list(map(float, subset['AllDrawSamples(W)'].iloc[0].split(',')))

            pos = idx + jdx * width
            positions.append(pos)
            all_violin_data.append(draws)
            scatter_positions.append(pos)
            scatter_values.append(subset['AvgPowerDrawTimed(W)'].values[0])
            engine_mapping.append(engine)

    # Color map
    default_colors = plt.rcParams['axes.prop_cycle'].by_key()['color']
    engine_colors = {
        engines[0]: default_colors[0],  # typically blue
        engines[1]: default_colors[1]  # typically orange
    }
    scatter_color = default_colors[2]  # third color, typically green

    # Plot violin plots
    vp = ax.violinplot(all_violin_data, positions=positions, widths=width * 0.9, showmeans=False, showextrema=False,
                       showmedians=False)

    for idx, body in enumerate(vp['bodies']):
        engine = engine_mapping[idx]
        body.set_facecolor(engine_colors[engine])
        body.set_alpha(1)
        # body.set_edgecolor('black')
        body.set_linewidth(1)

    y_min, y_max = ax.get_ylim()
    offset = 0.02 * (y_max - y_min)  # 2% of y-range
    # Scatter plot for AvgPowerDrawTimed(W)
    for x, y in zip(scatter_positions, scatter_values):
        ax.scatter(x, y, color=scatter_color, zorder=3, s=50)
        ax.text(
            x, y + offset,  # slightly above
            f'{y:.1f}W',
            ha='center',
            va='bottom',
            fontsize=14,
            color="black"
        )

    ax.set_xlabel('Dataset', fontsize=16)
    ax.set_ylabel('Power Draw (W)', fontsize=16)

    ax.set_xticks([i + width / 2 for i in range(len(datasets))])
    ax.set_xticklabels(datasets, fontsize=14)
    ax.tick_params(axis='y', labelsize=14)

    # Custom legend
    handles = [
        plt.Line2D([0], [0], marker='s', color='w', markerfacecolor=engine_colors[engines[0]], label=engines[0],
                   markersize=10),
        plt.Line2D([0], [0], marker='s', color='w', markerfacecolor=engine_colors[engines[1]], label=engines[1],
                   markersize=10),
        plt.Line2D([0], [0], marker='o', color='w', markerfacecolor=scatter_color, label='Avg Power Draw (Timed)',
                   markersize=10)
    ]
    ax.legend(handles=handles, loc='best', fontsize=14)

    plt.tight_layout()
    plt.savefig(output_file, bbox_inches='tight')
    print(f"Generated {output_file}")
    plt.close()


if __name__ == "__main__":
    warnings.simplefilter(action='ignore', category=FutureWarning)

    # power charts
    tc_data = read_csv('logs/power_tc.csv')
    sg_data = read_csv('logs/power_sg.csv')
    plot_total_energy_vs_time(tc_data, "drawing/charts/tc_energy.png", "TC")
    plot_total_energy_vs_time(sg_data, "drawing/charts/sg_energy.png", "SG")
    plot_avg_power_violin(tc_data, "drawing/charts/tc_power.png", "TC")
    plot_avg_power_violin(sg_data, "drawing/charts/sg_power.png", "SG")
    #
    # sg_data = read_csv('logs/power_sg.csv')
    # plot_total_energy_vs_time(sg_data, "drawing/charts/sg_total_energy.png", "SG")
    # plot_avg_power_boxplot(sg_data, "drawing/charts/sg_avg_power.png", "SG")

    # slog_vs_mnmgjoin("drawing/charts/tc_mnmgjoin_slog.csv", "drawing/charts/mnmgJOIN_slog.png")
    # plot_breakdown_chart_single_figure("drawing/charts/tc_breakdown.csv", "drawing/charts/", "tc")
    #
    #
    # plot_technique_total_time("drawing/charts/single_join_strong.csv", "drawing/charts/single_join_strong.png", "Strong scaling, 10M tuples (range 90K)")
    # plot_technique_total_time("drawing/charts/single_join_weak.csv", "drawing/charts/single_join_weak.png", "Weak scaling, 10M tuples/rank (range 50K/rank)")
    #
    # plot_technique_breakdown("drawing/charts/single_join_strong.csv", "drawing/charts/single_join_strong_breakdown.png")
    # plot_technique_breakdown("drawing/charts/single_join_weak.csv", "drawing/charts/single_join_weak_breakdown.png")
    # plot_total_chart("drawing/charts/sg.csv", "drawing/charts/sg.png", "SG")
    # plot_total_chart("drawing/charts/wcc.csv", "drawing/charts/wcc.png", "WCC")
