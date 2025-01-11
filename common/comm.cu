Entity *get_split_relation_pass_method(int rank, Entity *local_data_device,
                                       int row_size, int total_columns, int total_rank,
                                       int grid_size, int block_size, int cuda_aware_mpi,
                                       int *receive_size,
                                       double *buffer_preparation_time,
                                       double *communication_time, int iterations) {
    double start_time, end_time, elapsed_time;
    double prep_time = 0.0, comm_time = 0.0;
    start_time = MPI_Wtime();
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
    get_rank_data<<<grid_size, block_size>>>(local_data_device, row_size, send_displacements_temp,
                                             total_rank, send_data);
    int mpi_error;

    int *send_count_host = (int *) malloc(total_rank * sizeof(int));
    int *receive_count_host = (int *) malloc(total_rank * sizeof(int));
    int *send_displacements_host = (int *) malloc(total_rank * sizeof(int));
    int *receive_displacements_host = (int *) malloc(total_rank * sizeof(int));
    memset(send_count_host, 0, total_rank * sizeof(int));
    memset(receive_count_host, 0, total_rank * sizeof(int));
    memset(send_displacements_host, 0, total_rank * sizeof(int));
    memset(receive_displacements_host, 0, total_rank * sizeof(int));
    cudaMemcpy(send_count_host, send_count, total_rank * sizeof(int), cudaMemcpyDeviceToHost);
    cudaMemcpy(send_displacements_host, send_displacements, total_rank * sizeof(int), cudaMemcpyDeviceToHost);
    end_time = MPI_Wtime();
    elapsed_time = end_time - start_time;
    prep_time += elapsed_time;
    start_time = MPI_Wtime();
    mpi_error = MPI_Alltoall(send_count_host, 1, MPI_INT, receive_count_host, 1, MPI_INT, MPI_COMM_WORLD);
    if (mpi_error != MPI_SUCCESS) {
        char error_string[BUFSIZ];
        int length_of_error_string;
        MPI_Error_string(mpi_error, error_string, &length_of_error_string);
        fprintf(stderr, "MPI error on MPI_Alltoall call: %s\n", error_string);
        MPI_Abort(MPI_COMM_WORLD, mpi_error);
    }
    end_time = MPI_Wtime();
    elapsed_time = end_time - start_time;
    comm_time += elapsed_time;
    start_time = MPI_Wtime();
    int total_receive = thrust::reduce(thrust::host, receive_count_host, receive_count_host + total_rank, 0,
                                       thrust::plus<int>());

    int global_total_send = 0;
    int global_total_receive = 0;
    MPI_Allreduce(&row_size, &global_total_send, 1, MPI_INT, MPI_SUM, MPI_COMM_WORLD);
    MPI_Allreduce(&total_receive, &global_total_receive, 1, MPI_INT, MPI_SUM, MPI_COMM_WORLD);

    thrust::exclusive_scan(thrust::host, receive_count_host, receive_count_host + total_rank,
                           receive_displacements_host);
    Entity *receive_data;
    checkCuda(cudaMalloc((void **) &receive_data, total_receive * sizeof(Entity)));
    end_time = MPI_Wtime();
    elapsed_time = end_time - start_time;
    prep_time += elapsed_time;
    start_time = MPI_Wtime();
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
    end_time = MPI_Wtime();
    elapsed_time = end_time - start_time;
    comm_time += elapsed_time;
    start_time = MPI_Wtime();
    *receive_size = total_receive;
    free(send_count_host);
    free(receive_count_host);
    free(send_displacements_host);
    free(receive_displacements_host);
    cudaFree(send_count);
    cudaFree(send_displacements);
    cudaFree(send_displacements_temp);
    cudaFree(send_data);
    end_time = MPI_Wtime();
    elapsed_time = end_time - start_time;
    prep_time += elapsed_time;
    *buffer_preparation_time = prep_time;
    *communication_time = comm_time;
    return receive_data;
}

Entity *get_split_relation_sort_method(int rank, Entity *local_data_device,
                                       int row_size, int total_columns, int total_rank,
                                       int grid_size, int block_size, int cuda_aware_mpi, int *size,
                                       double *buffer_preparation_time,
                                       double *communication_time, int iterations) {
    double start_time, end_time, elapsed_time;
    double prep_time = 0.0, comm_time = 0.0;
    start_time = MPI_Wtime();
    int mpi_error;
    thrust::device_vector<uint8_t> row_mapping(row_size);

    thrust::transform(
            thrust::device, local_data_device,
            local_data_device + row_size, row_mapping.begin(),
    [total_rank = total_rank] __device__(
    const Entity &entity) -> uint8_t{
            return (uint8_t)(get_rank(entity.key, total_rank));
    });

    thrust::stable_sort_by_key(thrust::device, row_mapping.begin(), row_mapping.end(), local_data_device);

    thrust::device_vector<int> unique_rank_row_count(total_rank);
    thrust::device_vector<uint8_t> unique_rank(total_rank);

    auto unique_rank_range = thrust::reduce_by_key(
            thrust::device, row_mapping.begin(), row_mapping.end(),
            thrust::constant_iterator<int>(1), unique_rank.begin(),
            unique_rank_row_count.begin());
    auto total_unique_rank = unique_rank_range.first - unique_rank.begin();
    unique_rank_row_count.resize(total_unique_rank);
    unique_rank.resize(total_unique_rank);
    thrust::host_vector<int> unique_rank_row_count_host(unique_rank_row_count);
    thrust::host_vector<uint8_t> unique_rank_host(unique_rank);
    thrust::host_vector<int> send_count_host(total_rank);
    for (int i = 0; i < total_unique_rank; i++) {
        send_count_host[unique_rank_host[i]] = unique_rank_row_count_host[i];
    }
    thrust::host_vector<int> receive_count_host(total_rank);
    end_time = MPI_Wtime();
    elapsed_time = end_time - start_time;
    prep_time += elapsed_time;

    start_time = MPI_Wtime();
    mpi_error = MPI_Alltoall(send_count_host.data(), 1, MPI_INT,
                             receive_count_host.data(), 1, MPI_INT, MPI_COMM_WORLD);
    if (mpi_error != MPI_SUCCESS) {
        char error_string[BUFSIZ];
        int length_of_error_string;
        MPI_Error_string(mpi_error, error_string, &length_of_error_string);
        fprintf(stderr, "MPI error on MPI_Alltoall call: %s\n", error_string);
        MPI_Abort(MPI_COMM_WORLD, mpi_error);
    }
    end_time = MPI_Wtime();
    elapsed_time = end_time - start_time;
    comm_time += elapsed_time;

    start_time = MPI_Wtime();

    int total_receive = thrust::reduce(receive_count_host.begin(), receive_count_host.end());

    thrust::host_vector<int> send_displacements_host(total_rank);
    thrust::host_vector<int> receive_displacements_host(total_rank);

    thrust::exclusive_scan(send_count_host.begin(), send_count_host.end(), send_displacements_host.begin());
    thrust::exclusive_scan(receive_count_host.begin(), receive_count_host.end(), receive_displacements_host.begin());

    Entity *receive_data;
    checkCuda(cudaMalloc((void **) &receive_data, total_receive * sizeof(Entity)));

    end_time = MPI_Wtime();
    elapsed_time = end_time - start_time;
    prep_time += elapsed_time;
    start_time = MPI_Wtime();
    if (cuda_aware_mpi) {
        std::cout << "Rank: " << rank << ", Size: " << total_receive << std::endl;
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
    end_time = MPI_Wtime();
    elapsed_time = end_time - start_time;
    comm_time += elapsed_time;
    *buffer_preparation_time = prep_time;
    *communication_time = comm_time;
    *size = total_receive;
    return receive_data;
}

Entity *get_split_relation(int rank, Entity *data_device,
                           int data_size, int total_columns, int total_rank,
                           int grid_size, int block_size, int cuda_aware_mpi, int *size, int method,
                           double *buffer_preparation_time,
                           double *communication_time, int iterations) {
    if (method == 0) {
        return get_split_relation_pass_method(rank, data_device, data_size,
                                              total_columns, total_rank, grid_size, block_size, cuda_aware_mpi, size,
                                              buffer_preparation_time, communication_time, iterations);
    } else {
        return get_split_relation_sort_method(rank, data_device, data_size,
                                              total_columns, total_rank, grid_size, block_size, cuda_aware_mpi, size,
                                              buffer_preparation_time, communication_time, iterations);
    }
}