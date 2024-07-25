## Transitive closure using CUDA and MPI

Compute Transitive Closure using CUDA and MPI for a given relation.

### Flowchart
![alt flow chart](drawing/local_join.png)


### Requirements
- `OpenMPI` package
- GCC
- Python 3 (for utility program)

### System configuration
#### Local machine
- Processor: 13th Gen Intel® Core™ i9-13900HK × 20
- Memory: 32.0 GiB
- OS: Ubuntu 22.04
- GCC: gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
- MPI: Open MPI 4.1.2
- CUDA: 12.2

### Dataset

| Dataset        | # Input  | Path                 | 
|----------------|----------|----------------------|
| p2p-Gnutella31 | 1,47,892 | data/data_147892.bin |
| TG.cedge       | 23,874   | data/data_23874.bin  |
| OL.cedge       | 7,035    | data/data_7035.bin   |
| Small          | 10       | data/data_10.bin     |
| Extra small    | 5        | data/hipc_2019.bin   |

### Dataset Utility Program
When using `MPI_File_read_at` and `MPI_File_write_at` at offset in MPI programs, this utility program becomes essential because these MPI functions operate directly on binary files. `MPI_File_read_at` reads binary data from a specified offset, and `MPI_File_write_at` writes binary data to a specified offset.
The utility program provides the necessary functionality to convert between text and binary formats.
The utility program supports two main operations: converting text to binary (`txt_to_bin`) and converting binary to text (`bin_to_txt`).
- To convert text to binary:
```shell
python3 binary_file_utils.py txt_to_bin input_text_file output_binary_file
# example usage:
# python3 binary_file_utils.py txt_to_bin data/data_23874.txt data/data_23874.bin
# python3 binary_file_utils.py txt_to_bin data/data_147892.txt data/data_147892.bin
# python3 binary_file_utils.py txt_to_bin data/data_165435.txt data/data_165435.bin
# python3 binary_file_utils.py txt_to_bin data/data_409593.txt data/data_409593.bin
# python3 binary_file_utils.py txt_to_bin data/vsp_finan512_scagr7-2c_rlfddd.mtx data/vsp_finan512_scagr7-2c_rlfddd.bin
# python3 binary_file_utils.py txt_to_bin data/com-dblpungraph.txt data/com-dblpungraph.bin
```
- To convert binary to text:
```shell
python3 binary_file_utils.py bin_to_txt input_binary_file output_text_file
# python3 binary_file_utils.py bin_to_txt data/data_23874.bin_tc.bin data/data_23874_tc.txt
# python3 binary_file_utils.py bin_to_txt data/hipc_2019.bin_tc.bin data/hipc_2019_tc.txt
```
### Local run instructions
- Run the program to generate transitive closure for a given data file. Use `NPROCS=<n>` to set the number of processes and `DATA_FILE=<BINARY DATA FILE>` to set the binary datafile path.
```shell
make run DATA_FILE=data/data_23874.bin NPROCS=8
nvcc tc_naive.cu -o tc_naive.out -I/usr/lib/x86_64-linux-gnu/openmpi -I/usr/lib/x86_64-linux-gnu/openmpi/include -L/usr/lib/x86_64-linux-gnu/openmpi/lib -lmpi -w -lm
mpirun -np 8 ./tc_naive.out data/data_23874.bin

Total iterations 58, TC size 481121, generated file data/data_23874.bin_tc.bin
Total time: 5.1932 seconds

| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 23,874 | 8 | 58 | 481,121 |   5.1932 |

```
It generated `data/data_23874.bin_tc.bin` file that contains all paths of the transitive closure for the input relation.
- Convert the generated binary to text file using `binary_file_utils.py`.
```shell
python3 binary_file_utils.py bin_to_txt data/data_23874.bin_tc.bin data/data_23874_tc.txt
```

### Results
#### Results (Local machine)

| # Input  | # Process | # Iterations | # TC   | Time (s) |
|----------|-----------|--------------|--------|----------|
| 23,874   | 2         | 58           | 481,121 | 11.8016  |
| 23,874   | 3         | 58           | 481,121 | 8.5318   |
| 23,874   | 4         | 58           | 481,121 | 7.0842   |
| 23,874   | 5         | 58           | 481,121 | 5.4608   |
| 23,874   | 6         | 58           | 481,121 | 4.9189   |
| 23,874   | 7         | 58           | 481,121 | 4.9597   |
| 23,874   | 8         | 58           | 481,121 | 5.1932   |


#### Performance improvement using semi-naive:
```shell
// naive
make run DATA_FILE=data/data_23874.bin NPROCS=8
// 7.3803, 5.5220, 4.7417, 4.5751, 4.5915
make runsemi DATA_FILE=data/data_23874.bin NPROCS=8 CUDA_AWARE_MPI=0
// 0.8464, 0.8506, 0.8679, 0.9242, 1.0613

# CUDA Aware MPI (if system supports)
make runsemi DATA_FILE=data/data_23874.bin NPROCS=8 CUDA_AWARE_MPI=0
nvcc tc_semi_naive.cu -o tc_semi_naive.out -I/usr/lib/x86_64-linux-gnu/openmpi -I/usr/lib/x86_64-linux-gnu/openmpi/include -L/usr/lib/x86_64-linux-gnu/openmpi/lib -lmpi -w -lm
mpirun -np 8 ./tc_semi_naive.out data/data_23874.bin 0
Total iterations 58, TC size 481121, generated file data/data_23874.bin_tc.bin
Total time: 0.8484 seconds

| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 23,874 | 8 | 58 | 481,121 |   0.8484 |



# CPU based MPI communication naive evaluation
make run DATA_FILE=data/data_23874.bin NPROCS=8
nvcc tc_naive.cu -o tc_naive.out -I/usr/lib/x86_64-linux-gnu/openmpi -I/usr/lib/x86_64-linux-gnu/openmpi/include -L/usr/lib/x86_64-linux-gnu/openmpi/lib -lmpi -w -lm
mpirun -np 8 ./tc_naive.out data/data_23874.bin
Total iterations 58, TC size 481121, generated file data/data_23874.bin_tc.bin
Total time: 5.1148 seconds

| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 23,874 | 8 | 58 | 481,121 |   5.1148 |

```

## Run in Polaris
The job script [polaris-job.sh](polaris-job.sh) contains the multi node multi GPU configuration for Polaris.
Change this file to change the number of nodes in `PBS -l select=10:system=polaris` (default 10).
Also, change the data file as necessary. 
Currently, it is spawning 4 ranks per node and sets 1 GPU per MPI rank.
```shell
ssh arsho@polaris.alcf.anl.gov
cd local_join
git fetch
git reset --hard origin/main
chmod +x polaris-job.sh
chmod +x set_affinity_gpu_polaris.sh
qsub polaris-job.sh 
1262708.polaris-pbs-01.hsn.cm.polaris.alcf.anl.gov
arsho::polaris-login-02 { ~/local_join }-> qstat -u $USER
cat polaris-job.out
NUM_OF_NODES= 10 TOTAL_NUM_RANKS= 40 RANKS_PER_NODE= 4 THREADS_PER_RANK= 1
CC tc_naive.cu -o tc_naive.out -w -lm
mpiexec -n 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_naive.out data/data_147892.bin
“RANK= 32 LOCAL_RANK= 0 gpu= 0”
“RANK= 20 LOCAL_RANK= 0 gpu= 0”
“RANK= 23 LOCAL_RANK= 3 gpu= 3”
“RANK= 22 LOCAL_RANK= 2 gpu= 2”
“RANK= 21 LOCAL_RANK= 1 gpu= 1”
“RANK= 16 LOCAL_RANK= 0 gpu= 0”
“RANK= 34 LOCAL_RANK= 2 gpu= 2”
“RANK= 9 LOCAL_RANK= 1 gpu= 1”
“RANK= 13 LOCAL_RANK= 1 gpu= 1”
“RANK= 10 LOCAL_RANK= 2 gpu= 2”
“RANK= 35 LOCAL_RANK= 3 gpu= 3”
“RANK= 33 LOCAL_RANK= 1 gpu= 1”
“RANK= 14 LOCAL_RANK= 2 gpu= 2”
“RANK= 37 LOCAL_RANK= 1 gpu= 1”
“RANK= 29 LOCAL_RANK= 1 gpu= 1”
“RANK= 5 LOCAL_RANK= 1 gpu= 1”
“RANK= 6 LOCAL_RANK= 2 gpu= 2”
“RANK= 15 LOCAL_RANK= 3 gpu= 3”
“RANK= 18 LOCAL_RANK= 2 gpu= 2”
“RANK= 17 LOCAL_RANK= 1 gpu= 1”
“RANK= 11 LOCAL_RANK= 3 gpu= 3”
“RANK= 8 LOCAL_RANK= 0 gpu= 0”
“RANK= 19 LOCAL_RANK= 3 gpu= 3”
“RANK= 12 LOCAL_RANK= 0 gpu= 0”
“RANK= 38 LOCAL_RANK= 2 gpu= 2”
“RANK= 24 LOCAL_RANK= 0 gpu= 0”
“RANK= 36 LOCAL_RANK= 0 gpu= 0”
“RANK= 25 LOCAL_RANK= 1 gpu= 1”
“RANK= 1 LOCAL_RANK= 1 gpu= 1”
“RANK= 39 LOCAL_RANK= 3 gpu= 3”
“RANK= 30 LOCAL_RANK= 2 gpu= 2”
“RANK= 3 LOCAL_RANK= 3 gpu= 3”
“RANK= 4 LOCAL_RANK= 0 gpu= 0”
“RANK= 7 LOCAL_RANK= 3 gpu= 3”
“RANK= 28 LOCAL_RANK= 0 gpu= 0”
“RANK= 31 LOCAL_RANK= 3 gpu= 3”
“RANK= 27 LOCAL_RANK= 3 gpu= 3”
“RANK= 0 LOCAL_RANK= 0 gpu= 0”
“RANK= 26 LOCAL_RANK= 2 gpu= 2”
“RANK= 2 LOCAL_RANK= 2 gpu= 2”
Total iterations 31, TC size 884179859, generated file data/data_147892.bin_tc.bin
Total time: 292.3941 seconds

| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 147,892 | 40 | 31 | 884,179,859 | 292.3941 |
```
- Benchmark using different number of nodes:

| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 147,892 | 8 | 31 | 884,179,859 | 1,573.6058 |
| 147,892 | 40 | 31 | 884,179,859 | 292.3941 |
| 147,892 | 120 | 31 | 884,179,859 |  97.5625 |

## Run in Polaris (Semi naive)
The job script [polaris-job-semi.sh](polaris-job.sh) contains the multi node multi GPU configuration for Polaris.
Change this file to change the number of nodes in `PBS -l select=10:system=polaris` (default 10).
Also, change the data file as necessary.
Currently, it is spawning 4 ranks per node and sets 1 GPU per MPI rank.
```shell
ssh arsho@polaris.alcf.anl.gov
cd mnmgJOIN
git fetch
git reset --hard origin/main
arsho::polaris-login-04 { ~/mnmgJOIN }-> chmod +x polaris-job-semi.sh
arsho::polaris-login-04 { ~/mnmgJOIN }-> chmod +x set_affinity_gpu_polaris_semi.sh
arsho::polaris-login-04 { ~/mnmgJOIN }-> qsub polaris-job-semi.sh 
2037837.polaris-pbs-01.hsn.cm.polaris.alcf.anl.gov
arsho::polaris-login-04 { ~/mnmgJOIN }-> qstat -u $USER

polaris-pbs-01.hsn.cm.polaris.alcf.anl.gov: 
                                                                 Req'd  Req'd   Elap
Job ID               Username Queue    Jobname    SessID NDS TSK Memory Time  S Time
-------------------- -------- -------- ---------- ------ --- --- ------ ----- - -----
2037445.polaris-pbs* arsho    small    polaris-j*    --   10 640    --  00:30 Q   -- 

cat polaris-job-semi.out
```





### Experiment: CUDA Aware MPI
```shell
nvcc cam.cu -o cam -I/usr/lib/x86_64-linux-gnu/openmpi -I/usr/lib/x86_64-linux-gnu/openmpi/include -L/usr/lib/x86_64-linux-gnu/openmpi/lib -lmpi -w -lm
mpirun -np 2 ./cam
```

### References
- [Polaris User Guides](https://docs.alcf.anl.gov/polaris/getting-started/)
- [Polaris running jobs](https://docs.alcf.anl.gov/polaris/running-jobs/)
- [Polaris CUDA MPI job example](https://github.com/argonne-lcf/GettingStarted/tree/master/Examples/Polaris/affinity_gpu)
- [Stackoverflow answer for all gather vs all to all](https://stackoverflow.com/a/34113431/3129414)
- [Blog on MPI](https://www.codeproject.com/Articles/896437/A-Gentle-Introduction-to-the-Message-Passing-Inter)
- [MPI all to all](https://mpi.deino.net/mpi_functions/MPI_Alltoall.html)
- [Thrust: The C++ Parallel Algorithms Library](https://nvidia.github.io/cccl/thrust/)
- [SO question on CudaFree](https://stackoverflow.com/questions/13100615/cudafree-is-not-freeing-memory)
- [SO question on CudaMemset](https://stackoverflow.com/questions/62055890/does-cudamalloc-initialize-the-array-to-0)