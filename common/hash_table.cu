__global__
void build_hash_table_entity(Entity *hash_table, long int hash_table_size,
                             Entity *relation, long int relation_size) {
    int index = (blockIdx.x * blockDim.x) + threadIdx.x;
    if (index >= relation_size) return;

    int stride = blockDim.x * gridDim.x;

    for (int i = index; i < relation_size; i += stride) {
        int key = relation[i].key;
        int value = relation[i].value;
        int position = get_position(key, hash_table_size);
        while (true) {
            int existing_key = atomicCAS(&hash_table[position].key, -1, key);
            if (existing_key == -1) {
                hash_table[position].value = value;
                break;
            }
            position = (position + 1) & (hash_table_size - 1);
        }
    }
}

Entity *get_hash_table(int grid_size, int block_size, Entity *edge, int edge_size,
                       int *hash_table_size, double *compute_time) {
    double start_time, end_time, elapsed_time;
    start_time = MPI_Wtime();
    Entity *hash_table = nullptr;

    if (edge_size == 0) {
        end_time = MPI_Wtime();
        elapsed_time = end_time - start_time;
        *compute_time = elapsed_time;
        return hash_table;
    }

    double load_factor = 0.6;
    int hash_table_rows = (int) std::ceil(edge_size / load_factor);
    hash_table_rows = 1 << (int) ceil(log2(hash_table_rows));
#ifdef DEBUG
    cout << "hash_table_rows * sizeof(Entity): " << hash_table_rows * sizeof(Entity) << endl;
#endif
    checkCuda(cudaMalloc((void **) &hash_table, hash_table_rows * sizeof(Entity)));
    Entity negative_entity;
    negative_entity.key = -1;
    negative_entity.value = -1;
    thrust::fill(thrust::device, hash_table, hash_table + hash_table_rows, negative_entity);
    build_hash_table_entity<<<grid_size, block_size>>>(hash_table, hash_table_rows, edge,
                                                       edge_size);
    *hash_table_size = hash_table_rows;
    end_time = MPI_Wtime();
    elapsed_time = end_time - start_time;
    *compute_time = elapsed_time;
    return hash_table;
}