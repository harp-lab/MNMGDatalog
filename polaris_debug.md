### Polaris two pass and sort result
```shell
cat polaris-job-semi.output
NUM_OF_NODES= 10 TOTAL_NUM_RANKS= 40 RANKS_PER_NODE= 4 THREADS_PER_RANK= 1
ALL TO ALL COMMUNICATION METHOD: SORTING
------------------------------------------------------------------------------------
CC tc_semi_naive.cu -o tc_semi_naive.out -lm
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> TC on p2p-Gnutella31 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>> p2p-Gnutella31 40 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1

Generated file data/data_147892.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 147,892 | 40 | 31 | 884,179,859 |   3.6863 |
>>>>>>>>>>>>> p2p-Gnutella31 32 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1

Generated file data/data_147892.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 147,892 | 32 | 31 | 884,179,859 |   3.4231 |
>>>>>>>>>>>>> p2p-Gnutella31 24 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1

Generated file data/data_147892.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 147,892 | 24 | 31 | 884,179,859 |   3.8711 |
>>>>>>>>>>>>> p2p-Gnutella31 16 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1

Generated file data/data_147892.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 147,892 | 16 | 31 | 884,179,859 |   4.2495 |
>>>>>>>>>>>>> p2p-Gnutella31 8 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1

Generated file data/data_147892.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 147,892 | 8 | 31 | 884,179,859 |   4.9168 |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> TC on usroad >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>> usroad 40 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1

Generated file data/data_165435.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 165,435 | 40 | 606 | 871,365,688 |  12.2708 |
>>>>>>>>>>>>> usroad 32 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1

Generated file data/data_165435.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 165,435 | 32 | 606 | 871,365,688 |  12.3314 |
>>>>>>>>>>>>> usroad 24 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1

Generated file data/data_165435.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 165,435 | 24 | 606 | 871,365,688 |  12.7211 |
>>>>>>>>>>>>> usroad 16 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1

Generated file data/data_165435.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 165,435 | 16 | 606 | 871,365,688 |  14.2997 |
>>>>>>>>>>>>> usroad 8 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1

Generated file data/data_165435.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 165,435 | 8 | 606 | 871,365,688 |  23.0048 |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> TC on fe_ocean >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>> fe_ocean 40 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1

Generated file data/data_409593.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 409,593 | 40 | 247 | 1,669,750,513 |  11.7615 |
>>>>>>>>>>>>> fe_ocean 32 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1

Generated file data/data_409593.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 409,593 | 32 | 247 | 1,669,750,513 |  10.4713 |
>>>>>>>>>>>>> fe_ocean 24 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1

Generated file data/data_409593.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 409,593 | 24 | 247 | 1,669,750,513 |  10.8981 |
>>>>>>>>>>>>> fe_ocean 16 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1

Generated file data/data_409593.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 409,593 | 16 | 247 | 1,669,750,513 |  12.4006 |
>>>>>>>>>>>>> fe_ocean 8 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1

Generated file data/data_409593.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 409,593 | 8 | 247 | 1,669,750,513 |  20.5007 |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> TC on vsp_finan >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>> vsp_finan 40 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1

Generated file data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 552,020 | 40 | 520 | 910,070,918 |  10.7563 |
>>>>>>>>>>>>> vsp_finan 32 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1

Generated file data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 552,020 | 32 | 520 | 910,070,918 |  13.4290 |
>>>>>>>>>>>>> vsp_finan 24 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1

Generated file data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 552,020 | 24 | 520 | 910,070,918 |  21.1224 |
>>>>>>>>>>>>> vsp_finan 16 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1

Generated file data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 552,020 | 16 | 520 | 910,070,918 |  19.3254 |
>>>>>>>>>>>>> vsp_finan 8 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1

Generated file data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 552,020 | 8 | 520 | 910,070,918 |  29.1141 |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> TC on com-dblp >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>> com-dblp 40 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1

Generated file data/com-dblpungraph.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 1,049,866 | 40 | 31 | 1,911,754,892 |   7.0940 |
>>>>>>>>>>>>> com-dblp 32 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1

Generated file data/com-dblpungraph.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 1,049,866 | 32 | 31 | 1,911,754,892 |   7.2212 |
>>>>>>>>>>>>> com-dblp 24 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1

Generated file data/com-dblpungraph.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 1,049,866 | 24 | 31 | 1,911,754,892 |   7.1020 |
>>>>>>>>>>>>> com-dblp 16 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1

Generated file data/com-dblpungraph.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 1,049,866 | 16 | 31 | 1,911,754,892 |   8.5480 |
>>>>>>>>>>>>> com-dblp 8 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1

Generated file data/com-dblpungraph.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 1,049,866 | 8 | 31 | 1,911,754,892 |  11.4592 |
ALL TO ALL COMMUNICATION METHOD: TWO PASS
------------------------------------------------------------------------------------
CC tc_semi_naive.cu -o tc_semi_naive.out -lm
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> TC on p2p-Gnutella31 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>> p2p-Gnutella31 40 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0

Generated file data/data_147892.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 147,892 | 40 | 31 | 884,179,859 |   2.8211 |
>>>>>>>>>>>>> p2p-Gnutella31 32 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0

Generated file data/data_147892.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 147,892 | 32 | 31 | 884,179,859 |   3.3650 |
>>>>>>>>>>>>> p2p-Gnutella31 24 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0

Generated file data/data_147892.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 147,892 | 24 | 31 | 884,179,859 |   3.5686 |
>>>>>>>>>>>>> p2p-Gnutella31 16 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0

Generated file data/data_147892.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 147,892 | 16 | 31 | 884,179,859 |   4.5925 |
>>>>>>>>>>>>> p2p-Gnutella31 8 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0

Generated file data/data_147892.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 147,892 | 8 | 31 | 884,179,859 |   5.5405 |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> TC on usroad >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>> usroad 40 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0

Generated file data/data_165435.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 165,435 | 40 | 606 | 871,365,688 |  12.3503 |
>>>>>>>>>>>>> usroad 32 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0

Generated file data/data_165435.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 165,435 | 32 | 606 | 871,365,688 |  11.3393 |
>>>>>>>>>>>>> usroad 24 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0

Generated file data/data_165435.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 165,435 | 24 | 606 | 871,365,688 |  13.1363 |
>>>>>>>>>>>>> usroad 16 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0

Generated file data/data_165435.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 165,435 | 16 | 606 | 871,365,688 |  13.5109 |
>>>>>>>>>>>>> usroad 8 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0

Generated file data/data_165435.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 165,435 | 8 | 606 | 871,365,688 |  23.6570 |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> TC on fe_ocean >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>> fe_ocean 40 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0

Generated file data/data_409593.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 409,593 | 40 | 247 | 1,669,750,513 |  10.3831 |
>>>>>>>>>>>>> fe_ocean 32 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0

Generated file data/data_409593.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 409,593 | 32 | 247 | 1,669,750,513 |   9.4638 |
>>>>>>>>>>>>> fe_ocean 24 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0

Generated file data/data_409593.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 409,593 | 24 | 247 | 1,669,750,513 |  11.9389 |
>>>>>>>>>>>>> fe_ocean 16 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0

Generated file data/data_409593.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 409,593 | 16 | 247 | 1,669,750,513 |  12.0058 |
>>>>>>>>>>>>> fe_ocean 8 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0

Generated file data/data_409593.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 409,593 | 8 | 247 | 1,669,750,513 |  21.6534 |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> TC on vsp_finan >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>> vsp_finan 40 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0

Generated file data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 552,020 | 40 | 520 | 910,070,918 |  12.5607 |
>>>>>>>>>>>>> vsp_finan 32 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0

Generated file data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 552,020 | 32 | 520 | 910,070,918 |  12.7959 |
>>>>>>>>>>>>> vsp_finan 24 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0

Generated file data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 552,020 | 24 | 520 | 910,070,918 |  20.2548 |
>>>>>>>>>>>>> vsp_finan 16 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0

Generated file data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 552,020 | 16 | 520 | 910,070,918 |  19.3602 |
>>>>>>>>>>>>> vsp_finan 8 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0

Generated file data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 552,020 | 8 | 520 | 910,070,918 |  29.5762 |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> TC on com-dblp >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>> com-dblp 40 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0

Generated file data/com-dblpungraph.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 1,049,866 | 40 | 31 | 1,911,754,892 |   6.8107 |
>>>>>>>>>>>>> com-dblp 32 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0

Generated file data/com-dblpungraph.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 1,049,866 | 32 | 31 | 1,911,754,892 |   8.3900 |
>>>>>>>>>>>>> com-dblp 24 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0

Generated file data/com-dblpungraph.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 1,049,866 | 24 | 31 | 1,911,754,892 |   8.0064 |
>>>>>>>>>>>>> com-dblp 16 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0

Generated file data/com-dblpungraph.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 1,049,866 | 16 | 31 | 1,911,754,892 |   9.2024 |
>>>>>>>>>>>>> com-dblp 8 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0

Generated file data/com-dblpungraph.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 1,049,866 | 8 | 31 | 1,911,754,892 |  12.9087 |
arsho::polaris-login-02 { ~/mnmgJOIN }-> cat polaris-job-semi.error
/usr/bin/ld: warning: /var/tmp/pbs.2051688.polaris-pbs-01.hsn.cm.polaris.alcf.anl.gov/pgcudafatuCPlc8uAUN_oA.o: missing .note.GNU-stack section implies executable stack
/usr/bin/ld: NOTE: This behaviour is deprecated and will be removed in a future version of the linker
/usr/bin/ld: warning: /var/tmp/pbs.2051688.polaris-pbs-01.hsn.cm.polaris.alcf.anl.gov/pgcudafatRNjmcb6hAqUNU.o: missing .note.GNU-stack section implies executable stack
/usr/bin/ld: NOTE: This behaviour is deprecated and will be removed in a future version of the linker
```

### Polaris disk quota error fix
I was getting error like:
```shell
Couldn't write output: Disk quota exceeded
```
#### Solution of disk quota error
- I checked my disk quota:
```shell
myquota

Current quota information for yourself and projects you're a member of:

Name                           Type     Filesystem          Used          Quota           Grace
===============================================================================================
arsho                       User        /home            50.93G*            50G         expired
dist_relational_alg         Project     /lus/grand        929.5G            11T               -
dist_relational_alg         Project     /lus/eagle        929.5G            11T               -
```
- Then, I identified the largest directories:
```shell
arsho::polaris-login-02 { ~ }-> du -h --max-depth=1 | sort -hr
51G	.
11G	./mnmgJOIN
6.7G	./local_join
6.4G	./.conda
6.2G	./.cache
5.8G	./cudf_env
3.2G	./gpujoinenv
```
- Then, I deleted the large unnecessary folders:
```shell
arsho::polaris-login-02 { ~ }-> rm -rf ./local_join
```
- Check disk quota again:
```shell
arsho::polaris-login-02 { ~/mnmgJOIN }-> myquota

Current quota information for yourself and projects you're a member of:

Name                           Type     Filesystem          Used          Quota           Grace
===============================================================================================
arsho                       User        /home             28.66G            50G               -
dist_relational_alg         Project     /lus/grand        929.5G            11T               -
dist_relational_alg         Project     /lus/eagle        929.5G            11T               -

```

### Polaris two pass results
#### Two pass method

##### TC on fe_ocean

| # Input | # Process | # Iterations | # TC          | Time (s) |
| --- |----| --- |---------------| --- |
| 409,593 | 40 | 247 | 1,669,750,513 | 10.0284 |
| 409,593 | 32 | 247 | 1,669,750,513 | 10.4754 |
| 409,593 | 24 | 247 | 1,669,750,513 | 11.9613 |
| 409,593 | 16 | 247 | 1,669,750,513 | 11.6706 |
| 409,593 | 8  | 247 | 1,669,750,513 | 20.1498 |

##### TC on vsp_finan

| # Input | # Process | # Iterations | # TC | Time (s) |
| --- |-----------| --- | --- | --- |
| 552,020 | 40        | 520 | 910,070,918 | 13.5197 |
| 552,020 | 32        | 520 | 910,070,918 | 12.3224 |
| 552,020 | 24        | 520 | 910,070,918 | 20.1347 |
| 552,020 | 16        | 520 | 910,070,918 | 19.6395 |
| 552,020 | 8         | 520 | 910,070,918 | 29.1619 |

##### TC on com-dblp

| # Input | # Process | # Iterations | # TC | Time (s) |
| --- |-----------| --- | --- | --- |
| 1,049,866 | 40        | 31 | 1,911,754,892 | 6.6690 |
| 1,049,866 | 32        | 31 | 1,911,754,892 | 8.4425 |
| 1,049,866 | 24        | 31 | 1,911,754,892 | 7.7934 |
| 1,049,866 | 16        | 31 | 1,911,754,892 | 8.5105 |
| 1,049,866 | 8         | 31 | 1,911,754,892 | 12.0870 |


##### TC on p2p-Gnutella31

| # Input | # Process | # Iterations | # TC | Time (s) |
| --- |-----------| --- | --- | --- |
| 147,892 | 40        | 31 | 884,179,859 | 2.6287 |
| 147,892 | 32        | 31 | 884,179,859 | 3.2223 |
| 147,892 | 24        | 31 | 884,179,859 | 3.6492 |
| 147,892 | 16        | 31 | 884,179,859 | 3.8662 |
| 147,892 | 8         | 31 | 884,179,859 | 5.7059 |

##### TC on usroad

| # Input | # Process | # Iterations | # TC | Time (s) |
| --- |-----------| --- | --- | --- |
| 165,435 | 40        | 606 | 871,365,688 | 11.4508 |
| 165,435 | 32        | 606 | 871,365,688 | 11.9498 |
| 165,435 | 24        | 606 | 871,365,688 | 12.4402 |
| 165,435 | 16        | 606 | 871,365,688 | 13.3520 |
| 165,435 | 8         | 606 | 871,365,688 | 24.4126 |

#### Sorting method

##### TC on p2p-Gnutella31

| # Input | # Process | # Iterations | # TC          | Time (s) |
| ------- | --------- | ------------ | ------------- | -------- |
| 147,892 | 40        | 31           | 884,179,859   | 3.6636   |
| 147,892 | 32        | 31           | 884,179,859   | 3.3396   |
| 147,892 | 24        | 31           | 884,179,859   | 3.7802   |
| 147,892 | 16        | 31           | 884,179,859   | 3.2177   |
| 147,892 | 8         | 31           | 884,179,859   | 5.4038   |

##### TC on usroad

| # Input | # Process | # Iterations | # TC          | Time (s) |
| ------- | --------- | ------------ | ------------- | -------- |
| 165,435 | 40        | 606          | 871,365,688   | 12.7780  |
| 165,435 | 32        | 606          | 871,365,688   | 12.0318  |
| 165,435 | 24        | 606          | 871,365,688   | 12.2798  |
| 165,435 | 16        | 606          | 871,365,688   | 13.9222  |
| 165,435 | 8         | 606          | 871,365,688   | 24.4752  |

##### TC on fe_ocean

| # Input | # Process | # Iterations | # TC          | Time (s) |
| ------- | --------- | ------------ | ------------- | -------- |
| 409,593 | 40        | 247          | 1,669,750,513 | 9.5108   |
| 409,593 | 32        | 247          | 1,669,750,513 | 9.9862   |
| 409,593 | 24        | 247          | 1,669,750,513 | 10.7940  |
| 409,593 | 16        | 247          | 1,669,750,513 | 12.2178  |
| 409,593 | 8         | 247          | 1,669,750,513 | 20.8513  |

##### TC on vsp_finan

| # Input | # Process | # Iterations | # TC          | Time (s) |
| ------- | --------- | ------------ | ------------- | -------- |
| 552,020 | 40        | 520          | 910,070,918   | 10.7864  |
| 552,020 | 32        | 520          | 910,070,918   | 12.2597  |
| 552,020 | 24        | 520          | 910,070,918   | 18.6044  |
| 552,020 | 16        | 520          | 910,070,918   | 17.9082  |
| 552,020 | 8         | 520          | 910,070,918   | 26.2326  |

##### TC on com-dblp

| # Input  | # Process | # Iterations | # TC          | Time (s) |
| -------- | --------- | ------------ | ------------- | -------- |
| 1,049,866 | 40        | 31           | 1,911,754,892 | 3.3003   |
| 1,049,866 | 32        | 31           | 1,911,754,892 | 2.4805   |
| 1,049,866 | 24        | 31           | 1,911,754,892 | 2.5032   |
| 1,049,866 | 16        | 31           | 1,911,754,892 | 2.5689   |
| 1,049,866 | 8         | 31           | 1,911,754,892 | 4.0724   |


```shell
cat polaris-job-semi.output
NUM_OF_NODES= 10 TOTAL_NUM_RANKS= 40 RANKS_PER_NODE= 4 THREADS_PER_RANK= 1
ALL TO ALL COMMUNICATION METHOD: TWO PASS
------------------------------------------------------------------------------------
CC tc_semi_naive.cu -o tc_semi_naive.out -lm
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> TC on p2p-Gnutella31 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>> p2p-Gnutella31 40 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
Using two pass method for all to all communication

Generated file data/data_147892.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 147,892 | 40 | 31 | 884,179,859 |   3.2770 |
>>>>>>>>>>>>> p2p-Gnutella31 32 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
Using two pass method for all to all communication

Generated file data/data_147892.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 147,892 | 32 | 31 | 884,179,859 |   3.3626 |
>>>>>>>>>>>>> p2p-Gnutella31 24 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
Using two pass method for all to all communication

Generated file data/data_147892.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 147,892 | 24 | 31 | 884,179,859 |   4.0524 |
>>>>>>>>>>>>> p2p-Gnutella31 16 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
Using two pass method for all to all communication

Generated file data/data_147892.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 147,892 | 16 | 31 | 884,179,859 |   4.7072 |
>>>>>>>>>>>>> p2p-Gnutella31 8 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
Using two pass method for all to all communication

Generated file data/data_147892.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 147,892 | 8 | 31 | 884,179,859 |   6.1971 |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> TC on usroad >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>> usroad 40 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
Using two pass method for all to all communication

Generated file data/data_165435.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 165,435 | 40 | 606 | 871,365,688 |  13.0661 |
>>>>>>>>>>>>> usroad 32 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
Using two pass method for all to all communication

Generated file data/data_165435.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 165,435 | 32 | 606 | 871,365,688 |  11.4291 |
>>>>>>>>>>>>> usroad 24 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
Using two pass method for all to all communication

```

- Error:
```shell
/usr/bin/ld: warning: /var/tmp/pbs.2051517.polaris-pbs-01.hsn.cm.polaris.alcf.anl.gov/pgcudafatZViHizvVGyaE4.o: missing .note.GNU-stack section implies executable stack
/usr/bin/ld: NOTE: This behaviour is deprecated and will be removed in a future version of the linker
Couldn't write output: Disk quota exceeded
make: *** [Makefile:55: testpolarissemi] Error 127
/var/spool/pbs/mom_priv/jobs/2051517.polaris-pbs-01.hsn.cm.polaris.alcf.anl.gov.SC: line 75: echo: write error: Disk quota exceeded
Couldn't write output: Disk quota exceeded
```


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
