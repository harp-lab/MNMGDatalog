CC tc_semi_naive.cu -o tc_semi_naive.out -lm
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> TC on p2p-Gnutella31 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>> p2p-Gnutella31 40 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 40 | 31 | 884,179,859 |   2.2631 |   0.0186 |   1.6634 |   0.0001 |   0.0094 |   0.0976 |   0.2930 |   0.1340 |   0.0471 | data/data_147892.bin_tc.bin |
>>>>>>>>>>>>> p2p-Gnutella31 32 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 32 | 31 | 884,179,859 |   2.7128 |   0.0058 |   2.0315 |   0.0001 |   0.0103 |   0.1077 |   0.3499 |   0.1483 |   0.0593 | data/data_147892.bin_tc.bin |
>>>>>>>>>>>>> p2p-Gnutella31 24 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 24 | 31 | 884,179,859 |   3.3090 |   0.0058 |   2.4568 |   0.0001 |   0.0116 |   0.1228 |   0.4479 |   0.1867 |   0.0772 | data/data_147892.bin_tc.bin |
>>>>>>>>>>>>> p2p-Gnutella31 16 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 16 | 31 | 884,179,859 |   4.4394 |   0.0056 |   3.2790 |   0.0001 |   0.0126 |   0.1557 |   0.6381 |   0.2321 |   0.1162 | data/data_147892.bin_tc.bin |
>>>>>>>>>>>>> p2p-Gnutella31 8 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 8 | 31 | 884,179,859 |   6.5362 |   0.0078 |   4.3585 |   0.0001 |   0.0176 |   0.2385 |   1.2550 |   0.4297 |   0.2291 | data/data_147892.bin_tc.bin |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> TC on usroad >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>> usroad 40 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 40 | 606 | 871,365,688 |   5.5808 |   0.0058 |   2.1303 |   0.0001 |   0.0584 |   0.3204 |   0.3661 |   2.6144 |   0.0853 | data/data_165435.bin_tc.bin |
>>>>>>>>>>>>> usroad 32 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 32 | 606 | 871,365,688 |   6.0812 |   0.0058 |   1.7538 |   0.0001 |   0.0496 |   0.3927 |   0.3714 |   3.4108 |   0.0971 | data/data_165435.bin_tc.bin |
>>>>>>>>>>>>> usroad 24 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 24 | 606 | 871,365,688 |   8.3186 |   0.0058 |   2.3752 |   0.0001 |   0.0500 |   0.4848 |   0.3720 |   4.9163 |   0.1145 | data/data_165435.bin_tc.bin |
>>>>>>>>>>>>> usroad 16 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 16 | 606 | 871,365,688 |  11.6134 |   0.0057 |   2.4824 |   0.0001 |   0.1208 |   0.5801 |   0.4177 |   7.8644 |   0.1423 | data/data_165435.bin_tc.bin |
>>>>>>>>>>>>> usroad 8 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 8 | 606 | 871,365,688 |  22.7054 |   0.0057 |   3.5588 |   0.0001 |   0.3609 |   0.9173 |   0.9025 |  16.6911 |   0.2690 | data/data_165435.bin_tc.bin |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> TC on fe_ocean >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>> fe_ocean 40 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 40 | 247 | 1,669,750,513 |   7.6012 |   0.0057 |   4.5519 |   0.0001 |   0.0738 |   0.4400 |   0.6562 |   1.7453 |   0.1281 | data/data_409593.bin_tc.bin |
>>>>>>>>>>>>> fe_ocean 32 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 32 | 247 | 1,669,750,513 |   7.5293 |   0.0057 |   3.6263 |   0.0001 |   0.0858 |   0.4919 |   0.7963 |   2.3831 |   0.1401 | data/data_409593.bin_tc.bin |
>>>>>>>>>>>>> fe_ocean 24 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 24 | 247 | 1,669,750,513 |  11.5802 |   0.0057 |   6.1173 |   0.0001 |   0.1224 |   0.5664 |   1.1273 |   3.4374 |   0.2035 | data/data_409593.bin_tc.bin |
>>>>>>>>>>>>> fe_ocean 16 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 16 | 247 | 1,669,750,513 |  12.5122 |   0.0058 |   4.0388 |   0.0001 |   0.1735 |   0.7499 |   1.6411 |   5.6731 |   0.2300 | data/data_409593.bin_tc.bin |
>>>>>>>>>>>>> fe_ocean 8 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 8 | 247 | 1,669,750,513 |  22.3079 |   0.0057 |   4.5878 |   0.0001 |   0.3319 |   1.3972 |   3.4707 |  12.0254 |   0.4891 | data/data_409593.bin_tc.bin |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> TC on vsp_finan >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>> vsp_finan 40 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 40 | 520 | 910,070,918 |   5.9071 |   0.0058 |   2.0741 |   0.0001 |   0.0852 |   0.4966 |   0.5491 |   2.6082 |   0.0881 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
>>>>>>>>>>>>> vsp_finan 32 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 32 | 520 | 910,070,918 |   6.8740 |   0.0058 |   1.9770 |   0.0001 |   0.1020 |   0.5346 |   0.5779 |   3.5842 |   0.0924 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
>>>>>>>>>>>>> vsp_finan 24 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 24 | 520 | 910,070,918 |   8.6161 |   0.0058 |   1.9778 |   0.0001 |   0.1519 |   0.6283 |   0.7259 |   5.0070 |   0.1194 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
>>>>>>>>>>>>> vsp_finan 16 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 16 | 520 | 910,070,918 |  13.7563 |   0.0057 |   3.2147 |   0.0003 |   0.2324 |   0.9342 |   0.9258 |   8.3035 |   0.1396 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
>>>>>>>>>>>>> vsp_finan 8 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 8 | 520 | 910,070,918 |  25.8828 |   0.0058 |   4.0974 |   0.0003 |   0.5428 |   1.3114 |   1.9525 |  17.7475 |   0.2251 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> TC on com-dblp >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>> com-dblp 40 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1,049,866 | 40 | 31 | 1,911,754,892 |   7.5272 |   0.0058 |   6.2326 |   0.0003 |   0.0137 |   0.2137 |   0.7235 |   0.2357 |   0.1019 | data/com-dblpungraph.bin_tc.bin |
>>>>>>>>>>>>> com-dblp 32 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1,049,866 | 32 | 31 | 1,911,754,892 |   8.9701 |   0.0058 |   7.4129 |   0.0004 |   0.0141 |   0.2417 |   0.8939 |   0.2747 |   0.1265 | data/com-dblpungraph.bin_tc.bin |
>>>>>>>>>>>>> com-dblp 24 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1,049,866 | 24 | 31 | 1,911,754,892 |   7.9908 |   0.0057 |   5.9975 |   0.0002 |   0.0171 |   0.2895 |   1.1567 |   0.3543 |   0.1699 | data/com-dblpungraph.bin_tc.bin |
>>>>>>>>>>>>> com-dblp 16 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1,049,866 | 16 | 31 | 1,911,754,892 |   9.9526 |   0.0058 |   7.0276 |   0.0003 |   0.0266 |   0.3864 |   1.7246 |   0.5270 |   0.2542 | data/com-dblpungraph.bin_tc.bin |
>>>>>>>>>>>>> com-dblp 8 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1,049,866 | 8 | 31 | 1,911,754,892 |  14.3225 |   0.0062 |   8.4519 |   0.0003 |   0.0219 |   0.6333 |   3.3363 |   1.3150 |   0.5575 | data/com-dblpungraph.bin_tc.bin |
