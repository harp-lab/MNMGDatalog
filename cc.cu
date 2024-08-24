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
#include <thrust/transform.h>
#include <thrust/reduce.h>
#include <thrust/iterator/transform_iterator.h>
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
    double initialization_time = 0.0, max_initialization_time = 0.0;
    double finalization_time = 0.0, max_finalization_time = 0.0;
    double max_fileio_time = 0.0, max_hashtable_build_time = 0.0;
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
    string output_file = string(input_file) + "_cc.bin";
    const char *output_file_name = output_file.c_str();

    // READ THE FILE IN PARALLEL
    // Reading filesize in bytes
    start_time = MPI_Wtime();
    struct stat filestats{};
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
    file_io_time += elapsed_time;
    start_time = MPI_Wtime();
    int *local_data_temp_device;
    checkCuda(cudaMalloc((void **) &local_data_temp_device, local_count * sizeof(int)));
    cudaMemcpy(local_data_temp_device, local_data_host, local_count * sizeof(int), cudaMemcpyHostToDevice);
    // Ensure edges are bidirectional by adding reverse edges
    int *local_data_reverse_temp_device;
    checkCuda(cudaMalloc((void **) &local_data_reverse_temp_device, local_count * sizeof(int)));
    get_reverse_ar<<<grid_size, block_size>>>(local_data_temp_device, local_count, local_data_reverse_temp_device);

    // Create Entity array from GPU buffers
    Entity *local_data;
    int local_data_size = row_size * 2;
    checkCuda(cudaMalloc((void **) &local_data, local_data_size * sizeof(Entity)));
    create_entity_ar_with_offset<<<grid_size, block_size>>>(local_data_temp_device, row_size, local_data, 0);
    create_entity_ar_with_offset<<<grid_size, block_size>>>(local_data_reverse_temp_device, row_size,
                                                            local_data, row_size);
    end_time = MPI_Wtime();
    elapsed_time = end_time - start_time;
    initialization_time += elapsed_time;

    // Deduplicate local data
    start_time = MPI_Wtime();
    thrust::stable_sort(thrust::device, local_data, local_data + local_data_size, set_cmp());
    local_data_size = (thrust::unique(thrust::device,
                                      local_data, local_data + local_data_size,
                                      is_equal())) - local_data;
    end_time = MPI_Wtime();
    elapsed_time = end_time - start_time;
    deduplication_time += elapsed_time;

    // Create reverse entity array from local data
    start_time = MPI_Wtime();
    Entity *local_data_reverse;
    int local_data_reverse_size = local_data_size;
    checkCuda(cudaMalloc((void **) &local_data_reverse, local_data_reverse_size * sizeof(Entity)));
    reverse_entity_ar<<<grid_size, block_size>>>(local_data, local_data_reverse_size, local_data_reverse);
    end_time = MPI_Wtime();
    elapsed_time = end_time - start_time;
    initialization_time += elapsed_time;

    // Deduplicate local data reverse
    start_time = MPI_Wtime();
    thrust::stable_sort(thrust::device, local_data_reverse, local_data_reverse + local_data_reverse_size, set_cmp());
    local_data_reverse_size = (thrust::unique(thrust::device,
                                              local_data_reverse, local_data_reverse + local_data_reverse_size,
                                              is_equal())) - local_data_reverse;
    end_time = MPI_Wtime();
    elapsed_time = end_time - start_time;
    deduplication_time += elapsed_time;

    int iterations = 0;
    int input_relation_size = 0;
    buffer_preparation_time_temp = 0.0;
    communication_time_temp = 0.0;
    Entity *input_relation = get_split_relation(rank, local_data,
                                                local_data_size, total_columns, total_rank,
                                                grid_size, block_size, cuda_aware_mpi,
                                                &input_relation_size, comm_method,
                                                &buffer_preparation_time_temp, &communication_time_temp);
    buffer_preparation_time += buffer_preparation_time_temp;
    communication_time += communication_time_temp;

    buffer_preparation_time_temp = 0.0;
    communication_time_temp = 0.0;
    int t_delta_size;
    Entity *t_delta = get_split_relation(rank, local_data_reverse,
                                         local_data_reverse_size, total_columns, total_rank,
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
    MPI_Allreduce(&t_full_size, &global_t_full_size, 1, MPI_LONG_LONG, MPI_SUM, MPI_COMM_WORLD);
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
        int new_t_full_size = t_delta_size + t_full_size;
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
        MPI_Allreduce(&t_full_size, &global_t_full_size, 1, MPI_LONG_LONG, MPI_SUM, MPI_COMM_WORLD);
        iterations++;
        end_time = MPI_Wtime();
        elapsed_time = end_time - start_time;
        merge_time += elapsed_time;
        if (old_global_t_full_size == global_t_full_size) {
            break;
        }
    }

    start_time = MPI_Wtime();
    // Reverse the t_full as we stored it in reverse order initially
    reverse_entity_ar<<<grid_size, block_size>>>(t_full, t_full_size, t_full);
    // show_device_entity_variable(t_full, t_full_size, rank, "t_full", 0);
    end_time = MPI_Wtime();
    elapsed_time = end_time - start_time;
    finalization_time += elapsed_time;

    // Scatter t_full among relevant processes
    int t_full_distributed_size = 0;
    buffer_preparation_time_temp = 0.0;
    communication_time_temp = 0.0;
    Entity *t_full_distributed = get_split_relation(rank, t_full,
                                                    t_full_size, total_columns, total_rank,
                                                    grid_size, block_size, cuda_aware_mpi, &t_full_distributed_size,
                                                    comm_method,
                                                    &buffer_preparation_time_temp, &communication_time_temp);
    buffer_preparation_time += buffer_preparation_time_temp;
    communication_time += communication_time_temp;
    start_time = MPI_Wtime();
    // Deduplicate scattered t full
    thrust::stable_sort(thrust::device, t_full_distributed, t_full_distributed + t_full_distributed_size, set_cmp());
    t_full_distributed_size = (thrust::unique(thrust::device,
                                              t_full_distributed, t_full_distributed + t_full_distributed_size,
                                              is_equal())) - t_full_distributed;
    end_time = MPI_Wtime();
    elapsed_time = end_time - start_time;
    deduplication_time += elapsed_time;

    start_time = MPI_Wtime();
    int *keys, *values;
    checkCuda(cudaMalloc((void **) &keys, t_full_distributed_size * sizeof(int)));
    checkCuda(cudaMalloc((void **) &values, t_full_distributed_size * sizeof(int)));

    int *keys_reduced, *values_reduced;
    checkCuda(cudaMalloc((void **) &keys_reduced, t_full_distributed_size * sizeof(int)));
    checkCuda(cudaMalloc((void **) &values_reduced, t_full_distributed_size * sizeof(int)));

    // Extract keys from the t_full_distributed array
    thrust::transform(thrust::device,
                      t_full_distributed, t_full_distributed + t_full_distributed_size, keys,
                      [] __device__(const Entity &e) { return e.key; });

    // Extract values from the t_full_distributed array
    thrust::transform(thrust::device,
                      t_full_distributed, t_full_distributed + t_full_distributed_size, values,
                      [] __device__(const Entity &e) { return e.value; });

    thrust::equal_to<int> binary_pred;

    // Reduce by key
    auto reduce_end = thrust::reduce_by_key(thrust::device,
                                            keys, keys + t_full_distributed_size,  // Keys input range
                                            values,                                // Values input range
                                            keys_reduced,                          // Keys output range
                                            values_reduced,                        // Values output range
                                            binary_pred,                           // Binary predicate for key comparison
                                            minimum_value()                        // Binary operator for value reduction
    );

    // Calculate the number of reduced values, reduce by minimum
    int number_of_values = thrust::distance(values_reduced, reduce_end.second);

    Entity *component;
    checkCuda(cudaMalloc((void **) &component, number_of_values * sizeof(Entity)));

    // Create Entity array from values
    get_valueless_entity_ar_from_int_ar<<<grid_size, block_size>>>(values_reduced, number_of_values, component);
    end_time = MPI_Wtime();
    elapsed_time = end_time - start_time;
    finalization_time += elapsed_time;

    // Scatter component among relevant processes
    int component_size = 0;
    buffer_preparation_time_temp = 0.0;
    communication_time_temp = 0.0;
    Entity *component_distributed = get_split_relation(rank, component,
                                                       number_of_values, total_columns, total_rank,
                                                       grid_size, block_size, cuda_aware_mpi, &component_size,
                                                       comm_method,
                                                       &buffer_preparation_time_temp, &communication_time_temp);
    buffer_preparation_time += buffer_preparation_time_temp;
    communication_time += communication_time_temp;
    start_time = MPI_Wtime();
    // Deduplicate components
    thrust::stable_sort(thrust::device, component_distributed, component_distributed + component_size, set_cmp());
    component_size = (thrust::unique(thrust::device,
                                     component_distributed, component_distributed + component_size,
                                     is_equal())) - component_distributed;
    end_time = MPI_Wtime();
    elapsed_time = end_time - start_time;
    deduplication_time += elapsed_time;

    start_time = MPI_Wtime();
    long long global_component_size = 0;
    long long current_component_size = component_size;
    MPI_Allreduce(&current_component_size, &global_component_size, 1, MPI_LONG_LONG, MPI_SUM, MPI_COMM_WORLD);


    int *component_ar;
    checkCuda(cudaMalloc((void **) &component_ar, component_size * total_columns * sizeof(int)));
    get_int_ar_from_entity_ar<<<grid_size, block_size>>>(component_distributed, component_size, component_ar);

    // Copy component ar to host for file write
    int *component_ar_host = (int *) malloc(component_size * total_columns * sizeof(int));
    cudaMemcpy(component_ar_host, component_ar, component_size * total_columns * sizeof(int), cudaMemcpyDeviceToHost);

    // List the t full counts for each process and calculate the displacements in the final result
    int *component_counts = (int *) calloc(total_rank, sizeof(int));
    MPI_Allgather(&component_size, 1, MPI_INT, component_counts, 1, MPI_INT, MPI_COMM_WORLD);

    int *component_displacements = (int *) calloc(total_rank, sizeof(int));
    for (i = 1; i < total_rank; i++) {
        component_displacements[i] = component_displacements[i - 1] + (component_counts[i - 1] * total_columns);
    }
    end_time = MPI_Wtime();
    elapsed_time = end_time - start_time;
    finalization_time += elapsed_time;

    if (job_run == 0) {
        // Write the t full to an offset of the output file
        start_time = MPI_Wtime();
        MPI_File fh;
        MPI_File_open(MPI_COMM_WORLD, output_file_name, MPI_MODE_WRONLY | MPI_MODE_CREATE, MPI_INFO_NULL, &fh);
        int file_offset = component_displacements[rank] * sizeof(int);
        MPI_File_write_at(fh, file_offset, component_ar_host, component_size * total_columns, MPI_INT, MPI_STATUS_IGNORE);
        // Close the file and clean up
        MPI_File_close(&fh);
        end_time = MPI_Wtime();
        elapsed_time = end_time - start_time;
        file_io_time += elapsed_time;
    }

    start_time = MPI_Wtime();
    cudaFree(input_relation);
    cudaFree(local_data_reverse_temp_device);
    cudaFree(local_data_temp_device);
    cudaFree(local_data);
    cudaFree(local_data_reverse);
    cudaFree(t_full);
    cudaFree(t_delta);
    cudaFree(component_ar);
    cudaFree(hash_table);
    free(component_ar_host);
    free(component_counts);
    free(component_displacements);
    free(local_data_host);
    end_time = MPI_Wtime();
    elapsed_time = end_time - start_time;
    finalization_time += elapsed_time;
    MPI_Allreduce(&initialization_time, &max_initialization_time, 1, MPI_DOUBLE, MPI_MAX, MPI_COMM_WORLD);
    MPI_Allreduce(&deduplication_time, &max_deduplication_time, 1, MPI_DOUBLE, MPI_MAX, MPI_COMM_WORLD);
    MPI_Allreduce(&join_time, &max_join_time, 1, MPI_DOUBLE, MPI_MAX, MPI_COMM_WORLD);
    MPI_Allreduce(&merge_time, &max_merge_time, 1, MPI_DOUBLE, MPI_MAX, MPI_COMM_WORLD);
    MPI_Allreduce(&buffer_preparation_time, &max_buffer_preparation_time, 1, MPI_DOUBLE, MPI_MAX, MPI_COMM_WORLD);
    MPI_Allreduce(&communication_time, &max_communication_time, 1, MPI_DOUBLE, MPI_MAX, MPI_COMM_WORLD);
    MPI_Allreduce(&file_io_time, &max_fileio_time, 1, MPI_DOUBLE, MPI_MAX, MPI_COMM_WORLD);
    MPI_Allreduce(&finalization_time, &max_finalization_time, 1, MPI_DOUBLE, MPI_MAX, MPI_COMM_WORLD);

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
        output.output_size = global_component_size;

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
            printf("| # Input | # Process | # Iterations | # CC | Total Time ");
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
// make runcc DATA_FILE=data/dummy.bin NPROCS=1 CUDA_AWARE_MPI=0 METHOD=0
// make runcc DATA_FILE=data/dummy.bin NPROCS=8 CUDA_AWARE_MPI=0 METHOD=0
// make runtc DATA_FILE=data/data_10.bin NPROCS=8 CUDA_AWARE_MPI=0 METHOD=1
