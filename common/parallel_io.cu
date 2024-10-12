#define BLOCK_START(process_id, total_process, n) ((process_id)*(n)/(total_process))
#define BLOCK_SIZE(process_id, total_process, n) \
    (BLOCK_START(process_id + 1, total_process, n) - BLOCK_START(process_id, total_process, n))

int *parallel_read(int rank, int total_rank, const char *input_file, int total_columns,
                   int *row_count, int *total_rows_count, double *compute_time) {
    double start_time, end_time, elapsed_time;
    // READ THE FILE IN PARALLEL
    // Reading filesize in bytes
    start_time = MPI_Wtime();
    struct stat filestats{};
    stat(input_file, &filestats);
    off_t filesize = filestats.st_size;

    // Calculating the current rank's starting row and number of rows
    // Scatter larger blocks among processes (non-uniform)
    int total_rows = filesize / (sizeof(int) * total_columns);
    int row_start = BLOCK_START(rank, total_rank, total_rows);
    int row_size = BLOCK_SIZE(rank, total_rank, total_rows);
    int total_elements = row_size * total_columns;

    // Reading specific portion from the file as char in parallel
    int offset = row_start * total_columns * sizeof(int);
    int *edge_host = (int *) malloc(total_elements * sizeof(int));
    memset(edge_host, 0, total_elements * sizeof(int));
    MPI_File mpi_file_buffer;
    if (MPI_File_open(MPI_COMM_WORLD, input_file, MPI_MODE_RDONLY,
                      MPI_INFO_NULL, &mpi_file_buffer) != MPI_SUCCESS) {
        printf("Error opening file %s", input_file);
        MPI_Abort(MPI_COMM_WORLD, EXIT_FAILURE);
    }
    MPI_File_read_at(mpi_file_buffer, offset, edge_host, total_elements, MPI_INT, MPI_STATUS_IGNORE);
    MPI_File_close(&mpi_file_buffer);

    *row_count = row_size;
    *total_rows_count = total_rows;
    end_time = MPI_Wtime();
    elapsed_time = end_time - start_time;
    *compute_time = elapsed_time;
    return edge_host;
}

int *parallel_generate(int rank, int total_columns,
                   long long *row_count, double *compute_time) {
    double start_time, end_time, elapsed_time;

    // Start timing
    start_time = MPI_Wtime();

    // Set a seed for reproducibility, using rank to ensure different numbers for each rank
    unsigned int seed = rank + 1;
    srand(seed);


    long long row_size = 1000000;
    long long total_elements = row_size * total_columns;

    int *edge_host = (int *) malloc(total_elements * sizeof(int));
    for (int i = 0; i < total_elements; i++) {
        edge_host[i] = (rand() % 1000000) + 1;
    }

    *row_count = row_size;

    // End timing
    end_time = MPI_Wtime();
    elapsed_time = end_time - start_time;
    *compute_time = elapsed_time;

    return edge_host;
}

void parallel_write(int rank, int total_rank, const char *output_file_name,
                    int *ar_host, int *displacement,
                    int total_columns, int row_size, double *compute_time) {
    double start_time, end_time, elapsed_time;
    // WRITE THE FILE IN PARALLEL
    start_time = MPI_Wtime();
    MPI_File fh;
    MPI_File_open(MPI_COMM_WORLD, output_file_name, MPI_MODE_WRONLY | MPI_MODE_CREATE, MPI_INFO_NULL, &fh);
    int file_offset = displacement[rank] * sizeof(int);
    MPI_File_write_at(fh, file_offset, ar_host, row_size * total_columns, MPI_INT,
                      MPI_STATUS_IGNORE);
    // Close the file and clean up
    MPI_File_close(&fh);
    end_time = MPI_Wtime();
    elapsed_time = end_time - start_time;
    *compute_time = elapsed_time;
}


