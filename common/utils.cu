#include <string>
#include <chrono>
#include <stdlib.h>

//using namespace std;


struct Entity {
    int key;
    int value;
};

struct Output {
    int block_size;
    int grid_size;
    int total_rank;
    int input_rows;
    int hashtable_rows;
    int iterations;
    long long output_size;
    long long output_size_secondary;
    double load_factor;
    double reverse_time;
    int hashtable_build_rate;
    const char *dataset_name;
    const char *output_file_name;
    double total_time;
    double initialization_time;
    double fileio_time;
    double hashtable_build_time;
    double join_time;
    double buffer_preparation_time;
    double communication_time;
    double merge_time;
    double deduplication_time;
    double finalization_time;
};

struct KernelTimer {
    cudaEvent_t start;
    cudaEvent_t stop;

    KernelTimer() {
        cudaEventCreate(&start);
        cudaEventCreate(&stop);
    }

    ~KernelTimer() {
        cudaEventDestroy(start);
        cudaEventDestroy(stop);
    }

    void start_timer() {
        cudaEventRecord(start, 0);
    }

    void stop_timer() {
        cudaEventRecord(stop, 0);
    }

    float get_spent_time() {
        float elapsed;
        cudaEventSynchronize(stop);
        cudaEventElapsedTime(&elapsed, start, stop);
        elapsed /= 1000.0;
        return elapsed;
    }
};

struct is_equal {
    __host__ __device__
    bool operator()(const Entity &lhs, const Entity &rhs) {
        if ((lhs.key == rhs.key) && (lhs.value == rhs.value))
            return true;
        return false;
    }
};

struct is_equal_key {
    __host__ __device__
    bool operator()(const Entity &lhs, const Entity &rhs) {
        if (lhs.key == rhs.key)
            return true;
        return false;
    }
};

// Predicate to check if key and value are equal
struct is_key_equal_value {
    __host__ __device__
    bool operator()(const Entity &e) {
        return e.key == e.value;
    }
};


struct cmp {
    __host__ __device__
    bool operator()(const Entity &lhs, const Entity &rhs) {
        if (lhs.key < rhs.key)
            return true;
        else if (lhs.key > rhs.key)
            return false;
        else {
            if (lhs.value < rhs.value)
                return true;
            else if (lhs.value > rhs.value)
                return false;
            return true;
        }
    }
};

struct set_cmp {
    __host__ __device__
    bool operator()(const Entity &lhs, const Entity &rhs) {
        if (lhs.key == rhs.key) {
            // If keys are equal, compare values
            return lhs.value < rhs.value;
        }
        return lhs.key < rhs.key;
    }
};

struct minimum_by_value {
    __host__ __device__
    Entity operator()(const Entity &a, const Entity &b) const {
        return (a.value < b.value) ? a : b;
    }
};

struct minimum_value {
    __host__ __device__
    int operator()(const int a, const int b) const {
        return (a < b) ? a : b;
    }
};

// Define a unary operation that extracts the key
struct get_key {
    __host__ __device__
    int operator()(const Entity &e) const {
        return e.key;
    }
};


__device__ int get_position(int key, int hash_table_row_size) {
    key ^= key >> 16;
    key *= 0x85ebca6b;
    key ^= key >> 13;
    key *= 0xc2b2ae35;
    key ^= key >> 16;
    return key & (hash_table_row_size - 1);
}

void show_time_spent(std::string message,
                     std::chrono::high_resolution_clock::time_point time_point_begin,
                     std::chrono::high_resolution_clock::time_point time_point_end) {
    std::chrono::duration<double> time_span = time_point_end - time_point_begin;
    std::cout << message << ": " << time_span.count() << " seconds" << std::endl;
}

double get_time_spent(std::string message,
                      std::chrono::high_resolution_clock::time_point time_point_begin,
                      std::chrono::high_resolution_clock::time_point time_point_end) {
    std::chrono::duration<double> time_span = time_point_end - time_point_begin;
    if (message != "")
        std::cout << message << ": " << time_span.count() << " seconds" << std::endl;
    return time_span.count();
}

void show_relation(int *data, int total_rows,
                   int total_columns, const char *relation_name,
                   int visible_rows, int skip_zero) {
    int count = 0;
    std::cout << "Relation name: " << relation_name << std::endl;
    std::cout << "===================================" << std::endl;
    for (int i = 0; i < total_rows; i++) {
        int skip = 0;
        for (int j = 0; j < total_columns; j++) {
            if ((skip_zero == 1) && (data[(i * total_columns) + j] == 0)) {
                skip = 1;
                continue;
            }
            std::cout << data[(i * total_columns) + j] << " ";
        }
        if (skip == 1)
            continue;
        std::cout << std::endl;
        count++;
        if (count == visible_rows) {
            std::cout << "Result cropped at row " << count << "\n" << std::endl;
            return;
        }

    }
    std::cout << "Result counts " << count << "\n" << std::endl;
    std::cout << "" << std::endl;
}

int *get_relation_from_file(const char *file_path, int total_rows, int total_columns, char separator) {
    int *data = (int *) malloc(total_rows * total_columns * sizeof(int));
    FILE *data_file = fopen(file_path, "r");
    for (int i = 0; i < total_rows; i++) {
        for (int j = 0; j < total_columns; j++) {
            if (j != (total_columns - 1)) {
                int tmp = fscanf(data_file, "%d%c", &data[(i * total_columns) + j], &separator);
            } else {
                int tmp = fscanf(data_file, "%d", &data[(i * total_columns) + j]);
            }
        }
    }
    return data;
}

void get_relation_from_file_gpu(int *data, const char *file_path, int total_rows, int total_columns, char separator) {
    FILE *data_file = fopen(file_path, "r");
    for (int i = 0; i < total_rows; i++) {
        for (int j = 0; j < total_columns; j++) {
            if (j != (total_columns - 1)) {
                int tmp = fscanf(data_file, "%d%c", &data[(i * total_columns) + j], &separator);
            } else {
                int tmp = fscanf(data_file, "%d", &data[(i * total_columns) + j]);
            }
        }
    }
}


void get_random_relation(int *data, int total_rows, int total_columns) {
    for (int i = 0; i < total_rows; i++) {
        for (int j = 0; j < total_columns; j++) {
            data[(i * total_columns) + j] = (rand() % (32767 - 0 + 1)) + 0;
        }
    }
}

void get_string_relation(int *data, int total_rows, int total_columns) {
    int x = 1, y = 2;
    for (int i = 0; i < total_rows; i++) {
        data[(i * total_columns) + 0] = x++;
        data[(i * total_columns) + 1] = y++;
    }
}

void get_reverse_relation_gpu(int *reverse_data, int *data, int total_rows, int total_columns) {
    for (int i = 0; i < total_rows; i++) {
        int pos = total_columns - 1;
        for (int j = 0; j < total_columns; j++) {
            reverse_data[(i * total_columns) + j] = data[(i * total_columns) + pos];
            pos--;
        }
    }
}


void show_hash_table(Entity *hash_table, long int hash_table_row_size, const char *hash_table_name) {
    int count = 0;
    std::cout << "Hashtable name: " << hash_table_name << std::endl;
    std::cout << "===================================" << std::endl;
    for (int i = 0; i < hash_table_row_size; i++) {
        if (hash_table[i].key != -1) {
            std::cout << hash_table[i].key << " " << hash_table[i].value << std::endl;
            count++;
        }
    }
    std::cout << "Row counts " << count << "\n" << std::endl;
    std::cout << "" << std::endl;
}

void show_entity_array(Entity *data, int data_rows, const char *array_name) {
    long int count = 0;
    std::cout << "Entity name: " << array_name << std::endl;
    std::cout << "===================================" << std::endl;
    for (int i = 0; i < data_rows; i++) {
        if (data[i].key != -1) {
            std::cout << data[i].key << " " << data[i].value << std::endl;
            count++;
        }
    }
    std::cout << "Row counts " << count << "\n" << std::endl;
    std::cout << "" << std::endl;
}

long int get_row_size(const char *data_path) {
    long int row_size = 0;
    int base = 1;
    for (int i = strlen(data_path) - 1; i >= 0; i--) {
        if (isdigit(data_path[i])) {
            int digit = (int) data_path[i] - '0';
            row_size += base * digit;
            base *= 10;
        }
    }
    return row_size;
}

void update_reverse_relation(Entity *data, int data_rows, int *reverse_relation) {
    for (int i = 0; i < data_rows; i++) {
        reverse_relation[i * 2] = data[i].key;
        reverse_relation[(i * 2) + 1] = data[i].value;
    }
}

void show_variable(int *host_data, int data_size, int group, int rank, std::string message) {
    std::cout << "Rank " << rank << ": " << message << " ----------------" << std::endl;
    for (int i = 0; i < data_size / group; i++) {
        for (int j = 0; j < group; j++) {
            std::cout << host_data[(i * group) + j] << " ";
        }
        if (data_size <= 20) {
            std::cout << ", ";
        } else {
            std::cout << std::endl;
        }
    }
    std::cout << std::endl;
}

void show_variable_entity(Entity *host_data, int data_size, int rank, std::string message) {
    std::cout << "Rank " << rank << ", size " << data_size << " : " << message << " ----------------" << std::endl;
    for (int i = 0; i < data_size; i++) {
        std::cout << host_data[i].key << " " << host_data[i].value;
        if (data_size <= 20) {
            std::cout << ", ";
        } else {
            std::cout << std::endl;
        }
    }
    std::cout << std::endl;
}

void show_device_variable(int *device_data, int device_data_size, int group, int rank, std::string message, int size_only) {
    int *host_data = (int *) malloc(device_data_size * sizeof(int));
    cudaMemcpy(host_data, device_data, device_data_size * sizeof(int), cudaMemcpyDeviceToHost);
    std::cout << "Rank " << rank << ", size " << device_data_size << " : " << message << " ----------------" << std::endl;
    if (size_only != 1) {
        for (int i = 0; i < device_data_size / group; i++) {
            for (int j = 0; j < group; j++) {
                std::cout << host_data[(i * group) + j] << " ";
            }
            if (device_data_size <= 20) {
                std::cout << ", ";
            } else {
                std::cout << std::endl;
            }
        }
        std::cout << std::endl;
    }
    free(host_data);
}

void show_host_vector(const thrust::host_vector<int> &host_vector_data,
                      int group, int rank, const std::string &message, int size_only) {
    std::cout << "Rank " << rank << ", size " << host_vector_data.size()
              << " : " << message << " ----------------" << std::endl;

    if (size_only != 1) {
        for (size_t i = 0; i < host_vector_data.size() / group; i++) {
            for (int j = 0; j < group; j++) {
                std::cout << host_vector_data[(i * group) + j] << " ";
            }
            if (host_vector_data.size() < group) {
                std::cout << ", ";
            } else {
                std::cout << std::endl;
            }
        }
        std::cout << std::endl;
    }
}

void show_host_variable(int *host_data, int data_size, int group, int rank, std::string message, int size_only) {
    std::cout << "Rank " << rank << ", size " << data_size << " : " << message << " ----------------" << std::endl;
    if (size_only != 1) {
        for (int i = 0; i < data_size / group; i++) {
            for (int j = 0; j < group; j++) {
                std::cout << host_data[(i * group) + j] << " ";
            }
            if (data_size <= 20) {
                std::cout << ", ";
            } else {
                std::cout << std::endl;
            }
        }
        std::cout << std::endl;
    }
}

// show_device_entity_variable(hash_table, hash_table_rows, rank, "hash_table");
void show_device_entity_variable(Entity *device_data, int device_data_size, int rank, std::string message, int size_only) {
    Entity *host_data = (Entity *) malloc(device_data_size * sizeof(Entity));
    cudaMemcpy(host_data, device_data, device_data_size * sizeof(Entity), cudaMemcpyDeviceToHost);
    std::cout << "Rank " << rank << ", size " << device_data_size << " : " << message << " ----------------" << std::endl;
    if (size_only != 1) {
        for (int i = 0; i < device_data_size; i++) {
            std::cout << host_data[i].key << " " << host_data[i].value << std::endl;
        }
        std::cout << std::endl;
    }
    free(host_data);
}

// Function to print variable details and data
void show_variable_generic(void *data, std::string var_name, size_t data_size, std::string data_type,
                           std::string execution_policy, int rank, int iteration,
                           std::string message, int size_only) {
    std::cout << "Rank: " << rank << ", iteration: " << iteration << ", " << var_name << "(" << execution_policy << ")"
         << " size: " << data_size << " : " << message << " ----------------" << std::endl;
    if (size_only == 1) return;
    if (execution_policy == "device") {
        if (data_type == "Entity") {
            Entity *host_data = (Entity *) malloc(data_size * sizeof(Entity));
            cudaMemcpy(host_data, data, data_size * sizeof(Entity), cudaMemcpyDeviceToHost);
            for (int i = 0; i < data_size; i++) {
                std::cout << host_data[i].key << " " << host_data[i].value << std::endl;
            }
            std::cout << std::endl;
            free(host_data);
        } else {
            int *host_data = (int *) malloc(data_size * sizeof(int));
            cudaMemcpy(host_data, data, data_size * sizeof(int), cudaMemcpyDeviceToHost);
            for (int i = 0; i < data_size; i++) {
                std::cout << host_data[i] << std::endl;
            }
            std::cout << std::endl;
            free(host_data);
        }
    } else {
        if (data_type == "Entity") {
            Entity *entity_data = static_cast<Entity *>(data);
            for (int i = 0; i < data_size; i++) {
                std::cout << entity_data[i].key << " " << entity_data[i].value << std::endl;
            }
        } else {
            int *int_data = static_cast<int *>(data);
            for (int i = 0; i < data_size; i++) {
                std::cout << int_data[i] << std::endl;
            }
            std::cout << std::endl;
        }
    }
}

std::tuple<double, double, double> calculate_load_metrics(int array_size, int total_rank) {
    // Function to Calculate Load Imbalance Ratio (LIR) and Coefficient of Variation (CV) based on array size
    // LIR = (max_size - min_size) / mean_size,
    // CV = std dev / mean_size
    // Max/min ratio = max_size / min_size
    // LIR near 0: Indicates good load balance, as the difference between max and min loads is minimal.
    // CV: The smaller the CV, the better the load balance. Typically, a CV below 0.1 (10%) suggests reasonable balance, while a CV close to 0 means near-perfect balance.
    // Max_min ratio should be near 1
    int total_size = 0;
    int min_size = 0;
    int max_size = 0;

    // Calculate the total, min, and max array size across all ranks
    MPI_Reduce(&array_size, &total_size, 1, MPI_INT, MPI_SUM, 0, MPI_COMM_WORLD);
    MPI_Reduce(&array_size, &min_size, 1, MPI_INT, MPI_MIN, 0, MPI_COMM_WORLD);
    MPI_Reduce(&array_size, &max_size, 1, MPI_INT, MPI_MAX, 0, MPI_COMM_WORLD);

    double lir = 0.0;
    double cv = 0.0;
    double max_min_ratio = 0.0;

    if (total_rank > 0) {
        // Calculate mean size
        double mean_size = static_cast<double>(total_size) / total_rank;

        // Calculate Load Imbalance Ratio (LIR)
        lir = static_cast<double>(max_size - min_size) / mean_size;

        // Calculate local squared difference from the mean
        double local_squared_diff = (array_size - mean_size) * (array_size - mean_size);

        // Calculate the total squared difference across all ranks
        double total_squared_diff = 0.0;
        MPI_Reduce(&local_squared_diff, &total_squared_diff, 1, MPI_DOUBLE, MPI_SUM, 0, MPI_COMM_WORLD);

        // Calculate standard deviation and Coefficient of Variation (CV)
        double std_dev = std::sqrt(total_squared_diff / total_rank);
        cv = std_dev / mean_size;

        // Calculate Max/Min Ratio, ensuring no division by zero
        if (min_size > 0) {
            max_min_ratio = static_cast<double>(max_size) / min_size;
        } else {
            max_min_ratio = std::numeric_limits<double>::infinity(); // Handle division by zero
        }
    }

    return std::make_tuple(lir, cv, max_min_ratio);

}


// show_variable_generic(hash_table, "hash_table", hash_table_rows, "Entity", "device", rank, iterations, "", 0);
// show_device_entity_variable(local_data, local_data_size, rank, "local_data", 1);
// show_device_variable(local_data_temp_device, local_count, 2, rank, "local data temp device", 0);


