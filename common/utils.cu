#include <string>
#include <chrono>
#include <stdlib.h>

using namespace std;
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
    int output_size;
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

// Predicate to check if key and value are equal
struct is_key_equal_value {
    __host__ __device__
    bool operator()(const Entity& e) {
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

__device__ int get_position(int key, int hash_table_row_size) {
    key ^= key >> 16;
    key *= 0x85ebca6b;
    key ^= key >> 13;
    key *= 0xc2b2ae35;
    key ^= key >> 16;
    return key & (hash_table_row_size - 1);
}

void show_time_spent(string message,
                     chrono::high_resolution_clock::time_point time_point_begin,
                     chrono::high_resolution_clock::time_point time_point_end) {
    chrono::duration<double> time_span = time_point_end - time_point_begin;
    cout << message << ": " << time_span.count() << " seconds" << endl;
}

double get_time_spent(string message,
                      chrono::high_resolution_clock::time_point time_point_begin,
                      chrono::high_resolution_clock::time_point time_point_end) {
    chrono::duration<double> time_span = time_point_end - time_point_begin;
    if (message != "")
        cout << message << ": " << time_span.count() << " seconds" << endl;
    return time_span.count();
}

void show_relation(int *data, int total_rows,
                   int total_columns, const char *relation_name,
                   int visible_rows, int skip_zero) {
    int count = 0;
    cout << "Relation name: " << relation_name << endl;
    cout << "===================================" << endl;
    for (int i = 0; i < total_rows; i++) {
        int skip = 0;
        for (int j = 0; j < total_columns; j++) {
            if ((skip_zero == 1) && (data[(i * total_columns) + j] == 0)) {
                skip = 1;
                continue;
            }
            cout << data[(i * total_columns) + j] << " ";
        }
        if (skip == 1)
            continue;
        cout << endl;
        count++;
        if (count == visible_rows) {
            cout << "Result cropped at row " << count << "\n" << endl;
            return;
        }

    }
    cout << "Result counts " << count << "\n" << endl;
    cout << "" << endl;
}

int *get_relation_from_file(const char *file_path, int total_rows, int total_columns, char separator) {
    int *data = (int *) malloc(total_rows * total_columns * sizeof(int));
    FILE *data_file = fopen(file_path, "r");
    for (int i = 0; i < total_rows; i++) {
        for (int j = 0; j < total_columns; j++) {
            if (j != (total_columns - 1)) {
                fscanf(data_file, "%d%c", &data[(i * total_columns) + j], &separator);
            } else {
                fscanf(data_file, "%d", &data[(i * total_columns) + j]);
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
                fscanf(data_file, "%d%c", &data[(i * total_columns) + j], &separator);
            } else {
                fscanf(data_file, "%d", &data[(i * total_columns) + j]);
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
    cout << "Hashtable name: " << hash_table_name << endl;
    cout << "===================================" << endl;
    for (int i = 0; i < hash_table_row_size; i++) {
        if (hash_table[i].key != -1) {
            cout << hash_table[i].key << " " << hash_table[i].value << endl;
            count++;
        }
    }
    cout << "Row counts " << count << "\n" << endl;
    cout << "" << endl;
}

void show_entity_array(Entity *data, int data_rows, const char *array_name) {
    long int count = 0;
    cout << "Entity name: " << array_name << endl;
    cout << "===================================" << endl;
    for (int i = 0; i < data_rows; i++) {
        if (data[i].key != -1) {
            cout << data[i].key << " " << data[i].value << endl;
            count++;
        }
    }
    cout << "Row counts " << count << "\n" << endl;
    cout << "" << endl;
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

void show_variable(int *host_data, int data_size, int group, int rank, string message) {
    cout << "Rank " << rank << ": " << message << " ----------------" << endl;
    for (int i = 0; i < data_size / group; i++) {
        for (int j = 0; j < group; j++) {
            cout << host_data[(i * group) + j] << " ";
        }
        if (data_size <= 20) {
            cout << ", ";
        } else {
            cout << endl;
        }
    }
    cout << endl;
}

void show_variable_entity(Entity *host_data, int data_size, int rank, string message) {
    cout << "Rank " << rank << ", size " << data_size << " : " << message << " ----------------" << endl;
    for (int i = 0; i < data_size; i++) {
        cout << host_data[i].key << " " << host_data[i].value;
        if (data_size <= 20) {
            cout << ", ";
        } else {
            cout << endl;
        }
    }
    cout << endl;
}

void show_device_variable(int *device_data, int device_data_size, int group, int rank, string message, int size_only) {
    int *host_data = (int *) malloc(device_data_size * sizeof(int));
    cudaMemcpy(host_data, device_data, device_data_size * sizeof(int), cudaMemcpyDeviceToHost);
    cout << "Rank " << rank << ", size " << device_data_size << " : " << message << " ----------------" << endl;
    if(size_only != 1){
        for (int i = 0; i < device_data_size / group; i++) {
            for (int j = 0; j < group; j++) {
                cout << host_data[(i * group) + j] << " ";
            }
            if (device_data_size <= 20) {
                cout << ", ";
            } else {
                cout << endl;
            }
        }
        cout << endl;
    }
    free(host_data);
}

// show_device_entity_variable(hash_table, hash_table_rows, rank, "hash_table");
void show_device_entity_variable(Entity *device_data, int device_data_size, int rank, string message, int size_only) {
    Entity *host_data = (Entity *) malloc(device_data_size * sizeof(Entity));
    cudaMemcpy(host_data, device_data, device_data_size * sizeof(Entity), cudaMemcpyDeviceToHost);
    cout << "Rank " << rank << ", size " << device_data_size << " : " << message << " ----------------" << endl;
    if(size_only != 1) {
        for (int i = 0; i < device_data_size; i++) {
            cout << host_data[i].key << " " << host_data[i].value << endl;
        }
        cout << endl;
    }
    free(host_data);
}