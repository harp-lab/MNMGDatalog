import sys


def read_edge_list(file_path):
    # Read the tab-separated edge list and create an adjacency list
    adjacency_list = {}
    with open(file_path, 'r') as file:
        cnt = 0
        for line in file:
            u, v = map(int, line.strip().split('\t'))
            if u not in adjacency_list:
                adjacency_list[u] = []
            if v not in adjacency_list:
                adjacency_list[v] = []
            if v not in adjacency_list[u]:
                adjacency_list[u].append(v)
            if u not in adjacency_list[v]:
                adjacency_list[v].append(u)
            cnt += 1
    return cnt, adjacency_list


def get_number_of_components(adjacency_list):
    def bfs(node, visited):
        # Standard BFS to explore all nodes in a component
        queue = [node]
        visited.add(node)
        while queue:
            current = queue.pop(0)
            for neighbor in adjacency_list[current]:
                if neighbor not in visited:
                    visited.add(neighbor)
                    queue.append(neighbor)

    visited = set()
    component_count = 0

    # Iterate over all nodes to ensure all components are counted
    for node in adjacency_list:
        if node not in visited:
            bfs(node, visited)
            component_count += 1
    return component_count


if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python3 cc_bfs.py <input_file_path>")
    else:
        file_path = sys.argv[1]
        row_cnt, adjacency_list = read_edge_list(file_path)
        edges = sum([len(i) for i in adjacency_list.values()])
        print(f"# Input: {row_cnt}, # unique edges: {edges}, # nodes: {len(adjacency_list)}")
        number_of_components = get_number_of_components(adjacency_list)
        print(f'# CC: {number_of_components}')

    # example usage:
    # python3 cc_bfs.py web-Stanford.txt
# time python3 cc_bfs.py roadNet-CA.txt
# Input: 5533214, # unique edges: 5533214, # nodes: 1965206
# CC: 2638
# python3 cc_bfs.py roadNet-CA.txt  8.39s user 0.35s system 99% cpu 8.740 total

