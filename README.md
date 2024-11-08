## Datalog Applications using CUDA and MPI

This repository hosts code for Datalog applications optimized for multi-node, multi-GPU environments:

- Transitive Closure (TC)
- Same Generation (SG)
- Connected Components (CC)

### Flowchart of Same Generation

![alt flow chart sg](drawing/flowchart_sg.png)

### Flowchart of Connected Component

![alt flow chart cc](drawing/flowchart_cc.png)

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

#### Transitive Closure (TC) datasets

| Dataset        | # Input   | # Iterations | # TC          | # TC / Iteration | Path                                   |
|----------------|-----------|--------------|---------------|------------------|----------------------------------------|
| com-dblp       | 1,049,866 | 31           | 1,911,754,892 | 61,670,160       | data/com-dblpungraph.bin               |
| vsp_finan      | 552,020   | 520          | 910,070,918   | 1,750,136        | data/vsp_finan512_scagr7-2c_rlfddd.bin |
| fe_ocean       | 409,593   | 247          | 1,669,750,513 | 6,760,526        | data/data_409593.bin                   |
| usroad         | 165,435   | 606          | 871,365,688   | 1,437,840        | data/data_165435.bin                   |
| p2p-Gnutella31 | 147,892   | 31           | 884,179,859   | 28,522,576       | data/data_147892.bin                   |
| TG.cedge       | 23,874    | 58           | 481,121       | 8,295            | data/data_23874.bin                    |
| OL.cedge       | 7,035     | 64           | 146,120       | 2,283            | data/data_7035.bin                     |
| Small          | 10        | 3            | 18            | 6                | data/data_10.bin                       |
| Extra small    | 5         | 3            | 9             | 3                | data/hipc_2019.bin                     |

#### Same Generation (SG) datasets

| Dataset        | # Input | # Iterations | # SG          | # SG / Iteration | Path                                   |
|----------------|---------|--------------|---------------|------------------|----------------------------------------|
| vsp_finan      | 552,020 | 513          | 864,761,518   | 1,685,748        | data/vsp_finan512_scagr7-2c_rlfddd.bin |
| fe_ocean       | 409,593 | 77           | 65,941,441    | 856,380          | data/data_409593.bin                   |
| usroad         | 165,435 | 588          | 3,137,407,481 | 5,335,060        | data/data_165435.bin                   |
| fe_body        | 163,734 | 40           | 408,443,204   | 10,211,080       | data/data_163734.bin                   |
| p2p-Gnutella31 | 147,892 | 20           | 3,700,737,910 | 185,036,895      | data/data_147892.bin                   |
| OL.cedge       | 7,035   | 56           | 285,431       | 5,096            | data/data_7035.bin                     |
| Small          | 10      | 2            | 11            | 5.5              | data/data_10.bin                       |
| Extra small    | 5       | 3            | 4             | 1.33             | data/hipc_2019.bin                     |

#### Weakly Connected Component (CC) datasets

| Dataset                                                                                                   | # Input       | # Iterations | # CC (# Nodes in largest WCC) | Path                  |
|-----------------------------------------------------------------------------------------------------------|---------------|--------------|-------------------------------|-----------------------|
| [web-BerkStan](https://snap.stanford.edu/data/web-BerkStan.html)                                          | 7,600,595     | 415          | 1,062 (654,782)               | data/web-BerkStan.bin |
| [roadNet-CA](https://snap.stanford.edu/data/roadNet-CA.html)                                              | 5,533,214     | 556          | 2,638 (1,957,027)             | data/roadNet-CA.bin   |
| [WikiTalk](https://snap.stanford.edu/data/wiki-Talk.html)                                                 | 5,021,410     | 9            | 2,555 (2,388,953)             | data/WikiTalk.bin     |
| [loc-Brightkite](https://snap.stanford.edu/data/loc-Brightkite.html)                                      | 214,078       | 12           | 547 (56,739)                  | data/data_214078.bin  |
| [as-skitter](https://snap.stanford.edu/data/as-Skitter.html)                                              | 11,095,298    | 23           | 756 (1,694,616)               | data/as-skitter.bin   |
| [webbase-2001](https://sparse.tamu.edu/LAW/webbase-2001)                                                  | 1,019,903,190 | x            | x                             | data/webbase-2001.bin      |
| [arabic-2005](https://sparse.tamu.edu/LAW/arabic-2005)                                                    | 639,999,458   | x            | x                             | data/arabic-2005.bin      |
| [com-Orkut](https://sparse.tamu.edu/SNAP/com-Orkut) [snap](https://snap.stanford.edu/data/com-Orkut.html) | 117,185,083   | x            | x                             | data/com-Orkut.bin      |
| [stokes](https://sparse.tamu.edu/VLSI/stokes)                                                             | 349,321,980   | x            | x                             | data/stokes.bin      |
| [uk-2002](https://sparse.tamu.edu/VLSI/uk-2002)                                                           | 298,113,762   | x            | x                             | data/uk-2002.bin      |
| [twitter_rv](https://github.com/ANLAB-KAIST/traces/releases/tag/twitter_rv.net)                           | x             | x            | x                             | data/twitter_rv.bin      |


#### Additional datasets

| Dataset    | # Input | # Iterations | # SG | # SG / Iteration | Path                 |
|------------|---------|--------------|------|------------------|----------------------|
| ego-Facebook | 88,234  | x            | x    | x                | data/data_88234.bin  |
| CA-HepTh   | 51,971  | x            | x    | x                | data/data_51971.bin  |
| fe_sphere  | 49,152  | x            | x    | x                | data/data_49152.bin  |
| SF.cedge   | 223,001 | x            | x    | x                | data/data_223001.bin |
| loc-Brightkite | 214,078 | x            | x    | x                | data/data_214078.bin |



## Utility Programs

### Dataset Utility Program

When using `MPI_File_read_at` and `MPI_File_write_at` at offset in MPI programs, this utility program becomes essential
because these MPI functions operate directly on binary files. `MPI_File_read_at` reads binary data from a specified
offset, and `MPI_File_write_at` writes binary data to a specified offset.
The utility program provides the necessary functionality to convert between text and binary formats.
The utility program supports two main operations: converting text to binary (`txt_to_bin`) and converting binary to
text (`bin_to_txt`).

- To convert text to binary:

```shell
python3 binary_file_utils.py txt_to_bin input_text_file output_binary_file
# python3 binary_file_utils.py txt_to_bin data/data_23874.txt data/data_23874.bin
```

- To convert binary to text:

```shell
python3 binary_file_utils.py bin_to_txt input_binary_file output_text_file
# python3 binary_file_utils.py bin_to_txt data/data_23874.bin_tc.bin data/data_23874_tc.txt
```

### Chart Generation Utility Program

- To parse Polaris results, use [`parse_results.py`](parse_results.py) program.
- To generate charts, create a virtual environment, install necessary packages, and use [
  `generate_graphs.py`](generate_graphs.py) program.

```shell
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
python generate_graphs.py
```

### Local run instructions

- Command like arguments:
    - `NPROCS=<n>` to set the number of processes
    - `DATA_FILE=<BINARY DATA FILE>` to set the binary datafile path
    - `CUDA_AWARE_MPI=<0/1>` to use CUDA AWARE MPI. Set it to `1` if system supports CUDA AWARE MPI, otherwise `0`.
    - `METHOD=<0/1>` to use two pass approach (0) or sorting technique (1) for all to all communication.

#### Transitive Closure (TC) semi naive evaluation

- Run the `tc.cu` program to generate transitive closure for a given data file.

```shell
# Using two pass method for communication
 make runtc DATA_FILE=data/data_23874.bin NPROCS=8 CUDA_AWARE_MPI=0 METHOD=0
nvcc tc.cu -o tc.out -I/usr/lib/x86_64-linux-gnu/openmpi -I/usr/lib/x86_64-linux-gnu/openmpi/include -L/usr/lib/x86_64-linux-gnu/openmpi/lib -lmpi -lm -O3 --extended-lambda
mpirun -np 8 ./tc.out data/data_23874.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 23,874 | 8 | 58 | 481,121 |   0.4023 |   0.0015 |   0.0332 |   0.0007 |   0.0877 |   0.0919 |   0.0267 |   0.0692 |   0.1207 |   0.0040 | data/data_23874.bin_tc.bin |

# Using sorting method for communication
make runtc DATA_FILE=data/data_23874.bin NPROCS=8 CUDA_AWARE_MPI=0 METHOD=1
nvcc tc.cu -o tc.out -I/usr/lib/x86_64-linux-gnu/openmpi -I/usr/lib/x86_64-linux-gnu/openmpi/include -L/usr/lib/x86_64-linux-gnu/openmpi/lib -lmpi -lm -O3 --extended-lambda
mpirun -np 8 ./tc.out data/data_23874.bin 0 1
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 23,874 | 8 | 58 | 481,121 |   0.4971 |   0.0018 |   0.0433 |   0.0006 |   0.0827 |   0.2010 |   0.0274 |   0.0652 |   0.1147 |   0.0036 | data/data_23874.bin_tc.bin |

```

It generated `data/data_23874.bin_tc.bin` file that contains all paths of the transitive closure for the input relation.

- Convert the generated binary to text file using `binary_file_utils.py`.

```shell
python3 binary_file_utils.py bin_to_txt data/data_23874.bin_tc.bin data/data_23874_tc.txt
```

#### Same Generation (SG)

- Run the `sg.cu` program to generate same generation graph for a given data file.

```shell
# Using two pass method for communication
make runsg DATA_FILE=data/data_7035.bin NPROCS=8 CUDA_AWARE_MPI=0 METHOD=0
nvcc sg.cu -o sg.out -I/usr/lib/x86_64-linux-gnu/openmpi -I/usr/lib/x86_64-linux-gnu/openmpi/include -L/usr/lib/x86_64-linux-gnu/openmpi/lib -lmpi -lm -O3 --extended-lambda
mpirun -np 8 ./sg.out data/data_7035.bin 0 0
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 7,035 | 8 | 56 | 285,431 |   0.5489 |   0.0031 |   0.0635 |   0.0007 |   0.1703 |   0.1664 |   0.0504 |   0.0645 |   0.0922 |   0.0013 | data/data_7035.bin_sg.bin |


# Using sorting method for communication
make runsg DATA_FILE=data/data_7035.bin NPROCS=8 CUDA_AWARE_MPI=0 METHOD=1
nvcc sg.cu -o sg.out -I/usr/lib/x86_64-linux-gnu/openmpi -I/usr/lib/x86_64-linux-gnu/openmpi/include -L/usr/lib/x86_64-linux-gnu/openmpi/lib -lmpi -lm -O3 --extended-lambda
mpirun -np 8 ./sg.out data/data_7035.bin 0 1
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 7,035 | 8 | 56 | 285,431 |   0.7463 |   0.0024 |   0.0510 |   0.0007 |   0.1615 |   0.3778 |   0.0509 |   0.0615 |   0.0903 |   0.0012 | data/data_7035.bin_sg.bin |
```

It generated `data/data_7035.bin_sg.bin` file that contains all paths of the transitive closure for the input relation.

- Convert the generated binary to text file using `binary_file_utils.py`.

```shell
python3 binary_file_utils.py bin_to_txt data/data_7035.bin_sg.bin data/data_7035_sg.txt
```

#### Connected Component (CC)

- Run the `wcc.cu` program to generate connected components for a given data file.

```shell
# Using two pass method for communication
make runwcc DATA_FILE=data/dummy.bin NPROCS=8 CUDA_AWARE_MPI=0 METHOD=0 
nvcc wcc.cu -o cc.out -I/usr/lib/x86_64-linux-gnu/openmpi -I/usr/lib/x86_64-linux-gnu/openmpi/include -L/usr/lib/x86_64-linux-gnu/openmpi/lib -lmpi -lm -O3 --extended-lambda
mpirun -np 8 ./cc.out data/dummy.bin 0 0
| # Input | # Process | # Iterations | # CC (# Largest WCC) | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 6 | 8 | 4 | 3 (3) |   0.0478 |   0.0014 |   0.0373 |   0.0007 |   0.0060 |   0.0087 |   0.0074 |   0.0143 |   0.0075 |   0.0017 | data/dummy.bin_cc.bin |

# Dataset: roadNet-CA https://snap.stanford.edu/data/roadNet-CA.html
make runwcc DATA_FILE=data/roadNet-CA.bin NPROCS=8 CUDA_AWARE_MPI=0 METHOD=0
nvcc wcc.cu -o cc.out -I/usr/lib/x86_64-linux-gnu/openmpi -I/usr/lib/x86_64-linux-gnu/openmpi/include -L/usr/lib/x86_64-linux-gnu/openmpi/lib -lmpi -lm -O3 --extended-lambda
mpirun -np 8 ./cc.out data/roadNet-CA.bin 0 0
| # Input | # Process | # Iterations | # CC (# Nodes in largest WCC) | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 5,533,214 | 8 | 556 | 2,638 (1,957,027) |  10.9719 |   0.0117 |   0.0434 |   0.0039 |   0.6249 |   1.3159 |   2.2648 |   2.3716 |   4.3665 |   0.0125 | data/roadNet-CA.bin_cc.bin |


# Using sorting method for communication
make runwcc DATA_FILE=data/dummy.bin NPROCS=8 CUDA_AWARE_MPI=0 METHOD=1
```

It generated `data/dummy.bin_cc.bin` file that contains all paths of the transitive closure for the input relation.

- Convert the generated binary to text file using `binary_file_utils.py`.

```shell
python3 binary_file_utils.py bin_to_txt data/dummy.bin_cc.bin data/dummy_cc.txt
```

## Run using Docker (`CUDA_AWARE_MPI` = 1)

```shell
docker build -t mnmgjoindocker .
docker run --rm --entrypoint=bash -it --gpus all -v $(pwd):/opt/mnmgjoin mnmgjoindocker

# TC
mnmgjoin@afe1ab5e7adc:/opt/mnmgjoin$ /opt/nvidia/hpc_sdk/Linux_x86_64/24.1/comm_libs/hpcx/bin/mpicxx tc.cu -o tc.out -O3
## Two pass method
mnmgjoin@afe1ab5e7adc:/opt/mnmgjoin$ /opt/nvidia/hpc_sdk/Linux_x86_64/24.1/comm_libs/hpcx/bin/mpirun -np 4 ./tc.out data/data_23874.bin 1 0
## Sort method
mnmgjoin@afe1ab5e7adc:/opt/mnmgjoin$ /opt/nvidia/hpc_sdk/Linux_x86_64/24.1/comm_libs/hpcx/bin/mpirun -np 4 ./tc.out data/data_23874.bin 1 1

# SG
mnmgjoin@afe1ab5e7adc:/opt/mnmgjoin$ /opt/nvidia/hpc_sdk/Linux_x86_64/24.1/comm_libs/hpcx/bin/mpicxx sg.cu -o sg.out -O3
## Two pass method
mnmgjoin@afe1ab5e7adc:/opt/mnmgjoin$ /opt/nvidia/hpc_sdk/Linux_x86_64/24.1/comm_libs/hpcx/bin/mpirun -np 4 ./sg.out data/data_7035.bin 1 0
## Sort method
mnmgjoin@afe1ab5e7adc:/opt/mnmgjoin$ /opt/nvidia/hpc_sdk/Linux_x86_64/24.1/comm_libs/hpcx/bin/mpirun -np 4 ./sg.out data/data_7035.bin 1 1

# CC
mnmgjoin@afe1ab5e7adc:/opt/mnmgjoin$ /opt/nvidia/hpc_sdk/Linux_x86_64/24.1/comm_libs/hpcx/bin/mpicxx wcc.cu -o cc.out -O3
## Two pass method
mnmgjoin@afe1ab5e7adc:/opt/mnmgjoin$ /opt/nvidia/hpc_sdk/Linux_x86_64/24.1/comm_libs/hpcx/bin/mpirun -np 4 ./cc.out data/dummy.bin 1 0
/opt/nvidia/hpc_sdk/Linux_x86_64/24.1/comm_libs/hpcx/bin/mpirun -np 8 ./cc.out data/roadNet-CA.bin 1 0
## Sort method
mnmgjoin@afe1ab5e7adc:/opt/mnmgjoin$ /opt/nvidia/hpc_sdk/Linux_x86_64/24.1/comm_libs/hpcx/bin/mpirun -np 4 ./cc.out data/dummy.bin 1 1
```

## Run in Polaris

### 1 node interactive node
```shell
qsub -I -l select=1 -l filesystems=home:eagle -l walltime=1:00:00 -q debug -A dist_relational_alg
cd mnmgJOIN
chmod +x set_affinity_gpu_polaris.sh
## Traditional MPI
CC tc.cu -o tc_interactive.out
CC sg.cu -o sg_interactive.out
CC wcc.cu -o wcc_interactive.out
CC single_join.cu -o single_join_interactive.out 
./single_join_interactive.out data/data_165435.bin 0 1
mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join_interactive.out data/data_165435.bin 0 1
mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_interactive.out data/data_165435.bin 0 1


./tc_interactive.out data/data_163734.bin 0 1  
```

### Transitive Closure Computation (TC)

The job script [tc-merged.sh](tc-merged.sh) contains the multi node multi GPU configuration for Polaris.
Change this file to change the number of nodes in `PBS -l select=10:system=polaris` (default 10).
Also change the path of the source repository.
Currently, it is spawning 4 ranks per node and sets 1 GPU per MPI rank.

```shell
ssh arsho@polaris.alcf.anl.gov
cd mnmgJOIN/
make clean
git fetch
git reset --hard origin/main
chmod +x set_affinity_gpu_polaris.sh
chmod +x tc-merged.sh
rm tc-merged.output 
rm tc-merged.error 
qsub tc-merged.sh 
qstat -u $USER
qstat -Qf small
cat tc-merged.error
cat tc-merged.output

# Interactive 1 node run tc
ssh arsho@polaris.alcf.anl.gov
# 1 node
qsub -I -l select=1 -l filesystems=home:eagle -l walltime=1:00:00 -q debug -A dist_relational_alg
cd mnmgJOIN
chmod +x set_affinity_gpu_polaris.sh
## Traditional MPI
CC tc.cu -o tc_interactive.out 
mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_interactive.out data/data_165435.bin 0 0

module load craype-accel-nvidia80
export MPICH_GPU_SUPPORT_ENABLED=1
## CUDA-AWARE-MPI
CC tc.cu -o tc_interactive.out -g -O1
mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_interactive.out data/data_165435.bin 1 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 4 | 606 | 871,365,688 |  40.5196 |   0.5299 |   6.0761 |   0.0003 |   0.2900 |   0.7357 |  12.1137 |   0.5656 |  25.8573 |   0.4270 | data/data_165435.bin_tc.bin |
mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_interactive.out data/data_165435.bin 1 1

# Debugging on 4 nodes
# 4 nodes
qsub -I -l select=4 -l filesystems=home:eagle -l walltime=1:00:00 -q debug-scaling -A dist_relational_alg
arsho::x3106c0s25b1n0 { ~/mnmgJOIN }-> module load craype-accel-nvidia80
arsho::x3106c0s25b1n0 { ~/mnmgJOIN }-> export MPICH_GPU_SUPPORT_ENABLED=1
arsho::x3106c0s25b1n0 { ~/mnmgJOIN }-> 
arsho::x3106c0s25b1n0 { ~/mnmgJOIN }-> CC tc.cu -o tc_interactive.out -g -O1
arsho::x3106c0s25b1n0 { ~/mnmgJOIN }-> mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_interactive.out data/data_147892.bin 1 0
MPICH ERROR [Rank 3] [job id 7b36a3f1-595c-422e-8040-8c8a3bb3eec1] [Mon Sep 23 22:55:29 2024] [x3106c0s25b1n0] - Abort(875110671) (rank 3 in comm 0): Fatal error in PMPI_Alltoallv: Other MPI error, error stack:
PMPI_Alltoallv(386).........: MPI_Alltoallv(sbuf=0x152f532f9000, scnts=0x2bde4c0, sdispls=0x2b70230, dtype=0x4c00083e, rbuf=0x152f53344400, rcnts=0x2b712d0, rdispls=0x2bb63c0, datatype=dtype=0x4c00083e, comm=MPI_COMM_WORLD) failed
MPIR_CRAY_Alltoallv(1180)...: 
MPIC_Isend(511).............: 
MPID_Isend_coll(610)........: 
MPIDI_isend_coll_unsafe(176): 
MPIDI_OFI_send_normal(372)..: OFI tagged senddata failed (ofi_send.h:372:MPIDI_OFI_send_normal:Resource temporarily unavailable)

aborting job:
Fatal error in PMPI_Alltoallv: Other MPI error, error stack:
PMPI_Alltoallv(386).........: MPI_Alltoallv(sbuf=0x152f532f9000, scnts=0x2bde4c0, sdispls=0x2b70230, dtype=0x4c00083e, rbuf=0x152f53344400, rcnts=0x2b712d0, rdispls=0x2bb63c0, datatype=dtype=0x4c00083e, comm=MPI_COMM_WORLD) failed
MPIR_CRAY_Alltoallv(1180)...: 
MPIC_Isend(511).............: 
MPID_Isend_coll(610)........: 
MPIDI_isend_coll_unsafe(176): 
MPIDI_OFI_send_normal(372)..: OFI tagged senddata failed (ofi_send.h:372:MPIDI_OFI_send_normal:Resource temporarily unavailable)
x3106c0s25b1n0.hsn.cm.polaris.alcf.anl.gov: rank 3 exited with code 255
x3106c0s25b1n0.hsn.cm.polaris.alcf.anl.gov: rank 0 died from signal 15
arsho::x3106c0s25b1n0 { ~/mnmgJOIN }-> mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_interactive.out data/data_147892.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 16 | 31 | 884,179,859 |   1.1596 |   0.0057 |   2.5608 |   0.0001 |   0.0247 |   0.1434 |   0.6399 |   0.0690 |   0.1587 |   0.1181 | data/data_147892.bin_tc.bin |

arsho::x3106c0s25b1n0 { ~/mnmgJOIN }-> mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_interactive.out data/data_147892.bin 1 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 8 | 31 | 884,179,859 |   1.7675 |   0.0058 |   5.9972 |   0.0001 |   0.0385 |   0.2590 |   0.7708 |   0.1249 |   0.3405 |   0.2281 | data/data_147892.bin_tc.bin |




```

### Same Generation (SG)

The job script [sg-merged.sh](sg-merged.sh) contains the multi node multi GPU configuration for Polaris.
Change this file to change the number of nodes in `PBS -l select=10:system=polaris` (default 10).
Also change the path of the source repository.
Currently, it is spawning 4 ranks per node and sets 1 GPU per MPI rank.

```shell
ssh arsho@polaris.alcf.anl.gov
cd mnmgJOIN/
make clean
git fetch
git reset --hard origin/main
chmod +x set_affinity_gpu_polaris.sh
chmod +x sg-merged.sh
rm sg-merged.output 
rm sg-merged.error 
qsub sg-merged.sh 

qstat -u $USER
qstat -Qf small
cat sg-merged.error
cat sg-merged.output

# Interactive 1 node run sg
ssh arsho@polaris.alcf.anl.gov
qsub -I -l select=1 -l filesystems=home:eagle -l walltime=1:00:00 -q debug -A dist_relational_alg
cd mnmgJOIN
chmod +x set_affinity_gpu_polaris.sh
## Traditional MPI
CC sg.cu -o sg_interactive.out
mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg_interactive.out data/data_7035.bin 0 0
## CUDA-AWARE-MPI
module load craype-accel-nvidia80
export MPICH_GPU_SUPPORT_ENABLED=1
CC sg.cu -o sg_interactive.out
mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg_interactive.out data/data_7035.bin 1 0
| 7,035 | 4 | 56 | 285,431 |   1.6210 |   0.5389 |   1.3432 |   0.0001 |   0.0091 |   0.0106 |   1.0314 |   0.0060 |   0.0243 |   0.0006 | data/data_7035.bin_sg.bin |
```

### Connected Component (CC)

The job script [cc-merged.sh](cc-merged.sh) contains the multi node multi GPU configuration for Polaris.
Change this file to change the number of nodes in `PBS -l select=10:system=polaris` (default 10).
Also change the path of the source repository.
Currently, it is spawning 4 ranks per node and sets 1 GPU per MPI rank.

```shell
ssh arsho@polaris.alcf.anl.gov
cd mnmgJOIN/
make clean
git fetch
git reset --hard origin/main
chmod +x set_affinity_gpu_polaris.sh
chmod +x wcc-merged.sh
rm wcc-merged.output 
rm wcc-merged.error 
qsub wcc-merged.sh 
2084089.polaris-pbs-01.hsn.cm.polaris.alcf.anl.gov
qstat -u $USER
qstat -Qf small
cat wcc-merged.error
cat wcc-merged.output

# Interactive 1 node run sg
ssh arsho@polaris.alcf.anl.gov
qsub -I -l select=1 -l filesystems=home:eagle -l walltime=1:00:00 -q debug -A dist_relational_alg
cd mnmgJOIN
chmod +x set_affinity_gpu_polaris.sh

# Debugging memory leak
CC wcc.cu -o cc_interactive.out -g -O1
mpiexec --np 4 ./cc_interactive.out data/flickr.bin 0 0
mpiexec --np 20 ./cc_interactive.out data/flickr.bin 0 0


## Traditional MPI
CC wcc.cu -o cc_interactive.out
mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./cc_interactive.out data/flickr.bin 0 0
## CUDA-AWARE-MPI
module load craype-accel-nvidia80
export MPICH_GPU_SUPPORT_ENABLED=1



module load valgrind4hpc/2.13.2

mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./cc_interactive.out data/flickr.bin 1 0


valgrind4hpc -n4 --launcher-args="--ppn 4 --depth=4 --cpu-bind" --valgrind-args="--track-origins=yes --leak-check=full" ./cc_interactive.out -- data/dummy.bin 1 0

valgrind4hpc --np 4  --ppn 4 --depth=4 --cpu-bind ./set_affinity_gpu_polaris.sh --valgrind-args="--leak-check=yes" ./cc_interactive.out data/dummy.bin 1 0

mpiexec --np 4  --ppn 4 --depth=4 --cpu-bind depth /opt/cray/pe/valgrind4hpc/2.13.2/bin/valgrind --leak-check=full --track-origins=yes ./set_affinity_gpu_polaris.sh ./cc_interactive.out data/dummy.bin 1 0


mpiexec --np 4  --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh /opt/cray/pe/valgrind4hpc/2.13.2/bin/valgrind --leak-check=full --track-origins=yes ./cc_interactive.out data/dummy.bin 1 0

mpiexec --np 1 valgrind --leak-check=full --track-origins=yes --ppn 1 --depth=1 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./cc_interactive.out data/dummy.bin 1 0
mpiexec --np 4 valgrind --leak-check=full --track-origins=yes --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./cc_interactive.out data/dummy.bin 1 0

CC wcc.cu -o cc_interactive.out
mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./cc_interactive.out data/dummy.bin 1 0
mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./cc_interactive.out data/flickr.bin 1 0
mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./cc_interactive.out data/dummy.bin 1 0
| # Input | # Process | # Iterations | # CC (# Nodes in largest WCC) | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 6 | 4 | 4 | 3 (3) |   1.0739 |   0.5312 |   1.5309 |   0.0001 |   0.0003 |   0.0007 |   0.5399 |   0.0008 |   0.0006 |   0.0003 | data/dummy.bin_cc.bin |
arsho::x3006c0s13b1n0 { ~/mnmgJOIN }-> mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./cc_interactive.out data/flickr.bin 1 0
| # Input | # Process | # Iterations | # CC (# Nodes in largest WCC) | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 9,837,214 | 4 | 14 | 1 (820,878) |   1.4206 |   0.5367 |   1.5833 |   0.0004 |   0.1688 |   0.0432 |   0.5833 |   0.0653 |   0.0204 |   0.0025 | data/flickr.bin_cc.bin |
arsho::x3006c0s13b1n0 { ~/mnmgJOIN }-> mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./cc_interactive.out data/web-BerkStan.bin 1 0
| # Input | # Process | # Iterations | # CC (# Nodes in largest WCC) | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 7,600,595 | 4 | 415 | 1,062 (654,782) |  13.8135 |   0.5438 |   1.6101 |   0.0004 |   6.9784 |   0.0695 |   5.7377 |   0.0704 |   0.4109 |   0.0024 | data/web-BerkStan.bin_cc.bin |
arsho::x3006c0s13b1n0 { ~/mnmgJOIN }-> mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./cc_interactive.out data/roadNet-CA.bin 1 0
| # Input | # Process | # Iterations | # CC (# Nodes in largest WCC) | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 5,533,214 | 4 | 556 | 2,638 (1,957,027) |   7.4511 |   0.5386 |   1.5518 |   0.0003 |   0.1153 |   0.3076 |   5.4717 |   0.2795 |   0.7356 |   0.0024 | data/roadNet-CA.bin_cc.bin |
arsho::x3006c0s13b1n0 { ~/mnmgJOIN }-> mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./cc_interactive.out data/data_163734.bin 1 0
| # Input | # Process | # Iterations | # CC (# Nodes in largest WCC) | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 4 | 70 | 39 (30,581) |   1.7916 |   0.5406 |   1.5357 |   0.0003 |   0.0086 |   0.0128 |   1.0932 |   0.1130 |   0.0223 |   0.0008 | data/data_163734.bin_cc.bin |
arsho::x3006c0s13b1n0 { ~/mnmgJOIN }-> mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./cc_interactive.out data/data_165435.bin 1 0
| # Input | # Process | # Iterations | # CC (# Nodes in largest WCC) | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 4 | 483 | 58 (121,129) |   8.7789 |   0.5365 |   1.5135 |   0.0003 |   0.0458 |   0.0832 |   7.6779 |   0.1896 |   0.2447 |   0.0009 | data/data_165435.bin_cc.bin |
arsho::x3006c0s13b1n0 { ~/mnmgJOIN }-> mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./cc_interactive.out data/data_409593.bin 1 0
| # Input | # Process | # Iterations | # CC (# Nodes in largest WCC) | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 4 | 175 | 1 (143,437) |   2.6412 |   0.5297 |   1.5373 |   0.0003 |   0.0367 |   0.0660 |   1.8516 |   0.0635 |   0.0920 |   0.0013 | data/data_409593.bin_cc.bin |
arsho::x3006c0s13b1n0 { ~/mnmgJOIN }-> mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./cc_interactive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| # Input | # Process | # Iterations | # CC (# Nodes in largest WCC) | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 4 | 12 | 1 (139,752) |   1.2749 |   0.5456 |   1.5552 |   0.0005 |   0.0081 |   0.0211 |   0.6472 |   0.0243 |   0.0266 |   0.0015 | data/vsp_finan512_scagr7-2c_rlfddd.bin_cc.bin |



```

#### Polaris disk quota manage

Manage disk quota limit of 50GB in Polaris `/home` directory:

```
# Check quota
myquota
# Check large folders
du -h --max-depth=1 | sort -hr
# Delete large folders
rm -rf ./local_join
# Delete the generated bin files
make clean
```
#### Polaris submit all jobs
```shell
arsho::polaris-login-02 { ~/mnmgJOIN }-> chmod +x set_affinity_gpu_polaris.sh
arsho::polaris-login-02 { ~/mnmgJOIN }-> qsub wcc-merged.sh
2095171.polaris-pbs-01.hsn.cm.polaris.alcf.anl.gov
arsho::polaris-login-02 { ~/mnmgJOIN }-> qsub tc-merged-new.sh 
2095168.polaris-pbs-01.hsn.cm.polaris.alcf.anl.gov
arsho::polaris-login-02 { ~/mnmgJOIN }-> qsub sg-merged-new.sh
2095169.polaris-pbs-01.hsn.cm.polaris.alcf.anl.gov
arsho::polaris-login-02 { ~/mnmgJOIN }-> qstat -u $USER
arsho::polaris-login-02 { ~/mnmgJOIN }-> qsub wcc-merged-large.sh 
2104271.polaris-pbs-01.hsn.cm.polaris.alcf.anl.gov
arsho::polaris-login-02 { ~/mnmgJOIN }-> qsub tc-merged-large.sh 
2104272.polaris-pbs-01.hsn.cm.polaris.alcf.anl.gov
arsho::polaris-login-02 { ~/mnmgJOIN }-> qsub sg-merged-large.sh 
2104273.polaris-pbs-01.hsn.cm.polaris.alcf.anl.gov



qhold -h u 2104271.polaris-pbs-01.hsn.cm.polaris.alcf.anl.gov
qhold -h u 2104272.polaris-pbs-01.hsn.cm.polaris.alcf.anl.gov
qhold -h u 2104273.polaris-pbs-01.hsn.cm.polaris.alcf.anl.gov


2105889.polaris-pbs* arsho    large    single-jo*    --  128 81*    --  07:59 Q   -- 
2144573.polaris-pbs* arsho    medium   tc-merged*    --   64 40*    --  05:59 Q   -- 
2144578.polaris-pbs* arsho    medium   sg-merged*    --   64 40*    --  05:59 Q   -- 
2144583.polaris-pbs* arsho    medium   single-jo*    --   64 40*    --  05:59 Q   -- 


qhold -h u 2105889.polaris-pbs-01.hsn.cm.polaris.alcf.anl.gov
qhold -h u 2144573.polaris-pbs-01.hsn.cm.polaris.alcf.anl.gov
qhold -h u 2144578.polaris-pbs-01.hsn.cm.polaris.alcf.anl.gov
qhold -h u 2144583.polaris-pbs-01.hsn.cm.polaris.alcf.anl.gov
```


#### Polaris resize terminal window
For long command, terminal may show only the last portion. To fix that use `resize`:
```shell
resize
COLUMNS=185;
LINES=47;
export COLUMNS LINES;
```
#### Data preprocessing SNAP Datasets
- Download and extract gzip file. (e.g.: `soc-LiveJournal1.txt.gz` from https://snap.stanford.edu/data/soc-LiveJournal1.html) 
- Check the meta lines where it shows number of edges:
```shell
head soc-LiveJournal1.txt         
# Directed graph (each unordered pair of nodes is saved once): soc-LiveJournal1.txt 
# Directed LiveJournal friednship social network
# Nodes: 4847571 Edges: 68993773
# FromNodeId	ToNodeId
0	1
0	2
0	3
0	4
0	5
0	6
```
- Remove the meta lines by storing lines that does not start with `#`:
```shell
grep -v '^#' soc-LiveJournal1.txt > filtered_soc-LiveJournal1.txt
mv filtered_soc-LiveJournal1.txt soc-LiveJournal1.txt
```
- Create the bin file and check the edges length matches with the `soc-LiveJournal1.txt` file:
```shell
python3 binary_file_utils.py txt_to_bin soc-LiveJournal1.txt soc-LiveJournal1.bin
g++ row_size.cpp -o row
./row soc-LiveJournal1.bin
soc-LiveJournal1.bin: 68993773
```
#### Data preprocessing SuiteSparse Matrix Collection
- Download `Matrix Market` format by going to browser console (site is in HTTPS but data are in HTTP, that is why error is generated). 
- Unzip the file. The `mtx` file usually has several meta lines and then 1 line with 3 numbers indicating `ROWS-COLUMNS-NONZEROS`
- Remove the meta lines by storing only lines with 2 numbers assuming the file has 2 numbers per line:
```shell
sed -n '/^[0-9]\+ [0-9]\+$/,$p' com-Orkut.mtx > com-Orkut.txt
```
- If the file has 3 numbers per line, first we write all lines and then deleteTo delete first `n` lines (here its 1):
```shell
sed -n '/^[0-9]\+ [0-9]\+ [0-9]\+$/,$p' stokes.mtx > stokes.txt
sed -i -e '1,1d' stokes.txt
```
- Upload all data files from a local directory to Polaris:
```shell
scp -r . arsho@polaris.alcf.anl.gov:/home/arsho/mnmgJOIN/data/large_datasets
```

## Results

## TC Performance evaluation on Polaris

### CUDA AWARE MPI and Two pass method

[See the table](drawing/tc_cam_two_pass.md)

### CUDA AWARE MPI and Sort method

[See the table](drawing/tc_cam_sort.md)

### Traditional MPI and Two pass method

[See the table](drawing/tc_traditional_two_pass.md)

### Traditional MPI and Sort method

[See the table](drawing/tc_traditional_sort.md)

### Results visualization (Transitive closure)

#### CUDA AWARE MPI: Two pass vs sort

![alt Two pass vs sort approach in CUDA AWARE MPI](drawing/tc_total_time/cuda_aware_mpi_pass_vs_sort.png)

#### Traditional MPI: Two pass vs sort

![alt Two pass vs sort approach in Traditional MPI](drawing/tc_total_time/traditional_mpi_pass_vs_sort.png)

#### CUDA AWARE MPI vs Traditional MPI (Two pass)

![alt Two pass](drawing/tc_total_time/cuda_aware_mpi_pass_vs_traditional_mpi_pass.png)

#### CUDA AWARE MPI vs Traditional MPI (Sort)

![alt Sort](drawing/tc_total_time/cuda_aware_mpi_sort_vs_traditional_mpi_sort.png)

#### Event Breakdown

[drawing/TC_breakdown](drawing/tc_breakdown) has individual event breakdown results.

## SG Performance evaluation on Polaris

### CUDA AWARE MPI and Two pass method

[See the table](drawing/sg_cam_two_pass.md)

### CUDA AWARE MPI and Sort method

[See the table](drawing/sg_cam_sort.md)

### Traditional MPI and Two pass method

[See the table](drawing/sg_traditional_two_pass.md)

### Traditional MPI and Sort method

[See the table](drawing/sg_traditional_sort.md)

### Results visualization (Same Generation)

#### CUDA AWARE MPI: Two pass vs sort

![alt Two pass vs sort approach in CUDA AWARE MPI](drawing/sg_total_time/cuda_aware_mpi_pass_vs_sort.png)

#### Traditional MPI: Two pass vs sort

![alt Two pass vs sort approach in Traditional MPI](drawing/sg_total_time/traditional_mpi_pass_vs_sort.png)

#### CUDA AWARE MPI vs Traditional MPI (Two pass)

![alt Two pass](drawing/sg_total_time/cuda_aware_mpi_pass_vs_traditional_mpi_pass.png)

#### CUDA AWARE MPI vs Traditional MPI (Sort)

![alt Sort](drawing/sg_total_time/cuda_aware_mpi_sort_vs_traditional_mpi_sort.png)

#### Event Breakdown

[drawing/sg_breakdown](drawing/sg_breakdown) has individual event breakdown results.

### References

- [Polaris User Guides](https://docs.alcf.anl.gov/polaris/getting-started/)
- [Polaris running jobs](https://docs.alcf.anl.gov/polaris/running-jobs/)
- [Polaris CUDA MPI job example](https://github.com/argonne-lcf/GettingStarted/tree/master/Examples/Polaris/affinity_gpu)
- [ALCF disk quota](https://docs.alcf.anl.gov/data-management/filesystem-and-storage/disk-quota/)
- [ALCF sbank Allocation Accounting System](https://docs.alcf.anl.gov/account-project-management/allocation-management/sbank-allocation-accounting-system/)
- [Stackoverflow answer for all gather vs all to all](https://stackoverflow.com/a/34113431/3129414)
- [Blog on MPI](https://www.codeproject.com/Articles/896437/A-Gentle-Introduction-to-the-Message-Passing-Inter)
- [MPI all to all](https://mpi.deino.net/mpi_functions/MPI_Alltoall.html)
- [Thrust: The C++ Parallel Algorithms Library](https://nvidia.github.io/cccl/thrust/)
- [Thrust reduce by key docs](https://nvidia.github.io/cccl/thrust/api/function_group__reductions_1ga561f079073556701066513f648f413d6.html)
- [SO question on CudaFree](https://stackoverflow.com/questions/13100615/cudafree-is-not-freeing-memory)
- [SO question on CudaMemset](https://stackoverflow.com/questions/62055890/does-cudamalloc-initialize-the-array-to-0)
- [NVHPC MPI docs](https://docs.nvidia.com/hpc-sdk//compilers/hpc-compilers-user-guide/index.html#mpi-use)
- [Networkit data generator docs](https://networkit.github.io/get_started.html)