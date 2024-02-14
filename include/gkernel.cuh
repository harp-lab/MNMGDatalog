#pragma once

#include "utils.cuh"

__global__
void build_hash_table(Entity *hash_table, long int hash_table_row_size,
                      int *relation, long int relation_rows, int relation_columns);

__global__
void copy_t_delta(Entity *t_delta, int *reverse_relation, long int reverse_relation_rows, int relation_columns);

__global__
void initialize_result_t_delta(Entity *result, Entity *t_delta,
                               int *relation, long int relation_rows, int relation_columns);

__global__
void copy_struct(Entity *source, long int source_rows, Entity *destination);

__global__
void negative_fill_struct(Entity *source, long int source_rows);

__global__
void get_reverse_relation(int *relation, long int relation_rows, int relation_columns, Entity *t_delta);

__global__
void get_join_result_size(Entity *hash_table, long int hash_table_row_size,
                          int *t_delta, long int reverse_relation_rows,
                          int *join_result_size);

__global__
void get_join_result(Entity *hash_table, int hash_table_row_size,
                     int *t_delta, int reverse_relation_rows, int *offset, Entity *join_result);

__global__
void get_join_result_size_ar(Entity *hash_table, long int hash_table_row_size,
                             int *t_delta, long int relation_rows,
                             int *join_result_size);

__global__
void get_join_result_ar(Entity *hash_table, int hash_table_row_size,
                        int *t_delta, int relation_rows, int *offset, Entity *join_result);

