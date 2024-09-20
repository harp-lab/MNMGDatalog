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
#include "common/comm.cu"
#include "common/join.cu"

using namespace std;


void benchmark(int argc, char **argv) {
    MPI_Init(&argc, &argv);
    MPI_Barrier(MPI_COMM_WORLD);
    Output output;
    int device_id;
    int number_of_sm;
    cudaGetDevice(&device_id);
    cudaDeviceGetAttribute(&number_of_sm, cudaDevAttrMultiProcessorCount, device_id);
    int block_size, grid_size;
    block_size = 512;
    grid_size = 32 * number_of_sm;
    setlocale(LC_ALL, "");
    double start_time, end_time, elapsed_time;
    double max_fileio_time = 0.0, max_initialization_time = 0.0, max_hashtable_build_time = 0.0, max_finalization_time = 0.0;
    double max_join_time = 0.0, max_merge_time = 0.0;
    double max_buffer_preparation_time = 0.0, max_communication_time = 0.0;
    double buffer_preparation_time = 0.0, communication_time = 0.0;
    double buffer_preparation_time_temp = 0.0, communication_time_temp = 0.0;
    double join_time = 0.0, merge_time = 0.0;
    double deduplication_time = 0.0, max_deduplication_time = 0.0;;
    double file_io_time = 0.0;
    double total_time = 0.0, max_total_time = 0.0;
    int total_rank, rank;
    int i;
    MPI_Comm_size(MPI_COMM_WORLD, &total_rank);
    MPI_Comm_rank(MPI_COMM_WORLD, &rank);
    warm_up_kernel<<<1, 1>>>();
    // Should pass the input filename in command line argument
    const char *input_file;
    int comm_method = 0;
    int job_run = 0;
    int cuda_aware_mpi = 0;

    if (argc == 5) {
        input_file = argv[1];
        cuda_aware_mpi = atoi(argv[2]);
        comm_method = atoi(argv[3]);
        job_run = atoi(argv[4]);
    } else if (argc == 4) {
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
    string output_file = string(input_file) + "_tc.bin";
    const char *output_file_name = output_file.c_str();

    // READ THE FILE IN PARALLEL
    // Reading filesize in bytes
    start_time = MPI_Wtime();
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
    end_time = MPI_Wtime();
    elapsed_time = end_time - start_time;
    file_io_time = elapsed_time;
    start_time = MPI_Wtime();
    int *local_data_device;
    checkCuda(cudaMalloc((void **) &local_data_device, local_count * sizeof(int)));
    cudaMemcpy(local_data_device, local_data_host, local_count * sizeof(int), cudaMemcpyHostToDevice);
    Entity *local_data;
    checkCuda(cudaMalloc((void **) &local_data, row_size * sizeof(Entity)));
    Entity *local_data_reverse;
    checkCuda(cudaMalloc((void **) &local_data_reverse, row_size * sizeof(Entity)));
    create_entity_ar<<<grid_size, block_size>>>(local_data, row_size, local_data_device);
    create_entity_ar_reverse<<<grid_size, block_size>>>(local_data_reverse, row_size, local_data_device);
    int iterations = 0;
    end_time = MPI_Wtime();
    elapsed_time = end_time - start_time;
    MPI_Allreduce(&elapsed_time, &max_initialization_time, 1, MPI_DOUBLE, MPI_MAX, MPI_COMM_WORLD);
    int input_relation_size = 0;
    buffer_preparation_time_temp = 0.0;
    communication_time_temp = 0.0;
    Entity *input_relation = get_split_relation(rank, local_data,
                                                row_size, total_columns, total_rank,
                                                grid_size, block_size, cuda_aware_mpi,
                                                &input_relation_size, comm_method,
                                                &buffer_preparation_time_temp, &communication_time_temp);
    buffer_preparation_time += buffer_preparation_time_temp;
    communication_time += communication_time_temp;

    buffer_preparation_time_temp = 0.0;
    communication_time_temp = 0.0;
    int t_delta_size;
    Entity *t_delta = get_split_relation(rank, local_data_reverse,
                                         row_size, total_columns, total_rank,
                                         grid_size, block_size, cuda_aware_mpi, &t_delta_size, comm_method,
                                         &buffer_preparation_time_temp, &communication_time_temp);
    buffer_preparation_time += buffer_preparation_time_temp;
    communication_time += communication_time_temp;

    start_time = MPI_Wtime();
    thrust::stable_sort(thrust::device, t_delta, t_delta + t_delta_size, set_cmp());
    t_delta_size = (thrust::unique(thrust::device,
                                   t_delta, t_delta + t_delta_size,
                                   is_equal())) - t_delta;
    end_time = MPI_Wtime();
    elapsed_time = end_time - start_time;
    deduplication_time += elapsed_time;
    start_time = MPI_Wtime();
    // T_FULL is t delta with first column as key
    Entity *t_full;
    checkCuda(cudaMalloc((void **) &t_full, t_delta_size * sizeof(Entity)));
    cudaMemcpy(t_full, t_delta, t_delta_size * sizeof(Entity), cudaMemcpyDeviceToDevice);

    long long global_t_full_size;
    long long t_full_size = t_delta_size;
    MPI_Allreduce(&t_full_size, &global_t_full_size, 1, MPI_LONG_LONG_INT, MPI_SUM, MPI_COMM_WORLD);
//    cout << "Rank: " << rank << ", iterations: " << iterations << ", t_full_size: " << t_full_size << ", global_t_full_size: " << global_t_full_size << endl;

    end_time = MPI_Wtime();
    elapsed_time = end_time - start_time;
    merge_time += elapsed_time;
    start_time = MPI_Wtime();
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
    end_time = MPI_Wtime();
    elapsed_time = end_time - start_time;
    MPI_Allreduce(&elapsed_time, &max_hashtable_build_time, 1, MPI_DOUBLE, MPI_MAX, MPI_COMM_WORLD);

    while (true) {
        Entity *new_t_full;
        double temp_join_time = 0.0;
        int join_result_size = 0;
        Entity *join_result = get_join(grid_size, block_size, hash_table, hash_table_rows,
                                       t_delta, t_delta_size,
                                       &join_result_size, &temp_join_time);

        join_time += temp_join_time;
        // Scatter the new facts among relevant processes
        buffer_preparation_time_temp = 0.0;
        communication_time_temp = 0.0;
        Entity *t_delta_temp = get_split_relation(rank, join_result,
                                                  join_result_size, total_columns, total_rank,
                                                  grid_size, block_size, cuda_aware_mpi, &t_delta_size,
                                                  comm_method,
                                                  &buffer_preparation_time_temp, &communication_time_temp);
        buffer_preparation_time += buffer_preparation_time_temp;
        communication_time += communication_time_temp;
        start_time = MPI_Wtime();
        // Deduplicate scattered facts
        thrust::stable_sort(thrust::device, t_delta_temp, t_delta_temp + t_delta_size, set_cmp());
        t_delta_size = (thrust::unique(thrust::device,
                                       t_delta_temp, t_delta_temp + t_delta_size,
                                       is_equal())) - t_delta_temp;
        cudaFree(t_delta);
        checkCuda(cudaMalloc((void **) &t_delta, t_delta_size * sizeof(Entity)));
        cudaMemcpy(t_delta, t_delta_temp, t_delta_size * sizeof(Entity), cudaMemcpyDeviceToDevice);
        end_time = MPI_Wtime();
        elapsed_time = end_time - start_time;
        deduplication_time += elapsed_time;

        start_time = MPI_Wtime();
        // Update t delta which is the only new facts which are not in t full and will be used in next iteration
        t_delta_size = thrust::set_difference(thrust::device,
                                              t_delta, t_delta + t_delta_size,
                                              t_full, t_full + t_full_size,
                                              t_delta, set_cmp()) - t_delta;

        // set union of two sets (sorted t full and t delta)
        long new_t_full_size = t_delta_size + t_full_size;
        checkCuda(cudaMalloc((void **) &new_t_full, new_t_full_size * sizeof(Entity)));
        new_t_full_size = thrust::set_union(thrust::device,
                                            t_full, t_full + t_full_size,
                                            t_delta, t_delta + t_delta_size,
                                            new_t_full, set_cmp()) - new_t_full;
        cudaFree(t_full);
        checkCuda(cudaMalloc((void **) &t_full, new_t_full_size * sizeof(Entity)));
        cudaMemcpy(t_full, new_t_full, new_t_full_size * sizeof(Entity), cudaMemcpyDeviceToDevice);
        t_full_size = new_t_full_size;
        cudaFree(join_result);
        cudaFree(new_t_full);
        cudaFree(t_delta_temp);
        // Check if the global t full size has changed in this iteration
        long long old_global_t_full_size = global_t_full_size;
        MPI_Allreduce(&t_full_size, &global_t_full_size, 1, MPI_LONG_LONG_INT, MPI_SUM, MPI_COMM_WORLD);
//        cout << "Rank: " << rank << ", iterations: " << iterations << ", t_full_size: " << t_full_size << ", global_t_full_size: " << global_t_full_size << endl;
        iterations++;
        end_time = MPI_Wtime();
        elapsed_time = end_time - start_time;
        merge_time += elapsed_time;
        if (old_global_t_full_size == global_t_full_size) {
            break;
        }
    }

    MPI_Allreduce(&deduplication_time, &max_deduplication_time, 1, MPI_DOUBLE, MPI_MAX, MPI_COMM_WORLD);
    MPI_Allreduce(&join_time, &max_join_time, 1, MPI_DOUBLE, MPI_MAX, MPI_COMM_WORLD);
    MPI_Allreduce(&merge_time, &max_merge_time, 1, MPI_DOUBLE, MPI_MAX, MPI_COMM_WORLD);
    MPI_Allreduce(&buffer_preparation_time, &max_buffer_preparation_time, 1, MPI_DOUBLE, MPI_MAX, MPI_COMM_WORLD);
    MPI_Allreduce(&communication_time, &max_communication_time, 1, MPI_DOUBLE, MPI_MAX, MPI_COMM_WORLD);

    start_time = MPI_Wtime();
    // Reverse the t_full as we stored it in reverse order initially
    int *t_full_ar;
    checkCuda(cudaMalloc((void **) &t_full_ar, t_full_size * total_columns * sizeof(int)));
    reverse_t_full<<<grid_size, block_size>>>(t_full_ar, t_full_size, t_full);

    // Copy t full to host for file write
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
    end_time = MPI_Wtime();
    elapsed_time = end_time - start_time;
    MPI_Allreduce(&elapsed_time, &max_finalization_time, 1, MPI_DOUBLE, MPI_MAX, MPI_COMM_WORLD);

    if (job_run == 0) {
        // Write the t full to an offset of the output file
        start_time = MPI_Wtime();
        MPI_File fh;
        MPI_File_open(MPI_COMM_WORLD, output_file_name, MPI_MODE_WRONLY | MPI_MODE_CREATE, MPI_INFO_NULL, &fh);
        int file_offset = t_full_displacements[rank] * sizeof(int);
        MPI_File_write_at(fh, file_offset, t_full_ar_host, t_full_size * total_columns, MPI_INT, MPI_STATUS_IGNORE);
        // Close the file and clean up
        MPI_File_close(&fh);
        end_time = MPI_Wtime();
        elapsed_time = end_time - start_time;
        file_io_time += elapsed_time;
    }
    MPI_Allreduce(&file_io_time, &max_fileio_time, 1, MPI_DOUBLE, MPI_MAX, MPI_COMM_WORLD);

    start_time = MPI_Wtime();
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
    end_time = MPI_Wtime();
    elapsed_time = max_finalization_time + (end_time - start_time);
    MPI_Allreduce(&elapsed_time, &max_finalization_time, 1, MPI_DOUBLE, MPI_MAX, MPI_COMM_WORLD);
    total_time = max_initialization_time + max_hashtable_build_time + max_join_time +
                 max_buffer_preparation_time + max_communication_time + max_deduplication_time + max_merge_time +
                 max_finalization_time;
    MPI_Allreduce(&total_time, &max_total_time, 1, MPI_DOUBLE, MPI_MAX, MPI_COMM_WORLD);

    if (rank == 0) {
        output.block_size = block_size;
        output.grid_size = grid_size;
        output.input_rows = total_rows;
        output.total_rank = total_rank;
        output.iterations = iterations;
        output.output_file_name = output_file_name;
        output.output_size = global_t_full_size;

        output.total_time = max_total_time;
        output.initialization_time = max_initialization_time;
        output.fileio_time = max_fileio_time;
        output.hashtable_build_time = max_hashtable_build_time;
        output.join_time = max_join_time;
        output.buffer_preparation_time = max_buffer_preparation_time;
        output.communication_time = max_communication_time;
        output.deduplication_time = max_deduplication_time;
        output.merge_time = max_merge_time;
        output.finalization_time = max_finalization_time;
        if (job_run == 0) {
            printf("| # Input | # Process | # Iterations | # TC | Total Time ");
            printf("| Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |\n");
            printf("| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |\n");
        }
        printf("| %'d | %'d | %'d | %'lld | %'8.4lf | %'8.4lf | %'8.4lf | %'8.4lf | %'8.4lf | %'8.4lf | %'8.4lf | %'8.4lf | %'8.4lf | %'8.4lf | %s |\n",
               output.input_rows, output.total_rank, output.iterations,
               output.output_size, output.total_time,
               output.initialization_time, output.fileio_time, output.hashtable_build_time, output.join_time,
               output.buffer_preparation_time, output.communication_time, output.deduplication_time, output.merge_time,
               output.finalization_time,
               output.output_file_name);
    }
    MPI_Finalize();
}

int main(int argc, char **argv) {
    benchmark(argc, argv);
    return 0;
}
// METHOD 0 = two pass method, 1 = sorting method
// make runtc DATA_FILE=data/data_23874.bin NPROCS=8 CUDA_AWARE_MPI=0 METHOD=0
// make runtc DATA_FILE=data/data_23874.bin NPROCS=8 CUDA_AWARE_MPI=0 METHOD=1
// make runtc DATA_FILE=data/data_10.bin NPROCS=8 CUDA_AWARE_MPI=0 METHOD=0
// make runtc DATA_FILE=data/data_23874.bin NPROCS=8 CUDA_AWARE_MPI=1 METHOD=1
// make runtc DATA_FILE=data/data_147892.bin NPROCS=8 CUDA_AWARE_MPI=0 METHOD=0
