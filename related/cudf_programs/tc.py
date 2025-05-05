import re
import sys

import cudf
import time


def display_time(time_start, time_end, message):
    time_took = time_end - time_start
    print(f"Debug: {message}: {time_took:.6f}s")


def get_join(relation_1, relation_2, column_names=['column 1', 'column 2']):
    return relation_1.merge(relation_2, on=column_names[0],
                            how="inner",
                            suffixes=('_relation_1', '_relation_2'))


def get_projection(result, column_names=['column 1', 'column 2']):
    temp = result.drop([column_names[0]], axis=1).drop_duplicates()
    temp.columns = column_names
    return temp


def get_union(relation_1, relation_2):
    return cudf.concat([relation_1, relation_2],
                       ignore_index=True).drop_duplicates()


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


def get_dataset(filename, column_names=['column 1', 'column 2'],
                rows=None):
    if rows != None:
        nrows = rows
    else:
        nrows = int(re.search(r'\d+|$', filename).group())
    return cudf.read_csv(filename, sep='\t', header=None,
                         names=column_names, nrows=nrows)

def get_transitive_closure(dataset):
    COLUMN_NAMES = ['column 1', 'column 2']
    rows = int(re.search(r'\d+|$', dataset).group())
    start_time_outer = time.perf_counter()
    relation_1 = get_dataset(dataset, COLUMN_NAMES, rows)
    relation_2 = relation_1.copy()
    relation_2.columns = COLUMN_NAMES[::-1]
    temp_result = relation_1.drop_duplicates()
    i = 0
    while True:
        temp_projection = get_projection(get_join(relation_2, relation_1,
                                                  COLUMN_NAMES), COLUMN_NAMES)
        temp_result, temp_projection = get_union_and_delta(temp_result, temp_projection)
        if len(temp_projection) == 0:
            i += 1
            break
        del relation_2
        relation_2 = temp_projection
        relation_2.columns = COLUMN_NAMES[::-1]
        i += 1
        del temp_projection
        # print(f"i: {i}, projection size: {x}, rows: {current_result_size}")
    end_time_outer = time.perf_counter()
    time_took = end_time_outer - start_time_outer
    time_took = f"{time_took:.6f}"
    # print(temp_result)
    return rows, len(temp_result), i, time_took


def generate_benchmark(dataset):
    print("| Dataset | Number of rows | TC size | Iterations | Time (s) |")
    print("| --- | --- | --- | --- | --- |")
    try:
        record = get_transitive_closure(dataset)
        record = list(record)
        record.insert(0, dataset)
        message = " | ".join([str(s) for s in record])
        message = "| " + message + " |"
        print(message)
    except Exception as ex:
        print(str(ex))


if __name__ == "__main__":
    argv = sys.argv[1:]
    generate_benchmark(argv[0])

# Tests
# fe_body
# python power.py tc_fe_body_cudf.csv python related/cudf_programs/tc.py data/data_163734.txt
# sf
# python power.py tc_sf_cudf.csv python related/cudf_programs/tc.py data/data_223001.txt
# usroads
# python power.py tc_usroads_cudf.csv python related/cudf_programs/tc.py data/data_165435.txt
# vsp
# python power.py tc_vsp_cudf.csv python related/cudf_programs/tc.py data/data_552020.txt



# python tc.py ../../../data/data_7035.txt
# from root
# python power.py tc_cudf.csv python related/cudf_programs/tc.py data/data_7035.txt

