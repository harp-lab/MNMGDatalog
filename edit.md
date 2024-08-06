| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 40 | 31 | 884,179,859 |   3.7549 |   0.7148 |   2.4619 |   0.0001 |   0.0096 |   0.0985 |   0.2890 |   0.1335 |   0.0476 | data/data_147892.bin_tc.bin |
>>>>>>>>>>>>> p2p-Gnutella31 32 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 32 | 31 | 884,179,859 |   3.8011 |   0.7201 |   2.4040 |   0.0001 |   0.0104 |   0.1074 |   0.3494 |   0.1489 |   0.0608 | data/data_147892.bin_tc.bin |
>>>>>>>>>>>>> p2p-Gnutella31 24 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 24 | 31 | 884,179,859 |   4.3497 |   0.7096 |   2.7226 |   0.0001 |   0.0130 |   0.1366 |   0.4687 |   0.2226 |   0.0765 | data/data_147892.bin_tc.bin |
>>>>>>>>>>>>> p2p-Gnutella31 16 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 16 | 31 | 884,179,859 |   5.1291 |   0.7013 |   3.2380 |   0.0001 |   0.0135 |   0.1595 |   0.6444 |   0.2546 |   0.1178 | data/data_147892.bin_tc.bin |
>>>>>>>>>>>>> p2p-Gnutella31 8 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 8 | 31 | 884,179,859 |   7.1120 |   0.6992 |   4.2401 |   0.0001 |   0.0181 |   0.2345 |   1.2504 |   0.4382 |   0.2314 | data/data_147892.bin_tc.bin |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> TC on usroad >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>> usroad 40 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 40 | 606 | 871,365,688 |   7.0708 |   0.7107 |   2.2668 |   0.0001 |   0.0615 |   0.3276 |   0.3104 |   3.3348 |   0.0588 | data/data_165435.bin_tc.bin |
>>>>>>>>>>>>> usroad 32 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 32 | 606 | 871,365,688 |   8.0725 |   0.7166 |   2.2102 |   0.0001 |   0.0521 |   0.4073 |   0.3257 |   4.2876 |   0.0729 | data/data_165435.bin_tc.bin |
>>>>>>>>>>>>> usroad 24 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 24 | 606 | 871,365,688 |  10.4005 |   0.7219 |   2.7260 |   0.0001 |   0.0525 |   0.5135 |   0.3252 |   5.9629 |   0.0983 | data/data_165435.bin_tc.bin |
>>>>>>>>>>>>> usroad 16 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 16 | 606 | 871,365,688 |  16.3549 |   0.7052 |   4.0645 |   0.0001 |   0.1595 |   0.5724 |   0.4948 |  10.2433 |   0.1152 | data/data_165435.bin_tc.bin |
>>>>>>>>>>>>> usroad 8 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 8 | 606 | 871,365,688 |  23.2240 |   0.7002 |   3.4961 |   0.0001 |   0.3539 |   0.8466 |   0.8650 |  16.6943 |   0.2677 | data/data_165435.bin_tc.bin |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> TC on fe_ocean >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>> fe_ocean 40 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 40 | 247 | 1,669,750,513 |   8.8219 |   0.7182 |   4.5372 |   0.0001 |   0.0768 |   0.4686 |   0.6327 |   2.2836 |   0.1047 | data/data_409593.bin_tc.bin |
>>>>>>>>>>>>> fe_ocean 32 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 32 | 247 | 1,669,750,513 |   9.5006 |   0.7183 |   4.2711 |   0.0001 |   0.0912 |   0.5050 |   0.7852 |   2.9951 |   0.1346 | data/data_409593.bin_tc.bin |
>>>>>>>>>>>>> fe_ocean 24 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 24 | 247 | 1,669,750,513 |  13.4000 |   0.7234 |   5.9914 |   0.0001 |   0.1519 |   0.5970 |   1.2151 |   4.5520 |   0.1691 | data/data_409593.bin_tc.bin |
>>>>>>>>>>>>> fe_ocean 16 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 16 | 247 | 1,669,750,513 |  15.0029 |   0.7044 |   3.8985 |   0.0001 |   0.2248 |   0.7851 |   1.7911 |   7.3471 |   0.2517 | data/data_409593.bin_tc.bin |
>>>>>>>>>>>>> fe_ocean 8 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 8 | 247 | 1,669,750,513 |  22.6766 |   0.7035 |   4.4752 |   0.0001 |   0.2697 |   1.2783 |   3.4200 |  12.0441 |   0.4859 | data/data_409593.bin_tc.bin |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> TC on vsp_finan >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>> vsp_finan 40 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 40 | 520 | 910,070,918 |   7.0400 |   0.7119 |   1.8507 |   0.0001 |   0.0900 |   0.4855 |   0.5029 |   3.3281 |   0.0708 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
>>>>>>>>>>>>> vsp_finan 32 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 32 | 520 | 910,070,918 |   8.4701 |   0.7175 |   2.4881 |   0.0001 |   0.1071 |   0.5434 |   0.5381 |   3.9984 |   0.0775 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
>>>>>>>>>>>>> vsp_finan 24 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 24 | 520 | 910,070,918 |  11.8649 |   0.7200 |   3.2001 |   0.0001 |   0.1687 |   0.6614 |   0.7413 |   6.2878 |   0.0853 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
>>>>>>>>>>>>> vsp_finan 16 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 16 | 520 | 910,070,918 |  16.5896 |   0.7048 |   3.5643 |   0.0004 |   0.2743 |   0.9243 |   0.9737 |  10.0261 |   0.1217 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
>>>>>>>>>>>>> vsp_finan 8 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 8 | 520 | 910,070,918 |  26.6116 |   0.6899 |   4.2169 |   0.0003 |   0.5418 |   1.2492 |   1.8895 |  17.7989 |   0.2249 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> TC on com-dblp >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>> com-dblp 40 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1,049,866 | 40 | 31 | 1,911,754,892 |   8.6460 |   0.7157 |   6.5968 |   0.0004 |   0.0136 |   0.2329 |   0.7451 |   0.2396 |   0.1020 | data/com-dblpungraph.bin_tc.bin |
>>>>>>>>>>>>> com-dblp 32 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1,049,866 | 32 | 31 | 1,911,754,892 |   9.3588 |   0.7143 |   7.0478 |   0.0004 |   0.0143 |   0.2698 |   0.9018 |   0.2843 |   0.1262 | data/com-dblpungraph.bin_tc.bin |
>>>>>>>>>>>>> com-dblp 24 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1,049,866 | 24 | 31 | 1,911,754,892 |   9.0769 |   0.7194 |   6.2812 |   0.0002 |   0.0163 |   0.3297 |   1.1870 |   0.3701 |   0.1730 | data/com-dblpungraph.bin_tc.bin |
>>>>>>>>>>>>> com-dblp 16 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1,049,866 | 16 | 31 | 1,911,754,892 |   9.6291 |   0.7045 |   5.8916 |   0.0003 |   0.0239 |   0.4427 |   1.7686 |   0.5422 |   0.2553 | data/com-dblpungraph.bin_tc.bin |
>>>>>>>>>>>>> com-dblp 8 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1,049,866 | 8 | 31 | 1,911,754,892 |  13.8682 |   0.7001 |   7.3139 |   0.0003 |   0.0225 |   0.6343 |   3.3221 |   1.3204 |   0.5545 | data/com-dblpungraph.bin_tc.bin |
