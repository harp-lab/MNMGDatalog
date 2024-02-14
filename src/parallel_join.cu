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
// #include "common/error_handler.cu"
#include "../include/exception.cuh"
// #include "common/utils.cu"
#include "../include/utils.cuh"
// #include "common/kernels.cu"
#include "../include/gkernel.cuh"

Output output;

#define BLOCK_START(process_id, total_process, n) ((process_id)*(n)/(total_process))
#define BLOCK_SIZE(process_id, total_process, n) \
    (BLOCK_START(process_id + 1, total_process, n) - BLOCK_START(process_id, total_process, n))

std::pair<int *, long int> get_split_relation(int rank, int *local_data, long int local_count,
                                         int total_columns, int nprocs) {
    int i, j;
    // Array of vectors where we need to push to integers to proper rank based on hash
    std::vector<int> rank_data[nprocs];
    // Count the number of data to be sent to destination processor
    int *send_count = (int *) calloc(nprocs, sizeof(int));
    int *receive_count = (int *) calloc(nprocs, sizeof(int));

    int *send_displacements = (int *) calloc(nprocs, sizeof(int));
    for (i = 0; i < local_count; i += total_columns) {
        int destination_rank = local_data[i] % nprocs;
        send_count[destination_rank] += total_columns;
        rank_data[destination_rank].push_back(local_data[i]);       // key
        rank_data[destination_rank].push_back(local_data[i + 1]);   // value
    }

    // Calculate the displacements for each process for current process
    long int total_send = send_count[0];
    for (i = 1; i < nprocs; i++) {
        send_displacements[i] = send_displacements[i - 1] + send_count[i - 1];
        total_send += send_count[i];
    }

    // Create the send data buffer for each process from the array of vectors
    int *send_data = (int *) calloc(total_send, sizeof(int));
    for (i = 0; i < nprocs; i++) {
        int pos = 0;
        for (j = send_displacements[i]; j < send_displacements[i] + rank_data[i].size(); j++) {
            send_data[j] = rank_data[i][pos++];
        }
    }

    // Send total number of items for each process from current process
    // Send 1 integer to each process from send buffer
    MPI_Alltoall(send_count, 1, MPI_INT, receive_count, 1, MPI_INT, MPI_COMM_WORLD);

    // Calculate the displacements for receive buffer
    int *receive_displacements = (int *) calloc(nprocs, sizeof(int));
    long int total_receive = receive_count[0];
    for (i = 1; i < nprocs; i++) {
        receive_displacements[i] = receive_displacements[i - 1] + receive_count[i - 1];
        total_receive += receive_count[i];
    }

    // Set the receive data buffer for each processor
    int *receive_data = (int *) calloc(total_receive, sizeof(int));
    MPI_Alltoallv(send_data, send_count, send_displacements, MPI_INT,
                  receive_data, receive_count, receive_displacements, MPI_INT,
                  MPI_COMM_WORLD);
    std::set<std::pair<int, int>> unique_rows;
    for (i = 0; i < total_receive; i += total_columns) {
        unique_rows.insert(std::make_pair(receive_data[i], receive_data[i + 1]));
    }

    long int total_unique_receive = unique_rows.size() * total_columns;
    int *unique_receive_data = (int *) calloc(total_unique_receive, sizeof(int));
    long int count = 0;
    for (auto p: unique_rows) {
        unique_receive_data[count++] = p.first;
        unique_receive_data[count++] = p.second;
    }

    free(receive_data);
    free(send_count);
    free(send_displacements);
    free(send_data);
    free(receive_count);
    free(receive_displacements);
    return std::make_pair(unique_receive_data, total_unique_receive);
}

int *get_reverse_relation(int *relation, long int relation_size, int total_columns) {
    int *reverse_relation = (int *) malloc(relation_size * sizeof(int));
    for (int i = 0; i < relation_size; i += total_columns) {
        reverse_relation[i] = relation[i + 1];
        reverse_relation[i + 1] = relation[i];
    }
    return reverse_relation;
}


std::pair<int *, long int> update_t_full(int *t_full, long int t_full_size, int *facts, long int facts_size,
                                    int total_columns) {
    std::set<std::pair<int, int>> unique_rows;
    for (int i = 0; i < t_full_size; i += total_columns) {
        unique_rows.insert(std::make_pair(t_full[i], t_full[i + 1]));
    }
    for (int i = 0; i < facts_size; i += total_columns) {
        unique_rows.insert(std::make_pair(facts[i], facts[i + 1]));
    }
    long int total_unique_rows = unique_rows.size() * total_columns;
    int *unique_data = (int *) calloc(total_unique_rows, sizeof(int));
    long int count = 0;
    for (auto p: unique_rows) {
        unique_data[count++] = p.first;
        unique_data[count++] = p.second;
    }
    return std::make_pair(unique_data, count);
}


int main(int argc, char **argv) {
    MPI_Init(&argc, &argv);
    MPI_Barrier(MPI_COMM_WORLD);
    int device_id;
    int number_of_sm;
    cudaGetDevice(&device_id);

    cudaDeviceGetAttribute(&number_of_sm, cudaDevAttrMultiProcessorCount, device_id);
    setlocale(LC_ALL, "");
    double elapsed_time = -MPI_Wtime();
    double max_time = 0.0;
    int nprocs, rank;
    int i, j, k;
    MPI_Comm_size(MPI_COMM_WORLD, &nprocs);
    MPI_Comm_rank(MPI_COMM_WORLD, &rank);
    // Should pass the input filename in command line argument
    const char *input_file;
    if (argc == 2) {
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
    // Scatter larger blocks among processes (non uniform)
    int total_columns = 2;
    long int total_rows = filesize / (sizeof(int) * total_columns);
    long int row_start = BLOCK_START(rank, nprocs, total_rows);
    long int row_size = BLOCK_SIZE(rank, nprocs, total_rows);
    long int local_count = row_size * total_columns;

    // Reading specific portion from the file as char in parallel
    long int offset = row_start * total_columns * sizeof(int);
    int *local_data = (int *) malloc(local_count * sizeof(int));
    MPI_File mpi_file_buffer;
    if (MPI_File_open(MPI_COMM_WORLD, input_file, MPI_MODE_RDONLY,
                      MPI_INFO_NULL, &mpi_file_buffer) != MPI_SUCCESS) {
        printf("Error opening file %s", input_file);
        MPI_Abort(MPI_COMM_WORLD, EXIT_FAILURE);
    }
    MPI_File_read_at(mpi_file_buffer, offset, local_data, local_count,
                     MPI_INT, MPI_STATUS_IGNORE);
    MPI_File_close(&mpi_file_buffer);

    int *local_data_reverse = get_reverse_relation(local_data, local_count, total_columns);
    std::pair<int *, long int> input_relation_data = get_split_relation(rank, local_data, local_count,
                                                                   total_columns, nprocs);
    int *input_relation = input_relation_data.first;
    long int input_relation_size = input_relation_data.second;


    long int global_t_full_size, global_tc_size;
    std::pair<int *, long int> reverse_relation_data = get_split_relation(rank, local_data_reverse, local_count,
                                                                     total_columns, nprocs);
    int *reverse_relation = reverse_relation_data.first;
    long int reverse_relation_size = reverse_relation_data.second;

    long int input_relation_rows = input_relation_size / total_columns;
    long int reverse_relation_rows = reverse_relation_size / total_columns;

    // T_FULL is reverse_relation with first column as key
    int *t_full = (int *) malloc(reverse_relation_size * sizeof(int));
    // Copy the contents of the input_relation array to the new memory location
    std::memcpy(t_full, reverse_relation, reverse_relation_size * sizeof(int));
    long int t_full_size = reverse_relation_size;

    MPI_Allreduce(&t_full_size, &global_t_full_size, 1, MPI_LONG, MPI_SUM,
                  MPI_COMM_WORLD);


    int relation_columns = 2;
    long int join_result_rows;
    int block_size, grid_size;
    int *relation, *t_delta_host;
    Entity *hash_table, *result;
    Entity *result_host;
    Entity *hash_table_host;
    double load_factor = 0.4;
    long int hash_table_rows = (long int) input_relation_rows / load_factor;
    hash_table_rows = pow(2, ceil(log(hash_table_rows) / log(2)));
    checkCuda(cudaMalloc((void **) &relation, input_relation_rows * relation_columns * sizeof(int)));
    checkCuda(cudaMalloc((void **) &hash_table, hash_table_rows * sizeof(Entity)));
    block_size = 512;
    grid_size = 32 * number_of_sm;

    cudaMemcpy(relation, input_relation, input_relation_rows * relation_columns * sizeof(int),
               cudaMemcpyHostToDevice);

    Entity negative_entity;
    negative_entity.key = -1;
    negative_entity.value = -1;
    thrust::fill(thrust::device, hash_table, hash_table + hash_table_rows, negative_entity);
    build_hash_table<<<grid_size, block_size>>>
            (hash_table, hash_table_rows,
             relation, input_relation_rows,
             relation_columns);
    checkCuda(cudaDeviceSynchronize());
    long int iterations = 0;

    int *t_delta;
    checkCuda(cudaMalloc((void **) &t_delta, reverse_relation_rows * relation_columns * sizeof(int)));
    cudaMemcpy(t_delta, reverse_relation, reverse_relation_rows * relation_columns * sizeof(int),
               cudaMemcpyHostToDevice);

    while (true) {

        long int projection_rows = 0;
        int *join_offset;
        Entity *join_result;
        Entity *join_result_host;

        checkCuda(cudaMalloc((void **) &join_offset, reverse_relation_rows * sizeof(int)));

        get_join_result_size<<<grid_size, block_size>>>(hash_table, hash_table_rows,
                                                        t_delta, reverse_relation_rows, join_offset);
        checkCuda(cudaDeviceSynchronize());

        join_result_rows = thrust::reduce(thrust::device, join_offset, join_offset + reverse_relation_rows, 0);
        thrust::exclusive_scan(thrust::device, join_offset, join_offset + reverse_relation_rows, join_offset);

        checkCuda(cudaMalloc((void **) &join_result, join_result_rows * sizeof(Entity)));
        get_join_result<<<grid_size, block_size>>>(hash_table, hash_table_rows,
                                                   t_delta, reverse_relation_rows, join_offset, join_result);
        checkCuda(cudaDeviceSynchronize());

        thrust::stable_sort(thrust::device, join_result, join_result + join_result_rows, cmp());
        projection_rows = (thrust::unique(thrust::device,
                                          join_result, join_result + join_result_rows,
                                          is_equal())) - join_result;
        join_result_host = (Entity *) malloc(projection_rows * sizeof(Entity));
        cudaMemcpy(join_result_host, join_result, projection_rows * sizeof(Entity),
                   cudaMemcpyDeviceToHost);
//         Update the reverse relation which will be used in next iteration
        reverse_relation = (int *) realloc(reverse_relation, projection_rows * total_columns * sizeof(int));
        update_reverse_relation(join_result_host, projection_rows, reverse_relation);

        free(join_result_host);
        cudaFree(join_offset);
        cudaFree(join_result);


        // Scatter the new facts among relevant processes
        std::pair<int *, long int> scatter_fact_data = get_split_relation(rank, reverse_relation,
                                                                     projection_rows * total_columns,
                                                                     total_columns, nprocs);
        reverse_relation_size = scatter_fact_data.second;
        reverse_relation_rows = reverse_relation_size / total_columns;
        // Update the reverse relation which will be used in next iteration
        reverse_relation = (int *) realloc(reverse_relation, reverse_relation_rows * total_columns * sizeof(int));
        reverse_relation = scatter_fact_data.first;
        checkCuda(cudaMalloc((void **) &t_delta, reverse_relation_rows * relation_columns * sizeof(int)));
        cudaMemcpy(t_delta, reverse_relation, reverse_relation_rows * total_columns * sizeof(int),
                   cudaMemcpyHostToDevice);

        // Update t full for current process
        std::pair<int *, long int> t_full_data = update_t_full(t_full, t_full_size,
                                                          reverse_relation,
                                                          reverse_relation_size,
                                                          total_columns);
        t_full_size = t_full_data.second;
        t_full = (int *) realloc(t_full, t_full_size * sizeof(int));
        t_full = t_full_data.first;

        // Check if the global t full size has changed in this iteration
        long int old_global_t_full_size = global_t_full_size;
        MPI_Allreduce(&t_full_size, &global_t_full_size, 1, MPI_LONG, MPI_SUM,
                      MPI_COMM_WORLD);
        iterations++;
        if (old_global_t_full_size == global_t_full_size) {
            break;
        }

    }

    // Reverse the t_full as we stored it in reverse order initially
    t_full = get_reverse_relation(t_full, t_full_size, total_columns);
    global_tc_size = global_t_full_size;

    // List the t full counts for each process and calculate the displacements in the final result
    long int *t_full_counts = (long int *) calloc(nprocs, sizeof(long int));
    MPI_Allgather(&t_full_size, 1, MPI_LONG,
                  t_full_counts, 1, MPI_LONG, MPI_COMM_WORLD);

    long int *t_full_displacements = (long int *) calloc(nprocs, sizeof(long int));
    for (i = 1; i < nprocs; i++) {
        t_full_displacements[i] = t_full_displacements[i - 1] + t_full_counts[i - 1];
    }

    // Write the t full to a offset of the output file
    MPI_File fh;
    std::string output_file = std::string(input_file) + "_tc.bin";
    const char *output_file_name = output_file.c_str();
    MPI_File_open(MPI_COMM_WORLD, output_file_name, MPI_MODE_WRONLY | MPI_MODE_CREATE, MPI_INFO_NULL, &fh);
    long int file_offset = t_full_displacements[rank] * sizeof(int);
    MPI_File_write_at(fh, file_offset, t_full, t_full_size, MPI_INT, MPI_STATUS_IGNORE);
    // Close the file and clean up
    MPI_File_close(&fh);


    free(local_data);
    free(local_data_reverse);
    free(input_relation);
    free(reverse_relation);
    free(t_full);
    free(t_full_counts);
    free(t_full_displacements);
    cudaFree(hash_table);
    elapsed_time += MPI_Wtime();
    MPI_Allreduce(&elapsed_time, &max_time, 1, MPI_DOUBLE, MPI_MAX, MPI_COMM_WORLD);
    if (rank == 0) {
        global_tc_size /= total_columns;
        printf("Total iterations %ld, TC size %ld, generated file %s\n",
               iterations, global_tc_size, output_file_name);
        printf("Total time: %.4lf seconds\n\n", max_time);
        printf("| # Input | # Process | # Iterations | # TC | Time (s) |\n");
        printf("| --- | --- | --- | --- | --- |\n");
        printf("| %'ld | %'d | %'ld | %'ld | %'8.4lf |\n",
               total_rows, nprocs, iterations, global_tc_size, max_time);
    }
    MPI_Finalize();
    return 0;
}