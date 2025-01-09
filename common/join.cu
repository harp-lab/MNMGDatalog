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
    double start_time, end_time, elapsed_time;
    start_time = MPI_Wtime();
    Entity *join_result = nullptr;
    if (hash_table_size == 0) {
        *join_result_size = 0;
        end_time = MPI_Wtime();
        elapsed_time = end_time - start_time;
        *compute_time = elapsed_time;
        return join_result;
    }
    int result_size;
    int *join_offset;
    checkCuda(cudaMalloc((void **) &join_offset, relation_size * sizeof(int)));
    checkCuda(cudaMemset(join_offset, 0, relation_size * sizeof(int)));

    get_join_result_size_entity<<<grid_size, block_size>>>(hash_table, hash_table_size,
                                                           relation, relation_size, join_offset);
    checkCuda(cudaDeviceSynchronize());
    result_size = thrust::reduce(thrust::device, join_offset, join_offset + relation_size, 0, thrust::plus<int>());
//    int step = 90'000'000;
//    for (int i = 0; i < relation_size; i += step) {
//        int end = i + step;
//        if (end > relation_size) {
//            end = relation_size;
//        }
//        thrust::exclusive_scan(thrust::device, join_offset + i, join_offset + end, join_offset + i);
//        checkCuda(cudaDeviceSynchronize());
//    }
    thrust::exclusive_scan(thrust::device, join_offset, join_offset + relation_size, join_offset);
#ifdef DEBUG
    cout << "result_size * sizeof(Entity): " << result_size * sizeof(Entity) << endl;
#endif
//    checkCuda(cudaDeviceSynchronize());
    checkCuda(cudaMalloc((void **) &join_result, result_size * sizeof(Entity)));
    get_join_result_entity<<<grid_size, block_size>>>(hash_table, hash_table_size,
                                                      relation, relation_size, join_offset, join_result);
//    checkCuda(cudaDeviceSynchronize());
    cudaFree(join_offset);
    *join_result_size = result_size;
    end_time = MPI_Wtime();
    elapsed_time = end_time - start_time;
    *compute_time = elapsed_time;
    return join_result;
}