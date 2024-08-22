import re
import cudf
import time
import json

REPEAT = 3

def display_time(time_start, time_end, message):
    time_took = time_end - time_start
    print(f"Debug: {message}: {time_took:.6f}s")

def get_symmetric_edges(edges):
    return get_union(edges, edges.rename(columns={'column 1': 'column 2', 'column 2': 'column 1'}))


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


def get_transitive_closure(dataset, column_names):
    relation_1 = dataset
    relation_2 = relation_1.copy()
    relation_2.columns = column_names[::-1]
    t_full = relation_1
    iterations = 0
    while True:
        join_result = get_projection(get_join(relation_2, relation_1, column_names), column_names)
        old_t_full_size = len(t_full)
        t_full = get_union(t_full, join_result)
        t_full_size = len(t_full)
        if old_t_full_size == t_full_size:
            iterations += 1
            break
        del relation_2
        relation_2 = join_result
        relation_2.columns = column_names[::-1]
        iterations += 1
        del join_result
    return t_full, iterations


def get_cc(dataset_path, column_names = ['column 1', 'column 2']):
    dataset = cudf.read_csv(dataset_path, sep='\t', header=None, names=column_names)
    start_time_outer = time.perf_counter()
    row_size = len(dataset)
    dataset = get_symmetric_edges(dataset)
    reachable, iterations = get_transitive_closure(dataset, column_names)
    component = reachable.groupby('column 1')['column 2'].min().reset_index()
    component.columns = ['column 1', 'component_id']
    unique_component = component['component_id'].drop_duplicates().reset_index(drop=True)
    end_time_outer = time.perf_counter()
    time_took = end_time_outer - start_time_outer
    time_took = f"{time_took:.6f}"
    return row_size, iterations, len(unique_component), time_took


def generate_benchmark(datasets=None):
    result = []
    print("| Dataset | # Input | # Iterations | # CC | Time (s) |")
    print("| --- | --- | --- | --- | --- |")
    for key, dataset in datasets.items():
        time_took = []
        record = None
        try:
            # Omit the warm-up round timing
            warm_up = get_cc(dataset)
            for i in range(REPEAT):
                try:
                    record = get_cc(dataset)
                    time_took.append(float(record[3]))
                except Exception as ex:
                    print(str(ex))
            record = list(record)
            record[3] = f"{(sum(time_took) / REPEAT):.6f}"
            record.insert(0, key)
            result.append(record)
            message = " | ".join([str(s) for s in record])
            message = "| " + message + " |"
            print(message)
        except Exception as ex:
            print(f"Error in {key}. Message: {str(ex)}")
    print("\n")
    with open('cc.json', 'w') as f:
        json.dump(result, f)


if __name__ == "__main__":
    generate_benchmark(datasets={
        "hipc": "data/data_5.txt",
        "dummy": "data/dummy.facts",
        # "OL.cedge": "data/data_7035.txt",
        # "fe_body": "data/data_163734.txt",
        # "loc-Brightkite": "data/data_214078.txt",
        # "fe_sphere": "data/data_49152.txt",
        # "CA-HepTh": "data/data_51971.txt",
        # "SF.cedge": "data/data_223001.txt",
        # "ego-Facebook": "data/data_88234.txt",
        # "wiki-Vote": "data/data_103689.txt",
        # "luxembourg_osm": "data/data_119666.txt",
        # "cti": "data/data_48232.txt",
        # "fe_ocean": "data/data_409593.txt",
        # "wing": "data/data_121544.txt",
        # "delaunay_n16": "data/data_196575.txt",
        # "usroads": "data/data_165435.txt",
        # "p2p-Gnutella31": "data/data_147892.txt",
        # "p2p-Gnutella09": "data/data_26013.txt",
        # "p2p-Gnutella04": "data/data_39994.txt",
        # "cal.cedge": "data/data_21693.txt",
        # "TG.cedge": "data/data_23874.txt",
    })