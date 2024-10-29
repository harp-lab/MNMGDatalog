### Polaris Comparison
```shell
# SINGLE JOIN
CC single_join.cu -o single_join_interactive.out
./single_join_interactive.out data/large_datasets/as-skitter.bin 0 1
| # Input | # Process | # Iterations | # Join | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 11,095,298 | 1 | 0 | 249,259,681 |   3.0494 |   0.2136 |   1.9255 |   0.0004 |   1.0423 |   0.0259 |   1.2804 |   0.1808 |   0.0000 |   0.0101 | data/large_datasets/as-skitter.bin_singlejoin.bin |

# TC
CC tc.cu -o tc_interactive.out 

# SF.cedge
./tc_interactive.out data/data_223001.bin 0 0 1
| 223,001 | 1 | 287 | 80,498,014 |   5.3428 |   0.2040 |   0.0091 |   0.0001 |   0.0796 |   0.0019 |   0.0029 |   0.1411 |   4.8275 |   0.0029 | data/data_223001.bin_tc.bin |

# fe_body 
./tc_interactive.out data/data_163734.bin 0 1 1
| 163,734 | 1 | 188 | 156,120,489 |   7.2113 |   0.2051 |   0.0087 |   0.0001 |   0.0742 |   0.0014 |   0.0019 |   0.2745 |   6.4246 |   0.0051 | data/data_163734.bin_tc.bin |
mpiexec --np 2 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_interactive.out data/data_163734.bin 0 1 1
mpiexec --np 2 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_interactive.out data/data_163734.bin 0 1 1
| 163,734 | 2 | 188 | 156,120,489 |   4.9542 |   0.3645 |   0.3173 |   0.0002 |   0.0695 |   0.1084 |   1.4488 |   0.2118 |   2.6043 |   0.0065 | data/data_163734.bin_tc.bin |
arsho::x3101c0s1b1n0 { ~/mnmgJOIN }-> mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_interactive.out data/data_163734.bin 0 1 1
| 163,734 | 4 | 188 | 156,120,489 |   2.5745 |   0.6983 |   1.0696 |   0.0003 |   0.0835 |   0.1413 |   0.6727 |   0.1492 |   0.8442 |   0.0059 | data/data_163734.bin_tc.bin |

# VSP
./tc_interactive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 1 | 520 | 910,070,918 | 153.1016 |   0.2085 |   0.0047 |   0.0001 |   0.4184 |   0.0016 |   0.0030 |   1.2571 | 149.8552 |   0.0211 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
mpiexec --np 2 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_interactive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 2 | 520 | 910,070,918 |  84.0338 |   0.3659 |   0.3293 |   0.0002 |   0.4390 |   0.3910 |   7.1962 |   0.7737 |  74.0726 |   0.0275 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
arsho::x3101c0s1b1n0 { ~/mnmgJOIN }-> mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_interactive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 4 | 520 | 910,070,918 |  42.3144 |   0.6970 |   1.0708 |   0.0003 |   0.3327 |   0.4210 |   3.5118 |   0.7961 |  36.3736 |   0.0220 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |

./tc_interactive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 1 | 520 | 910,070,918 | 150.0877 |   0.2037 |   0.0051 |   0.0001 |   0.5931 |   0.0038 |   0.0046 |   1.2252 | 146.6698 |   0.0229 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
mpiexec --np 2 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_interactive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 2 | 520 | 910,070,918 |  84.8108 |   0.3685 |   0.3190 |   0.0002 |   0.4554 |   2.2544 |   7.2049 |   0.7281 |  73.0309 |   0.0263 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_interactive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 4 | 520 | 910,070,918 |  42.7882 |   0.6970 |   1.0793 |   0.0003 |   0.3141 |   1.2279 |   3.5167 |   0.6980 |  36.2005 |   0.0215 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |


# usroads
./tc_interactive.out data/data_165435.bin 0 0 1
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 1 | 606 | 871,365,688 | 143.7112 |   0.2059 |   0.0092 |   0.0001 |   0.2246 |   0.0016 |   0.0024 |   0.6024 | 141.6846 |   0.0245 | data/data_165435.bin_tc.bin |
mpiexec --np 2 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_interactive.out data/data_165435.bin 0 0 1
| 165,435 | 2 | 606 | 871,365,688 |  76.5405 |   0.3623 |   0.3135 |   0.0002 |   0.2627 |   1.4569 |   3.3267 |   0.4881 |  69.7778 |   0.0248 | data/data_165435.bin_tc.bin |
arsho::x3001c0s7b1n0 { ~/mnmgJOIN }-> mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_interactive.out data/data_165435.bin 0 0 1
| 165,435 | 4 | 606 | 871,365,688 |  38.4733 |   0.7032 |   1.0752 |   0.0003 |   0.3098 |   0.9894 |   1.5351 |   0.4422 |  34.1576 |   0.0263 | data/data_165435.bin_tc.bin |


usroads
1 - 143
2 - 76
4 - 38

vsp_finan512_scagr7
1 - 153
2 - 84
4 - 42

vsp_finan #Input 552,020, #TC 910M, #Iterations 520
1 - 76
2 - 44
4 - 22


./tc_interactive.out data/data_165435.bin 0 0 1
t_full initialization: 9.8565e-05
Rank: 0, set diff: 3.5727, set union: 87.8449, t full cpy: 44.3399, t full all to all: 0.00129719, inner clear: 5.99966
| 165,435 | 1 | 606 | 871,365,688 | 143.8553 |   0.2221 |   0.0033 |   0.0001 |   0.2415 |   0.0000 |   0.0000 |   0.6072 | 141.7586 |   0.0243 | data/data_165435.bin_tc.bin |

# No t full copy
usroads - #Input 165435, #TC 871M, #Iterations 606 
1 - 75
2 - 38
4 - 19


./tc_interactive.out data/data_165435.bin 0 0 1
Rank: 0, set diff: 3.58056, merge: 68.5683, t full cpy: 1.42875, t full all to all: 0.00120612, inner clear: 0.0421691
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 1 | 606 | 871,365,688 |  75.8164 |   0.2107 |   0.0096 |   0.0001 |   0.2353 |   0.0000 |   0.0000 |   0.5224 |  73.6210 |   0.0174 | data/data_165435.bin_tc.bin |
mpiexec --np 2 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_interactive.out data/data_165435.bin 0 0 1
Rank: 0, set diff: 5.94824, merge: 14.9144, t full cpy: 10.7663, t full all to all: 0.768416, inner clear: 0.0758007
Rank: 1, set diff: 2.57017, merge: 28.337, t full cpy: 1.20302, t full all to all: 0.263052, inner clear: 0.0697985
| 165,435 | 2 | 606 | 871,365,688 |  38.8948 |   0.3627 |   0.3092 |   0.0002 |   0.2372 |   1.4368 |   3.1994 |   0.3445 |  32.4732 |   0.0260 | data/data_165435.bin_tc.bin |
arsho::x3207c0s19b1n0 { ~/mnmgJOIN }-> mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_interactive.out data/data_165435.bin 0 0 1
Rank: 0, set diff: 1.26883, merge: 10.591, t full cpy: 2.89782, t full all to all: 0.596137, inner clear: 0.16998
Rank: 1, set diff: 2.49932, merge: 10.3591, t full cpy: 2.10622, t full all to all: 0.43053, inner clear: 0.135156
Rank: 2, set diff: 1.43227, merge: 8.28685, t full cpy: 4.74182, t full all to all: 0.86548, inner clear: 0.25631
Rank: 3, set diff: 2.15568, merge: 10.7947, t full cpy: 1.88876, t full all to all: 0.44841, inner clear: 0.219958
| 165,435 | 4 | 606 | 871,365,688 |  19.6870 |   0.6975 |   1.0729 |   0.0003 |   0.2879 |   0.9821 |   1.4950 |   0.3000 |  15.5830 |   0.0283 | data/data_165435.bin_tc.bin |

./TC ~/mnmgJOIN/data/data_165435.txt 0 
Input graph rows: 165435
edge size 165435
 memory alloc time: 14.5616 ; Join time: 1.39598 ; merge full time: 7.45026 ; rebuild full time: 3.072e-06 ; rebuild delta time: 0.225197 ; set diff time: 14.9544
Rebuild relation detail time : rebuild rel sort time: 0 ; rebuild rel unique time: 0 ; rebuild rel index time: 0.160467
Path counts 871365688
TC time: 38.9328
arsho::x3005c0s13b0n0 { ~/gdlog/build }-> ./TC ~/mnmgJOIN/data/data_165435.txt 1
Input graph rows: 165435
edge size 165435
 memory alloc time: 60.1233 ; Join time: 1.41393 ; merge full time: 7.46292 ; rebuild full time: 4.096e-06 ; rebuild delta time: 0.225772 ; set diff time: 15.4262
Rebuild relation detail time : rebuild rel sort time: 0 ; rebuild rel unique time: 0 ; rebuild rel index time: 0.159792
Path counts 871365688
TC time: 85.0049

# VSP
./tc_interactive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
Rank: 0, set diff: 3.85634, merge: 68.6521, t full cpy: 1.52066, t full all to all: 0.00148961, inner clear: 0.048341
| 552,020 | 1 | 520 | 910,070,918 |  76.9266 |   0.2133 |   0.0137 |   0.0001 |   0.4540 |   0.0000 |   0.0000 |   0.9919 |  74.0790 |   0.0180 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
mpiexec --np 2 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_interactive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
Rank: 0, set diff: 9.89451, merge: 19.5027, t full cpy: 2.49032, t full all to all: 1.5015, inner clear: 0.119962
Rank: 1, set diff: 2.29642, merge: 29.6179, t full cpy: 0.861167, t full all to all: 0.1523, inner clear: 0.142708
| 552,020 | 2 | 520 | 910,070,918 |  44.5384 |   0.3621 |   0.3251 |   0.0002 |   0.4529 |   2.2496 |   6.9216 |   0.6253 |  33.5091 |   0.0233 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
arsho::x3207c0s19b1n0 { ~/mnmgJOIN }-> mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_interactive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
Rank: 0, set diff: 1.08559, merge: 8.05197, t full cpy: 6.00012, t full all to all: 0.768939, inner clear: 0.300881
Rank: 1, set diff: 0.970731, merge: 13.5166, t full cpy: 0.866946, t full all to all: 0.468381, inner clear: 0.20118
Rank: 2, set diff: 2.00791, merge: 6.18969, t full cpy: 6.90292, t full all to all: 0.852828, inner clear: 0.310308
Rank: 3, set diff: 0.955518, merge: 9.36907, t full cpy: 4.90813, t full all to all: 0.485756, inner clear: 0.255572
| 552,020 | 4 | 520 | 910,070,918 |  22.4764 |   0.6888 |   1.0734 |   0.0003 |   0.3296 |   1.2109 |   3.4198 |   0.5392 |  16.2639 |   0.0247 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |



./tc_interactive.out data/web-BerkStan.bin 0 0 1
GPUassert: out of memory common/join.cu 79
./tc_interactive.out data/com-dblpungraph.bin 0 0 1
terminate called after throwing an instance of 'thrust::system::system_error'
  what():  set_operations failed to synchronize: cudaErrorIllegalAddress: an illegal memory access was encountered
Aborted (core dumped)
arsho::x3109c0s37b0n0 { ~/mnmgJOIN }-> mpiexec --np 2 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_interactive.out data/com-dblpungraph.bin 0 0 1
| 1,049,866 | 2 | 31 | 1,911,754,892 |  28.0538 |   0.3742 |   0.3240 |   0.0002 |   0.2222 |   3.8022 |  13.8106 |   1.0988 |   6.7616 |   0.0398 | data/com-dblpungraph.bin_tc.bin |
mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_interactive.out data/com-dblpungraph.bin 0 0 1
| 1,049,866 | 4 | 31 | 1,911,754,892 |  13.5407 |   0.6987 |   1.0794 |   0.0003 |   0.1315 |   1.4928 |   6.8112 |   0.5640 |   3.0525 |   0.0602 | data/com-dblpungraph.bin_tc.bin |


./tc_interactive.out data/as-skitter.bin 0 0 1
GPUassert: an illegal memory access was encountered common/comm.cu 11
arsho::x3101c0s1b1n0 { ~/mnmgJOIN }-> ./tc_interactive.out data/WikiTalk.bin 0 0 1
terminate called after throwing an instance of 'thrust::system::system_error'
  what():  set_operations failed to synchronize: cudaErrorIllegalAddress: an illegal memory access was encountered
Aborted (core dumped)


# SG
CC sg.cu -o sg_interactive.out 
# fe_body 
./sg_interactive.out data/data_163734.bin 0 1 1
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
arsho::x3109c0s37b0n0 { ~/mnmgJOIN }-> ./sg_interactive.out data/data_163734.bin 0 1 1
| 163,734 | 1 | 125 | 408,443,204 |  14.8903 |   0.2060 |   0.0077 |   0.0001 |   0.2761 |   0.0014 |   0.0044 |   1.6472 |  12.2040 |   0.5511 | data/data_163734.bin_sg.bin |
arsho::x3109c0s37b0n0 { ~/mnmgJOIN }-> mpiexec --np 2 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg_interactive.out data/data_163734.bin 0 1 1
| 163,734 | 2 | 125 | 408,443,204 |   6.1466 |   0.3460 |   0.3170 |   0.0001 |   0.2106 |   0.0014 |   0.0066 |   0.9227 |   4.2926 |   0.4571 | data/data_163734.bin_sg.bin |
arsho::x3109c0s37b0n0 { ~/mnmgJOIN }-> mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg_interactive.out data/data_163734.bin 0 1 1
| 163,734 | 4 | 125 | 408,443,204 |   9.1368 |   0.7042 |   1.0616 |   0.0003 |   0.1907 |   0.2458 |   5.6426 |   0.5150 |   1.6757 |   0.2259 | data/data_163734.bin_sg.bin |


```

### Local Comparison
```shell
# fe_body
make runtc DATA_FILE=data/data_163734.bin NPROCS=1 CUDA_AWARE_MPI=0 METHOD=0
nvcc tc.cu -o tc.out -I/usr/lib/x86_64-linux-gnu/openmpi -I/usr/lib/x86_64-linux-gnu/openmpi/include -L/usr/lib/x86_64-linux-gnu/openmpi/lib -lmpi -lm -O3 --extended-lambda
mpirun -np 1 ./tc.out data/data_163734.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 1 | 188 | 156,120,489 |   6.4528 |   0.0012 |   0.8332 |   0.0002 |   0.3735 |   0.0000 |   0.0000 |   0.7557 |   4.2796 |   0.0644 | data/data_163734.bin_tc.bin |
(venv) ➜  mnmgJOIN git:(main) ✗ mpirun -np 3 ./tc.out data/data_163734.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 3 | 188 | 156,120,489 |   8.6434 |   0.0015 |   0.5344 |   0.0003 |   0.3447 |   0.8048 |   2.4516 |   0.5828 |   4.3201 |   0.0418 | data/data_163734.bin_tc.bin |



./tc.out data/data_163734.bin 0 1                                           
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 1 | 188 | 156,120,489 |   8.8525 |   0.0005 |   0.3826 |   0.0001 |   0.3830 |   0.0010 |   0.0025 |   0.9635 |   6.6418 |   0.0607 | data/data_163734.bin_tc.bin |

./TC ../data/data_163734.txt
Path counts 156120489
TC time: 9.19599
join detail: 
compute size time:  0.0349251
reduce + scan time: 0.111364
fetch result time:  0.27773
sort time:          1.54918
build index time:   0
merge time:         0
unique time:        0.102802

# ego-facebook
./tc.out data/data_88234.bin 0 1
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 88,234 | 1 | 17 | 2,508,102 |   0.1581 |   0.0004 |   0.0095 |   0.0001 |   0.0290 |   0.0009 |   0.0015 |   0.0885 |   0.0328 |   0.0014 | data/data_88234.bin_tc.bin |

./TC ../data/data_88234.txt
Path counts 2508102
TC time: 0.269959
join detail: 
compute size time:  0.00207965
reduce + scan time: 0.00299011
fetch result time:  0.0169337
sort time:          0.177641
build index time:   0
merge time:         0
unique time:        0.0127677

# SF.cedge
./tc.out data/data_223001.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 223,001 | 1 | 287 | 80,498,014 |   6.4314 |   0.0007 |   0.1969 |   0.0001 |   0.5332 |   0.0016 |   0.0039 |   0.3310 |   5.1427 |   0.0374 | data/data_223001.bin_tc.bin |

./TC ../data/data_223001.txt
Path counts 80485066
TC time: 5.99752
join detail: 
compute size time:  0.02525
reduce + scan time: 0.193462
fetch result time:  0.223986
sort time:          0.343417
build index time:   0
merge time:         0
unique time:        0.0219739


# SG
#OL.cedge
./sg.out data/data_7035.bin 0 1   
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 7,035 | 1 | 56 | 285,431 |   0.0394 |   0.0004 |   0.0124 |   0.0001 |   0.0097 |   0.0010 |   0.0002 |   0.0088 |   0.0170 |   0.0022 | data/data_7035.bin_sg.bin |

./SG ../data/data_7035.txt
sg counts 285431
sg time: 0.0761541
join detail: 
compute size time:  0.00341037
reduce + scan time: 0.00899975
fetch result time:  0.004048
sort time:          0.0143057
build index time:   0
merge time:         0
unique time:        0.00425962

```