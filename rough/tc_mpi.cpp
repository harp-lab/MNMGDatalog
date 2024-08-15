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
#include <locale.h>

using namespace std;


#define BLOCK_START(process_id, total_process, n) ((process_id)*(n)/(total_process))
#define BLOCK_SIZE(process_id, total_process, n) \
    (BLOCK_START(process_id + 1, total_process, n) - BLOCK_START(process_id, total_process, n))

pair<int *, long int> get_split_relation(int rank, int *local_data, long int local_count,
                                         int total_columns, int nprocs) {
    int i, j;
    // Array of vectors where we need to push to integers to proper rank based on hash
    vector<int> rank_data[nprocs];
    // Count the number of data to be sent to destination processor
    int *send_count = (int *) calloc(nprocs, sizeof(int));
    int *receive_count = (int *) calloc(nprocs, sizeof(int));

    int *send_displacements = (int *) calloc(nprocs, sizeof(int));
    for (i = 0; i < local_count; i += total_columns) {
        int destination_rank = local_data[i] % nprocs;
        send_count[destination_rank] += total_columns;
        rank_data[destination_rank].push_back(local_data[i]);       // key
        rank_data[destination_rank].push_back(local_data[i + 1]);   // value
    }

    // Calculate the displacements for each process for current process
    long int total_send = send_count[0];
    for (i = 1; i < nprocs; i++) {
        send_displacements[i] = send_displacements[i - 1] + send_count[i - 1];
        total_send += send_count[i];
    }

    // Create the send data buffer for each process from the array of vectors
    int *send_data = (int *) calloc(total_send, sizeof(int));
    for (i = 0; i < nprocs; i++) {
        int pos = 0;
        for (j = send_displacements[i]; j < send_displacements[i] + rank_data[i].size(); j++) {
            send_data[j] = rank_data[i][pos++];
        }
    }

    // Send total number of items for each process from current process
    // Send 1 integer to each process from send buffer
    MPI_Alltoall(send_count, 1, MPI_INT, receive_count, 1, MPI_INT, MPI_COMM_WORLD);

    // Calculate the displacements for receive buffer
    int *receive_displacements = (int *) calloc(nprocs, sizeof(int));
    long int total_receive = receive_count[0];
    for (i = 1; i < nprocs; i++) {
        receive_displacements[i] = receive_displacements[i - 1] + receive_count[i - 1];
        total_receive += receive_count[i];
    }

    // Set the receive data buffer for each processor
    int *receive_data = (int *) calloc(total_receive, sizeof(int));
    MPI_Alltoallv(send_data, send_count, send_displacements, MPI_INT,
                  receive_data, receive_count, receive_displacements, MPI_INT,
                  MPI_COMM_WORLD);
    set<pair<int, int>> unique_rows;
    for (i = 0; i < total_receive; i += total_columns) {
        unique_rows.insert(make_pair(receive_data[i], receive_data[i + 1]));
    }

    long int total_unique_receive = unique_rows.size() * total_columns;
    int *unique_receive_data = (int *) calloc(total_unique_receive, sizeof(int));
    long int count = 0;
    for (auto p: unique_rows) {
        unique_receive_data[count++] = p.first;
        unique_receive_data[count++] = p.second;
    }

    free(receive_data);
    free(send_count);
    free(send_displacements);
    free(send_data);
    free(receive_count);
    free(receive_displacements);
    return make_pair(unique_receive_data, total_unique_receive);
}

pair<int *, long int> get_new_facts(int *reverse_relation, long int reverse_relation_size,
                                    int total_columns,
                                    unordered_map<int, set<int>> input_hashtable) {
    vector<int> facts;
    for (auto i = 0; i < reverse_relation_size; i += total_columns) {
        int key = reverse_relation[i];
        int value = reverse_relation[i + 1];
        if (input_hashtable.count(key) > 0) {
            for (auto itr: input_hashtable[key]) {
                facts.push_back(itr);
                facts.push_back(value);
            }
        }
    }
    int *inferred_facts = (int *) calloc(facts.size(), sizeof(int));
    auto count = 0;
    for (auto itr: facts) {
        inferred_facts[count++] = itr;
    }
    return make_pair(inferred_facts, count);
}

int *get_reverse_relation(int *relation, long int relation_size, int total_columns) {
    int *reverse_relation = (int *) malloc(relation_size * sizeof(int));
    for (int i = 0; i < relation_size; i += total_columns) {
        reverse_relation[i] = relation[i + 1];
        reverse_relation[i + 1] = relation[i];
    }
    return reverse_relation;
}


pair<int *, long int> update_t_full(int *t_full, long int t_full_size, int *facts, long int facts_size,
                                    int total_columns) {
    set<pair<int, int>> unique_rows;
    for (int i = 0; i < t_full_size; i += total_columns) {
        unique_rows.insert(make_pair(t_full[i], t_full[i + 1]));
    }
    for (int i = 0; i < facts_size; i += total_columns) {
        unique_rows.insert(make_pair(facts[i], facts[i + 1]));
    }
    long int total_unique_rows = unique_rows.size() * total_columns;
    int *unique_data = (int *) calloc(total_unique_rows, sizeof(int));
    long int count = 0;
    for (auto p: unique_rows) {
        unique_data[count++] = p.first;
        unique_data[count++] = p.second;
    }
    return make_pair(unique_data, count);
}


int main(int argc, char **argv) {
    MPI_Init(&argc, &argv);
    MPI_Barrier(MPI_COMM_WORLD);
    setlocale(LC_ALL, "");
    double elapsed_time = -MPI_Wtime();
    double max_time = 0.0;
    int nprocs, rank;
    int i, j, k;
    MPI_Comm_size(MPI_COMM_WORLD, &nprocs);
    MPI_Comm_rank(MPI_COMM_WORLD, &rank);
    // Should pass the input filename in command line argument
    const char *input_file;
    if (argc == 2) {
        input_file = argv[1];
    } else {
        input_file = "hipc_2019.bin";
    }

    // READ THE FILE IN PARALLEL
    // Reading filesize in bytes
    struct stat filestats;
    stat(input_file, &filestats);
    off_t filesize = filestats.st_size;

    // Calculating the current rank's starting row and number of rows
    // Scatter larger blocks among processes (non uniform)
    int total_columns = 2;
    long int total_rows = filesize / (sizeof(int) * total_columns);
    long int row_start = BLOCK_START(rank, nprocs, total_rows);
    long int row_size = BLOCK_SIZE(rank, nprocs, total_rows);
    long int local_count = row_size * total_columns;

    // Reading specific portion from the file as char in parallel
    long int local_buffer_size = local_count;
    long int offset = row_start * total_columns * sizeof(int);
    int *local_data = (int *) malloc(local_buffer_size * sizeof(int));
    MPI_File mpi_file_buffer;
    if (MPI_File_open(MPI_COMM_WORLD, input_file, MPI_MODE_RDONLY,
                      MPI_INFO_NULL, &mpi_file_buffer) != MPI_SUCCESS) {
        printf("Error opening file %s", input_file);
        MPI_Abort(MPI_COMM_WORLD, EXIT_FAILURE);
    }
    MPI_File_read_at(mpi_file_buffer, offset, local_data, local_buffer_size,
                     MPI_INT, MPI_STATUS_IGNORE);
    MPI_File_close(&mpi_file_buffer);

    int *local_data_reverse = get_reverse_relation(local_data, local_count, total_columns);

    pair<int *, long int> input_relation_data = get_split_relation(rank, local_data, local_count,
                                                                   total_columns, nprocs);
    int *input_relation = input_relation_data.first;
    long int input_relation_size = input_relation_data.second;
//    for (i = 0; i < input_relation_size; i += total_columns) {
//        printf("(input_relation) Rank %d: %d %d\n", rank,
//               input_relation[i], input_relation[i + 1]);
//        fflush(stdout);
//    }
//    printf("\n");
//    fflush(stdout);


    long int global_t_full_size, global_tc_size;
    pair<int *, long int> reverse_relation_data = get_split_relation(rank, local_data_reverse, local_count,
                                                                     total_columns, nprocs);
    int *reverse_relation = reverse_relation_data.first;
    long int reverse_relation_size = reverse_relation_data.second;

    unordered_map<int, set<int>> input_hashtable;
    for (i = 0; i < input_relation_size; i += total_columns) {
        input_hashtable[input_relation[i]].insert(input_relation[i + 1]);
    }

    // T_FULL is reverse_relation with first column as key
    int *t_full = (int *) malloc(reverse_relation_size * sizeof(int));
    // Copy the contents of the input_relation array to the new memory location
    memcpy(t_full, reverse_relation, reverse_relation_size * sizeof(int));
    long int t_full_size = reverse_relation_size;
    MPI_Allreduce(&t_full_size, &global_t_full_size, 1, MPI_LONG, MPI_SUM,
                  MPI_COMM_WORLD);

    long int iterations = 0;

    while (true) {
        // Get new facts from input hashtable and the reverse relation
        // Print reverse relation
//        for (i = 0; i < reverse_relation_size; i += total_columns) {
//            printf("(reverse_relation) Rank %d Iteration %d: %d %d\n", rank, iterations,
//                   reverse_relation[i], reverse_relation[i + 1]);
//            fflush(stdout);
//        }
//        printf("\n");
//        fflush(stdout);
        pair<int *, long int> facts_data = get_new_facts(reverse_relation, reverse_relation_size,
                                                         total_columns, input_hashtable);
        int *facts = facts_data.first;
        long int facts_size = facts_data.second;

        // Scatter the new facts among relevant processes
        pair<int *, long int> scatter_fact_data = get_split_relation(rank, facts, facts_size,
                                                                     total_columns, nprocs);
        reverse_relation_size = scatter_fact_data.second;

        // Update the reverse relation which will be used in next iteration
        realloc(reverse_relation, reverse_relation_size * sizeof(int));
        reverse_relation = scatter_fact_data.first;


        // Update t full for current process
        pair<int *, long int> t_full_data = update_t_full(t_full, t_full_size,
                                                          reverse_relation,
                                                          reverse_relation_size,
                                                          total_columns);
        t_full_size = t_full_data.second;
        realloc(t_full, t_full_size * sizeof(int));
        t_full = t_full_data.first;
        free(facts);

        // Check if the global t full size has changed in this iteration
        long int old_global_t_full_size = global_t_full_size;
        MPI_Allreduce(&t_full_size, &global_t_full_size, 1, MPI_LONG, MPI_SUM,
                      MPI_COMM_WORLD);
        iterations++;
        if (old_global_t_full_size == global_t_full_size) {
            break;
        }
    }

    // Reverse the t_full as we stored it in reverse order initially
    t_full = get_reverse_relation(t_full, t_full_size, total_columns);
    global_tc_size = global_t_full_size / total_columns;

    // List the t full counts for each process and calculate the displacements in the final result
    long int *t_full_counts = (long int *) calloc(nprocs, sizeof(long int));
    MPI_Allgather(&t_full_size, 1, MPI_LONG,
                  t_full_counts, 1, MPI_LONG, MPI_COMM_WORLD);

    long int *t_full_displacements = (long int *) calloc(nprocs, sizeof(long int));
    for (i = 1; i < nprocs; i++) {
        t_full_displacements[i] = t_full_displacements[i - 1] + t_full_counts[i - 1];
    }

    // Write the t full to a offset of the output file
    MPI_File fh;
    string output_file = string(input_file) + "_tc.bin";
    const char *output_file_name = output_file.c_str();
    MPI_File_open(MPI_COMM_WORLD, output_file_name, MPI_MODE_WRONLY | MPI_MODE_CREATE, MPI_INFO_NULL, &fh);
    long int file_offset = t_full_displacements[rank] * sizeof(int);
    MPI_File_write_at(fh, file_offset, t_full, t_full_size, MPI_INT, MPI_STATUS_IGNORE);
    // Close the file and clean up
    MPI_File_close(&fh);


    free(local_data);
    free(local_data_reverse);
    free(input_relation);
    free(reverse_relation);
    free(t_full);
    free(t_full_counts);
    free(t_full_displacements);

    elapsed_time += MPI_Wtime();
    MPI_Allreduce(&elapsed_time, &max_time, 1, MPI_DOUBLE, MPI_MAX, MPI_COMM_WORLD);
    if (rank == 0) {
        printf("Total iterations %ld, TC size %ld, generated file %s\n",
               iterations, global_tc_size, output_file_name);
        printf("Total time: %.4lf seconds\n\n", max_time);
        printf("| # Input | # Process | # Iterations | # TC | Time (s) |\n");
        printf("| --- | --- | --- | --- | --- |\n");
        printf("| %'ld | %'d | %'ld | %'ld | %'8.4lf |\n",
               total_rows, nprocs, iterations, global_tc_size, max_time);
    }
    MPI_Finalize();
    return 0;
}