## cuDF SG
```shell
pip install --extra-index-url=https://pypi.nvidia.com cudf-cu12==24.8.*
```


#### Naive evaluation
```shell
make run DATA_FILE=data/data_23874.bin NPROCS=8
nvcc tc_naive.cu -o tc_naive.out -I/usr/lib/x86_64-linux-gnu/openmpi -I/usr/lib/x86_64-linux-gnu/openmpi/include -L/usr/lib/x86_64-linux-gnu/openmpi/lib -lmpi -lm
mpirun -np 8 ./tc_naive.out data/data_23874.bin
Total iterations 58, TC size 481121, generated file data/data_23874.bin_tc.bin
Total time: 7.2097 seconds

| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 23,874 | 8 | 58 | 481,121 |   7.2097 |
```

### Local Docker Run
```shell
docker build -t mnmgjoindocker .
#docker run --rm --entrypoint=bash -it -v $(pwd):/workspace mnmgjoindocker
docker run --rm --entrypoint=bash -it --gpus all -v $(pwd):/opt/mnmgjoin mnmgjoindocker

mnmgjoin@afe1ab5e7adc:/opt/mnmgjoin$ /opt/nvidia/hpc_sdk/Linux_x86_64/24.1/comm_libs/hpcx/bin/mpicxx tc_semi_naive.cu -o tc_semi_naive.out
mnmgjoin@afe1ab5e7adc:/opt/mnmgjoin$ /opt/nvidia/hpc_sdk/Linux_x86_64/24.1/comm_libs/hpcx/bin/mpirun -np 4 ./tc_semi_naive.out data/data_23874.bin 1 1
--------------------------------------------------------------------------
WARNING: Open MPI tried to bind a process but failed.  This is a
warning only; your job will continue, though performance may
be degraded.

  Local host:        afe1ab5e7adc
  Application name:  ./tc_semi_naive.out
  Error message:     failed to bind memory
  Location:          ../../../../../orte/mca/rtc/hwloc/rtc_hwloc.c:447

--------------------------------------------------------------------------
[LOG_CAT_ML] You must specify a valid HCA device by setting:
-x HCOLL_MAIN_IB=<dev_name:port> or -x UCX_NET_DEVICES=<dev_name:port>.
If no device was specified for HCOLL (or the calling library), automatic device detection will be run.
In case of unfounded HCA device please contact your system administrator.
[LOG_CAT_ML] You must specify a valid HCA device by setting:
-x HCOLL_MAIN_IB=<dev_name:port> or -x UCX_NET_DEVICES=<dev_name:port>.
If no device was specified for HCOLL (or the calling library), automatic device detection will be run.
In case of unfounded HCA device please contact your system administrator.
[LOG_CAT_ML] You must specify a valid HCA device by setting:
-x HCOLL_MAIN_IB=<dev_name:port> or -x UCX_NET_DEVICES=<dev_name:port>.
If no device was specified for HCOLL (or the calling library), automatic device detection will be run.
In case of unfounded HCA device please contact your system administrator.
[afe1ab5e7adc:00186] Error: ../../../../../ompi/mca/coll/hcoll/coll_hcoll_module.c:310 - mca_coll_hcoll_comm_query() Hcol library init failed
[afe1ab5e7adc:00185] Error: ../../../../../ompi/mca/coll/hcoll/coll_hcoll_module.c:310 - mca_coll_hcoll_comm_query() Hcol library init failed
[afe1ab5e7adc:00184] Error: ../../../../../ompi/mca/coll/hcoll/coll_hcoll_module.c:310 - mca_coll_hcoll_comm_query() Hcol library init failed
[LOG_CAT_ML] You must specify a valid HCA device by setting:
-x HCOLL_MAIN_IB=<dev_name:port> or -x UCX_NET_DEVICES=<dev_name:port>.
If no device was specified for HCOLL (or the calling library), automatic device detection will be run.
In case of unfounded HCA device please contact your system administrator.
[afe1ab5e7adc:00183] Error: ../../../../../ompi/mca/coll/hcoll/coll_hcoll_module.c:310 - mca_coll_hcoll_comm_query() Hcol library init failed
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 23874 | 4 | 58 | 481121 |   0.7154 |   0.2117 |   0.0389 |   0.0004 |   0.0289 |   0.1017 |   0.1901 |   0.1411 |   0.0027 | data/data_23874.bin_tc.bin |
[afe1ab5e7adc:00179] 3 more processes have sent help message help-orte-odls-default.txt / memory not bound
[afe1ab5e7adc:00179] Set MCA parameter "orte_base_help_aggregate" to 0 to see all help / error messages
mnmgjoin@afe1ab5e7adc:/opt/mnmgjoin$ /opt/nvidia/hpc_sdk/Linux_x86_64/24.1/comm_libs/hpcx/bin/mpirun -np 4 ./tc_semi_naive.out data/data_23874.bin 1 0
--------------------------------------------------------------------------
WARNING: Open MPI tried to bind a process but failed.  This is a
warning only; your job will continue, though performance may
be degraded.

  Local host:        afe1ab5e7adc
  Application name:  ./tc_semi_naive.out
  Error message:     failed to bind memory
  Location:          ../../../../../orte/mca/rtc/hwloc/rtc_hwloc.c:447

--------------------------------------------------------------------------
[LOG_CAT_ML] You must specify a valid HCA device by setting:
-x HCOLL_MAIN_IB=<dev_name:port> or -x UCX_NET_DEVICES=<dev_name:port>.
If no device was specified for HCOLL (or the calling library), automatic device detection will be run.
In case of unfounded HCA device please contact your system administrator.
[LOG_CAT_ML] You must specify a valid HCA device by setting:
-x HCOLL_MAIN_IB=<dev_name:port> or -x UCX_NET_DEVICES=<dev_name:port>.
If no device was specified for HCOLL (or the calling library), automatic device detection will be run.
In case of unfounded HCA device please contact your system administrator.
[LOG_CAT_ML] You must specify a valid HCA device by setting:
-x HCOLL_MAIN_IB=<dev_name:port> or -x UCX_NET_DEVICES=<dev_name:port>.
If no device was specified for HCOLL (or the calling library), automatic device detection will be run.
In case of unfounded HCA device please contact your system administrator.
[afe1ab5e7adc:00231] Error: ../../../../../ompi/mca/coll/hcoll/coll_hcoll_module.c:310 - mca_coll_hcoll_comm_query() Hcol library init failed
[LOG_CAT_ML] You must specify a valid HCA device by setting:
-x HCOLL_MAIN_IB=<dev_name:port> or -x UCX_NET_DEVICES=<dev_name:port>.
If no device was specified for HCOLL (or the calling library), automatic device detection will be run.
In case of unfounded HCA device please contact your system administrator.
[afe1ab5e7adc:00230] Error: ../../../../../ompi/mca/coll/hcoll/coll_hcoll_module.c:310 - mca_coll_hcoll_comm_query() Hcol library init failed
[afe1ab5e7adc:00228] Error: ../../../../../ompi/mca/coll/hcoll/coll_hcoll_module.c:310 - mca_coll_hcoll_comm_query() Hcol library init failed
[afe1ab5e7adc:00229] Error: ../../../../../ompi/mca/coll/hcoll/coll_hcoll_module.c:310 - mca_coll_hcoll_comm_query() Hcol library init failed
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 23874 | 4 | 58 | 481121 |   0.6453 |   0.1964 |   0.0252 |   0.0004 |   0.0297 |   0.0398 |   0.1983 |   0.1530 |   0.0025 | data/data_23874.bin_tc.bin |
[afe1ab5e7adc:00224] 3 more processes have sent help message help-orte-odls-default.txt / memory not bound
[afe1ab5e7adc:00224] Set MCA parameter "orte_base_help_aggregate" to 0 to see all help / error messages

```

### Bin file utility program
```shell
# python3 binary_file_utils.py txt_to_bin data/data_147892.txt data/data_147892.bin
# python3 binary_file_utils.py txt_to_bin data/data_165435.txt data/data_165435.bin
# python3 binary_file_utils.py txt_to_bin data/data_409593.txt data/data_409593.bin
# python3 binary_file_utils.py txt_to_bin data/vsp_finan512_scagr7-2c_rlfddd.mtx data/vsp_finan512_scagr7-2c_rlfddd.bin
# python3 binary_file_utils.py txt_to_bin data/com-dblpungraph.txt data/com-dblpungraph.bin
# python3 binary_file_utils.py txt_to_bin data/data_223001.txt data/data_223001.bin
# python3 binary_file_utils.py txt_to_bin data/data_163734.txt data/data_163734.bin
# python3 binary_file_utils.py txt_to_bin data/data_214078.txt data/data_214078.bin
# python3 binary_file_utils.py txt_to_bin data/data_49152.txt data/data_49152.bin
# python3 binary_file_utils.py txt_to_bin data/data_51971.txt data/data_51971.bin
# python3 binary_file_utils.py txt_to_bin data/data_88234.txt data/data_88234.bin
```

### Run container with privilege root
```
docker run --rm --entrypoint=bash --user root -it --gpus all mnmgjoindocker
apt update
apt install valgrind
/opt/nvidia/hpc_sdk/Linux_x86_64/24.1/comm_libs/hpcx/bin/mpicxx tc_semi_naive.cu -o tc_semi_naive.out
mpirun -np 2 ./tc_semi_naive.out data/data_23874.bin 0
OMPI_ALLOW_RUN_AS_ROOT=1 mpirun --allow-run-as-root -np 2 valgrind ./tc_semi_naive.out data/data_23874.bin 1

# successful run of cam
nvc++ -cuda cam.cu -o cam -I/opt/nvidia/hpc_sdk/Linux_x86_64/24.1/comm_libs/12.3/hpcx/hpcx-2.17.1/ompi -I/opt/nvidia/hpc_sdk/Linux_x86_64/24.1/comm_libs/12.3/hpcx/hpcx-2.17.1/ompi/include -L/opt/nvidia/hpc_sdk/Linux_x86_64/24.1/comm_libs/12.3/hpcx/hpcx-2.17.1/ompi/lib -lmpi
mpirun -np 2 ./cam
--------------------------------------------------------------------------
WARNING: Open MPI tried to bind a process but failed.  This is a
warning only; your job will continue, though performance may
be degraded.

  Local host:        9057ed676ae2
  Application name:  ./cam
  Error message:     failed to bind memory
  Location:          ../../../../../orte/mca/rtc/hwloc/rtc_hwloc.c:447

--------------------------------------------------------------------------
[LOG_CAT_ML] You must specify a valid HCA device by setting:
-x HCOLL_MAIN_IB=<dev_name:port> or -x UCX_NET_DEVICES=<dev_name:port>.
If no device was specified for HCOLL (or the calling library), automatic device detection will be run.
In case of unfounded HCA device please contact your system administrator.
[9057ed676ae2:00089] Error: ../../../../../ompi/mca/coll/hcoll/coll_hcoll_module.c:310 - mca_coll_hcoll_comm_query() Hcol library init failed
[LOG_CAT_ML] You must specify a valid HCA device by setting:
-x HCOLL_MAIN_IB=<dev_name:port> or -x UCX_NET_DEVICES=<dev_name:port>.
If no device was specified for HCOLL (or the calling library), automatic device detection will be run.
In case of unfounded HCA device please contact your system administrator.
[9057ed676ae2:00088] Error: ../../../../../ompi/mca/coll/hcoll/coll_hcoll_module.c:310 - mca_coll_hcoll_comm_query() Hcol library init failed
received: 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 
[9057ed676ae2:00084] 1 more process has sent help message help-orte-odls-default.txt / memory not bound
[9057ed676ae2:00084] Set MCA parameter "orte_base_help_aggregate" to 0 to see all help / error messages
```


### Interactive node run tc
```
ssh arsho@polaris.alcf.anl.gov
qsub -I -l select=1 -l filesystems=home:eagle -l walltime=1:00:00 -q debug -A dist_relational_alg
cd mnmgJOIN
module load craype-accel-nvidia80
export MPICH_GPU_SUPPORT_ENABLED=1

CC tc_semi_naive.cu -o tc_semi_naive_interactive.out
arsho::x3101c0s19b0n0 { ~/mnmgJOIN }-> mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris_semi.sh ./tc_semi_naive_interactive.out data/data_165435.bin 1
“RANK= 0 LOCAL_RANK= 0 gpu= 0”
“RANK= 3 LOCAL_RANK= 3 gpu= 3”
“RANK= 1 LOCAL_RANK= 1 gpu= 1”
“RANK= 2 LOCAL_RANK= 2 gpu= 2”

Generated file data/data_165435.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 165,435 | 4 | 606 | 871,365,688 |  46.4964 |
```


### Experiment: CUDA Aware MPI
```shell
# Polaris (working with cam)
CC cam.cu -o cam.out
# 2 MPI ranks, 2 ranks per node, 2 depth, 1 thread per rank
mpiexec --np 2 --ppn 2 --depth=2 --cpu-bind depth ./../set_affinity_gpu_polaris_semi.sh ./cam.out
arsho::x3002c0s37b0n0 { ~/mnmgJOIN/rough }-> mpiexec --np 2 --ppn 2 --depth=2 --cpu-bind depth ./../set_affinity_gpu_polaris_semi.sh ./cam.out
“RANK= 0 LOCAL_RANK= 0 gpu= 0”
“RANK= 1 LOCAL_RANK= 1 gpu= 1”
received: 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 

# Polaris (working with cam) without the module load
ssh arsho@polaris.alcf.anl.gov
qsub -I -l select=1 -l filesystems=home:eagle -l walltime=1:00:00 -q debug -A dist_relational_alg
cd rough
export MPICH_GPU_SUPPORT_ENABLED=1
arsho::x3206c0s37b0n0 { ~/mnmgJOIN/rough }-> CC cam.cu -o cam.out /opt/cray/pe/mpich/8.1.28/gtl/lib/libmpi_gtl_cuda.so
cam.cu:
/usr/bin/ld: warning: /var/tmp/pbs.2038492.polaris-pbs-01.hsn.cm.polaris.alcf.anl.gov/pgcudafatUQ5JckieWnySs.o: missing .note.GNU-stack section implies executable stack
/usr/bin/ld: NOTE: This behaviour is deprecated and will be removed in a future version of the linker
# 2 MPI ranks, 2 ranks per node, 2 depth, 1 thread per rank
arsho::x3206c0s37b0n0 { ~/mnmgJOIN/rough }-> mpiexec --np 2 --ppn 2 --depth=2 --cpu-bind depth ./../set_affinity_gpu_polaris_semi.sh ./cam.out
“RANK= 0 LOCAL_RANK= 0 gpu= 0”
“RANK= 1 LOCAL_RANK= 1 gpu= 1”
received: 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 


arsho::x3006c0s25b0n0 { ~ }-> cd mnmgJOIN
arsho::x3006c0s25b0n0 { ~/mnmgJOIN }-> module load craype-accel-nvidia80
arsho::x3006c0s25b0n0 { ~/mnmgJOIN }-> module load valgrind4hpc
arsho::x3006c0s25b0n0 { ~/mnmgJOIN }-> export MPICH_GPU_SUPPORT_ENABLED=1

# Local machine
nvcc cam.cu -o cam -I/usr/lib/x86_64-linux-gnu/openmpi -I/usr/lib/x86_64-linux-gnu/openmpi/include -L/usr/lib/x86_64-linux-gnu/openmpi/lib -lmpi -w -lm
mpirun -np 2 ./cam

find /usr -name mpicc 
export PATH=/opt/nvidia/hpc_sdk/Linux_x86_64/24.1/comm_libs/openmpi/openmpi-3.1.5/bin:$PATH
nvcc cam.cu -o cam -I/opt/nvidia/hpc_sdk/Linux_x86_64/24.1/comm_libs/openmpi/openmpi-3.1.5/ -I/opt/nvidia/hpc_sdk/Linux_x86_64/24.1/comm_libs/openmpi/openmpi-3.1.5/include -L/opt/nvidia/hpc_sdk/Linux_x86_64/24.1/comm_libs/openmpi/openmpi-3.1.5/lib -lmpi
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
- [NVHPC MPI docs](https://docs.nvidia.com/hpc-sdk//compilers/hpc-compilers-user-guide/index.html#mpi-use)
