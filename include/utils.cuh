
#pragma once

#include <string>
#include <chrono>

struct Entity {
    int key;
    int value;
};

struct Output {
    int block_size;
    int grid_size;
    long int input_rows;
    long int hashtable_rows;
    double load_factor;
    double initialization_time;
    double memory_clear_time;
    double read_time;
    double reverse_time;
    double hashtable_build_time;
    long int hashtable_build_rate;
    double join_time;
    double projection_time;
    double deduplication_time;
    double union_time;
    double total_time;
    const char *dataset_name;
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

__device__ int get_position(int key, int hash_table_row_size);

void show_time_spent(std::string message,
                     std::chrono::high_resolution_clock::time_point time_point_begin,
                     std::chrono::high_resolution_clock::time_point time_point_end);


double get_time_spent(std::string message,
                      std::chrono::high_resolution_clock::time_point time_point_begin,
                      std::chrono::high_resolution_clock::time_point time_point_end);

void show_relation(int *data, int total_rows,
                   int total_columns, const char *relation_name,
                   int visible_rows, int skip_zero);


int *get_relation_from_file(const char *file_path, int total_rows, int total_columns, char separator);

void get_relation_from_file_gpu(int *data, const char *file_path, int total_rows, int total_columns, char separator);

void get_random_relation(int *data, int total_rows, int total_columns);

void get_string_relation(int *data, int total_rows, int total_columns);

void get_reverse_relation_gpu(int *reverse_data, int *data, int total_rows, int total_columns);

void show_hash_table(Entity *hash_table, long int hash_table_row_size, const char *hash_table_name);

void show_entity_array(Entity *data, int data_rows, const char *array_name);

long int get_row_size(const char *data_path);

void update_reverse_relation(Entity *data, int data_rows, int *reverse_relation);

