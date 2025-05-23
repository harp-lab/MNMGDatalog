/*
 * Method that returns position in the hashtable for a key using Murmur3 hash
 * */


__global__
void build_hash_table(Entity *hash_table, long int hash_table_row_size,
                      int *relation, long int relation_rows, int relation_columns) {
    int index = (blockIdx.x * blockDim.x) + threadIdx.x;
    if (index >= relation_rows) return;

    int stride = blockDim.x * gridDim.x;

    for (int i = index; i < relation_rows; i += stride) {
        int key = relation[(i * relation_columns) + 0];
        int value = relation[(i * relation_columns) + 1];
        int position = get_position(key, hash_table_row_size);
        while (true) {
            int existing_key = atomicCAS(&hash_table[position].key, -1, key);
            if (existing_key == -1) {
                hash_table[position].value = value;
                break;
            }
            position = (position + 1) & (hash_table_row_size - 1);
        }
    }
}

__global__
void copy_t_delta(Entity *t_delta, int *reverse_relation, long int reverse_relation_rows, int relation_columns) {
    int index = (blockIdx.x * blockDim.x) + threadIdx.x;
    if (index >= reverse_relation_rows) return;

    int stride = blockDim.x * gridDim.x;

    for (int i = index; i < reverse_relation_rows; i += stride) {
        t_delta[i].key = reverse_relation[(i * relation_columns) + 0];
        t_delta[i].value = reverse_relation[(i * relation_columns) + 1];
    }
}


__global__
void initialize_result_t_delta(Entity *result, Entity *t_delta,
                               int *relation, long int relation_rows, int relation_columns) {
    int index = (blockIdx.x * blockDim.x) + threadIdx.x;
    if (index >= relation_rows) return;

    int stride = blockDim.x * gridDim.x;

    for (int i = index; i < relation_rows; i += stride) {
        t_delta[i].key = result[i].key = relation[(i * relation_columns) + 0];
        t_delta[i].value = result[i].value = relation[(i * relation_columns) + 1];
    }
}

__global__
void copy_struct(Entity *source, long int source_rows, Entity *destination) {
    int index = (blockIdx.x * blockDim.x) + threadIdx.x;
    if (index >= source_rows) return;

    int stride = blockDim.x * gridDim.x;

    for (int i = index; i < source_rows; i += stride) {
        destination[i].key = source[i].key;
        destination[i].value = source[i].value;
    }
}

__global__
void negative_fill_struct(Entity *source, long int source_rows) {
    int index = (blockIdx.x * blockDim.x) + threadIdx.x;
    if (index >= source_rows) return;

    int stride = blockDim.x * gridDim.x;

    for (int i = index; i < source_rows; i += stride) {
        source[i].key = -1;
        source[i].value = -1;
    }
}

__global__
void get_reverse_relation(int *relation, long int relation_rows, int relation_columns, Entity *t_delta) {
    int index = (blockIdx.x * blockDim.x) + threadIdx.x;
    if (index >= relation_rows) return;

    int stride = blockDim.x * gridDim.x;

    for (long int i = index; i < relation_rows; i += stride) {
        t_delta[i].key = relation[(i * relation_columns) + 0];
        t_delta[i].value = relation[(i * relation_columns) + 1];
    }
}


__global__
void get_join_result_size(Entity *hash_table, long int hash_table_row_size,
                          int *t_delta, long int reverse_relation_rows,
                          int *join_result_size) {
    int index = (blockIdx.x * blockDim.x) + threadIdx.x;
    if (index >= reverse_relation_rows) return;

    int stride = blockDim.x * gridDim.x;

    for (int i = index; i < reverse_relation_rows; i += stride) {
        int key = t_delta[i * 2];
        int current_size = 0;
        int position = get_position(key, hash_table_row_size);
        while (true) {
            if (hash_table[position].key == key) {
                current_size++;
            } else if (hash_table[position].key == -1) {
                break;
            }
            position = (position + 1) & (hash_table_row_size - 1);
        }
        join_result_size[i] = current_size;
    }
}

__global__
void get_join_result(Entity *hash_table, int hash_table_row_size,
                     int *t_delta, int reverse_relation_rows, int *offset, Entity *join_result) {
    int index = (blockIdx.x * blockDim.x) + threadIdx.x;
    if (index >= reverse_relation_rows) return;
    int stride = blockDim.x * gridDim.x;
    for (int i = index; i < reverse_relation_rows; i += stride) {
        int key = t_delta[i * 2];
        int value = t_delta[(i * 2) + 1];
        int start_index = offset[i];
        int position = get_position(key, hash_table_row_size);
        while (true) {
            if (hash_table[position].key == key) {
                join_result[start_index].key = hash_table[position].value;
                join_result[start_index].value = value;
                start_index++;
            } else if (hash_table[position].key == -1) {
                break;
            }
            position = (position + 1) & (hash_table_row_size - 1);
        }
    }
}


__global__
void get_join_result_size_ar(Entity *hash_table, long int hash_table_row_size,
                             int *t_delta, long int relation_rows,
                             int *join_result_size) {
    int index = (blockIdx.x * blockDim.x) + threadIdx.x;
    if (index >= relation_rows) return;

    int stride = blockDim.x * gridDim.x;

    for (int i = index; i < relation_rows; i += stride) {
        int key = t_delta[(i * 2) + 1];
        int current_size = 0;
        int position = get_position(key, hash_table_row_size);
        while (true) {
            if (hash_table[position].key == key) {
                current_size++;
            } else if (hash_table[position].key == -1) {
                break;
            }
            position = (position + 1) & (hash_table_row_size - 1);
        }
        join_result_size[i] = current_size;
    }
}

__global__
void get_join_result_ar(Entity *hash_table, int hash_table_row_size,
                        int *t_delta, int relation_rows, int *offset, Entity *join_result) {
    int index = (blockIdx.x * blockDim.x) + threadIdx.x;
    if (index >= relation_rows) return;
    int stride = blockDim.x * gridDim.x;
    for (int i = index; i < relation_rows; i += stride) {
        int key = t_delta[(i * 2) + 1];
        int value = t_delta[i * 2];
        int start_index = offset[i];
        int position = get_position(key, hash_table_row_size);
        while (true) {
            if (hash_table[position].key == key) {
                join_result[start_index].key = value;
                join_result[start_index].value = hash_table[position].value;
                start_index++;
            } else if (hash_table[position].key == -1) {
                break;
            }
            position = (position + 1) & (hash_table_row_size - 1);
        }
    }
}

/* Semi naive kernels */

__global__ void warm_up_kernel() {}

__host__ __device__ int get_rank(int key, int total_rank) {
    key ^= key >> 16;
    key *= 0x85ebca6b;
    key ^= key >> 13;
    key *= 0xc2b2ae35;
    key ^= key >> 16;
    return key % total_rank;
    // adding bucket layer
//    int total_buckets = 1025;
//    int bucket_id = key % total_buckets;
//    return bucket_id % total_rank;
}

__global__ void get_send_count(Entity *local_data, int local_data_row_count,
                               int *send_count, int total_rank) {
    int index = (blockIdx.x * blockDim.x) + threadIdx.x;
    if (index >= local_data_row_count) return;

    int stride = blockDim.x * gridDim.x;

    for (int i = index; i < local_data_row_count; i += stride) {
        int key = local_data[i].key;
        int destination_rank = get_rank(key, total_rank);
        atomicAdd(&send_count[destination_rank], 1);
    }
}

__global__ void get_rank_data(Entity *local_data, int local_data_row_count,
                              int *send_count_offset, int total_rank, Entity *rank_data) {
    int index = (blockIdx.x * blockDim.x) + threadIdx.x;
    if (index >= local_data_row_count) return;

    int stride = blockDim.x * gridDim.x;

    for (int i = index; i < local_data_row_count; i += stride) {
        int key = local_data[i].key;
        int value = local_data[i].value;
        int destination_rank = get_rank(key, total_rank);
        int current_position = atomicAdd(&send_count_offset[destination_rank], 1);
        rank_data[current_position].key = key;
        rank_data[current_position].value = value;
    }
}


__global__ void create_entity_ar(Entity *data, int data_rows, int *input_data) {
    int index = (blockIdx.x * blockDim.x) + threadIdx.x;
    if (index >= data_rows) return;

    int stride = blockDim.x * gridDim.x;
    for (int i = index; i < data_rows; i += stride) {
        data[i].key = input_data[i * 2];
        data[i].value = input_data[(i * 2) + 1];
    }
}

__global__ void create_entity_ar_reverse(Entity *data, int data_rows, int *input_data) {
    int index = (blockIdx.x * blockDim.x) + threadIdx.x;
    if (index >= data_rows) return;

    int stride = blockDim.x * gridDim.x;
    for (int i = index; i < data_rows; i += stride) {
        data[i].value = input_data[i * 2];
        data[i].key = input_data[(i * 2) + 1];
    }
}


__global__ void reverse_t_full(int *output_data, int data_rows, Entity *input_data) {
    int index = (blockIdx.x * blockDim.x) + threadIdx.x;
    if (index >= data_rows) return;

    int stride = blockDim.x * gridDim.x;
    for (int i = index; i < data_rows; i += stride) {
        output_data[i * 2] = input_data[i].value;
        output_data[(i * 2) + 1] = input_data[i].key;
    }
}

__global__ void get_int_ar_from_entity_ar(Entity *input_data, int data_rows, int *output_data) {
    int index = (blockIdx.x * blockDim.x) + threadIdx.x;
    if (index >= data_rows) return;

    int stride = blockDim.x * gridDim.x;
    for (int i = index; i < data_rows; i += stride) {
        output_data[i * 2] = input_data[i].key;
        output_data[(i * 2) + 1] = input_data[i].value;
    }
}

__global__ void get_reverse_int_ar_from_entity_ar(Entity *input_data, int data_rows, int *output_data) {
    int index = (blockIdx.x * blockDim.x) + threadIdx.x;
    if (index >= data_rows) return;

    int stride = blockDim.x * gridDim.x;
    for (int i = index; i < data_rows; i += stride) {
        output_data[i * 2] = input_data[i].value;
        output_data[(i * 2) + 1] = input_data[i].key;
    }
}

__global__ void get_valueless_entity_ar_from_int_ar(int *input_data, int data_rows, Entity *output_data) {
    int index = (blockIdx.x * blockDim.x) + threadIdx.x;
    if (index >= data_rows) return;

    int stride = blockDim.x * gridDim.x;
    for (int i = index; i < data_rows; i += stride) {
        output_data[i].key = input_data[i];
        output_data[i].value = 0;
    }
}


__global__ void reverse_entity_ar(Entity *input_data, int data_rows, Entity *output_data) {
    int index = (blockIdx.x * blockDim.x) + threadIdx.x;
    if (index >= data_rows) return;

    int stride = blockDim.x * gridDim.x;
    for (int i = index; i < data_rows; i += stride) {
        int key = input_data[i].key;
        int value = input_data[i].value;
        output_data[i].key = value;
        output_data[i].value = key;
    }
}

__global__ void get_reverse_ar(int *input_data, int data_rows, int *reverse_data) {
    int index = (blockIdx.x * blockDim.x) + threadIdx.x;
    if (index >= data_rows) return;

    int stride = blockDim.x * gridDim.x;
    for (int i = index; i < data_rows; i += stride) {
        reverse_data[i * 2] = input_data[(i * 2) + 1];
        reverse_data[(i * 2) + 1] = input_data[i * 2];
    }
}

__global__ void create_entity_ar_with_offset(int *input_data, int data_rows, Entity *output_data, int offset) {
    int index = (blockIdx.x * blockDim.x) + threadIdx.x;
    if (index >= data_rows) return;

    int stride = blockDim.x * gridDim.x;
    for (int i = index; i < data_rows; i += stride) {
        output_data[i + offset].key = input_data[i * 2];
        output_data[i + offset].value = input_data[(i * 2) + 1];
    }
}

__global__ void concat_entity_ar(Entity *input_data_1, int input_data_1_size,
                                 Entity *input_data_2, int input_data_2_size,
                                 Entity *output_data, int output_data_size) {
    int index = (blockIdx.x * blockDim.x) + threadIdx.x;
    if (index >= output_data_size) return;

    int stride = blockDim.x * gridDim.x;
    // Copy input_data_1 to output_data
    for (int i = index; i < input_data_1_size; i += stride) {
        output_data[i] = input_data_1[i];
    }
    // Copy input_data_2 to output_data (adjusted index)
    for (int i = index; i < input_data_2_size; i += stride) {
        output_data[i + input_data_1_size] = input_data_2[i];
    }
}

__global__ void same_key_value_entity_ar(Entity *input_data, long data_rows, Entity *output_data) {
    int index = (blockIdx.x * blockDim.x) + threadIdx.x;
    if (index >= data_rows) return;

    int stride = blockDim.x * gridDim.x;
    for (int i = index; i < data_rows; i += stride) {
        int key = input_data[i].key;
        output_data[i].key = key;
        output_data[i].value = key;
    }
}

__global__ void duplicate_entity_with_reverse(Entity *input_data, long data_rows, Entity *output_data) {
    int index = (blockIdx.x * blockDim.x) + threadIdx.x;
    if (index >= data_rows) return;

    int stride = blockDim.x * gridDim.x;
    for (int i = index; i < data_rows; i += stride) {
        int key = input_data[i].key;
        int value = input_data[i].value;
        output_data[i * 2].key = key;
        output_data[i * 2].value = value;
        output_data[(i * 2) + 1].key = value;
        output_data[(i * 2) + 1].value = key;
    }
}

__global__ void replace_key_by_value(Entity *input_data, int data_rows, Entity *output_data) {
    int index = (blockIdx.x * blockDim.x) + threadIdx.x;
    if (index >= data_rows) return;

    int stride = blockDim.x * gridDim.x;
    for (int i = index; i < data_rows; i += stride) {
        int value = input_data[i].value;
        output_data[i].key = value;
        output_data[i].value = 0;
    }
}
