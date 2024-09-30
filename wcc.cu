#include <mpi.h>
#include <cstdio>
#include <stdio.h>
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
#include "common/parallel_io.cu"
#include "common/kernels.cu"
#include "common/comm.cu"
#include "common/hash_table.cu"
#include "common/join.cu"

using namespace std;

/*
Base rule:
edge(x,y) ← edge(y,x).
cc(n, n) ← edge(n,_).
t_delta(x, y) ← cc(x, y)

Recursive rule:
join_result(z, x) ← t_delta(y, z), edge(x, y).
join_result(z, x) ← join_result(x, z).
cc_new(y, min(z)) ← cc(y, z) U join_result(z, x)
t_delta(x, y) ← cc_new(y, z) - cc_old(y, z)
cc(x, y) ← cc_new(x, y)

Final rule:
cc_representative_node(n) ← cc(_ , n).
*/
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
    double file_io_time = 0.0, max_fileio_time = 0.0;
    double max_join_time = 0.0, max_merge_time = 0.0;
    double max_buffer_preparation_time = 0.0, max_communication_time = 0.0;
    double buffer_preparation_time = 0.0, communication_time = 0.0;
    double buffer_preparation_time_temp = 0.0, communication_time_temp = 0.0;
    double join_time = 0.0, merge_time = 0.0;
    double deduplication_time = 0.0, max_deduplication_time = 0.0;
    double hashtable_build_time = 0.0, max_hashtable_build_time = 0.0;

    double total_time = 0.0, max_total_time = 0.0;
    int total_rank, rank;
    int i;
    MPI_Comm_size(MPI_COMM_WORLD, &total_rank);
    MPI_Comm_rank(MPI_COMM_WORLD, &rank);
    warm_up_kernel<<<1, 1>>>();
    int iterations = 0;
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
        input_file = "data/dummy.bin";
    }
    string output_file = string(input_file) + "_cc.bin";
    const char *output_file_name = output_file.c_str();

    // Read file in parallel
    int total_columns = 2;
    double temp_file_io_time = 0.0;
    int row_size = 0;
    int total_rows = 0;
    int *edge_host = parallel_read(rank, total_rank, input_file, total_columns,
                                   &row_size, &total_rows, &temp_file_io_time);
    int local_count = row_size * total_columns;
    file_io_time += temp_file_io_time;

    start_time = MPI_Wtime();
    int *edge_temp_device;
    checkCuda(cudaMalloc((void **) &edge_temp_device, local_count * sizeof(int)));
    cudaMemcpy(edge_temp_device, edge_host, local_count * sizeof(int), cudaMemcpyHostToDevice);
    // Ensure edges are bidirectional by adding reverse edges
    int *edge_reverse_temp_device;
    checkCuda(cudaMalloc((void **) &edge_reverse_temp_device, local_count * sizeof(int)));
    get_reverse_ar<<<grid_size, block_size>>>(edge_temp_device, row_size, edge_reverse_temp_device);

    // Create Entity array from GPU buffers, edge + reverse_edge
    // edge(x, y) :- edge(y, x)
    Entity *edge;
    int edge_size = local_count;
    checkCuda(cudaMalloc((void **) &edge, edge_size * sizeof(Entity)));
    create_entity_ar_with_offset<<<grid_size, block_size>>>(edge_temp_device, row_size, edge, 0);
    create_entity_ar_with_offset<<<grid_size, block_size>>>(edge_reverse_temp_device, row_size,
                                                            edge, row_size);
    end_time = MPI_Wtime();
    elapsed_time = end_time - start_time;
    initialization_time += elapsed_time;

    // Deduplicate local data
    start_time = MPI_Wtime();
    thrust::stable_sort(thrust::device, edge, edge + edge_size, set_cmp());
    edge_size = (thrust::unique(thrust::device,
                                edge, edge + edge_size,
                                is_equal())) - edge;
    end_time = MPI_Wtime();
    elapsed_time = end_time - start_time;
    deduplication_time += elapsed_time;

    // Distribute edge
    int distributed_edge_size = 0;
    buffer_preparation_time_temp = 0.0;
    communication_time_temp = 0.0;
    Entity *distributed_edge = get_split_relation(rank, edge,
                                                  edge_size, total_columns, total_rank,
                                                  grid_size, block_size, cuda_aware_mpi,
                                                  &distributed_edge_size, comm_method,
                                                  &buffer_preparation_time_temp, &communication_time_temp, iterations);
    buffer_preparation_time += buffer_preparation_time_temp;
    communication_time += communication_time_temp;

    // Deduplicate distributed edge
    start_time = MPI_Wtime();
    thrust::stable_sort(thrust::device, distributed_edge, distributed_edge + distributed_edge_size, set_cmp());
    distributed_edge_size = (thrust::unique(thrust::device,
                                            distributed_edge, distributed_edge + distributed_edge_size,
                                            is_equal())) - distributed_edge;
    end_time = MPI_Wtime();
    elapsed_time = end_time - start_time;
    deduplication_time += elapsed_time;

    // Create cc from edge where node, component_id = node, node
    // cc(x, x) :- edge(x, _)
    start_time = MPI_Wtime();
    Entity *cc;
    int cc_size = distributed_edge_size;
    checkCuda(cudaMalloc((void **) &cc, cc_size * sizeof(Entity)));
    same_key_value_entity_ar<<<grid_size, block_size>>>(distributed_edge, cc_size, cc);
    end_time = MPI_Wtime();
    elapsed_time = end_time - start_time;
    initialization_time += elapsed_time;

    // Deduplicate cc
    start_time = MPI_Wtime();
    thrust::stable_sort(thrust::device, cc, cc + cc_size, set_cmp());
    cc_size = (thrust::unique(thrust::device,
                              cc, cc + cc_size,
                              is_equal_key())) - cc;
    end_time = MPI_Wtime();
    elapsed_time = end_time - start_time;
    deduplication_time += elapsed_time;

    // t_delta = cc, key-value pair: node - component id
    start_time = MPI_Wtime();
    Entity *t_delta;
    int t_delta_size = cc_size;
    checkCuda(cudaMalloc((void **) &t_delta, t_delta_size * sizeof(Entity)));
    cudaMemcpy(t_delta, cc, t_delta_size * sizeof(Entity), cudaMemcpyDeviceToDevice);
    end_time = MPI_Wtime();
    elapsed_time = end_time - start_time;
    initialization_time += elapsed_time;

    start_time = MPI_Wtime();
    long long global_t_delta_size = 0;
    long long t_delta_size_temp = t_delta_size;
    MPI_Allreduce(&t_delta_size_temp, &global_t_delta_size, 1, MPI_LONG_LONG_INT, MPI_SUM, MPI_COMM_WORLD);
    end_time = MPI_Wtime();
    elapsed_time = end_time - start_time;
    initialization_time += elapsed_time;

    // Hash table is Edge
    double temp_hashtable_build_time = 0.0;
    int hash_table_rows = 0;
    Entity *hash_table = get_hash_table(grid_size, block_size, distributed_edge, distributed_edge_size,
                                        &hash_table_rows, &temp_hashtable_build_time);
    hashtable_build_time += temp_hashtable_build_time;


    while (true) {
        Entity *new_cc;
        double temp_join_time = 0.0;
        int join_result_size = 0;
        Entity *join_result = get_join(grid_size, block_size, hash_table, hash_table_rows,
                                       t_delta, t_delta_size,
                                       &join_result_size, &temp_join_time);
        join_time += temp_join_time;

        // Scatter the join result with reverse among relevant processes
        buffer_preparation_time_temp = 0.0;
        communication_time_temp = 0.0;
        int distributed_join_result_size = 0;
        Entity *distributed_join_result = get_split_relation(rank, join_result,
                                                             join_result_size, total_columns, total_rank,
                                                             grid_size, block_size, cuda_aware_mpi,
                                                             &distributed_join_result_size,
                                                             comm_method,
                                                             &buffer_preparation_time_temp, &communication_time_temp,
                                                             iterations);
        buffer_preparation_time += buffer_preparation_time_temp;
        communication_time += communication_time_temp;


        // Deduplicate distributed join result with reverse
        start_time = MPI_Wtime();
        thrust::stable_sort(thrust::device, distributed_join_result,
                            distributed_join_result + distributed_join_result_size, set_cmp());
        distributed_join_result_size = (thrust::unique(thrust::device,
                                                       distributed_join_result,
                                                       distributed_join_result + distributed_join_result_size,
                                                       is_equal())) - distributed_join_result;
        end_time = MPI_Wtime();
        elapsed_time = end_time - start_time;
        deduplication_time += elapsed_time;

        // Set union of two sets (sorted cc and distributed join result)
        start_time = MPI_Wtime();
        int new_cc_size = distributed_join_result_size + cc_size;
        checkCuda(cudaMalloc((void **) &new_cc, new_cc_size * sizeof(Entity)));
        new_cc_size = thrust::set_union(thrust::device,
                                        cc, cc + cc_size,
                                        distributed_join_result,
                                        distributed_join_result + distributed_join_result_size,
                                        new_cc, set_cmp()) - new_cc;
        end_time = MPI_Wtime();
        elapsed_time = end_time - start_time;
        merge_time += elapsed_time;

        // Deduplicate new cc by keeping only the minimum component ID for each node
        start_time = MPI_Wtime();
        new_cc_size = (thrust::unique(thrust::device,
                                      new_cc,
                                      new_cc + new_cc_size,
                                      is_equal_key())) - new_cc;
        end_time = MPI_Wtime();
        elapsed_time = end_time - start_time;
        deduplication_time += elapsed_time;

        // Update t delta which is the only new facts which are not in cc and will be used in next iteration
        start_time = MPI_Wtime();
        Entity *t_delta_temp;
        checkCuda(cudaMalloc((void **) &t_delta_temp, new_cc_size * sizeof(Entity)));

        t_delta_size = thrust::set_difference(thrust::device,
                                              new_cc, new_cc + new_cc_size,
                                              cc, cc + cc_size,
                                              t_delta_temp, set_cmp()) - t_delta_temp;
        cudaFree(t_delta);
        checkCuda(cudaMalloc((void **) &t_delta, t_delta_size * sizeof(Entity)));
        cudaMemcpy(t_delta, t_delta_temp, t_delta_size * sizeof(Entity), cudaMemcpyDeviceToDevice);
        // Update cc
        cc_size = new_cc_size;
        cudaMemcpy(cc, new_cc, cc_size * sizeof(Entity), cudaMemcpyDeviceToDevice);


        long long t_delta_size_temp_loop = t_delta_size;
        long long old_global_t_delta_size = global_t_delta_size;
        MPI_Allreduce(&t_delta_size_temp_loop, &global_t_delta_size, 1, MPI_LONG_LONG_INT, MPI_SUM, MPI_COMM_WORLD);
        iterations++;
        cudaFree(distributed_join_result);
        cudaFree(new_cc);
        cudaFree(join_result);
        cudaFree(t_delta_temp);
        end_time = MPI_Wtime();
        elapsed_time = end_time - start_time;
        merge_time += elapsed_time;
        if (old_global_t_delta_size == global_t_delta_size) {
            break;
        }
    }

    // We are interested only the unique component ID, thus we make the component ID as key and got rid of node
    start_time = MPI_Wtime();
    replace_key_by_value<<<grid_size, block_size>>>(cc, cc_size, cc);
    end_time = MPI_Wtime();
    elapsed_time = end_time - start_time;
    finalization_time += elapsed_time;

    // Scatter component IDs among relevant processes
    int cc_distributed_size = 0;
    buffer_preparation_time_temp = 0.0;
    communication_time_temp = 0.0;
    Entity *cc_distributed = get_split_relation(rank, cc,
                                                cc_size, total_columns, total_rank,
                                                grid_size, block_size, cuda_aware_mpi, &cc_distributed_size,
                                                comm_method,
                                                &buffer_preparation_time_temp, &communication_time_temp, iterations);
    buffer_preparation_time += buffer_preparation_time_temp;
    communication_time += communication_time_temp;

    // Sort scattered component IDs
    start_time = MPI_Wtime();
    thrust::stable_sort(thrust::device, cc_distributed, cc_distributed + cc_distributed_size, set_cmp());
    end_time = MPI_Wtime();
    elapsed_time = end_time - start_time;
    deduplication_time += elapsed_time;


    // Calculate Nodes in largest WCC
    int *component_ids;
    checkCuda(cudaMalloc((void **) &component_ids, cc_distributed_size * sizeof(int)));
    int *unique_component_ids, *component_sizes;
    checkCuda(cudaMalloc((void **) &unique_component_ids, cc_distributed_size * sizeof(int)));
    checkCuda(cudaMalloc((void **) &component_sizes, cc_distributed_size * sizeof(int)));
    // Extract keys from the cc_distributed array
    thrust::transform(thrust::device,
                      cc_distributed, cc_distributed + cc_distributed_size, component_ids,
                      [] __device__(const Entity &e) { return e.key; });
    thrust::equal_to<int> binary_pred;
    // Count the occurrences of each component ID
    auto reduce_end = thrust::reduce_by_key(thrust::device,
                                            component_ids, component_ids + cc_distributed_size,
                                            thrust::constant_iterator<int>(1),
                                            unique_component_ids,
                                            component_sizes, binary_pred);
    // Calculate the number of total unique compoennt
    long long total_unique_component = thrust::distance(component_sizes, reduce_end.second);
    // Find the largest component size
    long long max_component_size_current_rank = thrust::reduce(thrust::device,
                                                               component_sizes,
                                                               component_sizes + total_unique_component, -1,
                                                               thrust::maximum<int>());
    long long max_component_size = 0;
    MPI_Allreduce(&max_component_size_current_rank, &max_component_size, 1, MPI_LONG_LONG_INT, MPI_MAX, MPI_COMM_WORLD);

    // Deduplicate component IDs
    start_time = MPI_Wtime();
    cc_distributed_size = (thrust::unique(thrust::device,
                                          cc_distributed, cc_distributed + cc_distributed_size,
                                          is_equal_key())) - cc_distributed;
    end_time = MPI_Wtime();
    elapsed_time = end_time - start_time;
    deduplication_time += elapsed_time;

    start_time = MPI_Wtime();
    long long global_component_size = 0;
    long long current_component_size = cc_distributed_size;
    MPI_Allreduce(&current_component_size, &global_component_size, 1, MPI_LONG_LONG_INT, MPI_SUM, MPI_COMM_WORLD);

    int *component_ar;
    checkCuda(cudaMalloc((void **) &component_ar, cc_distributed_size * total_columns * sizeof(int)));
    get_int_ar_from_entity_ar<<<grid_size, block_size>>>(cc_distributed, cc_distributed_size, component_ar);

    // Copy component ar to host for file write
    int *component_ar_host = (int *) malloc(cc_distributed_size * total_columns * sizeof(int));
    cudaMemcpy(component_ar_host, component_ar, cc_distributed_size * total_columns * sizeof(int),
               cudaMemcpyDeviceToHost);

    // List the cc counts for each process and calculate the displacements in the final result
    int *component_counts = (int *) calloc(total_rank, sizeof(int));
    MPI_Allgather(&cc_distributed_size, 1, MPI_INT, component_counts, 1, MPI_INT, MPI_COMM_WORLD);

    int *component_displacements = (int *) calloc(total_rank, sizeof(int));
    for (i = 1; i < total_rank; i++) {
        component_displacements[i] = component_displacements[i - 1] + (component_counts[i - 1] * total_columns);
    }
    end_time = MPI_Wtime();
    elapsed_time = end_time - start_time;
    finalization_time += elapsed_time;

    if (job_run == 0) {
        // Write the cc to an offset of the output file
        double temp_file_write_time = 0.0;
        parallel_write(rank, total_rank, output_file_name, component_ar_host, component_displacements,
                       total_columns, cc_distributed_size, &temp_file_write_time);
        file_io_time += temp_file_write_time;
    }

    start_time = MPI_Wtime();

    cudaFree(distributed_edge);
    cudaFree(edge_reverse_temp_device);
    cudaFree(edge_temp_device);
    cudaFree(edge);
    cudaFree(cc);
    cudaFree(t_delta);
    cudaFree(component_ar);
    cudaFree(hash_table);
    cudaFree(cc_distributed);
    cudaFree(component_ids);
    cudaFree(unique_component_ids);
    cudaFree(component_sizes);
    free(component_ar_host);
    free(component_counts);
    free(component_displacements);
    free(edge_host);
    end_time = MPI_Wtime();
    elapsed_time = end_time - start_time;
    finalization_time += elapsed_time;
    MPI_Allreduce(&initialization_time, &max_initialization_time, 1, MPI_DOUBLE, MPI_MAX, MPI_COMM_WORLD);
    MPI_Allreduce(&hashtable_build_time, &max_hashtable_build_time, 1, MPI_DOUBLE, MPI_MAX, MPI_COMM_WORLD);
    MPI_Allreduce(&deduplication_time, &max_deduplication_time, 1, MPI_DOUBLE, MPI_MAX, MPI_COMM_WORLD);
    MPI_Allreduce(&join_time, &max_join_time, 1, MPI_DOUBLE, MPI_MAX, MPI_COMM_WORLD);
    MPI_Allreduce(&merge_time, &max_merge_time, 1, MPI_DOUBLE, MPI_MAX, MPI_COMM_WORLD);
    MPI_Allreduce(&buffer_preparation_time, &max_buffer_preparation_time, 1, MPI_DOUBLE, MPI_MAX, MPI_COMM_WORLD);
    MPI_Allreduce(&communication_time, &max_communication_time, 1, MPI_DOUBLE, MPI_MAX, MPI_COMM_WORLD);
    MPI_Allreduce(&file_io_time, &max_fileio_time, 1, MPI_DOUBLE, MPI_MAX, MPI_COMM_WORLD);
    MPI_Allreduce(&finalization_time, &max_finalization_time, 1, MPI_DOUBLE, MPI_MAX, MPI_COMM_WORLD);

    total_time = initialization_time + hashtable_build_time + join_time +
                 buffer_preparation_time + communication_time + deduplication_time + merge_time +
                 finalization_time;
    MPI_Allreduce(&total_time, &max_total_time, 1, MPI_DOUBLE, MPI_MAX, MPI_COMM_WORLD);

    if (rank == 0) {
        output.block_size = block_size;
        output.grid_size = grid_size;
        output.input_rows = total_rows;
        output.total_rank = total_rank;
        output.iterations = iterations;
        output.output_file_name = output_file_name;
        output.output_size = global_component_size;
        output.output_size_secondary = max_component_size;
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
            printf("| # Input | # Process | # Iterations | # CC (# Nodes in largest WCC) | Total Time ");
            printf("| Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |\n");
            printf("| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |\n");
        }
        printf("| %'d | %'d | %'d | %'lld (%'lld) | %'8.4lf | %'8.4lf | %'8.4lf | %'8.4lf | %'8.4lf | %'8.4lf | %'8.4lf | %'8.4lf | %'8.4lf | %'8.4lf | %s |\n",
               output.input_rows, output.total_rank, output.iterations,
               output.output_size, output.output_size_secondary, output.total_time,
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
// make runwcc DATA_FILE=data/dummy.bin NPROCS=1 CUDA_AWARE_MPI=0 METHOD=0
// make runwcc DATA_FILE=data/dummy.bin NPROCS=2 CUDA_AWARE_MPI=0 METHOD=0
// make runwcc DATA_FILE=data/dummy.bin NPROCS=8 CUDA_AWARE_MPI=0 METHOD=0
// make runwcc DATA_FILE=data/flickr.bin NPROCS=8 CUDA_AWARE_MPI=0 METHOD=0
// make runwcc DATA_FILE=data/data_214078.bin NPROCS=8 CUDA_AWARE_MPI=0 METHOD=0
// make runwcc DATA_FILE=data/data_214078.bin NPROCS=8 CUDA_AWARE_MPI=0 METHOD=1
// make runwcc DATA_FILE=data/web-Stanford.bin NPROCS=1 CUDA_AWARE_MPI=0 METHOD=0
// make runwcc DATA_FILE=data/roadNet-CA.bin NPROCS=8 CUDA_AWARE_MPI=0 METHOD=0

// /opt/nvidia/hpc_sdk/Linux_x86_64/24.1/comm_libs/hpcx/bin/mpirun -np 8 ./cc.out data/roadNet-CA.bin 1 0