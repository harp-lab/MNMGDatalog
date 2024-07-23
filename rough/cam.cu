#include <stdio.h>
#include <string.h>
#include <mpi.h>

using namespace std;
int main(int argc, char *argv[])
{
    int device_id;
    int number_of_sm;
    cudaGetDevice(&device_id);
    cudaDeviceGetAttribute(&number_of_sm, cudaDevAttrMultiProcessorCount, device_id);

    int rank, tag=99;
    MPI_Status status;

    /* Initialize the MPI library */
    MPI_Init(&argc, &argv);
    /* Determine unique id of the calling process of all processes participating
       in this MPI program. This id is usually called MPI rank. */
    MPI_Comm_rank(MPI_COMM_WORLD, &rank);

    int n = 20;
    int values[n];
    for(int i = 0; i < n; i++) {
        values[i] = i;
    }

    int *values_device;
    cudaMalloc((void **) &values_device, n * sizeof(int));
    cudaMemcpy(values_device, values, n * sizeof(int), cudaMemcpyHostToDevice);

    if (rank == 0) {
//        MPI_Send(values, 20, MPI_INT, 1, tag, MPI_COMM_WORLD);
        MPI_Send(values_device, 20, MPI_INT, 1, tag, MPI_COMM_WORLD);
    } else {
//        int receive_values[20];
//        MPI_Recv(receive_values, 20, MPI_INT, 0, tag, MPI_COMM_WORLD, &status);
        int *receive_values = (int *) malloc(n * sizeof(int));;
        int *receive_values_device;
        cudaMalloc((void **) &receive_values_device, n * sizeof(int));
        MPI_Recv(receive_values_device, 20, MPI_INT, 0, tag, MPI_COMM_WORLD, &status);
        cudaMemcpy(receive_values, receive_values_device, n * sizeof(int), cudaMemcpyDeviceToHost);
        printf("received: ");
        for(int i = 0; i < n; i++) {
            printf("%d ", receive_values[i]);
        }
        printf("\n");
    }

    /* Finalize the MPI library to free resources acquired by it. */
    MPI_Finalize();
    return 0;
}