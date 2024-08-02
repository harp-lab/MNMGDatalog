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
#include <thrust/device_vector.h>
#include <thrust/host_vector.h>
#include "common/error_handler.cu"
#include "common/utils.cu"
#include "common/kernels.cu"

using namespace std;


#define BLOCK_START(process_id, total_process, n) ((process_id)*(n)/(total_process))
#define BLOCK_SIZE(process_id, total_process, n) \
    (BLOCK_START(process_id + 1, total_process, n) - BLOCK_START(process_id, total_process, n))


Entity *get_split_relation_pass_method(int rank, Entity *local_data_device,
                                       int row_size, int total_columns, int total_rank,
                                       int grid_size, int block_size, int cuda_aware_mpi, int *size) {
    int *send_count;
    checkCuda(cudaMalloc((void **) &send_count, total_rank * sizeof(int)));
    checkCuda(cudaMemset(send_count, 0, total_rank * sizeof(int)));
    int *send_displacements;
    checkCuda(cudaMalloc((void **) &send_displacements, total_rank * sizeof(int)));
    checkCuda(cudaMemset(send_displacements, 0, total_rank * sizeof(int)));
    int *send_displacements_temp;
    checkCuda(cudaMalloc((void **) &send_displacements_temp, total_rank * sizeof(int)));
    checkCuda(cudaMemset(send_displacements_temp, 0, total_rank * sizeof(int)));
    get_send_count<<<grid_size, block_size>>>(local_data_device, row_size, send_count, total_rank);
    thrust::exclusive_scan(thrust::device, send_count, send_count + total_rank, send_displacements);
    cudaMemcpy(send_displacements_temp, send_displacements, total_rank * sizeof(int), cudaMemcpyDeviceToDevice);
    Entity *send_data;
    checkCuda(cudaMalloc((void **) &send_data, row_size * sizeof(Entity)));
    get_rank_data<<<grid_size, block_size>>>(local_data_device, row_size, send_displacements_temp, total_rank,
                                             send_data);
    int mpi_error;

    int *send_count_host = (int *) malloc(total_rank * sizeof(int));
    int *receive_count_host = (int *) malloc(total_rank * sizeof(int));
    int *send_displacements_host = (int *) malloc(total_rank * sizeof(int));
    int *receive_displacements_host = (int *) malloc(total_rank * sizeof(int));
    cudaMemcpy(send_count_host, send_count, total_rank * sizeof(int), cudaMemcpyDeviceToHost);
    cudaMemcpy(send_displacements_host, send_displacements, total_rank * sizeof(int), cudaMemcpyDeviceToHost);

    mpi_error = MPI_Alltoall(send_count_host, 1, MPI_INT, receive_count_host, 1, MPI_INT, MPI_COMM_WORLD);
    if (mpi_error != MPI_SUCCESS) {
        char error_string[BUFSIZ];
        int length_of_error_string;
        MPI_Error_string(mpi_error, error_string, &length_of_error_string);
        fprintf(stderr, "MPI error on MPI_Alltoall call: %s\n", error_string);
        MPI_Abort(MPI_COMM_WORLD, mpi_error);
    }

    int total_receive = thrust::reduce(receive_count_host, receive_count_host + total_rank, 0, thrust::plus<int>());
    thrust::exclusive_scan(receive_count_host, receive_count_host + total_rank, receive_displacements_host);
    Entity *receive_data;
    checkCuda(cudaMalloc((void **) &receive_data, total_receive * sizeof(Entity)));

    if (cuda_aware_mpi) {
        mpi_error = MPI_Alltoallv(send_data, send_count_host, send_displacements_host, MPI_UINT64_T,
                                  receive_data, receive_count_host, receive_displacements_host, MPI_UINT64_T,
                                  MPI_COMM_WORLD);
        if (mpi_error != MPI_SUCCESS) {
            char error_string[BUFSIZ];
            int length_of_error_string;
            MPI_Error_string(mpi_error, error_string, &length_of_error_string);
            fprintf(stderr, "MPI error on CUDA AWARE MPI MPI_Alltoallv call: %s\n", error_string);
            MPI_Abort(MPI_COMM_WORLD, mpi_error);
        }
    } else {
        Entity *send_data_host = (Entity *) malloc(row_size * sizeof(Entity));
        Entity *receive_data_host = (Entity *) malloc(total_receive * sizeof(Entity));
        cudaMemcpy(send_data_host, send_data, row_size * sizeof(Entity), cudaMemcpyDeviceToHost);
        mpi_error = MPI_Alltoallv(send_data_host, send_count_host, send_displacements_host, MPI_UINT64_T,
                                  receive_data_host, receive_count_host, receive_displacements_host, MPI_UINT64_T,
                                  MPI_COMM_WORLD);
        if (mpi_error != MPI_SUCCESS) {
            char error_string[BUFSIZ];
            int length_of_error_string;
            MPI_Error_string(mpi_error, error_string, &length_of_error_string);
            fprintf(stderr, "MPI error on host MPI_Alltoallv call: %s\n", error_string);
            MPI_Abort(MPI_COMM_WORLD, mpi_error);
        }
        cudaMemcpy(receive_data, receive_data_host, total_receive * sizeof(Entity), cudaMemcpyHostToDevice);
        free(send_data_host);
        free(receive_data_host);
    }
    *size = total_receive;
    free(send_count_host);
    free(receive_count_host);
    free(send_displacements_host);
    free(receive_displacements_host);
    cudaFree(send_count);
    cudaFree(send_displacements);
    cudaFree(send_displacements_temp);
    cudaFree(send_data);
    return receive_data;
}

Entity *get_split_relation_sort_method(int rank, Entity *local_data_device,
                                       int row_size, int total_columns, int total_rank,
                                       int grid_size, int block_size, int cuda_aware_mpi, int *size) {

    thrust::device_vector <uint8_t> row_mapping(row_size);

    thrust::transform(
            thrust::device, local_data_device,
            local_data_device + row_size, row_mapping.begin(),
    [total_rank = total_rank] __device__(
    const Entity &entity) -> uint8_t{
            return (uint8_t)(entity.key % total_rank);
    });

    thrust::stable_sort_by_key(thrust::device, row_mapping.begin(), row_mapping.end(), local_data_device);

    thrust::device_vector<int> unique_rank_row_count(total_rank);
    thrust::device_vector <uint8_t> unique_rank(total_rank);

    auto unique_rank_range = thrust::reduce_by_key(
            thrust::device, row_mapping.begin(), row_mapping.end(),
            thrust::constant_iterator<int>(1), unique_rank.begin(),
            unique_rank_row_count.begin());
    auto total_unique_rank = unique_rank_range.first - unique_rank.begin();
    unique_rank_row_count.resize(total_unique_rank);
    unique_rank.resize(total_unique_rank);
    thrust::host_vector<int> unique_rank_row_count_host(unique_rank_row_count);
    thrust::host_vector <uint8_t> unique_rank_host(unique_rank);
    thrust::host_vector<int> send_count_host(total_rank);
    for (int i = 0; i < total_unique_rank; i++) {
        send_count_host[unique_rank_host[i]] = unique_rank_row_count_host[i];
    }
    thrust::host_vector<int> receive_count_host(total_rank);

    MPI_Alltoall(send_count_host.data(), 1, MPI_INT,
                 receive_count_host.data(), 1, MPI_INT, MPI_COMM_WORLD);
    int total_receive = thrust::reduce(receive_count_host.begin(), receive_count_host.end());

    thrust::host_vector<int> send_displacements_host(total_rank);
    thrust::host_vector<int> receive_displacements_host(total_rank);

    thrust::exclusive_scan(send_count_host.begin(), send_count_host.end(), send_displacements_host.begin());
    thrust::exclusive_scan(receive_count_host.begin(), receive_count_host.end(), receive_displacements_host.begin());

    Entity *receive_data;
    checkCuda(cudaMalloc((void **) &receive_data, total_receive * sizeof(Entity)));
    int mpi_error;
    if (cuda_aware_mpi) {
        mpi_error = MPI_Alltoallv(local_data_device, send_count_host.data(), send_displacements_host.data(),
                                  MPI_UINT64_T,
                                  receive_data, receive_count_host.data(), receive_displacements_host.data(),
                                  MPI_UINT64_T,
                                  MPI_COMM_WORLD);
        if (mpi_error != MPI_SUCCESS) {
            char error_string[BUFSIZ];
            int length_of_error_string;
            MPI_Error_string(mpi_error, error_string, &length_of_error_string);
            fprintf(stderr, "MPI error on CUDA AWARE MPI MPI_Alltoallv call: %s\n", error_string);
            MPI_Abort(MPI_COMM_WORLD, mpi_error);
        }
    } else {
        Entity *send_data_host = (Entity *) malloc(row_size * sizeof(Entity));
        Entity *receive_data_host = (Entity *) malloc(total_receive * sizeof(Entity));
        cudaMemcpy(send_data_host, local_data_device, row_size * sizeof(Entity), cudaMemcpyDeviceToHost);
        mpi_error = MPI_Alltoallv(send_data_host, send_count_host.data(), send_displacements_host.data(),
                                  MPI_UINT64_T,
                                  receive_data_host, receive_count_host.data(), receive_displacements_host.data(),
                                  MPI_UINT64_T,
                                  MPI_COMM_WORLD);
        if (mpi_error != MPI_SUCCESS) {
            char error_string[BUFSIZ];
            int length_of_error_string;
            MPI_Error_string(mpi_error, error_string, &length_of_error_string);
            fprintf(stderr, "MPI error on host MPI_Alltoallv call: %s\n", error_string);
            MPI_Abort(MPI_COMM_WORLD, mpi_error);
        }
        cudaMemcpy(receive_data, receive_data_host, total_receive * sizeof(Entity), cudaMemcpyHostToDevice);
        free(send_data_host);
        free(receive_data_host);
    }
    *size = total_receive;
    return receive_data;
}

Entity *get_split_relation(int rank, Entity *local_data_device,
                           int row_size, int total_columns, int total_rank,
                           int grid_size, int block_size, int cuda_aware_mpi, int *size, int method) {
    if (method == 0) {
        return get_split_relation_pass_method(rank, local_data_device, row_size,
                                              total_columns, total_rank, grid_size, block_size, cuda_aware_mpi, size);
    } else {
        return get_split_relation_sort_method(rank, local_data_device, row_size,
                                              total_columns, total_rank, grid_size, block_size, cuda_aware_mpi, size);
    }
}

int main(int argc, char **argv) {
    MPI_Init(&argc, &argv);
    MPI_Barrier(MPI_COMM_WORLD);
    double elapsed_time = -MPI_Wtime();
    int device_id;
    int number_of_sm;
    cudaGetDevice(&device_id);
    cudaDeviceGetAttribute(&number_of_sm, cudaDevAttrMultiProcessorCount, device_id);
    int block_size, grid_size;
    block_size = 512;
    grid_size = 32 * number_of_sm;
    setlocale(LC_ALL, "");
    double max_time = 0.0;
    int total_rank, rank;
    int i;
    MPI_Comm_size(MPI_COMM_WORLD, &total_rank);
    MPI_Comm_rank(MPI_COMM_WORLD, &rank);
    // Should pass the input filename in command line argument
    const char *input_file;
    int comm_method = 0;
    int cuda_aware_mpi = 0;

    if (argc == 4) {
        input_file = argv[1];
        cuda_aware_mpi = atoi(argv[2]);
        comm_method = atoi(argv[3]);
    } else if (argc == 3) {
        input_file = argv[1];
        cuda_aware_mpi = atoi(argv[2]);
    } else if (argc == 2) {
        input_file = argv[1];
    } else {
        input_file = "hipc_2019.bin";
    }

    // READ THE FILE IN PARALLEL
    // Reading filesize in bytes
    struct stat filestats;
    stat(input_file, &filestats);
    off_t filesize = filestats.st_size;

    // Calculating the current rank's starting row and number of rows
    // Scatter larger blocks among processes (non-uniform)
    int total_columns = 2;
    int total_rows = filesize / (sizeof(int) * total_columns);
    int row_start = BLOCK_START(rank, total_rank, total_rows);
    int row_size = BLOCK_SIZE(rank, total_rank, total_rows);
    int local_count = row_size * total_columns;

    // Reading specific portion from the file as char in parallel
    int offset = row_start * total_columns * sizeof(int);
    int *local_data_host = (int *) malloc(local_count * sizeof(int));
    MPI_File mpi_file_buffer;
    if (MPI_File_open(MPI_COMM_WORLD, input_file, MPI_MODE_RDONLY,
                      MPI_INFO_NULL, &mpi_file_buffer) != MPI_SUCCESS) {
        printf("Error opening file %s", input_file);
        MPI_Abort(MPI_COMM_WORLD, EXIT_FAILURE);
    }
    MPI_File_read_at(mpi_file_buffer, offset, local_data_host, local_count, MPI_INT, MPI_STATUS_IGNORE);
    MPI_File_close(&mpi_file_buffer);


    int *local_data_device;
    checkCuda(cudaMalloc((void **) &local_data_device, local_count * sizeof(int)));
    cudaMemcpy(local_data_device, local_data_host, local_count * sizeof(int), cudaMemcpyHostToDevice);

    Entity *local_data;
    checkCuda(cudaMalloc((void **) &local_data, row_size * sizeof(Entity)));
    Entity *local_data_reverse;
    checkCuda(cudaMalloc((void **) &local_data_reverse, row_size * sizeof(Entity)));
    create_entity_ar<<<grid_size, block_size>>>(local_data, row_size, local_data_device);
    create_entity_ar_reverse<<<grid_size, block_size>>>(local_data_reverse, row_size, local_data_device);
    int input_relation_size = 0;
    Entity *input_relation = get_split_relation(rank, local_data,
                                                row_size, total_columns, total_rank,
                                                grid_size, block_size, cuda_aware_mpi,
                                                &input_relation_size, comm_method);

    int t_delta_size;
    Entity *t_delta = get_split_relation(rank, local_data_reverse,
                                         row_size, total_columns, total_rank,
                                         grid_size, block_size, cuda_aware_mpi, &t_delta_size, comm_method);
    thrust::stable_sort(thrust::device, t_delta, t_delta + t_delta_size, set_cmp());
    t_delta_size = (thrust::unique(thrust::device,
                                   t_delta, t_delta + t_delta_size,
                                   is_equal())) - t_delta;

    // T_FULL is t delta with first column as key
    Entity *t_full;
    checkCuda(cudaMalloc((void **) &t_full, t_delta_size * sizeof(Entity)));
    cudaMemcpy(t_full, t_delta, t_delta_size * sizeof(Entity), cudaMemcpyDeviceToDevice);

    int global_t_full_size;
    int t_full_size = t_delta_size;
    MPI_Allreduce(&t_full_size, &global_t_full_size, 1, MPI_INT, MPI_SUM, MPI_COMM_WORLD);

    Entity *hash_table;
    double load_factor = 0.4;
    int hash_table_rows = (int) input_relation_size / load_factor;
    hash_table_rows = pow(2, ceil(log(hash_table_rows) / log(2)));
    checkCuda(cudaMalloc((void **) &hash_table, hash_table_rows * sizeof(Entity)));
    Entity negative_entity;
    negative_entity.key = -1;
    negative_entity.value = -1;
    thrust::fill(thrust::device, hash_table, hash_table + hash_table_rows, negative_entity);
    build_hash_table_entity<<<grid_size, block_size>>>(hash_table, hash_table_rows, input_relation,
                                                       input_relation_size);
    int iterations = 0;


    while (true) {
        int join_result_size;
        int *join_offset;
        Entity *join_result;
        Entity *new_t_full;
        checkCuda(cudaMalloc((void **) &join_offset, t_delta_size * sizeof(int)));
        checkCuda(cudaMemset(join_offset, 0, t_delta_size * sizeof(int)));

        get_join_result_size_entity<<<grid_size, block_size>>>(hash_table, hash_table_rows,
                                                               t_delta, t_delta_size, join_offset);
        join_result_size = thrust::reduce(thrust::device, join_offset, join_offset + t_delta_size, 0);
        thrust::exclusive_scan(thrust::device, join_offset, join_offset + t_delta_size, join_offset);
        checkCuda(cudaMalloc((void **) &join_result, join_result_size * sizeof(Entity)));

        get_join_result_entity<<<grid_size, block_size>>>(hash_table, hash_table_rows,
                                                          t_delta, t_delta_size, join_offset, join_result);

        // Scatter the new facts among relevant processes
        Entity *t_delta_temp = get_split_relation(rank, join_result,
                                                  join_result_size, total_columns, total_rank,
                                                  grid_size, block_size, cuda_aware_mpi, &t_delta_size,
                                                  comm_method);
        // Deduplicate scattered facts
        thrust::stable_sort(thrust::device, t_delta_temp, t_delta_temp + t_delta_size, set_cmp());
        t_delta_size = (thrust::unique(thrust::device,
                                       t_delta_temp, t_delta_temp + t_delta_size,
                                       is_equal())) - t_delta_temp;
        cudaFree(t_delta);
        checkCuda(cudaMalloc((void **) &t_delta, t_delta_size * sizeof(Entity)));
        cudaMemcpy(t_delta, t_delta_temp, t_delta_size * sizeof(Entity), cudaMemcpyDeviceToDevice);

        // set union of two sets (sorted t full and t delta)
        int new_t_full_size = t_delta_size + t_full_size;
        checkCuda(cudaMalloc((void **) &new_t_full, new_t_full_size * sizeof(Entity)));
        new_t_full_size = thrust::set_union(thrust::device,
                                            t_full, t_full + t_full_size,
                                            t_delta, t_delta + t_delta_size,
                                            new_t_full, set_cmp()) - new_t_full;

        // Update t delta which is the only new facts which are not in t full and will be used in next iteration
        t_delta_size = thrust::set_difference(thrust::device,
                                              new_t_full, new_t_full + new_t_full_size,
                                              t_full, t_full + t_full_size,
                                              t_delta, set_cmp()) - t_delta;
        cudaFree(t_full);
        checkCuda(cudaMalloc((void **) &t_full, new_t_full_size * sizeof(Entity)));
        cudaMemcpy(t_full, new_t_full, new_t_full_size * sizeof(Entity), cudaMemcpyDeviceToDevice);
        t_full_size = new_t_full_size;
        cudaFree(join_offset);
        cudaFree(join_result);
        cudaFree(new_t_full);
        cudaFree(t_delta_temp);
        // Check if the global t full size has changed in this iteration
        int old_global_t_full_size = global_t_full_size;
        MPI_Allreduce(&t_full_size, &global_t_full_size, 1, MPI_INT, MPI_SUM, MPI_COMM_WORLD);
        iterations++;
        if (old_global_t_full_size == global_t_full_size) {
            break;
        }
    }

    // Reverse the t_full as we stored it in reverse order initially
    int *t_full_ar;
    checkCuda(cudaMalloc((void **) &t_full_ar, t_full_size * total_columns * sizeof(int)));
    reverse_t_full<<<grid_size, block_size>>>(t_full_ar, t_full_size, t_full);
    int *t_full_ar_host = (int *) malloc(t_full_size * total_columns * sizeof(int));
    cudaMemcpy(t_full_ar_host, t_full_ar, t_full_size * total_columns * sizeof(int), cudaMemcpyDeviceToHost);

    // List the t full counts for each process and calculate the displacements in the final result
    int *t_full_counts = (int *) calloc(total_rank, sizeof(int));
    MPI_Allgather(&t_full_size, 1, MPI_INT,
                  t_full_counts, 1, MPI_INT, MPI_COMM_WORLD);

    int *t_full_displacements = (int *) calloc(total_rank, sizeof(int));
    for (i = 1; i < total_rank; i++) {
        t_full_displacements[i] = t_full_displacements[i - 1] + (t_full_counts[i - 1] * total_columns);
    }

    // Write the t full to an offset of the output file
    MPI_File fh;
    string output_file = string(input_file) + "_tc.bin";
    const char *output_file_name = output_file.c_str();
    MPI_File_open(MPI_COMM_WORLD, output_file_name, MPI_MODE_WRONLY | MPI_MODE_CREATE, MPI_INFO_NULL, &fh);
    int file_offset = t_full_displacements[rank] * sizeof(int);
    MPI_File_write_at(fh, file_offset, t_full_ar_host, t_full_size * total_columns, MPI_INT, MPI_STATUS_IGNORE);
    // Close the file and clean up
    MPI_File_close(&fh);

    cudaFree(local_data_device);
    cudaFree(input_relation);
    cudaFree(local_data);
    cudaFree(local_data_reverse);
    cudaFree(t_full);
    cudaFree(t_delta);
    cudaFree(t_full_ar);
    cudaFree(hash_table);

    free(t_full_ar_host);
    free(t_full_counts);
    free(t_full_displacements);
    free(local_data_host);
    elapsed_time += MPI_Wtime();
    MPI_Allreduce(&elapsed_time, &max_time, 1, MPI_DOUBLE, MPI_MAX, MPI_COMM_WORLD);
    if (rank == 0) {
        printf("\nGenerated file %s\n", output_file_name);
        printf("| # Input | # Process | # Iterations | # TC | Time (s) |\n");
        printf("| --- | --- | --- | --- | --- |\n");
        printf("| %'d | %'d | %'d | %'d | %'8.4lf |\n", total_rows, total_rank, iterations, global_t_full_size,
               max_time);
    }

    MPI_Finalize();
    return 0;
}
// METHOD 0 = two pass method, 1 = sorting method
// make runsemi DATA_FILE=data/data_23874.bin NPROCS=8 CUDA_AWARE_MPI=0 METHOD=1
// make runsemi DATA_FILE=data/data_10.bin NPROCS=8 CUDA_AWARE_MPI=0 METHOD=0
// make runsemi DATA_FILE=data/data_23874.bin NPROCS=8 CUDA_AWARE_MPI=1 METHOD=1
// make runsemi DATA_FILE=data/data_147892.bin NPROCS=8 CUDA_AWARE_MPI=0 METHOD=0
