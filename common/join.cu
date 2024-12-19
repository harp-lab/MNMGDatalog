__global__
void get_join_result_size_entity(Entity *hash_table, int hash_table_size,
                                 Entity *t_delta, int t_delta_size,
                                 int *join_result_size) {
    int index = (blockIdx.x * blockDim.x) + threadIdx.x;
    if (index >= t_delta_size) return;

    int stride = blockDim.x * gridDim.x;

    for (int i = index; i < t_delta_size; i += stride) {
        int key = t_delta[i].key;
        int current_size = 0;
        int position = get_position(key, hash_table_size);
        while (true) {
            if (hash_table[position].key == key) {
                current_size++;
            } else if (hash_table[position].key == -1) {
                break;
            }
            position = (position + 1) & (hash_table_size - 1);
        }
        join_result_size[i] = current_size;
    }
}

__global__
void get_join_result_entity(Entity *hash_table, int hash_table_size,
                            Entity *t_delta, int t_delta_size, int *offset, Entity *join_result) {
    int index = (blockIdx.x * blockDim.x) + threadIdx.x;
    if (index >= t_delta_size) return;
    int stride = blockDim.x * gridDim.x;
    for (int i = index; i < t_delta_size; i += stride) {
        int key = t_delta[i].key;
        int value = t_delta[i].value;
        int start_index = offset[i];
        int position = get_position(key, hash_table_size);
        printf("i:%d, start_index: %d, position: %d\n", i, start_index, position);
        while (true) {
            if (hash_table[position].key == key) {
                join_result[start_index].key = hash_table[position].value;
                join_result[start_index].value = value;
                start_index++;
            } else if (hash_table[position].key == -1) {
                break;
            }
            position = (position + 1) & (hash_table_size - 1);
        }
    }
}

__global__
void get_join_result_entity_with_rank(Entity *hash_table, int hash_table_size,
                            Entity *t_delta, int t_delta_size, int *offset, Entity *join_result, int join_result_size, int rank) {
    int index = (blockIdx.x * blockDim.x) + threadIdx.x;
    if (index >= t_delta_size) return;
    int stride = blockDim.x * gridDim.x;
    for (int i = index; i < t_delta_size; i += stride) {
        // if (rank == 1) {
        //     printf(">>>>>>>>>>>>>>>> i: %d, t_delta_size %d \n", i, t_delta_size);
        // }
        if (i >= t_delta_size) {
            printf("rank: %d, i:%d, t_delta_size: %d\n", rank, i, t_delta_size);
        }
        int key = t_delta[i].key;
        int value = t_delta[i].value;
        int start_index = offset[i];
        int position = get_position(key, hash_table_size);
        // if (i >= t_delta_size || start_index >= join_result_size || position >= hash_table_size) {
        //     printf("rank: %d, i:%d, start_index: %d, position: %d\n", rank, i, start_index, position);
        // }
        while (true) {
            if (hash_table[position].key == key) {
                join_result[start_index].key = hash_table[position].value;
                join_result[start_index].value = value;
                start_index++;
            } else if (hash_table[position].key == -1) {
                break;
            }
            position = (position + 1) & (hash_table_size - 1);
        }
    }
}


Entity *get_join(int grid_size, int block_size, Entity *hash_table, int hash_table_size, Entity *relation,
                 int relation_size, int *join_result_size, double *compute_time) {
//    show_variable_generic(hash_table, "hash_table", hash_table_size, "Entity", "device", 0, 0, "hash table in get join", 0);
//    show_variable_generic(relation, "relation", relation_size, "Entity", "device", 0, 0, "", 0);
    double start_time, end_time, elapsed_time;
    start_time = MPI_Wtime();
    Entity *join_result = nullptr;
    if (hash_table_size == 0) {
//        checkCuda(cudaMalloc((void **) &join_result, 0));
        *join_result_size = 0;
        end_time = MPI_Wtime();
        elapsed_time = end_time - start_time;
        *compute_time = elapsed_time;
        return join_result;
    }

    // get current mpi rank
    int rank;
    MPI_Comm_rank(MPI_COMM_WORLD, &rank);
    int result_size;
    int *join_offset;
    checkCuda(cudaMalloc((void **) &join_offset, relation_size * sizeof(int)));
    checkCuda(cudaMemset(join_offset, 0, relation_size * sizeof(int)));

    get_join_result_size_entity<<<grid_size, block_size>>>(hash_table, hash_table_size,
                                                           relation, relation_size, join_offset);
    checkCuda(cudaDeviceSynchronize());
    result_size = thrust::reduce(thrust::device, join_offset, join_offset + relation_size, 0, thrust::plus<int>());
    int *join_offset_host;
    join_offset_host = (int *) malloc(relation_size * sizeof(int));
    checkCuda(cudaMemcpy(join_offset_host, join_offset, relation_size * sizeof(int), cudaMemcpyDeviceToHost));
    int totol_reduce_host = join_offset_host[0];
    for (int i = 1; i < relation_size; i++) {
        totol_reduce_host += join_offset_host[i];
        join_offset_host[i] += join_offset_host[i - 1];
    }
    std::cout << "Ranck : " << rank  << " Scanned result : " << join_offset_host[relation_size - 1] << std::endl;
    int step = 90'000'000;
    for (int i = 0; i < relation_size; i += step) {
        int end = i + step;
        if (i + step >= relation_size) {
            end = relation_size - i;
        }
        thrust::exclusive_scan(thrust::device, join_offset + i, join_offset + end, join_offset + i);
    }
    // thrust::exclusive_scan(thrust::device, join_offset, join_offset + relation_size, join_offset);
    thrust::for_each(thrust::device, join_offset, join_offset + relation_size,
        [] __device__(int &x) {
            if (x < 0) {
                printf("x: %d\n", x);
            }
        });
    
#ifdef DEBUG
    std::cout << "rank : " << rank << " >>>>>>>>>>>>>> Join counter: " << debug::debug_counter << std::endl;
    std::cout << "rank : " << rank << ">>>>>>>>>>>>>> Result Size: " << result_size << std::endl;
    std::cout << "rank : " << rank << ">>>>>>>>>>>>>> Relation Size: " << relation_size << std::endl;
    std::cout << "rank : " << rank << ">>>>>>>>>>>>>> Hash Table Size: " << hash_table_size << std::endl;
    std::cout << "rank : " << rank << "result_size * sizeof(Entity): " << result_size * sizeof(Entity) << endl;
    std::cout << "rank : " << rank  << ">>>>>>>>>>>>>> Total Reduce Host: " << totol_reduce_host << std::endl;
#endif

    checkCuda(cudaMalloc((void **) &join_result, result_size * sizeof(Entity)));
    get_join_result_entity_with_rank<<<grid_size, block_size>>>(hash_table, hash_table_size,
                                                      relation, relation_size, join_offset, join_result, result_size, rank);
    checkCuda(cudaDeviceSynchronize());
    checkCuda(cudaFree(join_offset));
#ifdef DEBUG
    debug::debug_counter = debug::debug_counter + 1;
#endif
    *join_result_size = result_size;
    end_time = MPI_Wtime();
    elapsed_time = end_time - start_time;
    *compute_time = elapsed_time;
    return join_result;
}