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
    KernelTimer timer;
    int device_id;
    int number_of_sm;
    cudaGetDevice(&device_id);
    cudaDeviceGetAttribute(&number_of_sm, cudaDevAttrMultiProcessorCount, device_id);
    warm_up_kernel<<<1, 1>>>();

    int block_size, grid_size;
    block_size = 512;
    grid_size = 32 * number_of_sm;
    setlocale(LC_ALL, "");
    double start_time, end_time, elapsed_time, kernel_time;
    start_time = MPI_Wtime();
    double initialization_time = 0.0;
    double finalization_time = 0.0;
    double file_io_time = 0.0;
    double buffer_preparation_time = 0.0, communication_time = 0.0, memory_clear_time = 0.0;
    double buffer_preparation_time_temp = 0.0, communication_time_temp = 0.0, buffer_memory_clear_time_temp = 0.0;
    double join_time = 0.0, merge_time = 0.0;
    double deduplication_time = 0.0;
    double hashtable_build_time = 0.0;

    double total_time = 0.0, max_total_time = 0.0;
    int total_rank, rank;
    int i;
    MPI_Comm_size(MPI_COMM_WORLD, &total_rank);
    MPI_Comm_rank(MPI_COMM_WORLD, &rank);
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
    end_time = MPI_Wtime();
    elapsed_time = end_time - start_time;
    initialization_time += elapsed_time;

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
    end_time = MPI_Wtime();
    elapsed_time = end_time - start_time;
    initialization_time += elapsed_time;
    timer.start_timer();
    get_reverse_ar<<<grid_size, block_size>>>(edge_temp_device, row_size, edge_reverse_temp_device);
    timer.stop_timer();
    kernel_time = timer.get_spent_time();
    initialization_time += kernel_time;

    // Create Entity array from GPU buffers, edge + reverse_edge
    // edge(x, y) :- edge(y, x)
    start_time = MPI_Wtime();
    Entity *edge;
    int edge_size = local_count;
    checkCuda(cudaMalloc((void **) &edge, edge_size * sizeof(Entity)));
    end_time = MPI_Wtime();
    elapsed_time = end_time - start_time;
    initialization_time += elapsed_time;
    timer.start_timer();
    create_entity_ar_with_offset<<<grid_size, block_size>>>(edge_temp_device, row_size, edge, 0);
    create_entity_ar_with_offset<<<grid_size, block_size>>>(edge_reverse_temp_device, row_size,
                                                            edge, row_size);
    timer.stop_timer();
    kernel_time = timer.get_spent_time();
    initialization_time += kernel_time;

    // Deduplicate local data
    timer.start_timer();
    thrust::sort(thrust::device, edge, edge + edge_size, set_cmp());
    edge_size = (thrust::unique(thrust::device,
                                edge, edge + edge_size,
                                is_equal())) - edge;
    timer.stop_timer();
    kernel_time = timer.get_spent_time();
    deduplication_time += kernel_time;

#ifdef DEBUG
     show_device_entity_variable(edge, edge_size, rank, "edge", 0);
#endif
    // Distribute edge
    int distributed_edge_size = 0;
    buffer_preparation_time_temp = 0.0;
    communication_time_temp = 0.0;
    buffer_memory_clear_time_temp = 0.0;

    Entity *distributed_edge = get_split_relation(rank, edge,
                                                  edge_size, total_columns, total_rank,
                                                  grid_size, block_size, cuda_aware_mpi,
                                                  &distributed_edge_size, comm_method,
                                                  &buffer_preparation_time_temp, &communication_time_temp,
                                                  &buffer_memory_clear_time_temp, iterations);
    buffer_preparation_time += buffer_preparation_time_temp;
    communication_time += communication_time_temp;
    memory_clear_time += buffer_memory_clear_time_temp;

    // Deduplicate distributed edge
    timer.start_timer();
    thrust::sort(thrust::device, distributed_edge, distributed_edge + distributed_edge_size, set_cmp());
    distributed_edge_size = (thrust::unique(thrust::device,
                                            distributed_edge, distributed_edge + distributed_edge_size,
                                            is_equal())) - distributed_edge;
    timer.stop_timer();
    kernel_time = timer.get_spent_time();
    deduplication_time += kernel_time;

    // Create cc from edge where node, component_id = node, node
    // cc(x, x) :- edge(x, _)
    start_time = MPI_Wtime();
    Entity *cc;
    int cc_size = distributed_edge_size;
    checkCuda(cudaMalloc((void **) &cc, cc_size * sizeof(Entity)));
    end_time = MPI_Wtime();
    elapsed_time = end_time - start_time;
    initialization_time += elapsed_time;
    timer.start_timer();
    same_key_value_entity_ar<<<grid_size, block_size>>>(distributed_edge, cc_size, cc);
    timer.stop_timer();
    kernel_time = timer.get_spent_time();
    initialization_time += kernel_time;

    // Deduplicate cc
    timer.start_timer();
    thrust::sort(thrust::device, cc, cc + cc_size, set_cmp());
    cc_size = (thrust::unique(thrust::device,
                              cc, cc + cc_size,
                              is_equal_key())) - cc;
    timer.stop_timer();
    kernel_time = timer.get_spent_time();
    deduplication_time += kernel_time;

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
    communication_time += elapsed_time;

    // Hash table is Edge
    double temp_hashtable_build_time = 0.0;
    int hash_table_rows = 0;
    Entity *hash_table = get_hash_table(grid_size, block_size, distributed_edge, distributed_edge_size,
                                        &hash_table_rows, &temp_hashtable_build_time);
    hashtable_build_time += temp_hashtable_build_time;

    Entity *new_cc;
    while (true) {
        double temp_join_time = 0.0;
        int join_result_size = 0;
        Entity *join_result = get_join(grid_size, block_size, hash_table, hash_table_rows,
                                       t_delta, t_delta_size,
                                       &join_result_size, &temp_join_time);
        join_time += temp_join_time;
#ifdef DEBUG
//        show_device_entity_variable(join_result, join_result_size, rank, "join_result", 0);
#endif

        // Scatter the join result with reverse among relevant processes
        buffer_preparation_time_temp = 0.0;
        communication_time_temp = 0.0;
        buffer_memory_clear_time_temp = 0.0;
        int distributed_join_result_size = 0;
        Entity *distributed_join_result = get_split_relation(rank, join_result,
                                                             join_result_size, total_columns, total_rank,
                                                             grid_size, block_size, cuda_aware_mpi,
                                                             &distributed_join_result_size,
                                                             comm_method,
                                                             &buffer_preparation_time_temp, &communication_time_temp,
                                                             &buffer_memory_clear_time_temp,
                                                             iterations);
        buffer_preparation_time += buffer_preparation_time_temp;
        communication_time += communication_time_temp;
        memory_clear_time += buffer_memory_clear_time_temp;


        // Deduplicate distributed join result with reverse
        timer.start_timer();
        thrust::sort(thrust::device, distributed_join_result,
                     distributed_join_result + distributed_join_result_size, set_cmp());
        distributed_join_result_size = (thrust::unique(thrust::device,
                                                       distributed_join_result,
                                                       distributed_join_result + distributed_join_result_size,
                                                       is_equal())) - distributed_join_result;
        timer.stop_timer();
        kernel_time = timer.get_spent_time();
        deduplication_time += kernel_time;

#ifdef DEBUG
//        show_device_entity_variable(distributed_join_result, distributed_join_result_size, rank, "distributed_join_result deduplicated", 0);
#endif

        // Set union of two sets (sorted cc and distributed join result)
        start_time = MPI_Wtime();
        int new_cc_size = distributed_join_result_size + cc_size;
        checkCuda(cudaMalloc((void **) &new_cc, new_cc_size * sizeof(Entity)));
        end_time = MPI_Wtime();
        elapsed_time = end_time - start_time;
        merge_time += elapsed_time;
        timer.start_timer();
        thrust::merge(thrust::device,
                      cc, cc + cc_size,
                      distributed_join_result,
                      distributed_join_result + distributed_join_result_size,
                      new_cc, set_cmp());
        timer.stop_timer();
        kernel_time = timer.get_spent_time();
        merge_time += kernel_time;
        // show_device_entity_variable(new_cc, new_cc_size, rank, "new_cc merged dedpulicated", 0);

        // Deduplicate new cc by keeping only the minimum component ID for each node
        timer.start_timer();
        new_cc_size = (thrust::unique(thrust::device,
                                      new_cc,
                                      new_cc + new_cc_size,
                                      is_equal_key())) - new_cc;
        timer.stop_timer();
        kernel_time = timer.get_spent_time();
        deduplication_time += kernel_time;

        // Update t delta which is the only new facts which are not in cc and will be used in next iteration
        start_time = MPI_Wtime();
        Entity *t_delta_temp;
        checkCuda(cudaMalloc((void **) &t_delta_temp, new_cc_size * sizeof(Entity)));
        end_time = MPI_Wtime();
        elapsed_time = end_time - start_time;
        merge_time += elapsed_time;
        timer.start_timer();
        t_delta_size = thrust::set_difference(thrust::device,
                                              new_cc, new_cc + new_cc_size,
                                              cc, cc + cc_size,
                                              t_delta_temp, set_cmp()) - t_delta_temp;
        timer.stop_timer();
        kernel_time = timer.get_spent_time();
        merge_time += kernel_time;
        start_time = MPI_Wtime();
        cudaFree(t_delta);
        end_time = MPI_Wtime();
        elapsed_time = end_time - start_time;
        memory_clear_time += elapsed_time;

        start_time = MPI_Wtime();
        checkCuda(cudaMalloc((void **) &t_delta, t_delta_size * sizeof(Entity)));
        cudaMemcpy(t_delta, t_delta_temp, t_delta_size * sizeof(Entity), cudaMemcpyDeviceToDevice);
        end_time = MPI_Wtime();
        elapsed_time = end_time - start_time;
        merge_time += elapsed_time;

        // Update cc
        start_time = MPI_Wtime();
        cc_size = new_cc_size;
        cudaFree(cc);
        cc = new_cc;
        end_time = MPI_Wtime();
        elapsed_time = end_time - start_time;
        memory_clear_time += elapsed_time;
//        show_device_entity_variable(cc, cc_size, rank, "cc", 0);
        start_time = MPI_Wtime();
        long long t_delta_size_temp_loop = t_delta_size;
        long long old_global_t_delta_size = global_t_delta_size;
        MPI_Allreduce(&t_delta_size_temp_loop, &global_t_delta_size, 1, MPI_LONG_LONG_INT, MPI_SUM, MPI_COMM_WORLD);
        iterations++;
        end_time = MPI_Wtime();
        elapsed_time = end_time - start_time;
        communication_time += elapsed_time;

        start_time = MPI_Wtime();
        cudaFree(distributed_join_result);
        cudaFree(join_result);
        cudaFree(t_delta_temp);
        end_time = MPI_Wtime();
        elapsed_time = end_time - start_time;
        memory_clear_time += elapsed_time;
        if (old_global_t_delta_size == global_t_delta_size) {
            break;
        }
#ifdef DEBUG
        cout << "Iteration " << iterations << " ends" << endl;
#endif
    }

    // We are interested only the unique component ID, thus we make the component ID as key and got rid of node
    timer.start_timer();
    replace_key_by_value<<<grid_size, block_size>>>(cc, cc_size, cc);
    timer.stop_timer();
    kernel_time = timer.get_spent_time();
    finalization_time += kernel_time;

    // Scatter component IDs among relevant processes
    int cc_distributed_size = 0;
    buffer_preparation_time_temp = 0.0;
    communication_time_temp = 0.0;
    buffer_memory_clear_time_temp = 0.0;
    Entity *cc_distributed = get_split_relation(rank, cc,
                                                cc_size, total_columns, total_rank,
                                                grid_size, block_size, cuda_aware_mpi, &cc_distributed_size,
                                                comm_method,
                                                &buffer_preparation_time_temp, &communication_time_temp,
                                                &buffer_memory_clear_time_temp, iterations);
    buffer_preparation_time += buffer_preparation_time_temp;
    communication_time += communication_time_temp;
    memory_clear_time += buffer_memory_clear_time_temp;

    // Sort scattered component IDs
    timer.start_timer();
    thrust::sort(thrust::device, cc_distributed, cc_distributed + cc_distributed_size, set_cmp());
    timer.stop_timer();
    kernel_time = timer.get_spent_time();
    deduplication_time += kernel_time;


    // Calculate Nodes in largest WCC
    start_time = MPI_Wtime();
    int *component_ids;
    checkCuda(cudaMalloc((void **) &component_ids, cc_distributed_size * sizeof(int)));
    int *unique_component_ids, *component_sizes;
    checkCuda(cudaMalloc((void **) &unique_component_ids, cc_distributed_size * sizeof(int)));
    checkCuda(cudaMalloc((void **) &component_sizes, cc_distributed_size * sizeof(int)));
    end_time = MPI_Wtime();
    elapsed_time = end_time - start_time;
    finalization_time += elapsed_time;
    // Extract keys from the cc_distributed array
    timer.start_timer();
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
    timer.stop_timer();
    kernel_time = timer.get_spent_time();
    merge_time += kernel_time;

    start_time = MPI_Wtime();
    long long max_component_size = 0;
    MPI_Allreduce(&max_component_size_current_rank, &max_component_size, 1, MPI_LONG_LONG_INT, MPI_MAX, MPI_COMM_WORLD);
    end_time = MPI_Wtime();
    elapsed_time = end_time - start_time;
    communication_time += elapsed_time;

    // Deduplicate component IDs
    timer.start_timer();
    cc_distributed_size = (thrust::unique(thrust::device,
                                          cc_distributed, cc_distributed + cc_distributed_size,
                                          is_equal_key())) - cc_distributed;

    timer.stop_timer();
    kernel_time = timer.get_spent_time();
    deduplication_time += kernel_time;

    start_time = MPI_Wtime();
    long long global_component_size = 0;
    long long current_component_size = cc_distributed_size;
    MPI_Allreduce(&current_component_size, &global_component_size, 1, MPI_LONG_LONG_INT, MPI_SUM, MPI_COMM_WORLD);
    end_time = MPI_Wtime();
    elapsed_time = end_time - start_time;
    communication_time += elapsed_time;

    start_time = MPI_Wtime();
    int *component_ar;
    checkCuda(cudaMalloc((void **) &component_ar, cc_distributed_size * total_columns * sizeof(int)));
    end_time = MPI_Wtime();
    elapsed_time = end_time - start_time;
    finalization_time += elapsed_time;

    timer.start_timer();
    get_int_ar_from_entity_ar<<<grid_size, block_size>>>(cc_distributed, cc_distributed_size, component_ar);
    timer.stop_timer();
    kernel_time = timer.get_spent_time();
    finalization_time += kernel_time;

    start_time = MPI_Wtime();
    // Copy component ar to host for file write
    int *component_ar_host = (int *) malloc(cc_distributed_size * total_columns * sizeof(int));
    cudaMemcpy(component_ar_host, component_ar, cc_distributed_size * total_columns * sizeof(int),
               cudaMemcpyDeviceToHost);
    end_time = MPI_Wtime();
    elapsed_time = end_time - start_time;
    file_io_time += elapsed_time;

    // List the cc counts for each process and calculate the displacements in the final result
    start_time = MPI_Wtime();
    int *component_counts = (int *) calloc(total_rank, sizeof(int));
    MPI_Allgather(&cc_distributed_size, 1, MPI_INT, component_counts, 1, MPI_INT, MPI_COMM_WORLD);
    end_time = MPI_Wtime();
    elapsed_time = end_time - start_time;
    communication_time += elapsed_time;

    start_time = MPI_Wtime();
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
        cout << "Generated: " << output_file_name << endl;
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
    memory_clear_time += elapsed_time;
    total_time = initialization_time + hashtable_build_time + join_time +
                 buffer_preparation_time + communication_time + deduplication_time + merge_time +
                 finalization_time + memory_clear_time;
    MPI_Allreduce(&total_time, &max_total_time, 1, MPI_DOUBLE, MPI_MAX, MPI_COMM_WORLD);

    if (total_time == max_total_time) {
        output.block_size = block_size;
        output.grid_size = grid_size;
        output.input_rows = total_rows;
        output.total_rank = total_rank;
        output.iterations = iterations;
        output.output_file_name = output_file_name;
        output.output_size = global_component_size;
        output.output_size_secondary = max_component_size;
        output.total_time = max_total_time;
        output.initialization_time = initialization_time;
        output.fileio_time = file_io_time;
        output.hashtable_build_time = hashtable_build_time;
        output.join_time = join_time;
        output.buffer_preparation_time = buffer_preparation_time;
        output.communication_time = communication_time;
        output.deduplication_time = deduplication_time;
        output.merge_time = merge_time;
        output.finalization_time = finalization_time;
        output.memory_clear_time = memory_clear_time;
        printf("# Input,# Process,# Iterations,# CC,# Nodes in largest WCC,Total Time,Join,Buffer preparation,Communication,Deduplication,Merge,Initialization,Hashtable,Finalization,Clear,File I/O\n");
        printf("%d,%d,%d,%lld,%lld,%.4lf,%.4lf,%.4lf,%.4lf,%.4lf,%.4lf,%.4lf,%.4lf,%.4lf,%.4lf,%.4lf\n",
               output.input_rows, output.total_rank, output.iterations,
               output.output_size, output.output_size_secondary, output.total_time,
               output.join_time, output.buffer_preparation_time, output.communication_time, output.deduplication_time,
               output.merge_time,
               output.initialization_time, output.hashtable_build_time,
               output.finalization_time, output.memory_clear_time, output.fileio_time);
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
// make runwcc DATA_FILE=data/data/large_datasets/com-Orkut.bin NPROCS=8 CUDA_AWARE_MPI=0 METHOD=0
// /opt/nvidia/hpc_sdk/Linux_x86_64/24.1/comm_libs/hpcx/bin/mpirun -np 8 ./cc.out data/roadNet-CA.bin 1 0
// make runwcc DATA_FILE=data/data_cc.bin NPROCS=2 CUDA_AWARE_MPI=0 METHOD=0
// make runwccdebug DATA_FILE=data/paper.bin NPROCS=2 CUDA_AWARE_MPI=0 METHOD=0