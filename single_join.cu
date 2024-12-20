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
#include "common/parallel_io.cu"
#include "common/comm.cu"
#include "common/hash_table.cu"
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
    double file_io_time = 0.0, max_fileio_time = 0.0;
    double max_join_time = 0.0, max_merge_time = 0.0;
    double max_buffer_preparation_time_before_join = 0.0, max_communication_time_before_join = 0.0;
    double max_buffer_preparation_time_after_join = 0.0, max_communication_time_after_join = 0.0;
    double buffer_preparation_time_before_join = 0.0, communication_time_before_join = 0.0;
    double buffer_preparation_time_after_join = 0.0, communication_time_after_join = 0.0;
    double buffer_preparation_time_temp = 0.0, communication_time_temp = 0.0;
    double join_time = 0.0, merge_time = 0.0;
    double deduplication_time = 0.0, max_deduplication_time = 0.0;;
    double hashtable_build_time = 0.0, max_hashtable_build_time = 0.0;
    double clear_time = 0.0, max_clear_time = 0.0;;
    double copy_to_host_time = 0.0, max_copy_to_host_time = 0.0;;

    double total_time = 0.0, max_total_time = 0.0;
    int total_rank, rank;
    int i;
    MPI_Comm_size(MPI_COMM_WORLD, &total_rank);
    MPI_Comm_rank(MPI_COMM_WORLD, &rank);
    warm_up_kernel<<<1, 1>>>();
    int iterations = 1;
    // Should pass the input filename in command line argument
    const char *input_file;
    int comm_method = 0;
    int job_run = 1;
    int cuda_aware_mpi = 0;
    int rand_range = 1000000;
    if (argc == 5) {
        input_file = argv[1];
        cuda_aware_mpi = atoi(argv[2]);
        comm_method = atoi(argv[3]);
        rand_range = atoi(argv[4]);
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
    string output_file = string(input_file) + "_singlejoin.bin";
    const char *output_file_name = output_file.c_str();
    int total_rows = atoi(input_file);
    // if total_rows > 10M then perform strong scaling

    // Read file in parallel
    int total_columns = 2;
    double temp_file_io_time = 0.0;
    long long row_size = 0;
    int *local_data_host = parallel_generate(total_rank, rank, total_rows, total_columns, rand_range,
                                             &row_size, &temp_file_io_time);

    long long local_count = row_size * total_columns;
    long long global_row_size = 0;
    MPI_Allreduce(&row_size, &global_row_size, 1, MPI_LONG_LONG_INT, MPI_SUM,
                  MPI_COMM_WORLD);
#ifdef DEBUG
    cout << "Rank: " << rank << ", Local count: " << local_count << endl;
#endif
    file_io_time += temp_file_io_time;

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
    end_time = MPI_Wtime();
    elapsed_time = end_time - start_time;
    initialization_time += elapsed_time;

    int input_relation_size = 0;
    buffer_preparation_time_temp = 0.0;
    communication_time_temp = 0.0;
    Entity *input_relation = get_split_relation(rank, local_data,
                                                row_size, total_columns, total_rank,
                                                grid_size, block_size, cuda_aware_mpi,
                                                &input_relation_size, comm_method,
                                                &buffer_preparation_time_temp, &communication_time_temp, iterations);
    buffer_preparation_time_before_join += buffer_preparation_time_temp;
    communication_time_before_join += communication_time_temp;
#ifdef DEBUG
    cout << "Rank: " << rank << ", input_relation_size: " << input_relation_size << endl;
#endif

    start_time = MPI_Wtime();
    thrust::sort(thrust::device, input_relation, input_relation + input_relation_size, set_cmp());
    input_relation_size = (thrust::unique(thrust::device,
                                          input_relation, input_relation + input_relation_size,
                                          is_equal())) - input_relation;
    end_time = MPI_Wtime();
    elapsed_time = end_time - start_time;
    deduplication_time += elapsed_time;
#ifdef DEBUG
    cout << "Rank: " << rank << ", input_relation_size after deduplication: " << input_relation_size << endl;
#endif


    buffer_preparation_time_temp = 0.0;
    communication_time_temp = 0.0;
    int reverse_relation_size = 0;
    Entity *reverse_relation = get_split_relation(rank, local_data_reverse,
                                                  row_size, total_columns, total_rank,
                                                  grid_size, block_size, cuda_aware_mpi, &reverse_relation_size,
                                                  comm_method,
                                                  &buffer_preparation_time_temp, &communication_time_temp, iterations);
    buffer_preparation_time_before_join += buffer_preparation_time_temp;
    communication_time_before_join += communication_time_temp;
#ifdef DEBUG
    cout << "Rank: " << rank << ", reverse_relation_size: " << reverse_relation_size << endl;
#endif
    start_time = MPI_Wtime();
    thrust::sort(thrust::device, reverse_relation, reverse_relation + reverse_relation_size, set_cmp());
    reverse_relation_size = (thrust::unique(thrust::device,
                                            reverse_relation, reverse_relation + reverse_relation_size,
                                            is_equal())) - reverse_relation;
    end_time = MPI_Wtime();
    elapsed_time = end_time - start_time;
    deduplication_time += elapsed_time;
#ifdef DEBUG
    cout << "Rank: " << rank << ", reverse_relation_size after deduplication: " << reverse_relation_size << endl;
#endif

    // Hash table is Edge
    double temp_hashtable_build_time = 0.0;
    int hash_table_rows = 0;
    Entity *hash_table = get_hash_table(grid_size, block_size, input_relation, input_relation_size,
                                        &hash_table_rows, &temp_hashtable_build_time);
    hashtable_build_time += temp_hashtable_build_time;
#ifdef DEBUG
    cout << "Rank: " << rank << ", hash_table_rows: " << hash_table_rows << endl;
#endif

    double temp_join_time = 0.0;
    int join_result_size = 0;
    Entity *join_result = get_join(grid_size, block_size, hash_table, hash_table_rows,
                                   reverse_relation, reverse_relation_size,
                                   &join_result_size, &temp_join_time);

    join_time += temp_join_time;
#ifdef DEBUG
    cout << "Rank: " << rank << ", join_result_size: " << join_result_size << endl;
#endif
    // Scatter the join result among relevant processes
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
    buffer_preparation_time_after_join += buffer_preparation_time_temp;
    communication_time_after_join += communication_time_temp;
#ifdef DEBUG
    cout << "Rank: " << rank << ", distributed_join_result_size: " << distributed_join_result_size << endl;
#endif

    // Deduplicate distributed join result
    start_time = MPI_Wtime();
    thrust::sort(thrust::device, distributed_join_result,
                 distributed_join_result + distributed_join_result_size, set_cmp());
    distributed_join_result_size = (thrust::unique(thrust::device,
                                                   distributed_join_result,
                                                   distributed_join_result + distributed_join_result_size,
                                                   is_equal())) - distributed_join_result;
    end_time = MPI_Wtime();
    elapsed_time = end_time - start_time;
    deduplication_time += elapsed_time;
#ifdef DEBUG
    cout << "Rank: " << rank << ", distributed_join_result_size after deduplication: " << distributed_join_result_size << endl;
#endif

    start_time = MPI_Wtime();
    long long global_join_result_size = 0;
    long long distributed_join_result_size_temp = distributed_join_result_size;
    MPI_Allreduce(&distributed_join_result_size_temp, &global_join_result_size, 1, MPI_LONG_LONG_INT, MPI_SUM,
                  MPI_COMM_WORLD);
    end_time = MPI_Wtime();
    elapsed_time = end_time - start_time;
    finalization_time += elapsed_time;


    start_time = MPI_Wtime();
    // Create int ar from entity ar
    int *distributed_join_result_ar;
    checkCuda(cudaMalloc((void **) &distributed_join_result_ar,
                         distributed_join_result_size * total_columns * sizeof(int)));
    get_reverse_int_ar_from_entity_ar<<<grid_size, block_size>>>(distributed_join_result, distributed_join_result_size,
                                                                 distributed_join_result_ar);
    end_time = MPI_Wtime();
    elapsed_time = end_time - start_time;
    finalization_time += elapsed_time;

    // Copy to host for file write
    start_time = MPI_Wtime();
    int *distributed_join_result_ar_host = (int *) malloc(distributed_join_result_size * total_columns * sizeof(int));
    cudaMemcpy(distributed_join_result_ar_host, distributed_join_result_ar,
               distributed_join_result_size * total_columns * sizeof(int), cudaMemcpyDeviceToHost);

    // List the t full counts for each process and calculate the displacements in the final result
    int *join_result_counts = (int *) calloc(total_rank, sizeof(int));
    MPI_Allgather(&distributed_join_result_size, 1, MPI_INT,
                  join_result_counts, 1, MPI_INT, MPI_COMM_WORLD);

    int *join_result_displacements = (int *) calloc(total_rank, sizeof(int));
    for (i = 1; i < total_rank; i++) {
        join_result_displacements[i] = join_result_displacements[i - 1] + (join_result_counts[i - 1] * total_columns);
    }
    end_time = MPI_Wtime();
    elapsed_time = end_time - start_time;
    copy_to_host_time += elapsed_time;

    if (job_run == 0) {
        // Write the t full to an offset of the output file
        double temp_file_write_time = 0.0;
        parallel_write(rank, total_rank, output_file_name, distributed_join_result_ar_host, join_result_displacements,
                       total_columns, distributed_join_result_size, &temp_file_write_time);
        file_io_time += temp_file_write_time;
    }

    start_time = MPI_Wtime();
    cudaFree(local_data_device);
    cudaFree(input_relation);
    cudaFree(local_data);
    cudaFree(local_data_reverse);
    cudaFree(join_result);
    cudaFree(distributed_join_result);
    cudaFree(distributed_join_result_ar);
    cudaFree(hash_table);

    free(distributed_join_result_ar_host);
    free(join_result_counts);
    free(join_result_displacements);
    free(local_data_host);
    end_time = MPI_Wtime();
    elapsed_time = end_time - start_time;
    clear_time += elapsed_time;

    total_time = initialization_time + hashtable_build_time + join_time +
                 buffer_preparation_time_before_join + communication_time_before_join +
                 buffer_preparation_time_after_join + communication_time_after_join +
                 deduplication_time + merge_time + clear_time + finalization_time + copy_to_host_time;
    MPI_Allreduce(&total_time, &max_total_time, 1, MPI_DOUBLE, MPI_MAX, MPI_COMM_WORLD);
    // Breakdown time is the breakdown times of the slowest process
    if (total_time == max_total_time) {
        max_initialization_time = initialization_time;
        max_deduplication_time = deduplication_time;
        max_join_time = join_time;
        max_merge_time = merge_time;
        max_buffer_preparation_time_before_join = buffer_preparation_time_before_join;
        max_communication_time_before_join = communication_time_before_join;
        max_buffer_preparation_time_after_join = buffer_preparation_time_after_join;
        max_communication_time_after_join = communication_time_after_join;
        max_hashtable_build_time = hashtable_build_time;
        max_fileio_time = file_io_time;
        max_clear_time = clear_time;
        max_finalization_time = finalization_time;
        max_copy_to_host_time = copy_to_host_time;
        output.block_size = block_size;
        output.grid_size = grid_size;
        output.input_rows = global_row_size;
        output.total_rank = total_rank;
        output.iterations = iterations;
        output.output_file_name = output_file_name;
        output.output_size = global_join_result_size;

        output.total_time = max_total_time;
        output.initialization_time = max_initialization_time;
        output.fileio_time = max_fileio_time;
        output.hashtable_build_time = max_hashtable_build_time;
        output.join_time = max_join_time;
        output.deduplication_time = max_deduplication_time;
        output.merge_time = max_merge_time;
        output.finalization_time = max_finalization_time;
        if (job_run == 0) {
            printf("| # Input | # Process | # Iterations | # Join | Total Time ");
            printf("| Initialization | File I/O | Hashtable | Join | Buffer preparation (before) | Communication (before) | Buffer preparation (after) | Communication (after) | Deduplication | Clear | Copy | Finalization | Output |\n");
            printf("| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |\n");
        }
        printf("| %'d | %'d | %'d | %'lld | %'8.4lf | %'8.4lf | %'8.4lf | %'8.4lf | %'8.4lf | %'8.4lf | %'8.4lf | %'8.4lf | %'8.4lf | %'8.4lf | %'8.4lf | %'8.4lf | %'8.4lf | %s |\n",
               output.input_rows, output.total_rank, output.iterations,
               output.output_size, output.total_time,
               output.initialization_time, output.fileio_time, output.hashtable_build_time, output.join_time,
               max_buffer_preparation_time_before_join, max_communication_time_before_join,
               max_buffer_preparation_time_after_join, max_communication_time_after_join,
               output.deduplication_time, max_clear_time, max_copy_to_host_time,
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
// DATA_FILE>10000000, strong scaling, otherwise weak scaling;
// make runsinglejoin DATA_FILE=100 NPROCS=4 CUDA_AWARE_MPI=0 METHOD=0 RAND_RANGE=100
// make runsinglejoin DATA_FILE=10 NPROCS=4 CUDA_AWARE_MPI=0 METHOD=0 RAND_RANGE=100
// DATA_FILE>10M, strong scaling, otherwise weak scaling;
// make runsinglejoin DATA_FILE=10000000 NPROCS=4 CUDA_AWARE_MPI=0 METHOD=0 RAND_RANGE=100000
// make runsinglejoin DATA_FILE=20000000 NPROCS=4 CUDA_AWARE_MPI=0 METHOD=0 RAND_RANGE=1000000

// Exp 1: control output size linearly
// make runsinglejoin DATA_FILE=5000000 NPROCS=1 CUDA_AWARE_MPI=0 METHOD=0 RAND_RANGE=1000000
// mpirun -np 1 ./single_join.out 5000000 0 0 1000000
// mpirun -np 2 ./single_join.out 5000000 0 0 2000000
// mpirun -np 4 ./single_join.out 5000000 0 0 4000000
// mpirun -np 8 ./single_join.out 5000000 0 0 8000000
// make runsinglejoin DATA_FILE=5000000 NPROCS=2 CUDA_AWARE_MPI=0 METHOD=0 RAND_RANGE=1000000
// make runsinglejoin DATA_FILE=5000000 NPROCS=1 CUDA_AWARE_MPI=0 METHOD=0 RAND_RANGE=500000

// Exp 2: do not control output size


// Exp 3: Smaller range


// Polaris exp 1
// mpirun -np 1 ./single_join.out 10000000 0 0 1000000
// mpirun -np 2 ./single_join.out 10000000 0 0 2000000