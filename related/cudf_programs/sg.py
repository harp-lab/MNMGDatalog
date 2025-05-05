import re
import cudf
import time
import sys


def display_time(time_start, time_end, message):
    time_took = time_end - time_start
    print(f"Debug: {message}: {time_took:.6f}s")


def get_join(relation_1, relation_2, column_names=['column 1', 'column 2']):
    return relation_1.merge(relation_2, on=column_names[0],
                            how="inner",
                            suffixes=('_relation_1', '_relation_2'))


def get_projection(result, column_names=['column 1', 'column 2'], remove_same_val=False):
    temp = result.drop([column_names[0]], axis=1).drop_duplicates()
    temp.columns = column_names
    if remove_same_val:
        temp = temp.loc[(temp[column_names[0]] != temp[column_names[1]])]
    return temp


def get_union(relation_1, relation_2):
    return cudf.concat([relation_1, relation_2],
                       ignore_index=True).drop_duplicates()


def get_dataset(filename, column_names=['column 1', 'column 2'],
                rows=None):
    if rows != None:
        nrows = rows
    else:
        nrows = int(re.search(r'\d+|$', filename).group())
    return cudf.read_csv(filename, sep='\t', header=None,
                         names=column_names, nrows=nrows)

def get_union_and_delta(existing, new):
    """Existing and new both should not contain any duplicates"""
    existing = existing.assign(__src=0)
    new = new.assign(__src=1)

    combined = cudf.concat([existing, new], ignore_index=True)

    # Deduplicate across all columns except the marker
    deduped = combined.drop_duplicates(subset=combined.columns[:-1], keep=False)

    # Delta: only those that came from `new`
    delta = deduped[deduped['__src'] == 1].drop(columns='__src')
    result = cudf.concat([existing.drop(columns='__src'), delta], ignore_index=True)
    return result, delta

def get_sg(dataset):
    COLUMN_NAMES = ['column 1', 'column 2']
    rows = int(re.search(r'\d+|$', dataset).group())
    start_time_outer = time.perf_counter()
    relation_1 = get_dataset(dataset, COLUMN_NAMES, rows)
    relation_2 = relation_1.copy()
    # sg(x, y): - edge(p, x), edge(p, y), x != y.
    temp_result = get_projection(get_join(relation_1, relation_2,
                                                  COLUMN_NAMES), COLUMN_NAMES, remove_same_val=True).drop_duplicates()
    i = 0
    relation_2 = temp_result
    while True:
        # tmp(b, x): - edge(a, x), sg(a, b).
        temp_projection = get_projection(get_join(relation_1, relation_2,
                                                  COLUMN_NAMES), COLUMN_NAMES)
        temp_projection.columns = COLUMN_NAMES[::-1]
        # sg(x, y): - tmp(b, x), edge(b, y).
        temp_projection_2 = get_projection(get_join(temp_projection, relation_1,
                                                  COLUMN_NAMES), COLUMN_NAMES)
        temp_result, temp_projection_2 = get_union_and_delta(temp_result, temp_projection_2)
        if len(temp_projection_2) == 0:
            i += 1
            break
        del relation_2
        relation_2 = temp_projection_2
        # relation_2.columns = COLUMN_NAMES[::-1]
        i += 1
        del temp_projection
        del temp_projection_2
        #
        #
        #
        # relation_2 = temp_projection_2
        # previous_result_size = len(temp_result)
        # temp_result = get_union(temp_result, relation_2)
        # current_result_size = len(temp_result)
        # if previous_result_size == current_result_size:
        #     i += 1
        #     break
        # i += 1
        # del temp_projection
        # del temp_projection_2
    end_time_outer = time.perf_counter()
    time_took = end_time_outer - start_time_outer
    time_took = f"{time_took:.6f}"
    return rows, len(temp_result), int(i), time_took


def generate_benchmark(dataset):
    print("| Dataset | Number of rows | SG size | Iterations | Time (s) |")
    print("| --- | --- | --- | --- | --- |")
    record = None
    try:
        record = get_sg(dataset)
    except Exception as ex:
        print(str(ex))
    record = list(record)
    record.insert(0, dataset)
    message = " | ".join([str(s) for s in record])
    message = "| " + message + " |"
    print(message)

if __name__ == "__main__":
    argv = sys.argv[1:]
    generate_benchmark(argv[0])


# Tests
# fe_body
# python power.py sg_fe_body_cudf.csv python related/cudf_programs/sg.py data/data_163734.txt
# loc-brightkite
# python power.py sg_loc_cudf.csv python related/cudf_programs/sg.py data/data_214078.txt
# fe_sphere
# python power.py sg_fe_sphere_cudf.csv python related/cudf_programs/sg.py data/data_49152.txt
# ca_hepth
# python power.py sg_ca_hepth_cudf.csv python related/cudf_programs/sg.py data/data_51971.txt


# python sg.py ../../../data/data_7035.txt
# from root
# python power.py sg_cudf.csv python related/cudf_programs/sg.py data/data_7035.txt
# Running: power.py sg_cudf.csv python related/cudf_programs/sg.py data/data_7035.txt
# | Dataset | Number of rows | SG size | Iterations | Time (s) |
# | --- | --- | --- | --- | --- |
# | data/data_7035.txt | 7035 | 285431 | 56 | 1.083226 |
#
# --------------------------------------------------
# GPU USAGE REPORT
# --------------------------------------------------
# Generated Report File: sg_cudf.csv
# TotalTime(S),TotalEnergy(J),AvgPowerDrawTimed(W),MinDrawSampled(W),Q1DrawSampled(W),MedianDrawSampled(W),Q3DrawSampled(W),MaxDrawSampled(W),AllDrawSamples(W)
# 2.4379,32.8936,13.4924,12.44,13.31,13.39,13.54,14.52,"12.44,13.05,13.12,13.10,13.31,13.41,13.38,13.35,13.30,13.38,13.50,13.48,13.47,13.36,13.43,13.66,13.96,14.28,14.52,14.31"
# --------------------------------------------------



# if __name__ == "__main__":
#     generate_benchmark(datasets={
#         "hipc": "../../../data/data_5.txt",
#         # "fe_body": "../../data/data_163734.txt",
#         # "loc-Brightkite": "../../data/data_214078.txt",
#         # "fe_sphere": "../../data/data_49152.txt",
#         # "CA-HepTh": "../../data/data_51971.txt",
#         # # "SF.cedge": "../../data/data_223001.txt",
#         # "ego-Facebook": "../../data/data_88234.txt",
#         # "wiki-Vote": "../../data/data_103689.txt",
#         # "luxembourg_osm": "../../data/data_119666.txt",
#         # "cti": "../../data/data_48232.txt",
#         # "fe_ocean": "../../data/data_409593.txt",
#         # "wing": "../../data/data_121544.txt",
#         # "delaunay_n16": "../../data/data_196575.txt",
#         # "usroads": "../../data/data_165435.txt",
#         # "p2p-Gnutella31": "../../data/data_147892.txt",
#         # "p2p-Gnutella09": "../../data/data_26013.txt",
#         # "p2p-Gnutella04": "../../data/data_39994.txt",
#         # "cal.cedge": "../../data/data_21693.txt",
#         # "TG.cedge": "../../data/data_23874.txt",
#         "OL.cedge": "../../../data/data_7035.txt",
#     })
