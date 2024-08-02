### Polaris result with host MPI all to all
```shell
cat polaris-job-semi.output
NUM_OF_NODES= 10 TOTAL_NUM_RANKS= 40 RANKS_PER_NODE= 4 THREADS_PER_RANK= 1
CC tc_semi_naive.cu -o tc_semi_naive.out -lm
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> TC on p2p-Gnutella31 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>> p2p-Gnutella31 40 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1

Generated file data/data_147892.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 147,892 | 40 | 31 | 884,179,859 |   3.4891 |
>>>>>>>>>>>>> p2p-Gnutella31 32 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1

Generated file data/data_147892.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 147,892 | 32 | 31 | 884,179,859 |   3.3861 |
>>>>>>>>>>>>> p2p-Gnutella31 24 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1

Generated file data/data_147892.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 147,892 | 24 | 31 | 884,179,859 |   3.8967 |
>>>>>>>>>>>>> p2p-Gnutella31 16 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1

Generated file data/data_147892.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 147,892 | 16 | 31 | 884,179,859 |   4.6253 |
>>>>>>>>>>>>> p2p-Gnutella31 8 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1

Generated file data/data_147892.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 147,892 | 8 | 31 | 884,179,859 |   5.6631 |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> TC on usroad >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>> usroad 40 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1

Generated file data/data_165435.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 165,435 | 40 | 606 | 871,365,688 |  12.9244 |
>>>>>>>>>>>>> usroad 32 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1

Generated file data/data_165435.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 165,435 | 32 | 606 | 871,365,688 |  11.9417 |
>>>>>>>>>>>>> usroad 24 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1

Generated file data/data_165435.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 165,435 | 24 | 606 | 871,365,688 |  13.3498 |
>>>>>>>>>>>>> usroad 16 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1

Generated file data/data_165435.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 165,435 | 16 | 606 | 871,365,688 |  13.9688 |
>>>>>>>>>>>>> usroad 8 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1

Generated file data/data_165435.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 165,435 | 8 | 606 | 871,365,688 |  23.9621 |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> TC on fe_ocean >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>> fe_ocean 40 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1

Generated file data/data_409593.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 409,593 | 40 | 247 | 1,669,750,513 |  10.4976 |
>>>>>>>>>>>>> fe_ocean 32 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1

Generated file data/data_409593.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 409,593 | 32 | 247 | 1,669,750,513 |  10.4136 |
>>>>>>>>>>>>> fe_ocean 24 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1

Generated file data/data_409593.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 409,593 | 24 | 247 | 1,669,750,513 |  11.2284 |
>>>>>>>>>>>>> fe_ocean 16 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1

Generated file data/data_409593.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 409,593 | 16 | 247 | 1,669,750,513 |  12.2337 |
>>>>>>>>>>>>> fe_ocean 8 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1

Generated file data/data_409593.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 409,593 | 8 | 247 | 1,669,750,513 |  21.0888 |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> TC on vsp_finan >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>> vsp_finan 40 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1

Generated file data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 552,020 | 40 | 520 | 910,070,918 |  13.0372 |
>>>>>>>>>>>>> vsp_finan 32 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1

Generated file data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 552,020 | 32 | 520 | 910,070,918 |  12.4630 |
>>>>>>>>>>>>> vsp_finan 24 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1
>>>>>>>>>>>>> vsp_finan 16 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>

```

- Error:
```shell
cat polaris-job-semi.error
/usr/bin/ld: warning: /var/tmp/pbs.2050751.polaris-pbs-01.hsn.cm.polaris.alcf.anl.gov/pgcudafat1h9ikFHEroKlm.o: missing .note.GNU-stack section implies executable stack
/usr/bin/ld: NOTE: This behaviour is deprecated and will be removed in a future version of the linker
ADIOI_CRAY_WRITECONTIG(245): filename='data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00006  W_rec=00000  off=1096349680  len=0151945992  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00004  W_rec=00000  off=0741458584  len=0143605832  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00011  W_rec=00000  off=1980918168  len=0215291632  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00029  W_rec=00000  off=0962901840  len=0204829008  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00027  W_rec=00000  off=0608347736  len=0229473616  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00025  W_rec=00000  off=0238590352  len=0201274512  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00035  W_rec=00000  off=2070311904  len=0187475864  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00003  W_rec=00000  off=0528600816  len=0212857768  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00028  W_rec=00000  off=0837821352  len=0125080488  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00001  W_rec=00000  off=0142438552  len=0229253080  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00000  W_rec=00000  off=0000000000  len=0142438552  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00001  W_rec=00000  off=0278240784  len=0386739016  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00003  W_rec=00000  off=0840942448  len=0067181280  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00008  W_rec=00000  off=2052723832  len=0176302536  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00000  W_rec=00000  off=0000000000  len=0278240784  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00002  W_rec=00000  off=0664979800  len=0175962648  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00019  W_rec=00000  off=0094787056  len=0384724344  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00027  W_rec=00000  off=2017578664  len=0169632600  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00021  W_rec=00000  off=0760463912  len=0171684480  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00020  W_rec=00000  off=0479511400  len=0280952512  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00023  W_rec=00000  off=0999669904  len=0282727104  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00005  W_rec=00000  off=0972767144  len=0405401752  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00000  W_rec=00000  off=0000000000  len=0081703720  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00002  W_rec=00000  off=0816078496  len=0635338288  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00014  W_rec=00000  off=0286178456  len=0539291080  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00020  W_rec=00000  off=1869154192  len=0513795712  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00001  W_rec=00000  off=0081703720  len=0734374776  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00006  W_rec=00000  off=2069678672  len=0082017512  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00016  W_rec=00000  off=1113135984  len=0089756672  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00015  W_rec=00000  off=0825469536  len=0287666448  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
Couldn't write output: Disk quota exceeded
make: *** [Makefile:54: testpolarissemi] Error 127
ADIOI_CRAY_WRITECONTIG(245): filename='data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00000  W_rec=00000  off=0000000000  len=0342504848  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00004  W_rec=00000  off=2010240864  len=0345595928  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00011  W_rec=00000  off=0703370512  len=0575050000  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00009  W_rec=00000  off=0012500136  len=0345358776  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00002  W_rec=00000  off=1099309400  len=0459025840  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00001  W_rec=00000  off=0342504848  len=0756804552  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00010  W_rec=00000  off=0357858912  len=0345511600  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00013  W_rec=00000  off=1627096808  len=0568694984  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
Couldn't write output: Disk quota exceeded
make: *** [Makefile:54: testpolarissemi] Error 127
make: write error: stdout
/var/spool/pbs/mom_priv/jobs/2050751.polaris-pbs-01.hsn.cm.polaris.alcf.anl.gov.SC: line 49: echo: write error: Disk quota exceeded
ADIOI_CRAY_WRITECONTIG(245): filename='data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00001  W_rec=00000  off=0692245704  len=1102163328  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00000  W_rec=00000  off=0000000000  len=0692245704  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00005  W_rec=00000  off=0025207024  len=1145781216  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00002  W_rec=00000  off=1794409032  len=0804537440  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00007  W_rec=00000  off=1891960912  len=1093639136  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
Couldn't write output: Disk quota exceeded
make: *** [Makefile:54: testpolarissemi] Error 127
make: write error: stdout
/var/spool/pbs/mom_priv/jobs/2050751.polaris-pbs-01.hsn.cm.polaris.alcf.anl.gov.SC: line 53: echo: write error: Disk quota exceeded
/var/spool/pbs/mom_priv/jobs/2050751.polaris-pbs-01.hsn.cm.polaris.alcf.anl.gov.SC: line 55: echo: write error: Disk quota exceeded
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00037  W_rec=00000  off=1248697920  len=0392966344  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00015  W_rec=00000  off=1411434560  len=0377861616  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00026  W_rec=00000  off=1326980728  len=0385773528  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00002  W_rec=00000  off=0762879792  len=0383226360  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00000  W_rec=00000  off=0000000000  len=0379994880  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00023  W_rec=00000  off=0189516264  len=0374496968  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00039  W_rec=00000  off=2023334808  len=0385802440  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00036  W_rec=00000  off=0865122512  len=0383575408  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00038  W_rec=00000  off=1641664264  len=0381670544  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00034  W_rec=00000  off=0101192304  len=0381993024  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00016  W_rec=00000  off=1789296176  len=0389474864  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00035  W_rec=00000  off=0483185328  len=0381937184  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00005  W_rec=00000  off=1908061824  len=0380302808  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00014  W_rec=00000  off=1031432096  len=0380002464  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00028  W_rec=00000  off=2100579568  len=0386726032  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00025  W_rec=00000  off=0947745792  len=0379234936  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00027  W_rec=00000  off=1712754256  len=0387825312  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00004  W_rec=00000  off=1528161880  len=0379899944  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00003  W_rec=00000  off=1146106152  len=0382055728  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00001  W_rec=00000  off=0379994880  len=0382884912  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00013  W_rec=00000  off=0645530632  len=0385901464  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00024  W_rec=00000  off=0564013232  len=0383732560  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00012  W_rec=00000  off=0268002440  len=0377528192  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
Couldn't write output: Disk quota exceeded
make: *** [Makefile:54: testpolarissemi] Error 127
make: write error: stdout
/var/spool/pbs/mom_priv/jobs/2050751.polaris-pbs-01.hsn.cm.polaris.alcf.anl.gov.SC: line 55: echo: write error: Disk quota exceeded
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00003  W_rec=00000  off=1429329024  len=0472311264  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00000  W_rec=00000  off=0000000000  len=0478520032  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00004  W_rec=00000  off=1901640288  len=0479980440  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00028  W_rec=00000  off=0508466352  len=0482584960  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00031  W_rec=00000  off=1935620320  len=0473516928  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00019  W_rec=00000  off=0518633720  len=0479683736  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00021  W_rec=00000  off=1470916200  len=0482330064  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00027  W_rec=00000  off=0027670040  len=0480796312  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00012  W_rec=00000  off=1460060504  len=0479464016  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00001  W_rec=00000  off=0478520032  len=0472506088  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00029  W_rec=00000  off=0991051312  len=0473023520  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00010  W_rec=00000  off=0500500296  len=0478026200  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00018  W_rec=00000  off=0042126240  len=0476507480  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00022  W_rec=00000  off=1953246264  len=0461193696  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00020  W_rec=00000  off=0998317456  len=0472598744  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00013  W_rec=00000  off=1939524520  len=0487754000  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00002  W_rec=00000  off=0951026120  len=0478302904  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00030  W_rec=00000  off=1464074832  len=0471545488  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00011  W_rec=00000  off=0978526496  len=0481534008  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00009  W_rec=00000  off=0011270192  len=0489230104  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
Couldn't write output: Disk quota exceeded
make: *** [Makefile:54: testpolarissemi] Error 127
make: write error: stdout
/var/spool/pbs/mom_priv/jobs/2050751.polaris-pbs-01.hsn.cm.polaris.alcf.anl.gov.SC: line 55: echo: write error: Disk quota exceeded
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00001  W_rec=00000  off=0639094192  len=0635727984  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00007  W_rec=00000  off=0166968128  len=0628891088  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00015  W_rec=00000  off=0921027504  len=0643782232  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00002  W_rec=00000  off=1274822176  len=0626847208  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00023  W_rec=00000  off=1782244144  len=0626893104  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00008  W_rec=00000  off=0795859216  len=0632162880  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00003  W_rec=00000  off=1901669384  len=0633792336  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00021  W_rec=00000  off=0510633320  len=0633349824  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00009  W_rec=00000  off=1428022096  len=0629370600  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00014  W_rec=00000  off=0293858744  len=0627168760  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00022  W_rec=00000  off=1143983144  len=0638261000  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00000  W_rec=00000  off=0000000000  len=0639094192  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00010  W_rec=00000  off=2057392696  len=0634476088  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00016  W_rec=00000  off=1564809736  len=0642230384  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
Couldn't write output: Disk quota exceeded
make: *** [Makefile:54: testpolarissemi] Error 127
make: write error: stdout
/var/spool/pbs/mom_priv/jobs/2050751.polaris-pbs-01.hsn.cm.polaris.alcf.anl.gov.SC: line 55: echo: write error: Disk quota exceeded
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00000  W_rec=00000  off=0000000000  len=0949790736  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00010  W_rec=00000  off=0953234352  len=0959714456  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00002  W_rec=00000  off=1899904632  len=0954810384  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00005  W_rec=00000  off=0464321904  len=0960881936  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00014  W_rec=00000  off=0503138328  len=0949232752  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00011  W_rec=00000  off=1912948808  len=0962330320  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00015  W_rec=00000  off=1452371080  len=0956766168  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00006  W_rec=00000  off=1425203840  len=0950728552  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00001  W_rec=00000  off=0949790736  len=0950113896  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
Couldn't write output: Disk quota exceeded
make: *** [Makefile:54: testpolarissemi] Error 127
make: write error: stdout
/var/spool/pbs/mom_priv/jobs/2050751.polaris-pbs-01.hsn.cm.polaris.alcf.anl.gov.SC: line 55: echo: write error: Disk quota exceeded
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00003  W_rec=00000  off=1448931176  len=1914325320  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00000  W_rec=00000  off=0000000000  len=1913487456  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00007  W_rec=00000  off=0509570824  len=1899566424  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00001  W_rec=00000  off=1913487456  len=1915886176  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00005  W_rec=00000  off=0982917360  len=1921659456  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
Couldn't write output: Disk quota exceeded
make: *** [Makefile:54: testpolarissemi] Error 127
make: write error: stdout
```

##### TC on p2p-Gnutella31

| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 147,892 | 40 | 31 | 884,179,859 | 3.4891 |
| 147,892 | 32 | 31 | 884,179,859 | 3.3861 |
| 147,892 | 24 | 31 | 884,179,859 | 3.8967 |
| 147,892 | 16 | 31 | 884,179,859 | 4.6253 |
| 147,892 | 8 | 31 | 884,179,859 | 5.6631 |

##### TC on usroad

| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 165,435 | 40 | 606 | 871,365,688 | 12.9244 |
| 165,435 | 32 | 606 | 871,365,688 | 11.9417 |
| 165,435 | 24 | 606 | 871,365,688 | 13.3498 |
| 165,435 | 16 | 606 | 871,365,688 | 13.9688 |
| 165,435 | 8 | 606 | 871,365,688 | 23.9621 |

##### TC on fe_ocean

| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 409,593 | 40 | 247 | 1,669,750,513 | 10.4976 |
| 409,593 | 32 | 247 | 1,669,750,513 | 10.4136 |
| 409,593 | 24 | 247 | 1,669,750,513 | 11.2284 |
| 409,593 | 16 | 247 | 1,669,750,513 | 12.2337 |
| 409,593 | 8 | 247 | 1,669,750,513 | 21.0888 |

##### TC on vsp_finan

| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 552,020 | 40 | 520 | 910,070,918 | 13.0372 |
| 552,020 | 32 | 520 | 910,070,918 | 12.4630 |
| 552,020 | 24 | 520 | 910,070,918 | - |
| 552,020 | 16 | 520 | 910,070,918 | - |



### Polaris partial result
```shell
NUM_OF_NODES= 10 TOTAL_NUM_RANKS= 40 RANKS_PER_NODE= 4 THREADS_PER_RANK= 1
CC tc_semi_naive.cu -o tc_semi_naive.out -lm
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> TC on fe_ocean >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>> fe_ocean 40 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1

Generated file data/data_409593.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 409,593 | 40 | 247 | 1,669,750,513 |  10.0284 |
>>>>>>>>>>>>> fe_ocean 32 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1

Generated file data/data_409593.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 409,593 | 32 | 247 | 1,669,750,513 |  10.4754 |
>>>>>>>>>>>>> fe_ocean 24 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1

Generated file data/data_409593.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 409,593 | 24 | 247 | 1,669,750,513 |  11.9613 |
>>>>>>>>>>>>> fe_ocean 16 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1

Generated file data/data_409593.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 409,593 | 16 | 247 | 1,669,750,513 |  11.6706 |
>>>>>>>>>>>>> fe_ocean 8 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1

Generated file data/data_409593.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 409,593 | 8 | 247 | 1,669,750,513 |  20.1498 |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> TC on vsp_finan >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>> vsp_finan 40 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1

Generated file data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 552,020 | 40 | 520 | 910,070,918 |  13.5197 |
>>>>>>>>>>>>> vsp_finan 32 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1

Generated file data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 552,020 | 32 | 520 | 910,070,918 |  12.3224 |
>>>>>>>>>>>>> vsp_finan 24 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1

Generated file data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 552,020 | 24 | 520 | 910,070,918 |  20.1347 |
>>>>>>>>>>>>> vsp_finan 16 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1

Generated file data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 552,020 | 16 | 520 | 910,070,918 |  19.6395 |
>>>>>>>>>>>>> vsp_finan 8 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1

Generated file data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 552,020 | 8 | 520 | 910,070,918 |  29.1619 |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> TC on com-dblp >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>> com-dblp 40 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1

Generated file data/com-dblpungraph.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 1,049,866 | 40 | 31 | 1,911,754,892 |   6.6690 |
>>>>>>>>>>>>> com-dblp 32 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1

Generated file data/com-dblpungraph.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 1,049,866 | 32 | 31 | 1,911,754,892 |   8.4425 |
>>>>>>>>>>>>> com-dblp 24 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1

Generated file data/com-dblpungraph.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 1,049,866 | 24 | 31 | 1,911,754,892 |   7.7934 |
>>>>>>>>>>>>> com-dblp 16 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1

Generated file data/com-dblpungraph.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 1,049,866 | 16 | 31 | 1,911,754,892 |   8.5105 |
>>>>>>>>>>>>> com-dblp 8 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1

Generated file data/com-dblpungraph.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 1,049,866 | 8 | 31 | 1,911,754,892 |  12.0870 |
arsho::polaris-login-02 { ~/mnmgJOIN }-> cat polaris-job-semi.error
/usr/bin/ld: warning: /var/tmp/pbs.2048766.polaris-pbs-01.hsn.cm.polaris.alcf.anl.gov/pgcudafatg4G9nsMpoLYop.o: missing .note.GNU-stack section implies executable stack
/usr/bin/ld: NOTE: This behaviour is deprecated and will be removed in a future version of the linker
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00003  W_rec=00000  off=1448931176  len=1914325320  See MPICH_MPIIO_ABORT_ON_RW_ERROR.
ADIOI_CRAY_WRITECONTIG(245): filename='data/com-dblpungraph.bin_tc.bin'  error='Disk quota exceeded'  errno=122  PE=00001  W_rec=00000  off=1913487456  len=1915886176  See MPICH_MPIIO_ABORT_ON_RW_ERROR.

```
### Polaris partial result
```shell
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> TC on p2p-Gnutella31 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>> p2p-Gnutella31 40 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
CC tc_semi_naive.cu -o tc_semi_naive.out -w -lm
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1

Generated file data/data_147892.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 147,892 | 40 | 31 | 884,179,859 |   2.6287 |
>>>>>>>>>>>>> p2p-Gnutella31 32 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
CC tc_semi_naive.cu -o tc_semi_naive.out -w -lm
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1

Generated file data/data_147892.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 147,892 | 32 | 31 | 884,179,859 |   3.2223 |
>>>>>>>>>>>>> p2p-Gnutella31 24 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
CC tc_semi_naive.cu -o tc_semi_naive.out -w -lm
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1

Generated file data/data_147892.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 147,892 | 24 | 31 | 884,179,859 |   3.6492 |
>>>>>>>>>>>>> p2p-Gnutella31 16 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
CC tc_semi_naive.cu -o tc_semi_naive.out -w -lm
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1

Generated file data/data_147892.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 147,892 | 16 | 31 | 884,179,859 |   3.8662 |
>>>>>>>>>>>>> p2p-Gnutella31 8 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
CC tc_semi_naive.cu -o tc_semi_naive.out -w -lm
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1

Generated file data/data_147892.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 147,892 | 8 | 31 | 884,179,859 |   5.7059 |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> TC on usroad >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>> usroad 40 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
CC tc_semi_naive.cu -o tc_semi_naive.out -w -lm
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1

Generated file data/data_165435.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 165,435 | 40 | 606 | 871,365,688 |  11.4508 |
>>>>>>>>>>>>> usroad 32 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
CC tc_semi_naive.cu -o tc_semi_naive.out -w -lm
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1

Generated file data/data_165435.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 165,435 | 32 | 606 | 871,365,688 |  11.9498 |
>>>>>>>>>>>>> usroad 24 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
CC tc_semi_naive.cu -o tc_semi_naive.out -w -lm
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1

Generated file data/data_165435.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 165,435 | 24 | 606 | 871,365,688 |  12.4402 |
>>>>>>>>>>>>> usroad 16 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
CC tc_semi_naive.cu -o tc_semi_naive.out -w -lm
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1

Generated file data/data_165435.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 165,435 | 16 | 606 | 871,365,688 |  13.3520 |
>>>>>>>>>>>>> usroad 8 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
CC tc_semi_naive.cu -o tc_semi_naive.out -w -lm
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1

Generated file data/data_165435.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 165,435 | 8 | 606 | 871,365,688 |  24.4126 |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> TC on fe_ocean >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>> fe_ocean 40 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
CC tc_semi_naive.cu -o tc_semi_naive.out -w -lm
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1

Generated file data/data_409593.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 409,593 | 40 | 247 | 1,669,750,513 |  10.9424 |
>>>>>>>>>>>>> fe_ocean 32 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
CC tc_semi_naive.cu -o tc_semi_naive.out -w -lm
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1

Generated file data/data_409593.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 409,593 | 32 | 247 | 1,669,750,513 |   9.6925 |
>>>>>>>>>>>>> fe_ocean 24 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
CC tc_semi_naive.cu -o tc_semi_naive.out -w -lm
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1

Generated file data/data_409593.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 409,593 | 24 | 247 | 1,669,750,513 |  11.4334 |
>>>>>>>>>>>>> fe_ocean 16 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
CC tc_semi_naive.cu -o tc_semi_naive.out -w -lm
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1

Generated file data/data_409593.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 409,593 | 16 | 247 | 1,669,750,513 |  11.7146 |
>>>>>>>>>>>>> fe_ocean 8 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
CC tc_semi_naive.cu -o tc_semi_naive.out -w -lm
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> TC on vsp_finan >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>> vsp_finan 40 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
CC tc_semi_naive.cu -o tc_semi_naive.out -w -lm
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1
>>>>>>>>>>>>> vsp_finan 32 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
CC tc_semi_naive.cu -o tc_semi_naive.out -w -lm
>>>>>>>>>>>>> vsp_finan 24 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
CC tc_semi_naive.cu -o tc_semi_naive.out -w -lm
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1
>>>>>>>>>>>>> vsp_finan 16 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
CC tc_semi_naive.cu -o tc_semi_naive.out -w -lm
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1
>>>>>>>>>>>>> vsp_finan 8 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
CC tc_semi_naive.cu -o tc_semi_naive.out -w -lm
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> TC on com-dblp >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>> com-dblp 40 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
CC tc_semi_naive.cu -o tc_semi_naive.out -w -lm
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1
>>>>>>>>>>>>> com-dblp 32 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
CC tc_semi_naive.cu -o tc_semi_naive.out -w -lm
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1
>>>>>>>>>>>>> com-dblp 24 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
CC tc_semi_naive.cu -o tc_semi_naive.out -w -lm
>>>>>>>>>>>>> com-dblp 16 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
CC tc_semi_naive.cu -o tc_semi_naive.out -w -lm
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1
>>>>>>>>>>>>> com-dblp 8 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
CC tc_semi_naive.cu -o tc_semi_naive.out -w -lm
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1

```
### Error using GPU displacements and offset buffers in alltoallv
```shell
arsho::x3005c0s31b0n0 { ~/mnmgJOIN }-> mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris_semi.sh ./tc_semi_naive_interactive.out data/data_165435.bin 1
“RANK= 3 LOCAL_RANK= 3 gpu= 3”
“RANK= 2 LOCAL_RANK= 2 gpu= 2”
“RANK= 1 LOCAL_RANK= 1 gpu= 1”
“RANK= 0 LOCAL_RANK= 0 gpu= 0”
x3005c0s31b0n0.hsn.cm.polaris.alcf.anl.gov: rank 3 died from signal 11 and dumped core
arsho::x3005c0s31b0n0 { ~/mnmgJOIN }-> ls
binary_file_utils.py  core.1093718  data      polaris_env.sh           polaris-job-semi.sh  rough        set_affinity_gpu_polaris_semi.sh  tc_naive.cu
common                core.1093719  drawing   polaris-job-semi.error   polaris-job.sh       semi.error   set_affinity_gpu_polaris.sh       tc_semi_naive.cu
core.1093717          core.1093720  Makefile  polaris-job-semi.output  README.md            semi.output  tc_mpi.cpp                        tc_semi_naive_interactive.out
arsho::x3005c0s31b0n0 { ~/mnmgJOIN }-> gdb ./tc_semi_naive_interactive.out core.1093719
GNU gdb (GDB; SUSE Linux Enterprise 15) 12.1
Copyright (C) 2022 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.
Type "show copying" and "show warranty" for details.
This GDB was configured as "x86_64-suse-linux".
Type "show configuration" for configuration details.
For bug reporting instructions, please see:
<http://bugs.opensuse.org/>.
Find the GDB manual and other documentation resources online at:
    <http://www.gnu.org/software/gdb/documentation/>.

For help, type "help".
Type "apropos word" to search for commands related to "word"...
Reading symbols from ./tc_semi_naive_interactive.out...

warning: Can't open file /dev/zero (deleted) during file-backed mapping note processing

warning: Can't open file /SYSV00000000 (deleted) during file-backed mapping note processing

warning: Can't open file /dev/shm/shared_memory.PMI.37a39191-6481-43f9-b0be-2afb99084e14 (deleted) during file-backed mapping note processing

warning: Can't open file /dev/shm/cray-shared-mem-coll-kvs_37a39191-6481-43f9-b0be-2afb99084e14-0-0-36240-0.tmp (deleted) during file-backed mapping note processing

warning: Can't open file /dev/shm/cray-shared-mem-coll-setup-kvs_37a39191-6481-43f9-b0be-2afb99084e14-36240-0.tmp (deleted) during file-backed mapping note processing

warning: Can't open file /run/palsd/37a39191-6481-43f9-b0be-2afb99084e14/apinfo during file-backed mapping note processing

warning: core file may not match specified executable file.
[New LWP 1093719]
[New LWP 1093749]
[New LWP 1093744]

warning: Section `.reg-xstate/1093719' in core file too small.
[Thread debugging using libthread_db enabled]
Using host libthread_db library "/lib64/libthread_db.so.1".
Core was generated by `./tc_semi_naive_interactive.out data/data_165435.bin 1'.
Program terminated with signal SIGSEGV, Segmentation fault.

warning: Section `.reg-xstate/1093719' in core file too small.
#0  0x000014ef22518953 in _cray_mpi_memcpy_rome () from /opt/cray/pe/lib64/libmpi_nvidia.so.12
[Current thread is 1 (Thread 0x14ef1f70e000 (LWP 1093719))]
Missing separate debuginfos, use: zypper install krb5-debuginfo-1.20.1-150500.3.3.1.x86_64 libatomic1-debuginfo-13.2.1+git7813-150000.1.6.1.x86_64 libbrotlicommon1-debuginfo-1.0.7-3.3.1.x86_64 libbrotlidec1-debuginfo-1.0.7-3.3.1.x86_64 libcom_err2-debuginfo-1.46.4-150400.3.3.1.x86_64 libcurl4-debuginfo-8.0.1-150400.5.41.1.x86_64 libgcc_s1-debuginfo-13.2.1+git7813-150000.1.6.1.x86_64 libgfortran5-debuginfo-13.2.1+git7813-150000.1.6.1.x86_64 libidn2-0-debuginfo-2.2.0-3.6.1.x86_64 libjansson4-debuginfo-2.14-150000.3.5.1.x86_64 libjitterentropy3-debuginfo-3.4.0-150000.1.9.1.x86_64 libjson-c3-debuginfo-0.13-3.3.1.x86_64 libkeyutils1-debuginfo-1.6.3-5.6.1.x86_64 libldap-2_4-2-debuginfo-2.4.46-150200.14.17.1.x86_64 libncurses6-debuginfo-6.1-150000.5.20.1.x86_64 libnghttp2-14-debuginfo-1.40.0-150200.12.1.x86_64 libnl3-200-debuginfo-3.3.0-1.29.x86_64 libopenssl1_1-debuginfo-1.1.1l-150500.17.25.1.x86_64 libpcre1-debuginfo-8.45-150000.20.13.1.x86_64 libpsl5-debuginfo-0.20.1-150000.3.3.1.x86_64 libquadmath0-debuginfo-13.2.1+git7813-150000.1.6.1.x86_64 libreadline7-debuginfo-7.0-150400.25.22.x86_64 libsasl2-3-debuginfo-2.1.28-150500.1.1.x86_64 libselinux1-debuginfo-3.1-150400.1.69.x86_64 libssh4-debuginfo-0.9.8-150400.3.6.1.x86_64 libstdc++6-debuginfo-13.2.1+git7813-150000.1.6.1.x86_64 libunistring2-debuginfo-0.9.10-1.1.x86_64 libyaml-0-2-debuginfo-0.1.7-1.17.x86_64 libz1-debuginfo-1.2.13-150500.4.3.1.x86_64 lustre-client-debuginfo-2.15.3.2_cray_16_g97d1e9c-1.x86_64 nvidia-computeG05-debuginfo-535.154.05-0.x86_64
(gdb) bt
#0  0x000014ef22518953 in _cray_mpi_memcpy_rome () from /opt/cray/pe/lib64/libmpi_nvidia.so.12
#1  0x000014ef20a3f75a in MPIR_Localcopy () from /opt/cray/pe/lib64/libmpi_nvidia.so.12
#2  0x000014ef21c0ccd9 in MPIR_Alltoall_intra_pairwise () from /opt/cray/pe/lib64/libmpi_nvidia.so.12
#3  0x000014ef205f7e64 in MPIR_Alltoall_intra_auto.part.0 () from /opt/cray/pe/lib64/libmpi_nvidia.so.12
#4  0x000014ef205f815c in MPIR_Alltoall_impl () from /opt/cray/pe/lib64/libmpi_nvidia.so.12
#5  0x000014ef205f893f in PMPI_Alltoall () from /opt/cray/pe/lib64/libmpi_nvidia.so.12
#6  0x0000000000405a69 in _Z18get_split_relationiP6EntityiiiiiiPi () at tc_semi_naive.cu:67
#7  0x0000000000406374 in main () at tc_semi_naive.cu:189
(gdb) info locals
No symbol table info available.
(gdb) list
109	    *size = total_receive;
110	    Entity *result_data;
111	    checkCuda(cudaMalloc((void **) &result_data, total_receive * sizeof(Entity)));
112	    cudaMemcpy(result_data, receive_data, total_receive * sizeof(Entity), cudaMemcpyDeviceToDevice);
113	    cudaFree(send_count);
114	    cudaFree(receive_count);
115	    cudaFree(send_displacements);
116	    cudaFree(send_displacements_temp);
117	    cudaFree(receive_displacements);
118	    cudaFree(send_data);

```