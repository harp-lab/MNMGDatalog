#include <mpi.h>
#include <cstdio>
#include <cstdlib>
#include <sys/stat.h>
#include <fcntl.h>
#include <vector>
#include <unordered_map>
#include <set>
#include <cstring>
#include <string>
#include <clocale>
#include <iostream>
#include <chrono>
#include <math.h>
#include <iomanip>
#include <fstream>
#include <iostream>
#include <assert.h>
#include <thrust/count.h>
#include <thrust/sort.h>
#include <thrust/execution_policy.h>
#include <thrust/functional.h>
#include <thrust/device_ptr.h>
#include <thrust/unique.h>
#include <thrust/copy.h>
#include <thrust/fill.h>
#include <thrust/set_operations.h>
#include <thrust/execution_policy.h>
#include <thrust/host_vector.h>
#include <thrust/device_vector.h>
#include <thrust/iterator/constant_iterator.h>
#include <thrust/iterator/counting_iterator.h>
#include <thrust/iterator/discard_iterator.h>
#include <thrust/pair.h>
#include <thrust/reduce.h>
#include <thrust/sort.h>
#include <thrust/transform.h>
#include <thrust/unique.h>
#include <thrust/host_vector.h>
#include <thrust/device_vector.h>
#include <thrust/generate.h>
#include <thrust/sort.h>
#include <thrust/copy.h>
#include <thrust/random.h>
#include "common/error_handler.cu"
#include "common/utils.cu"
#include "common/kernels.cu"

using namespace std;

int get_edge_count(const char *data_path) {
    std::ifstream f;
    f.open(data_path);
    char c;
    int i = 0;
    while (f.get(c)) {
        if (c == '\n') {
            i++;
        }
    }
    f.close();
    return i;
}

void *get_data_from_file(const char *file_path, int *data, int total_rows,
                         int total_columns, char separator) {
    FILE *data_file = fopen(file_path, "r");
    for (int i = 0; i < total_rows; i++) {
        for (int j = 0; j < total_columns; j++) {
            if (j != (total_columns - 1)) {
                fscanf(data_file, "%d%c", &data[(i * total_columns) + j], &separator);
            } else {
                fscanf(data_file, "%d", &data[(i * total_columns) + j]);
            }
        }
    }
}

/**
 * @brief fnv1-a hash used in original slog backend
 *
 * @param start_ptr
 * @param prefix_len
 * @return __host__ __device__
 */
__host__ __device__ inline unsigned int prefix_hash(int *data, int start_index,
                                                    int prefix_len) {
    const unsigned int base = 2166136261U;
    const unsigned int prime = 16777619U;

    unsigned int hash = base;
    for (int i = 0; i < prefix_len; i++) {
        int chunk = data[start_index + i];
        hash ^= chunk & 255U;
        hash *= prime;
        for (int j = 0; j < 3; j++) {
            chunk = chunk >> 8;
            hash ^= chunk & 255U;
            hash *= prime;
        }
    }
    return hash;
}

__global__
void get_rank_data_size(int *local_data, int local_data_row_count,
                        int *rank_data_size, int nprocs) {
    int index = (blockIdx.x * blockDim.x) + threadIdx.x;
    if (index >= local_data_row_count) return;

    int stride = blockDim.x * gridDim.x;

    for (int i = index; i < local_data_row_count; i += stride) {
        int key = local_data[i * 2];
        int destination_rank = key % nprocs;
        atomicAdd(&rank_data_size[destination_rank], 2);
    }
}

__global__
void get_rank_data(int *local_data, int local_data_row_count,
                   int *rank_data_size, int nprocs, int *rank_data, int rank) {
    int index = (blockIdx.x * blockDim.x) + threadIdx.x;
    if (index >= local_data_row_count) return;

    int stride = blockDim.x * gridDim.x;

    for (int i = index; i < local_data_row_count; i += stride) {
        int key = local_data[i * 2];
        int value = local_data[(i * 2) + 1];
        int destination_rank = key % nprocs;
//        int current_position = rank_data_size[destination_rank];
        int current_position = atomicAdd(&rank_data_size[destination_rank], 2);
//        if (rank == 0) {
//            printf("Hello from %d, key %d, value %d, destination rank %d, pos %d\n",
//                   i, key, value, destination_rank, current_position);
//        }
        rank_data[current_position] = key;
        rank_data[current_position + 1] = value;
//        atomicExch(&rank_data[current_position - 2], key);
//        atomicExch(&rank_data[current_position - 1], value);
//        atomicAdd(&rank_data_size[destination_rank], 2);
//        rank_data[current_position] = key;
//        rank_data[current_position + 1] = value;
//        atomicCAS(&rank_data[current_position], 0, key);
//        atomicCAS(&rank_data[current_position+1], 0, value);

//        atomicExch(&rank_data[current_position], key);
//        atomicExch(&rank_data[current_position + 1], value);
//        rank_data[rank_data_size[destination_rank] - 2] = key;
//        rank_data[rank_data_size[destination_rank] - 1] = value;
    }
}





//5 rows, 2 cols
//10 data local_data
//hash_values 5
//
//
//__global__ void get_split_relation_gpu(int *local_data, int *hash_values, int edge_count,
//                                       int total_columns, int rank) {
//    int id = threadIdx.x * threadIdx.y;
//    for (int i = 0; i < graph_edge_counts; i++) {
//        unsigned int hash_value = prefix_hash(local_data, id * 2, 1);
//        int hash_value_mod = hash_value % nprocs;
//        hash_values
//    }
//}


int main(int argc, char **argv) {
    MPI_Init(&argc, &argv);
    MPI_Barrier(MPI_COMM_WORLD);
    int device_id;
    int number_of_sm;
    cudaGetDevice(&device_id);
    cudaDeviceGetAttribute(&number_of_sm, cudaDevAttrMultiProcessorCount, device_id);
    int block_size, grid_size;
    block_size = 512;
    grid_size = 32 * number_of_sm;
    setlocale(LC_ALL, "");
    double elapsed_time = -MPI_Wtime();
    double max_time = 0.0;
    int nprocs, rank;
    MPI_Comm_size(MPI_COMM_WORLD, &nprocs);
    MPI_Comm_rank(MPI_COMM_WORLD, &rank);
    int i, j, k;
    int total_columns = 2;
    // Should pass the input filename in command line argument
    const char *input_file;
    if (argc == 2) {
        input_file = argv[1];
    } else {
        input_file = "data/hipc_2019.txt";
    }

    // load the raw graph
    int graph_edge_counts = get_edge_count(input_file);
    if (rank == 0) {
        std::cout << "Input graph edge counts: " << graph_edge_counts << std::endl;
    }
    int *raw_graph_data = (int *) malloc(graph_edge_counts * total_columns * sizeof(int));
    get_data_from_file(input_file, raw_graph_data, graph_edge_counts, total_columns, '\t');
    int *raw_reverse_graph_data = (int *) malloc(graph_edge_counts * total_columns * sizeof(int));

    for (i = 0; i < graph_edge_counts; i++) {
        raw_reverse_graph_data[i * 2 + 1] = raw_graph_data[i * total_columns];
        raw_reverse_graph_data[i * 2] = raw_graph_data[i * total_columns + 1];
    }
    int *device_graph;
    checkCuda(cudaMalloc((void **) &device_graph, graph_edge_counts * total_columns * sizeof(int)));
    cudaMemcpy(device_graph, raw_graph_data, graph_edge_counts * total_columns * sizeof(int),
               cudaMemcpyHostToDevice);

    int *rank_data_size;
    checkCuda(cudaMalloc((void **) &rank_data_size, nprocs * sizeof(int)));
    get_rank_data_size<<<grid_size, block_size>>>(device_graph, graph_edge_counts, rank_data_size, nprocs);
    checkCuda(cudaDeviceSynchronize());
    // calculate offset
    thrust::exclusive_scan(thrust::device, rank_data_size, rank_data_size + nprocs, rank_data_size);
    checkCuda(cudaDeviceSynchronize());

    int *rank_data;
    checkCuda(cudaMalloc((void **) &rank_data, graph_edge_counts * total_columns * sizeof(int)));
    get_rank_data<<<grid_size, block_size>>>(device_graph, graph_edge_counts, rank_data_size, nprocs, rank_data, rank);
    checkCuda(cudaDeviceSynchronize());


    int *rank_data_size_host = (int *) malloc(nprocs * sizeof(int));
    cudaMemcpy(rank_data_size_host, rank_data_size, nprocs * sizeof(int),
               cudaMemcpyDeviceToHost);

    int *host_graph = (int *) malloc(graph_edge_counts * total_columns * sizeof(int));
    cudaMemcpy(host_graph, device_graph, graph_edge_counts * total_columns * sizeof(int),
               cudaMemcpyDeviceToHost);
    int *rank_data_host = (int *) malloc(graph_edge_counts * total_columns * sizeof(int));
    cudaMemcpy(rank_data_host, rank_data, graph_edge_counts * total_columns * sizeof(int),
               cudaMemcpyDeviceToHost);
//    for (i = 0; i < nprocs; i++) {
//        cout << "Rank: " << rank << ", Destination Rank: " << i << ", data_size: " << rank_data_size_host[i] << endl;
//    }
//    cout << endl;

    if (rank == 0) {
//        int *rank_data_size_host_verification = (int *) malloc(nprocs * sizeof(int));
//
//        for (i = 0; i < graph_edge_counts; i++) {
//            rank_data_size_host_verification[raw_graph_data[i*2]%nprocs]++;
//        }
//        for (i = 0; i < nprocs; i++) {
//            cout << "Verify Rank " << i << ", data_size: " << rank_data_size_host_verification[i] << endl;
//        }
//        for (i = 0; i < nprocs; i++) {
//            cout << "Rank " << i << ", data_size: " << rank_data_size_host[i] << endl;
//        }
//        for (i = 0; i < graph_edge_counts; i++) {
//            cout << host_graph[i * 2] << " " << host_graph[(i * 2) + 1] << endl;
//        }
        cout << "----------------" << endl;
        for (i = 0; i < graph_edge_counts; i++) {
            cout << "Rank: " << rank << ", " << rank_data_host[i * 2] << " " << rank_data_host[(i * 2) + 1] << endl;
        }
    }

//    int *hash_values;
//    checkCuda(cudaMalloc((void **) &hash_values, graph_edge_counts * sizeof(int)));


//    getting_Hash<<<512, 1024>>>(device_graph, hash_values, graph_edge_counts, total_columns, rank);
//    sort_by_Hash_gpu_buffer<<<512, 1024>>>(device_graph, hash_values, graph_edge_counts, total_columns, rank);
//    // cpu code to compute the displacement and size
//    // mpi all 2 all
//    // cpu code receive buffer
//    //


//    for (int i = 0; i < graph_edge_counts; i++) {
//        cout << raw_graph_data[i * total_columns] << ", " << raw_graph_data[(i * total_columns) + 1] << endl;
//    }

//    int *reverse_graph;
//    checkCuda(cudaMalloc((void **) &reverse_graph, graph_edge_counts * 2 * sizeof(int)));

//    for (int i = 0; i < graph_edge_counts; i++) {
//        unsigned int hash_value = prefix_hash(raw_graph_data, i * 2, 1);
//        int hash_value_mod = hash_value % nprocs;
//        if (rank == 0) {
//            cout << "Rank " << rank << " key: " << raw_graph_data[i * 2] << " hash_value: " << hash_value
//                 << ", after mod: " << hash_value_mod << endl;
//        }
//    }


    free(raw_graph_data);
    free(raw_reverse_graph_data);
    cudaFree(device_graph);
    MPI_Finalize();
    return 0;
}

// make runcomm DATA_FILE=data/data_10.txt NPROCS=8