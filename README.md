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

### CPU MPI and Two pass method

| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 40 | 31 | 884,179,859 |   2.2631 |   0.0186 |   1.6634 |   0.0001 |   0.0094 |   0.0976 |   0.2930 |   0.1340 |   0.0471 | data/data_147892.bin_tc.bin |
| 147,892 | 32 | 31 | 884,179,859 |   2.7128 |   0.0058 |   2.0315 |   0.0001 |   0.0103 |   0.1077 |   0.3499 |   0.1483 |   0.0593 | data/data_147892.bin_tc.bin |
| 147,892 | 24 | 31 | 884,179,859 |   3.3090 |   0.0058 |   2.4568 |   0.0001 |   0.0116 |   0.1228 |   0.4479 |   0.1867 |   0.0772 | data/data_147892.bin_tc.bin |
| 147,892 | 16 | 31 | 884,179,859 |   4.4394 |   0.0056 |   3.2790 |   0.0001 |   0.0126 |   0.1557 |   0.6381 |   0.2321 |   0.1162 | data/data_147892.bin_tc.bin |
| 147,892 | 8 | 31 | 884,179,859 |   6.5362 |   0.0078 |   4.3585 |   0.0001 |   0.0176 |   0.2385 |   1.2550 |   0.4297 |   0.2291 | data/data_147892.bin_tc.bin |
| 165,435 | 40 | 606 | 871,365,688 |   5.5808 |   0.0058 |   2.1303 |   0.0001 |   0.0584 |   0.3204 |   0.3661 |   2.6144 |   0.0853 | data/data_165435.bin_tc.bin |
| 165,435 | 32 | 606 | 871,365,688 |   6.0812 |   0.0058 |   1.7538 |   0.0001 |   0.0496 |   0.3927 |   0.3714 |   3.4108 |   0.0971 | data/data_165435.bin_tc.bin |
| 165,435 | 24 | 606 | 871,365,688 |   8.3186 |   0.0058 |   2.3752 |   0.0001 |   0.0500 |   0.4848 |   0.3720 |   4.9163 |   0.1145 | data/data_165435.bin_tc.bin |
| 165,435 | 16 | 606 | 871,365,688 |  11.6134 |   0.0057 |   2.4824 |   0.0001 |   0.1208 |   0.5801 |   0.4177 |   7.8644 |   0.1423 | data/data_165435.bin_tc.bin |
| 165,435 | 8 | 606 | 871,365,688 |  22.7054 |   0.0057 |   3.5588 |   0.0001 |   0.3609 |   0.9173 |   0.9025 |  16.6911 |   0.2690 | data/data_165435.bin_tc.bin |
| 409,593 | 40 | 247 | 1,669,750,513 |   7.6012 |   0.0057 |   4.5519 |   0.0001 |   0.0738 |   0.4400 |   0.6562 |   1.7453 |   0.1281 | data/data_409593.bin_tc.bin |
| 409,593 | 32 | 247 | 1,669,750,513 |   7.5293 |   0.0057 |   3.6263 |   0.0001 |   0.0858 |   0.4919 |   0.7963 |   2.3831 |   0.1401 | data/data_409593.bin_tc.bin |
| 409,593 | 24 | 247 | 1,669,750,513 |  11.5802 |   0.0057 |   6.1173 |   0.0001 |   0.1224 |   0.5664 |   1.1273 |   3.4374 |   0.2035 | data/data_409593.bin_tc.bin |
| 409,593 | 16 | 247 | 1,669,750,513 |  12.5122 |   0.0058 |   4.0388 |   0.0001 |   0.1735 |   0.7499 |   1.6411 |   5.6731 |   0.2300 | data/data_409593.bin_tc.bin |
| 409,593 | 8 | 247 | 1,669,750,513 |  22.3079 |   0.0057 |   4.5878 |   0.0001 |   0.3319 |   1.3972 |   3.4707 |  12.0254 |   0.4891 | data/data_409593.bin_tc.bin |
| 552,020 | 40 | 520 | 910,070,918 |   5.9071 |   0.0058 |   2.0741 |   0.0001 |   0.0852 |   0.4966 |   0.5491 |   2.6082 |   0.0881 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
| 552,020 | 32 | 520 | 910,070,918 |   6.8740 |   0.0058 |   1.9770 |   0.0001 |   0.1020 |   0.5346 |   0.5779 |   3.5842 |   0.0924 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
| 552,020 | 24 | 520 | 910,070,918 |   8.6161 |   0.0058 |   1.9778 |   0.0001 |   0.1519 |   0.6283 |   0.7259 |   5.0070 |   0.1194 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
| 552,020 | 16 | 520 | 910,070,918 |  13.7563 |   0.0057 |   3.2147 |   0.0003 |   0.2324 |   0.9342 |   0.9258 |   8.3035 |   0.1396 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
| 552,020 | 8 | 520 | 910,070,918 |  25.8828 |   0.0058 |   4.0974 |   0.0003 |   0.5428 |   1.3114 |   1.9525 |  17.7475 |   0.2251 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
| 1,049,866 | 40 | 31 | 1,911,754,892 |   7.5272 |   0.0058 |   6.2326 |   0.0003 |   0.0137 |   0.2137 |   0.7235 |   0.2357 |   0.1019 | data/com-dblpungraph.bin_tc.bin |
| 1,049,866 | 32 | 31 | 1,911,754,892 |   8.9701 |   0.0058 |   7.4129 |   0.0004 |   0.0141 |   0.2417 |   0.8939 |   0.2747 |   0.1265 | data/com-dblpungraph.bin_tc.bin |
| 1,049,866 | 24 | 31 | 1,911,754,892 |   7.9908 |   0.0057 |   5.9975 |   0.0002 |   0.0171 |   0.2895 |   1.1567 |   0.3543 |   0.1699 | data/com-dblpungraph.bin_tc.bin |
| 1,049,866 | 16 | 31 | 1,911,754,892 |   9.9526 |   0.0058 |   7.0276 |   0.0003 |   0.0266 |   0.3864 |   1.7246 |   0.5270 |   0.2542 | data/com-dblpungraph.bin_tc.bin |
| 1,049,866 | 8 | 31 | 1,911,754,892 |  14.3225 |   0.0062 |   8.4519 |   0.0003 |   0.0219 |   0.6333 |   3.3363 |   1.3150 |   0.5575 | data/com-dblpungraph.bin_tc.bin |


### CPU MPI and Sort method

| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 40 | 31 | 884,179,859 |   3.2622 |   0.0169 |   2.7386 |   0.0001 |   0.0101 |   0.0230 |   0.2846 |   0.1408 |   0.0482 | data/data_147892.bin_tc.bin |
| 147,892 | 32 | 31 | 884,179,859 |   3.0088 |   0.0164 |   2.4058 |   0.0001 |   0.0103 |   0.0250 |   0.3381 |   0.1535 |   0.0596 | data/data_147892.bin_tc.bin |
| 147,892 | 24 | 31 | 884,179,859 |   3.7988 |   0.0058 |   3.0519 |   0.0001 |   0.0116 |   0.0270 |   0.4362 |   0.1882 |   0.0781 | data/data_147892.bin_tc.bin |
| 147,892 | 16 | 31 | 884,179,859 |   4.1740 |   0.0057 |   3.1196 |   0.0001 |   0.0131 |   0.0328 |   0.6396 |   0.2476 |   0.1155 | data/data_147892.bin_tc.bin |
| 147,892 | 8 | 31 | 884,179,859 |   5.8404 |   0.0057 |   3.8323 |   0.0001 |   0.0175 |   0.0504 |   1.2544 |   0.4475 |   0.2327 | data/data_147892.bin_tc.bin |
| 165,435 | 40 | 606 | 871,365,688 |   6.2792 |   0.0058 |   2.9854 |   0.0001 |   0.0642 |   0.1521 |   0.3780 |   2.6066 |   0.0870 | data/data_165435.bin_tc.bin |
| 165,435 | 32 | 606 | 871,365,688 |   6.6579 |   0.0057 |   2.5352 |   0.0001 |   0.0582 |   0.2236 |   0.3805 |   3.3575 |   0.0970 | data/data_165435.bin_tc.bin |
| 165,435 | 24 | 606 | 871,365,688 |   8.0328 |   0.0061 |   2.2524 |   0.0001 |   0.0649 |   0.2611 |   0.3715 |   4.9518 |   0.1249 | data/data_165435.bin_tc.bin |
| 165,435 | 16 | 606 | 871,365,688 |  11.6229 |   0.0058 |   2.7130 |   0.0001 |   0.1232 |   0.3068 |   0.4271 |   7.9036 |   0.1433 | data/data_165435.bin_tc.bin |
| 165,435 | 8 | 606 | 871,365,688 |  22.5142 |   0.0058 |   3.7234 |   0.0001 |   0.4158 |   0.4494 |   0.9768 |  16.6750 |   0.2679 | data/data_165435.bin_tc.bin |
| 409,593 | 40 | 247 | 1,669,750,513 |   8.2103 |   0.0160 |   5.3506 |   0.0001 |   0.0769 |   0.1655 |   0.6893 |   1.7865 |   0.1255 | data/data_409593.bin_tc.bin |
| 409,593 | 32 | 247 | 1,669,750,513 |   8.6302 |   0.0059 |   4.9501 |   0.0001 |   0.0882 |   0.1833 |   0.8182 |   2.4414 |   0.1432 | data/data_409593.bin_tc.bin |
| 409,593 | 24 | 247 | 1,669,750,513 |  10.4855 |   0.0057 |   5.2320 |   0.0001 |   0.1166 |   0.2121 |   1.1785 |   3.5685 |   0.1719 | data/data_409593.bin_tc.bin |
| 409,593 | 16 | 247 | 1,669,750,513 |  11.4365 |   0.0058 |   3.1929 |   0.0001 |   0.1843 |   0.2399 |   1.7342 |   5.8442 |   0.2350 | data/data_409593.bin_tc.bin |
| 409,593 | 8 | 247 | 1,669,750,513 |  20.9791 |   0.0057 |   4.0802 |   0.0001 |   0.3287 |   0.2637 |   3.5958 |  12.2760 |   0.4288 | data/data_409593.bin_tc.bin |
| 552,020 | 40 | 520 | 910,070,918 |   5.4296 |   0.0059 |   1.8898 |   0.0001 |   0.0878 |   0.2045 |   0.5322 |   2.6142 |   0.0952 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
| 552,020 | 32 | 520 | 910,070,918 |   7.5453 |   0.0059 |   2.9327 |   0.0001 |   0.1101 |   0.2566 |   0.5913 |   3.5392 |   0.1094 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
| 552,020 | 24 | 520 | 910,070,918 |   9.3409 |   0.0057 |   2.9673 |   0.0001 |   0.1557 |   0.3255 |   0.6755 |   5.0847 |   0.1264 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
| 552,020 | 16 | 520 | 910,070,918 |  13.2613 |   0.0058 |   3.2619 |   0.0004 |   0.2390 |   0.3380 |   0.9272 |   8.3493 |   0.1398 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
| 552,020 | 8 | 520 | 910,070,918 |  25.2020 |   0.0058 |   4.1503 |   0.0003 |   0.4979 |   0.4267 |   1.8965 |  17.9536 |   0.2707 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
| 1,049,866 | 40 | 31 | 1,911,754,892 |   7.4207 |   0.0058 |   6.3091 |   0.0003 |   0.0149 |   0.0364 |   0.7121 |   0.2406 |   0.1014 | data/com-dblpungraph.bin_tc.bin |
| 1,049,866 | 32 | 31 | 1,911,754,892 |   7.3306 |   0.0058 |   5.9782 |   0.0004 |   0.0148 |   0.0396 |   0.8752 |   0.2907 |   0.1260 | data/com-dblpungraph.bin_tc.bin |
| 1,049,866 | 24 | 31 | 1,911,754,892 |   7.8847 |   0.0058 |   6.1237 |   0.0001 |   0.0172 |   0.0467 |   1.1528 |   0.3681 |   0.1705 | data/com-dblpungraph.bin_tc.bin |
| 1,049,866 | 16 | 31 | 1,911,754,892 |   8.4686 |   0.0057 |   5.8716 |   0.0003 |   0.0184 |   0.0624 |   1.7268 |   0.5304 |   0.2530 | data/com-dblpungraph.bin_tc.bin |
| 1,049,866 | 8 | 31 | 1,911,754,892 |  12.7895 |   0.0063 |   7.3936 |   0.0003 |   0.0252 |   0.1081 |   3.3209 |   1.3743 |   0.5608 | data/com-dblpungraph.bin_tc.bin |



This table provides a performance summary of All-to-All communication methods using both sorting and two-pass methods.
The performance is evaluated in terms of the time taken by each method in the same execution on Polaris.

| Dataset            | # Input | # Process | # Iterations | # TC         | Sorting Method Time (s) | Two Pass Method Time (s) |
|--------------------|---------|-----------|--------------|--------------|-------------------------|--------------------------|
| p2p-Gnutella31     | 147,892 | 40        | 31           | 884,179,859  | 3.6863                  | 2.8211                   |
| p2p-Gnutella31     | 147,892 | 32        | 31           | 884,179,859  | 3.4231                  | 3.3650                   |
| p2p-Gnutella31     | 147,892 | 24        | 31           | 884,179,859  | 3.8711                  | 3.5686                   |
| p2p-Gnutella31     | 147,892 | 16        | 31           | 884,179,859  | 4.2495                  | 4.5925                   |
| p2p-Gnutella31     | 147,892 | 8         | 31           | 884,179,859  | 4.9168                  | 5.5405                   |
| usroad             | 165,435 | 40        | 606          | 871,365,688  | 12.2708                 | 12.3503                  |
| usroad             | 165,435 | 32        | 606          | 871,365,688  | 12.3314                 | 11.3393                  |
| usroad             | 165,435 | 24        | 606          | 871,365,688  | 12.7211                 | 13.1363                  |
| usroad             | 165,435 | 16        | 606          | 871,365,688  | 14.2997                 | 13.5109                  |
| usroad             | 165,435 | 8         | 606          | 871,365,688  | 23.0048                 | 23.6570                  |
| fe_ocean           | 409,593 | 40        | 247          | 1,669,750,513| 11.7615                 | 10.3831                  |
| fe_ocean           | 409,593 | 32        | 247          | 1,669,750,513| 10.4713                 | 9.4638                   |
| fe_ocean           | 409,593 | 24        | 247          | 1,669,750,513| 10.8981                 | 11.9389                  |
| fe_ocean           | 409,593 | 16        | 247          | 1,669,750,513| 12.4006                 | 12.0058                  |
| fe_ocean           | 409,593 | 8         | 247          | 1,669,750,513| 20.5007                 | 21.6534                  |
| vsp_finan          | 552,020 | 40        | 520          | 910,070,918  | 10.7563                 | 12.5607                  |
| vsp_finan          | 552,020 | 32        | 520          | 910,070,918  | 13.4290                 | 12.7959                  |
| vsp_finan          | 552,020 | 24        | 520          | 910,070,918  | 21.1224                 | 20.2548                  |
| vsp_finan          | 552,020 | 16        | 520          | 910,070,918  | 19.3254                 | 19.3602                  |
| vsp_finan          | 552,020 | 8         | 520          | 910,070,918  | 29.1141                 | 29.5762                  |
| com-dblp           | 1,049,866| 40       | 31           | 1,911,754,892| 7.0940                  | 6.8107                   |
| com-dblp           | 1,049,866| 32       | 31           | 1,911,754,892| 7.2212                  | 8.3900                   |
| com-dblp           | 1,049,866| 24       | 31           | 1,911,754,892| 7.1020                  | 8.0064                   |
| com-dblp           | 1,049,866| 16       | 31           | 1,911,754,892| 8.5480                  | 9.2024                   |
| com-dblp           | 1,049,866| 8        | 31           | 1,911,754,892| 11.4592                 | 12.9087                  |


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