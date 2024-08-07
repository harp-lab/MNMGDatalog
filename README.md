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
- CUDA: 12.0

### Dataset

| Dataset        | # Input   | Path                                   | 
|----------------|-----------|----------------------------------------|
| fe_ocean       | 4,09,593  | data/data_409593.bin                   |
| usroad         | 1,65,435  | data/data_165435.bin                   |
| p2p-Gnutella31 | 1,47,892  | data/data_147892.bin                   |
| com-dblp       | 1,049,866 | data/com-dblpungraph.bin               |
| vsp_finan      | 552,020   | data/vsp_finan512_scagr7-2c_rlfddd.bin |
| TG.cedge       | 23,874    | data/data_23874.bin                    |
| OL.cedge       | 7,035     | data/data_7035.bin                     |
| Small          | 10        | data/data_10.bin                       |
| Extra small    | 5         | data/hipc_2019.bin                     |

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
# python3 binary_file_utils.py bin_to_txt data/data_10.bin_tc.bin data/data_10_tc.txt
# python3 binary_file_utils.py bin_to_txt data/data_23874.bin_tc.bin data/data_23874_tc.txt
# python3 binary_file_utils.py bin_to_txt data/hipc_2019.bin_tc.bin data/hipc_2019_tc.txt
```
### Local run instructions
#### Semi naive evaluation
- Run the `tc_semi_naive.cu` program to generate transitive closure for a given data file. 
- Command like arguments: 
  - `NPROCS=<n>` to set the number of processes
  - `DATA_FILE=<BINARY DATA FILE>` to set the binary datafile path
  - `CUDA_AWARE_MPI=<0/1>` to use CUDA AWARE MPI. Set it to `1` if system supports CUDA AWARE MPI, otherwise `0`.
  - `METHOD=<0/1>` to use two pass approach (0) or sorting technique (1) for all to all communication. 

```shell
# Using two pass method for communication
make runsemi DATA_FILE=data/data_23874.bin NPROCS=8 CUDA_AWARE_MPI=0 METHOD=0
nvcc tc_semi_naive.cu -o tc_semi_naive.out -I/usr/lib/x86_64-linux-gnu/openmpi -I/usr/lib/x86_64-linux-gnu/openmpi/include -L/usr/lib/x86_64-linux-gnu/openmpi/lib -lmpi -lm --extended-lambda
mpirun -np 8 ./tc_semi_naive.out data/data_23874.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 23,874 | 8 | 58 | 481,121 |   0.3950 |   0.0004 |   0.0119 |   0.0007 |   0.0595 |   0.0993 |   0.0236 |   0.1958 |   0.0037 | data/data_23874.bin_tc.bin |

# Using sorting method for communication
make runsemi DATA_FILE=data/data_23874.bin NPROCS=8 CUDA_AWARE_MPI=0 METHOD=1
nvcc tc_semi_naive.cu -o tc_semi_naive.out -I/usr/lib/x86_64-linux-gnu/openmpi -I/usr/lib/x86_64-linux-gnu/openmpi/include -L/usr/lib/x86_64-linux-gnu/openmpi/lib -lmpi -lm --extended-lambda
mpirun -np 8 ./tc_semi_naive.out data/data_23874.bin 0 1
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 23,874 | 8 | 58 | 481,121 |   0.4793 |   0.0008 |   0.0127 |   0.0007 |   0.0524 |   0.2016 |   0.0275 |   0.1799 |   0.0036 | data/data_23874.bin_tc.bin |

```
It generated `data/data_23874.bin_tc.bin` file that contains all paths of the transitive closure for the input relation.
- Convert the generated binary to text file using `binary_file_utils.py`.
```shell
python3 binary_file_utils.py bin_to_txt data/data_23874.bin_tc.bin data/data_23874_tc.txt
```

### Results (Semi Naive) 
#### Local machine (`CUDA_AWARE_MPI` = 0, Two pass method)
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 23,874 | 2 | 58 | 481,121 |   0.1196 |   0.0003 |   0.0042 |   0.0002 |   0.0184 |   0.0257 |   0.0075 |   0.0607 |   0.0025 | data/data_23874.bin_tc.bin |
| 23,874 | 3 | 58 | 481,121 |   0.1692 |   0.0003 |   0.0054 |   0.0003 |   0.0252 |   0.0368 |   0.0102 |   0.0889 |   0.0022 | data/data_23874.bin_tc.bin |
| 23,874 | 4 | 58 | 481,121 |   0.2297 |   0.0003 |   0.0072 |   0.0004 |   0.0341 |   0.0568 |   0.0127 |   0.1156 |   0.0028 | data/data_23874.bin_tc.bin |
| 23,874 | 5 | 58 | 481,121 |   0.2585 |   0.0003 |   0.0078 |   0.0004 |   0.0395 |   0.0620 |   0.0171 |   0.1290 |   0.0023 | data/data_23874.bin_tc.bin |
| 23,874 | 6 | 58 | 481,121 |   0.2854 |   0.0003 |   0.0105 |   0.0005 |   0.0410 |   0.0688 |   0.0196 |   0.1416 |   0.0030 | data/data_23874.bin_tc.bin |
| 23,874 | 7 | 58 | 481,121 |   0.3473 |   0.0004 |   0.0101 |   0.0007 |   0.0514 |   0.0848 |   0.0244 |   0.1721 |   0.0034 | data/data_23874.bin_tc.bin |
| 23,874 | 8 | 58 | 481,121 |   0.3950 |   0.0004 |   0.0119 |   0.0007 |   0.0595 |   0.0993 |   0.0236 |   0.1958 |   0.0037 | data/data_23874.bin_tc.bin |

#### Local machine (`CUDA_AWARE_MPI` = 0, Sort method)
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 23,874 | 2 | 58 | 481,121 |   0.1554 |   0.0003 |   0.0044 |   0.0001 |   0.0182 |   0.0580 |   0.0077 |   0.0641 |   0.0026 | data/data_23874.bin_tc.bin |
| 23,874 | 3 | 58 | 481,121 |   0.2148 |   0.0002 |   0.0058 |   0.0003 |   0.0236 |   0.0835 |   0.0100 |   0.0890 |   0.0023 | data/data_23874.bin_tc.bin |
| 23,874 | 4 | 58 | 481,121 |   0.2810 |   0.0004 |   0.0085 |   0.0004 |   0.0309 |   0.1134 |   0.0138 |   0.1109 |   0.0027 | data/data_23874.bin_tc.bin |
| 23,874 | 5 | 58 | 481,121 |   0.3220 |   0.0005 |   0.0134 |   0.0005 |   0.0349 |   0.1300 |   0.0177 |   0.1222 |   0.0028 | data/data_23874.bin_tc.bin |
| 23,874 | 6 | 58 | 481,121 |   0.3820 |   0.0003 |   0.0096 |   0.0005 |   0.0419 |   0.1590 |   0.0241 |   0.1427 |   0.0040 | data/data_23874.bin_tc.bin |
| 23,874 | 7 | 58 | 481,121 |   0.4512 |   0.0004 |   0.0114 |   0.0006 |   0.0520 |   0.1873 |   0.0292 |   0.1672 |   0.0032 | data/data_23874.bin_tc.bin |
| 23,874 | 8 | 58 | 481,121 |   0.5179 |   0.0006 |   0.0221 |   0.0007 |   0.0577 |   0.2112 |   0.0319 |   0.1890 |   0.0046 | data/data_23874.bin_tc.bin |


### Run using Docker (`CUDA_AWARE_MPI` = 1)
```shell
mnmgjoin@afe1ab5e7adc:/opt/mnmgjoin$ /opt/nvidia/hpc_sdk/Linux_x86_64/24.1/comm_libs/hpcx/bin/mpicxx tc_semi_naive.cu -o tc_semi_naive.out

# Two pass method
mnmgjoin@afe1ab5e7adc:/opt/mnmgjoin$ /opt/nvidia/hpc_sdk/Linux_x86_64/24.1/comm_libs/hpcx/bin/mpirun -np 4 ./tc_semi_naive.out data/data_23874.bin 1 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 23874 | 4 | 58 | 481121 |   0.6453 |   0.1964 |   0.0252 |   0.0004 |   0.0297 |   0.0398 |   0.1983 |   0.1530 |   0.0025 | data/data_23874.bin_tc.bin |

# Sort method
mnmgjoin@afe1ab5e7adc:/opt/mnmgjoin$ /opt/nvidia/hpc_sdk/Linux_x86_64/24.1/comm_libs/hpcx/bin/mpirun -np 4 ./tc_semi_naive.out data/data_23874.bin 1 1
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 23874 | 4 | 58 | 481121 |   0.7154 |   0.2117 |   0.0389 |   0.0004 |   0.0289 |   0.1017 |   0.1901 |   0.1411 |   0.0027 | data/data_23874.bin_tc.bin |
```

## Run in Polaris (Semi naive)
The job script [polaris-job-semi.sh](polaris-job.sh) contains the multi node multi GPU configuration for Polaris.
Change this file to change the number of nodes in `PBS -l select=10:system=polaris` (default 10).
Also, change the data file as necessary.
Currently, it is spawning 4 ranks per node and sets 1 GPU per MPI rank.
```shell
ssh arsho@polaris.alcf.anl.gov
arsho::polaris-login-02 { ~ }-> cd mnmgJOIN
arsho::polaris-login-02 { ~/mnmgJOIN }-> git fetch
arsho::polaris-login-02 { ~/mnmgJOIN }-> git reset --hard origin/main
arsho::polaris-login-02 { ~/mnmgJOIN }-> chmod +x polaris-job-semi.sh
arsho::polaris-login-02 { ~/mnmgJOIN }-> chmod +x set_affinity_gpu_polaris.sh
arsho::polaris-login-02 { ~/mnmgJOIN }-> qsub polaris-job-semi.sh 
2053599.polaris-pbs-01.hsn.cm.polaris.alcf.anl.gov
arsho::polaris-login-02 { ~/mnmgJOIN }-> qstat -u $USER

polaris-pbs-01.hsn.cm.polaris.alcf.anl.gov: 
                                                                 Req'd  Req'd   Elap
Job ID               Username Queue    Jobname    SessID NDS TSK Memory Time  S Time
-------------------- -------- -------- ---------- ------ --- --- ------ ----- - -----
2041991.polaris-pbs* arsho    small    polaris-j*    --   10 640    --  00:30 Q   -- 
arsho::polaris-login-02 { ~/mnmgJOIN }-> qstat -Qf small
Queue: small
    queue_type = Execution
    Priority = 150
    total_jobs = 40
    state_count = Transit:0 Queued:27 Held:13 Waiting:0 Running:0 Exiting:0 Beg

cat polaris-job-semi.out
cat polaris-jop-semi.error
# Manage disk quota limit of 50GB in Polaris /home directory
# Check quota
myquota
# Check large folders
du -h --max-depth=1 | sort -hr
# Delete large folders
rm -rf ./local_join
# Delete the generated bin files
make clean

# Interactive 1 node run tc
ssh arsho@polaris.alcf.anl.gov
qsub -I -l select=1 -l filesystems=home:eagle -l walltime=1:00:00 -q debug -A dist_relational_alg
cd mnmgJOIN
module load craype-accel-nvidia80
export MPICH_GPU_SUPPORT_ENABLED=1
CC tc_semi_naive.cu -o tc_semi_naive_interactive.out
arsho::x3101c0s19b0n0 { ~/mnmgJOIN }-> mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris_semi.sh ./tc_semi_naive_interactive.out data/data_165435.bin 1 0
arsho::x3101c0s19b0n0 { ~/mnmgJOIN }-> mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris_semi.sh ./tc_semi_naive_interactive.out data/data_165435.bin 1 1
```


## Performance evaluation on Polaris 


### CUDA AWARE MPI and Two pass method

| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 40 | 31 | 884,179,859 |   3.1670 |   0.0072 |   2.1921 |   0.0001 |   0.0099 |   0.1016 |   0.5755 |   0.2340 |   0.0466 | data/data_147892.bin_tc.bin |
| 147,892 | 32 | 31 | 884,179,859 |   3.0436 |   0.0057 |   1.8993 |   0.0001 |   0.0106 |   0.1012 |   0.7087 |   0.2624 |   0.0556 | data/data_147892.bin_tc.bin |
| 147,892 | 24 | 31 | 884,179,859 |   3.8217 |   0.0057 |   2.6426 |   0.0001 |   0.0120 |   0.1175 |   0.6821 |   0.2881 |   0.0737 | data/data_147892.bin_tc.bin |
| 147,892 | 16 | 31 | 884,179,859 |   4.4885 |   0.0057 |   3.1757 |   0.0001 |   0.0137 |   0.1485 |   0.6881 |   0.3488 |   0.1079 | data/data_147892.bin_tc.bin |
| 147,892 | 8 | 31 | 884,179,859 |   5.9934 |   0.0057 |   4.3639 |   0.0001 |   0.0176 |   0.2229 |   0.7335 |   0.4183 |   0.2314 | data/data_147892.bin_tc.bin |
| 165,435 | 40 | 606 | 871,365,688 |  13.1043 |   0.0057 |   2.1398 |   0.0001 |   0.0610 |   0.1529 |   7.4231 |   3.2518 |   0.0699 | data/data_165435.bin_tc.bin |
| 165,435 | 32 | 606 | 871,365,688 |  12.7200 |   0.0057 |   2.2324 |   0.0001 |   0.0508 |   0.2089 |   6.9743 |   3.1574 |   0.0903 | data/data_165435.bin_tc.bin |
| 165,435 | 24 | 606 | 871,365,688 |  14.2155 |   0.0058 |   2.9304 |   0.0001 |   0.0508 |   0.3327 |   6.9435 |   3.8371 |   0.1152 | data/data_165435.bin_tc.bin |
| 165,435 | 16 | 606 | 871,365,688 |  14.4072 |   0.0057 |   2.7686 |   0.0001 |   0.1147 |   0.3693 |   6.1601 |   4.8476 |   0.1413 | data/data_165435.bin_tc.bin |
| 165,435 | 8 | 606 | 871,365,688 |  23.3496 |   0.0056 |   3.4356 |   0.0001 |   0.2737 |   0.5306 |   5.9596 |  12.9098 |   0.2345 | data/data_165435.bin_tc.bin |
| 409,593 | 40 | 247 | 1,669,750,513 |  11.9470 |   0.0057 |   4.2741 |   0.0001 |   0.0721 |   0.3628 |   5.0513 |   2.0870 |   0.0937 | data/data_409593.bin_tc.bin |
| 409,593 | 32 | 247 | 1,669,750,513 |  11.5148 |   0.0057 |   4.4862 |   0.0001 |   0.0912 |   0.3961 |   4.1861 |   2.2349 |   0.1145 | data/data_409593.bin_tc.bin |
| 409,593 | 24 | 247 | 1,669,750,513 |  11.5303 |   0.0058 |   3.9934 |   0.0001 |   0.1221 |   0.4531 |   4.0175 |   2.7839 |   0.1545 | data/data_409593.bin_tc.bin |
| 409,593 | 16 | 247 | 1,669,750,513 |  13.0333 |   0.0057 |   4.3135 |   0.0001 |   0.1491 |   0.5744 |   3.1770 |   4.5812 |   0.2323 | data/data_409593.bin_tc.bin |
| 409,593 | 8 | 247 | 1,669,750,513 |  21.6552 |   0.0057 |   4.9747 |   0.0001 |   0.3601 |   0.7623 |   3.2437 |  11.8220 |   0.4866 | data/data_409593.bin_tc.bin |
| 552,020 | 40 | 520 | 910,070,918 |  11.7178 |   0.0058 |   1.8617 |   0.0001 |   0.0914 |   0.2822 |   6.4935 |   2.9310 |   0.0522 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
| 552,020 | 32 | 520 | 910,070,918 |  12.4146 |   0.0057 |   2.1626 |   0.0001 |   0.1035 |   0.3435 |   6.5802 |   3.1546 |   0.0644 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
| 552,020 | 24 | 520 | 910,070,918 |  12.3154 |   0.0057 |   2.1446 |   0.0001 |   0.1282 |   0.4212 |   5.8514 |   3.6747 |   0.0895 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
| 552,020 | 16 | 520 | 910,070,918 |  13.6184 |   0.0057 |   2.7152 |   0.0004 |   0.1504 |   0.4432 |   5.4818 |   4.6619 |   0.1599 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
| 552,020 | 8 | 520 | 910,070,918 |  25.4051 |   0.0057 |   4.1439 |   0.0003 |   0.4474 |   0.6344 |   5.4947 |  14.4204 |   0.2583 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
| 1,049,866 | 40 | 31 | 1,911,754,892 |   7.1534 |   0.0058 |   5.6321 |   0.0003 |   0.0134 |   0.2182 |   0.8822 |   0.3035 |   0.0978 | data/com-dblpungraph.bin_tc.bin |
| 1,049,866 | 32 | 31 | 1,911,754,892 |   7.7006 |   0.0058 |   5.9897 |   0.0003 |   0.0152 |   0.2458 |   0.9602 |   0.3641 |   0.1193 | data/com-dblpungraph.bin_tc.bin |
| 1,049,866 | 24 | 31 | 1,911,754,892 |   7.2695 |   0.0058 |   5.1660 |   0.0002 |   0.0193 |   0.2978 |   1.0974 |   0.5214 |   0.1615 | data/com-dblpungraph.bin_tc.bin |
| 1,049,866 | 16 | 31 | 1,911,754,892 |   9.7933 |   0.0058 |   7.1932 |   0.0003 |   0.0235 |   0.3872 |   1.2940 |   0.6505 |   0.2389 | data/com-dblpungraph.bin_tc.bin |
| 1,049,866 | 8 | 31 | 1,911,754,892 |  10.3186 |   0.0062 |   6.0537 |   0.0003 |   0.0238 |   0.6301 |   1.5712 |   1.5600 |   0.4733 | data/com-dblpungraph.bin_tc.bin |

### CUDA AWARE MPI and Sort method

| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 40 | 31 | 884,179,859 |   3.9323 |   0.0164 |   2.9332 |   0.0001 |   0.0106 |   0.0236 |   0.6673 |   0.2357 |   0.0454 | data/data_147892.bin_tc.bin |
| 147,892 | 32 | 31 | 884,179,859 |   3.4427 |   0.0058 |   2.4527 |   0.0001 |   0.0112 |   0.0259 |   0.6456 |   0.2450 |   0.0564 | data/data_147892.bin_tc.bin |
| 147,892 | 24 | 31 | 884,179,859 |   3.4872 |   0.0057 |   2.4609 |   0.0001 |   0.0127 |   0.0284 |   0.6283 |   0.2776 |   0.0734 | data/data_147892.bin_tc.bin |
| 147,892 | 16 | 31 | 884,179,859 |   4.4314 |   0.0057 |   3.3755 |   0.0001 |   0.0144 |   0.0347 |   0.6044 |   0.2883 |   0.1083 | data/data_147892.bin_tc.bin |
| 147,892 | 8 | 31 | 884,179,859 |   6.2553 |   0.0057 |   4.2900 |   0.0001 |   0.0273 |   0.0519 |   0.9654 |   0.6939 |   0.2211 | data/data_147892.bin_tc.bin |
| 165,435 | 40 | 606 | 871,365,688 |  14.1177 |   0.0058 |   2.3314 |   0.0001 |   0.0684 |   0.1626 |   8.1312 |   3.3491 |   0.0690 | data/data_165435.bin_tc.bin |
| 165,435 | 32 | 606 | 871,365,688 |  12.8959 |   0.0059 |   2.3323 |   0.0001 |   0.0585 |   0.2254 |   7.0641 |   3.1228 |   0.0867 | data/data_165435.bin_tc.bin |
| 165,435 | 24 | 606 | 871,365,688 |  14.4235 |   0.0058 |   2.5915 |   0.0001 |   0.0645 |   0.2841 |   7.0583 |   4.3037 |   0.1155 | data/data_165435.bin_tc.bin |
| 165,435 | 16 | 606 | 871,365,688 |  14.0538 |   0.0057 |   2.2838 |   0.0001 |   0.1158 |   0.2898 |   6.1663 |   5.0488 |   0.1434 | data/data_165435.bin_tc.bin |
| 165,435 | 8 | 606 | 871,365,688 |  23.9925 |   0.0057 |   3.9234 |   0.0001 |   0.3192 |   0.3792 |   6.8628 |  12.2345 |   0.2675 | data/data_165435.bin_tc.bin |
| 409,593 | 40 | 247 | 1,669,750,513 |  10.6264 |   0.0059 |   3.7721 |   0.0001 |   0.0749 |   0.1664 |   4.4959 |   2.0160 |   0.0951 | data/data_409593.bin_tc.bin |
| 409,593 | 32 | 247 | 1,669,750,513 |  11.3111 |   0.0059 |   4.3938 |   0.0001 |   0.0914 |   0.1902 |   4.5010 |   2.0160 |   0.1127 | data/data_409593.bin_tc.bin |
| 409,593 | 24 | 247 | 1,669,750,513 |  12.7496 |   0.0059 |   5.5335 |   0.0001 |   0.1146 |   0.1977 |   4.1277 |   2.6183 |   0.1519 | data/data_409593.bin_tc.bin |
| 409,593 | 16 | 247 | 1,669,750,513 |  12.5717 |   0.0059 |   3.9442 |   0.0001 |   0.1566 |   0.2226 |   3.6752 |   4.2975 |   0.2695 | data/data_409593.bin_tc.bin |
| 409,593 | 8 | 247 | 1,669,750,513 |  21.4086 |   0.0057 |   4.9326 |   0.0001 |   0.3510 |   0.2698 |   3.2259 |  12.1403 |   0.4832 | data/data_409593.bin_tc.bin |
| 552,020 | 40 | 520 | 910,070,918 |  13.5675 |   0.0059 |   2.5466 |   0.0001 |   0.0945 |   0.2161 |   7.6567 |   2.9960 |   0.0516 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
| 552,020 | 32 | 520 | 910,070,918 |  13.3160 |   0.0058 |   2.9818 |   0.0001 |   0.1199 |   0.2656 |   6.7308 |   3.1509 |   0.0610 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
| 552,020 | 24 | 520 | 910,070,918 |  13.5118 |   0.0057 |   2.4862 |   0.0001 |   0.1407 |   0.2999 |   6.5976 |   3.8958 |   0.0858 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
| 552,020 | 16 | 520 | 910,070,918 |  14.5434 |   0.0058 |   3.2446 |   0.0003 |   0.1831 |   0.3292 |   5.9505 |   4.6850 |   0.1449 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
| 552,020 | 8 | 520 | 910,070,918 |  25.0013 |   0.0056 |   3.9564 |   0.0004 |   0.4006 |   0.4234 |   6.1329 |  13.8236 |   0.2584 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
| 1,049,866 | 40 | 31 | 1,911,754,892 |   8.5174 |   0.0059 |   7.2040 |   0.0003 |   0.0144 |   0.0369 |   0.8360 |   0.3213 |   0.0985 | data/com-dblpungraph.bin_tc.bin |
| 1,049,866 | 32 | 31 | 1,911,754,892 |   8.0789 |   0.0058 |   6.5679 |   0.0004 |   0.0159 |   0.0424 |   0.9156 |   0.4075 |   0.1235 | data/com-dblpungraph.bin_tc.bin |
| 1,049,866 | 24 | 31 | 1,911,754,892 |   8.3103 |   0.0068 |   6.4080 |   0.0001 |   0.0200 |   0.0487 |   1.0910 |   0.5755 |   0.1602 | data/com-dblpungraph.bin_tc.bin |
| 1,049,866 | 16 | 31 | 1,911,754,892 |   9.3032 |   0.0057 |   7.2439 |   0.0004 |   0.0188 |   0.0649 |   1.1467 |   0.5758 |   0.2470 | data/com-dblpungraph.bin_tc.bin |
| 1,049,866 | 8 | 31 | 1,911,754,892 |  11.5592 |   0.0060 |   7.4375 |   0.0003 |   0.0259 |   0.1120 |   1.6437 |   1.8105 |   0.5233 | data/com-dblpungraph.bin_tc.bin |

### Traditional MPI and Two pass method

| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 40 | 31 | 884,179,859 |   3.7549 |   0.7148 |   2.4619 |   0.0001 |   0.0096 |   0.0985 |   0.2890 |   0.1335 |   0.0476 | data/data_147892.bin_tc.bin |
| 147,892 | 32 | 31 | 884,179,859 |   3.8011 |   0.7201 |   2.4040 |   0.0001 |   0.0104 |   0.1074 |   0.3494 |   0.1489 |   0.0608 | data/data_147892.bin_tc.bin |
| 147,892 | 24 | 31 | 884,179,859 |   4.3497 |   0.7096 |   2.7226 |   0.0001 |   0.0130 |   0.1366 |   0.4687 |   0.2226 |   0.0765 | data/data_147892.bin_tc.bin |
| 147,892 | 16 | 31 | 884,179,859 |   5.1291 |   0.7013 |   3.2380 |   0.0001 |   0.0135 |   0.1595 |   0.6444 |   0.2546 |   0.1178 | data/data_147892.bin_tc.bin |
| 147,892 | 8 | 31 | 884,179,859 |   7.1120 |   0.6992 |   4.2401 |   0.0001 |   0.0181 |   0.2345 |   1.2504 |   0.4382 |   0.2314 | data/data_147892.bin_tc.bin |
| 165,435 | 40 | 606 | 871,365,688 |   7.0708 |   0.7107 |   2.2668 |   0.0001 |   0.0615 |   0.3276 |   0.3104 |   3.3348 |   0.0588 | data/data_165435.bin_tc.bin |
| 165,435 | 32 | 606 | 871,365,688 |   8.0725 |   0.7166 |   2.2102 |   0.0001 |   0.0521 |   0.4073 |   0.3257 |   4.2876 |   0.0729 | data/data_165435.bin_tc.bin |
| 165,435 | 24 | 606 | 871,365,688 |  10.4005 |   0.7219 |   2.7260 |   0.0001 |   0.0525 |   0.5135 |   0.3252 |   5.9629 |   0.0983 | data/data_165435.bin_tc.bin |
| 165,435 | 16 | 606 | 871,365,688 |  16.3549 |   0.7052 |   4.0645 |   0.0001 |   0.1595 |   0.5724 |   0.4948 |  10.2433 |   0.1152 | data/data_165435.bin_tc.bin |
| 165,435 | 8 | 606 | 871,365,688 |  23.2240 |   0.7002 |   3.4961 |   0.0001 |   0.3539 |   0.8466 |   0.8650 |  16.6943 |   0.2677 | data/data_165435.bin_tc.bin |
| 409,593 | 40 | 247 | 1,669,750,513 |   8.8219 |   0.7182 |   4.5372 |   0.0001 |   0.0768 |   0.4686 |   0.6327 |   2.2836 |   0.1047 | data/data_409593.bin_tc.bin |
| 409,593 | 32 | 247 | 1,669,750,513 |   9.5006 |   0.7183 |   4.2711 |   0.0001 |   0.0912 |   0.5050 |   0.7852 |   2.9951 |   0.1346 | data/data_409593.bin_tc.bin |
| 409,593 | 24 | 247 | 1,669,750,513 |  13.4000 |   0.7234 |   5.9914 |   0.0001 |   0.1519 |   0.5970 |   1.2151 |   4.5520 |   0.1691 | data/data_409593.bin_tc.bin |
| 409,593 | 16 | 247 | 1,669,750,513 |  15.0029 |   0.7044 |   3.8985 |   0.0001 |   0.2248 |   0.7851 |   1.7911 |   7.3471 |   0.2517 | data/data_409593.bin_tc.bin |
| 409,593 | 8 | 247 | 1,669,750,513 |  22.6766 |   0.7035 |   4.4752 |   0.0001 |   0.2697 |   1.2783 |   3.4200 |  12.0441 |   0.4859 | data/data_409593.bin_tc.bin |
| 552,020 | 40 | 520 | 910,070,918 |   7.0400 |   0.7119 |   1.8507 |   0.0001 |   0.0900 |   0.4855 |   0.5029 |   3.3281 |   0.0708 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
| 552,020 | 32 | 520 | 910,070,918 |   8.4701 |   0.7175 |   2.4881 |   0.0001 |   0.1071 |   0.5434 |   0.5381 |   3.9984 |   0.0775 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
| 552,020 | 24 | 520 | 910,070,918 |  11.8649 |   0.7200 |   3.2001 |   0.0001 |   0.1687 |   0.6614 |   0.7413 |   6.2878 |   0.0853 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
| 552,020 | 16 | 520 | 910,070,918 |  16.5896 |   0.7048 |   3.5643 |   0.0004 |   0.2743 |   0.9243 |   0.9737 |  10.0261 |   0.1217 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
| 552,020 | 8 | 520 | 910,070,918 |  26.6116 |   0.6899 |   4.2169 |   0.0003 |   0.5418 |   1.2492 |   1.8895 |  17.7989 |   0.2249 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
| 1,049,866 | 40 | 31 | 1,911,754,892 |   8.6460 |   0.7157 |   6.5968 |   0.0004 |   0.0136 |   0.2329 |   0.7451 |   0.2396 |   0.1020 | data/com-dblpungraph.bin_tc.bin |
| 1,049,866 | 32 | 31 | 1,911,754,892 |   9.3588 |   0.7143 |   7.0478 |   0.0004 |   0.0143 |   0.2698 |   0.9018 |   0.2843 |   0.1262 | data/com-dblpungraph.bin_tc.bin |
| 1,049,866 | 24 | 31 | 1,911,754,892 |   9.0769 |   0.7194 |   6.2812 |   0.0002 |   0.0163 |   0.3297 |   1.1870 |   0.3701 |   0.1730 | data/com-dblpungraph.bin_tc.bin |
| 1,049,866 | 16 | 31 | 1,911,754,892 |   9.6291 |   0.7045 |   5.8916 |   0.0003 |   0.0239 |   0.4427 |   1.7686 |   0.5422 |   0.2553 | data/com-dblpungraph.bin_tc.bin |
| 1,049,866 | 8 | 31 | 1,911,754,892 |  13.8682 |   0.7001 |   7.3139 |   0.0003 |   0.0225 |   0.6343 |   3.3221 |   1.3204 |   0.5545 | data/com-dblpungraph.bin_tc.bin |


### Traditional MPI and Sort method

| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 40 | 31 | 884,179,859 |   3.9188 |   0.7182 |   2.6918 |   0.0001 |   0.0104 |   0.0243 |   0.2803 |   0.1451 |   0.0486 | data/data_147892.bin_tc.bin |
| 147,892 | 32 | 31 | 884,179,859 |   4.4190 |   0.7144 |   3.1178 |   0.0001 |   0.0107 |   0.0262 |   0.3365 |   0.1541 |   0.0592 | data/data_147892.bin_tc.bin |
| 147,892 | 24 | 31 | 884,179,859 |   4.2474 |   0.7120 |   2.7844 |   0.0001 |   0.0123 |   0.0282 |   0.4394 |   0.1926 |   0.0785 | data/data_147892.bin_tc.bin |
| 147,892 | 16 | 31 | 884,179,859 |   5.2554 |   0.7043 |   3.4739 |   0.0001 |   0.0140 |   0.0340 |   0.6409 |   0.2727 |   0.1156 | data/data_147892.bin_tc.bin |
| 147,892 | 8 | 31 | 884,179,859 |   6.7627 |   0.6957 |   4.0609 |   0.0001 |   0.0179 |   0.0510 |   1.2538 |   0.4556 |   0.2278 | data/data_147892.bin_tc.bin |
| 165,435 | 40 | 606 | 871,365,688 |   6.8425 |   0.7164 |   2.2052 |   0.0001 |   0.0669 |   0.1651 |   0.3301 |   3.3010 |   0.0578 | data/data_165435.bin_tc.bin |
| 165,435 | 32 | 606 | 871,365,688 |   7.9981 |   0.7136 |   2.3341 |   0.0001 |   0.0589 |   0.2400 |   0.3424 |   4.2286 |   0.0804 | data/data_165435.bin_tc.bin |
| 165,435 | 24 | 606 | 871,365,688 |  10.1218 |   0.7110 |   2.6527 |   0.0001 |   0.0688 |   0.2846 |   0.3439 |   5.9779 |   0.0827 | data/data_165435.bin_tc.bin |
| 165,435 | 16 | 606 | 871,365,688 |  14.9891 |   0.7060 |   2.9069 |   0.0001 |   0.1501 |   0.3305 |   0.4555 |  10.2955 |   0.1445 | data/data_165435.bin_tc.bin |
| 165,435 | 8 | 606 | 871,365,688 |  23.0611 |   0.6994 |   3.5592 |   0.0001 |   0.4306 |   0.4640 |   0.9750 |  16.6645 |   0.2684 | data/data_165435.bin_tc.bin |
| 409,593 | 40 | 247 | 1,669,750,513 |   8.6752 |   0.7095 |   4.5759 |   0.0001 |   0.0799 |   0.1752 |   0.6900 |   2.3422 |   0.1024 | data/data_409593.bin_tc.bin |
| 409,593 | 32 | 247 | 1,669,750,513 |  10.6138 |   0.7163 |   5.5562 |   0.0001 |   0.0960 |   0.2068 |   0.8198 |   3.1015 |   0.1172 | data/data_409593.bin_tc.bin |
| 409,593 | 24 | 247 | 1,669,750,513 |  12.9334 |   0.7138 |   5.7177 |   0.0001 |   0.1422 |   0.2465 |   1.2603 |   4.7088 |   0.1442 | data/data_409593.bin_tc.bin |
| 409,593 | 16 | 247 | 1,669,750,513 |  14.7026 |   0.7000 |   3.8446 |   0.0001 |   0.2506 |   0.2590 |   1.8450 |   7.5945 |   0.2088 | data/data_409593.bin_tc.bin |
| 409,593 | 8 | 247 | 1,669,750,513 |  21.7384 |   0.6980 |   4.1218 |   0.0001 |   0.3025 |   0.2550 |   3.5515 |  12.3194 |   0.4902 | data/data_409593.bin_tc.bin |
| 552,020 | 40 | 520 | 910,070,918 |   7.1543 |   0.7130 |   2.2365 |   0.0001 |   0.0906 |   0.2210 |   0.4896 |   3.3442 |   0.0593 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
| 552,020 | 32 | 520 | 910,070,918 |   8.7171 |   0.7170 |   3.0017 |   0.0001 |   0.1148 |   0.2749 |   0.5289 |   3.9925 |   0.0871 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
| 552,020 | 24 | 520 | 910,070,918 |  11.1440 |   0.7120 |   2.7996 |   0.0001 |   0.1793 |   0.3563 |   0.6855 |   6.3262 |   0.0851 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
| 552,020 | 16 | 520 | 910,070,918 |  15.6662 |   0.7096 |   3.0937 |   0.0004 |   0.2741 |   0.3670 |   0.9559 |  10.1284 |   0.1372 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
| 552,020 | 8 | 520 | 910,070,918 |  26.2235 |   0.7046 |   4.4827 |   0.0003 |   0.4945 |   0.4546 |   1.9101 |  17.9064 |   0.2703 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
| 1,049,866 | 40 | 31 | 1,911,754,892 |   6.8994 |   0.7109 |   5.0600 |   0.0004 |   0.0146 |   0.0372 |   0.7130 |   0.2603 |   0.1029 | data/com-dblpungraph.bin_tc.bin |
| 1,049,866 | 32 | 31 | 1,911,754,892 |   9.2441 |   0.7147 |   7.1670 |   0.0004 |   0.0147 |   0.0421 |   0.8748 |   0.3043 |   0.1262 | data/com-dblpungraph.bin_tc.bin |
| 1,049,866 | 24 | 31 | 1,911,754,892 |   8.4190 |   0.7124 |   5.9171 |   0.0001 |   0.0181 |   0.0483 |   1.1621 |   0.3918 |   0.1692 | data/com-dblpungraph.bin_tc.bin |
| 1,049,866 | 16 | 31 | 1,911,754,892 |   9.6457 |   0.7046 |   6.2971 |   0.0004 |   0.0213 |   0.0646 |   1.7288 |   0.5799 |   0.2490 | data/com-dblpungraph.bin_tc.bin |
| 1,049,866 | 8 | 31 | 1,911,754,892 |  12.8488 |   0.6959 |   6.7516 |   0.0003 |   0.0231 |   0.1107 |   3.3234 |   1.3819 |   0.5619 | data/com-dblpungraph.bin_tc.bin |


### Utility program for chart generation
- To parse Polaris results, use [`parse_results.py`](parse_results.py) program.
- To generate charts, create a virtual environment, install necessary packages, and use [`generate_graphs.py`](generate_graphs.py) program.
```shell
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
python generate_graphs.py
```

### Results visualization
#### CUDA AWARE MPI: Two pass vs sort 
![alt Two pass vs sort approach in CUDA AWARE MPI](drawing/total_time/cuda_aware_mpi_pass_vs_sort.png)

#### Traditional MPI: Two pass vs sort
![alt Two pass vs sort approach in Traditional MPI](drawing/total_time/traditional_mpi_pass_vs_sort.png)

#### CUDA AWARE MPI vs Traditional MPI (Two pass)
![alt Two pass](drawing/total_time/cuda_aware_mpi_pass_vs_traditional_mpi_pass.png)

#### CUDA AWARE MPI vs Traditional MPI (Sort)
![alt Sort](drawing/total_time/cuda_aware_mpi_sort_vs_traditional_mpi_sort.png)

#### Event Breakdown
[drawing/breakdown](drawing/breakdown) has individual event breakdown results.

### References
- [Polaris User Guides](https://docs.alcf.anl.gov/polaris/getting-started/)
- [Polaris running jobs](https://docs.alcf.anl.gov/polaris/running-jobs/)
- [Polaris CUDA MPI job example](https://github.com/argonne-lcf/GettingStarted/tree/master/Examples/Polaris/affinity_gpu)
- [ALCF disk quota](https://docs.alcf.anl.gov/data-management/filesystem-and-storage/disk-quota/)
- [Stackoverflow answer for all gather vs all to all](https://stackoverflow.com/a/34113431/3129414)
- [Blog on MPI](https://www.codeproject.com/Articles/896437/A-Gentle-Introduction-to-the-Message-Passing-Inter)
- [MPI all to all](https://mpi.deino.net/mpi_functions/MPI_Alltoall.html)
- [Thrust: The C++ Parallel Algorithms Library](https://nvidia.github.io/cccl/thrust/)
- [SO question on CudaFree](https://stackoverflow.com/questions/13100615/cudafree-is-not-freeing-memory)
- [SO question on CudaMemset](https://stackoverflow.com/questions/62055890/does-cudamalloc-initialize-the-array-to-0)
- [NVHPC MPI docs](https://docs.nvidia.com/hpc-sdk//compilers/hpc-compilers-user-guide/index.html#mpi-use)