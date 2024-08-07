### CUDA AWARE MPI
```
cat polaris-job-semi.output
ALL TO ALL COMMUNICATION METHOD: SORTING
------------------------------------------------------------------------------------
CC tc_semi_naive.cu -o tc_semi_naive.out -lm
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 40 | 31 | 884,179,859 |   3.4496 |   0.0177 |   2.4559 |   0.0001 |   0.0109 |   0.0242 |   0.6494 |   0.2456 |   0.0460 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 40 | 31 | 884,179,859 |   3.7361 |   0.0083 |   2.7299 |   0.0001 |   0.0106 |   0.0245 |   0.6784 |   0.2392 |   0.0450 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 40 | 31 | 884,179,859 |   3.3946 |   0.0079 |   2.4036 |   0.0001 |   0.0106 |   0.0233 |   0.6691 |   0.2347 |   0.0454 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 40 | 31 | 884,179,859 |   3.8481 |   0.0081 |   2.8703 |   0.0001 |   0.0106 |   0.0234 |   0.6528 |   0.2368 |   0.0460 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 40 | 31 | 884,179,859 |   3.2376 |   0.0095 |   2.2142 |   0.0001 |   0.0108 |   0.0238 |   0.6985 |   0.2351 |   0.0456 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 32 | 31 | 884,179,859 |   2.9218 |   0.0081 |   1.9491 |   0.0001 |   0.0111 |   0.0253 |   0.6336 |   0.2380 |   0.0564 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 32 | 31 | 884,179,859 |   3.5544 |   0.0083 |   2.5548 |   0.0001 |   0.0112 |   0.0266 |   0.6506 |   0.2461 |   0.0568 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 32 | 31 | 884,179,859 |   2.6924 |   0.0082 |   1.6895 |   0.0001 |   0.0110 |   0.0258 |   0.6503 |   0.2493 |   0.0582 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 32 | 31 | 884,179,859 |   2.9101 |   0.0083 |   1.9142 |   0.0001 |   0.0110 |   0.0257 |   0.6478 |   0.2453 |   0.0578 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 32 | 31 | 884,179,859 |   3.1020 |   0.0080 |   2.1073 |   0.0001 |   0.0111 |   0.0268 |   0.6442 |   0.2475 |   0.0571 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 24 | 31 | 884,179,859 |   4.0305 |   0.0056 |   2.9960 |   0.0001 |   0.0128 |   0.0280 |   0.6317 |   0.2822 |   0.0741 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 24 | 31 | 884,179,859 |   3.6575 |   0.0058 |   2.6282 |   0.0001 |   0.0127 |   0.0282 |   0.6333 |   0.2751 |   0.0743 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 24 | 31 | 884,179,859 |   3.3509 |   0.0057 |   2.3515 |   0.0001 |   0.0124 |   0.0286 |   0.6167 |   0.2620 |   0.0739 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 24 | 31 | 884,179,859 |   3.6454 |   0.0057 |   2.5838 |   0.0001 |   0.0127 |   0.0286 |   0.6606 |   0.2807 |   0.0733 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 24 | 31 | 884,179,859 |   3.4103 |   0.0057 |   2.4003 |   0.0001 |   0.0126 |   0.0277 |   0.6173 |   0.2733 |   0.0734 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 16 | 31 | 884,179,859 |   4.2004 |   0.0058 |   3.1296 |   0.0001 |   0.0138 |   0.0354 |   0.6040 |   0.3002 |   0.1116 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 16 | 31 | 884,179,859 |   4.3476 |   0.0057 |   3.2851 |   0.0001 |   0.0142 |   0.0351 |   0.6077 |   0.2891 |   0.1106 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 16 | 31 | 884,179,859 |   4.5737 |   0.0057 |   3.4046 |   0.0001 |   0.0140 |   0.0354 |   0.6796 |   0.3260 |   0.1085 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 16 | 31 | 884,179,859 |   3.7548 |   0.0057 |   2.6822 |   0.0001 |   0.0148 |   0.0350 |   0.6102 |   0.2970 |   0.1098 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 16 | 31 | 884,179,859 |   4.3926 |   0.0057 |   3.2333 |   0.0001 |   0.0151 |   0.0343 |   0.6617 |   0.3340 |   0.1084 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 8 | 31 | 884,179,859 |   5.4723 |   0.0058 |   3.9766 |   0.0001 |   0.0183 |   0.0513 |   0.7025 |   0.4839 |   0.2338 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 8 | 31 | 884,179,859 |   5.1040 |   0.0058 |   3.6266 |   0.0001 |   0.0174 |   0.0522 |   0.6950 |   0.4732 |   0.2338 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 8 | 31 | 884,179,859 |   4.9854 |   0.0058 |   3.5076 |   0.0001 |   0.0184 |   0.0532 |   0.6911 |   0.4775 |   0.2317 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 8 | 31 | 884,179,859 |   5.4426 |   0.0058 |   3.9587 |   0.0001 |   0.0179 |   0.0527 |   0.7007 |   0.4785 |   0.2283 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 8 | 31 | 884,179,859 |   5.2168 |   0.0059 |   3.7336 |   0.0001 |   0.0181 |   0.0534 |   0.7036 |   0.4744 |   0.2277 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 40 | 606 | 871,365,688 |  13.8883 |   0.0078 |   2.0593 |   0.0001 |   0.0683 |   0.1621 |   8.1527 |   3.3699 |   0.0682 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 40 | 606 | 871,365,688 |  13.4403 |   0.0084 |   1.7798 |   0.0001 |   0.0684 |   0.1624 |   8.0193 |   3.3328 |   0.0690 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 40 | 606 | 871,365,688 |  13.9234 |   0.0077 |   2.0575 |   0.0001 |   0.0675 |   0.1619 |   8.1852 |   3.3742 |   0.0693 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 40 | 606 | 871,365,688 |  13.6972 |   0.0082 |   1.7561 |   0.0001 |   0.0721 |   0.1654 |   8.2330 |   3.3938 |   0.0685 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 40 | 606 | 871,365,688 |  13.2992 |   0.0083 |   1.4716 |   0.0001 |   0.0674 |   0.1627 |   8.1867 |   3.3332 |   0.0692 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 32 | 606 | 871,365,688 |  13.2393 |   0.0082 |   2.1769 |   0.0001 |   0.0584 |   0.2392 |   7.3761 |   3.2923 |   0.0882 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 32 | 606 | 871,365,688 |  12.9139 |   0.0080 |   2.0189 |   0.0001 |   0.0582 |   0.2309 |   7.2660 |   3.2454 |   0.0864 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 32 | 606 | 871,365,688 |  12.5092 |   0.0082 |   1.7420 |   0.0001 |   0.0586 |   0.2330 |   7.2140 |   3.1662 |   0.0871 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 32 | 606 | 871,365,688 |  12.7921 |   0.0081 |   2.0494 |   0.0001 |   0.0578 |   0.2298 |   7.1563 |   3.2029 |   0.0877 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 32 | 606 | 871,365,688 |  13.1232 |   0.0081 |   2.2729 |   0.0001 |   0.0578 |   0.2270 |   7.2851 |   3.1847 |   0.0876 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 24 | 606 | 871,365,688 |  13.8801 |   0.0056 |   2.1363 |   0.0001 |   0.0645 |   0.2785 |   7.0561 |   4.2244 |   0.1146 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 24 | 606 | 871,365,688 |  14.4194 |   0.0059 |   2.6818 |   0.0001 |   0.0644 |   0.2774 |   7.0352 |   4.2402 |   0.1143 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 24 | 606 | 871,365,688 |  13.6236 |   0.0058 |   1.8998 |   0.0001 |   0.0646 |   0.2807 |   7.0682 |   4.1911 |   0.1134 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 24 | 606 | 871,365,688 |  14.1707 |   0.0057 |   2.4680 |   0.0001 |   0.0646 |   0.2762 |   7.0779 |   4.1641 |   0.1141 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 24 | 606 | 871,365,688 |  14.4698 |   0.0059 |   2.7819 |   0.0001 |   0.0645 |   0.2793 |   7.0217 |   4.2000 |   0.1165 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 16 | 606 | 871,365,688 |  14.6214 |   0.0056 |   3.0452 |   0.0001 |   0.1128 |   0.2890 |   6.1249 |   4.8825 |   0.1614 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 16 | 606 | 871,365,688 |  13.6727 |   0.0058 |   2.1272 |   0.0001 |   0.1131 |   0.2960 |   6.1509 |   4.8408 |   0.1387 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 16 | 606 | 871,365,688 |  14.1967 |   0.0057 |   2.4975 |   0.0001 |   0.1128 |   0.2833 |   6.1249 |   5.0136 |   0.1588 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 16 | 606 | 871,365,688 |  15.6313 |   0.0058 |   3.6184 |   0.0001 |   0.1204 |   0.2885 |   6.2756 |   5.1614 |   0.1611 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 16 | 606 | 871,365,688 |  14.1328 |   0.0059 |   2.4835 |   0.0001 |   0.1136 |   0.2827 |   6.1528 |   4.9365 |   0.1578 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 8 | 606 | 871,365,688 |  23.4716 |   0.0058 |   3.6529 |   0.0001 |   0.3492 |   0.3744 |   7.0171 |  11.8035 |   0.2686 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 8 | 606 | 871,365,688 |  23.5662 |   0.0057 |   3.5660 |   0.0001 |   0.3453 |   0.3782 |   7.0984 |  11.9356 |   0.2369 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 8 | 606 | 871,365,688 |  23.3685 |   0.0057 |   3.5181 |   0.0001 |   0.3241 |   0.3853 |   7.0053 |  11.8945 |   0.2355 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 8 | 606 | 871,365,688 |  23.7805 |   0.0057 |   3.9524 |   0.0001 |   0.3534 |   0.3732 |   7.0328 |  11.8219 |   0.2412 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 8 | 606 | 871,365,688 |  23.1327 |   0.0057 |   3.2321 |   0.0001 |   0.3388 |   0.3761 |   7.1272 |  11.8192 |   0.2336 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 40 | 247 | 1,669,750,513 |  10.8246 |   0.0081 |   3.8912 |   0.0001 |   0.0752 |   0.1674 |   4.5298 |   2.0526 |   0.1001 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 40 | 247 | 1,669,750,513 |  10.8323 |   0.0081 |   4.0979 |   0.0001 |   0.0746 |   0.1713 |   4.3251 |   2.0603 |   0.0949 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 40 | 247 | 1,669,750,513 |  10.8615 |   0.0080 |   3.8969 |   0.0001 |   0.0752 |   0.1677 |   4.5756 |   2.0426 |   0.0955 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 40 | 247 | 1,669,750,513 |  11.5175 |   0.0083 |   4.6057 |   0.0001 |   0.0736 |   0.1703 |   4.5386 |   2.0254 |   0.0954 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 40 | 247 | 1,669,750,513 |  10.4629 |   0.0082 |   3.6206 |   0.0001 |   0.0744 |   0.1679 |   4.4553 |   2.0415 |   0.0950 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 32 | 247 | 1,669,750,513 |  12.2372 |   0.0087 |   5.4245 |   0.0001 |   0.0902 |   0.1735 |   4.4438 |   1.9823 |   0.1143 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 32 | 247 | 1,669,750,513 |  10.9754 |   0.0082 |   4.1559 |   0.0001 |   0.0914 |   0.1749 |   4.4349 |   1.9962 |   0.1138 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 32 | 247 | 1,669,750,513 |  11.6495 |   0.0082 |   4.6849 |   0.0001 |   0.0904 |   0.1838 |   4.5235 |   2.0446 |   0.1140 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 32 | 247 | 1,669,750,513 |  11.2471 |   0.0083 |   4.4116 |   0.0001 |   0.0911 |   0.1763 |   4.4410 |   2.0049 |   0.1138 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 32 | 247 | 1,669,750,513 |  11.2797 |   0.0081 |   4.3421 |   0.0001 |   0.0919 |   0.1813 |   4.4996 |   2.0447 |   0.1120 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 24 | 247 | 1,669,750,513 |  11.5134 |   0.0059 |   4.3457 |   0.0001 |   0.1116 |   0.1912 |   4.1136 |   2.5907 |   0.1547 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 24 | 247 | 1,669,750,513 |  11.9216 |   0.0058 |   4.6363 |   0.0001 |   0.1292 |   0.2133 |   4.1389 |   2.6439 |   0.1542 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 24 | 247 | 1,669,750,513 |  11.6186 |   0.0058 |   4.4109 |   0.0001 |   0.1105 |   0.1935 |   4.1224 |   2.6238 |   0.1517 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 24 | 247 | 1,669,750,513 |  11.5572 |   0.0059 |   4.2784 |   0.0001 |   0.1224 |   0.2069 |   4.1490 |   2.6428 |   0.1518 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 24 | 247 | 1,669,750,513 |  11.1830 |   0.0058 |   3.9249 |   0.0001 |   0.1125 |   0.1974 |   4.1340 |   2.6560 |   0.1523 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 16 | 247 | 1,669,750,513 |  12.2923 |   0.0058 |   3.7972 |   0.0001 |   0.1596 |   0.2222 |   3.6125 |   4.2657 |   0.2292 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 16 | 247 | 1,669,750,513 |  12.5663 |   0.0059 |   3.5721 |   0.0001 |   0.1537 |   0.2256 |   3.9983 |   4.3808 |   0.2298 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 16 | 247 | 1,669,750,513 |  13.7880 |   0.0057 |   4.8736 |   0.0001 |   0.1471 |   0.2308 |   4.5423 |   3.7242 |   0.2642 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 16 | 247 | 1,669,750,513 |  12.4962 |   0.0057 |   4.0441 |   0.0001 |   0.1507 |   0.2186 |   3.6596 |   4.1568 |   0.2607 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 16 | 247 | 1,669,750,513 |  12.6375 |   0.0058 |   3.8995 |   0.0001 |   0.1497 |   0.2170 |   3.9879 |   4.1167 |   0.2607 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 8 | 247 | 1,669,750,513 |  20.9985 |   0.0059 |   4.4318 |   0.0001 |   0.3070 |   0.2653 |   3.3325 |  12.1623 |   0.4936 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 8 | 247 | 1,669,750,513 |  21.7154 |   0.0058 |   5.3666 |   0.0001 |   0.3311 |   0.2538 |   3.1210 |  12.2190 |   0.4181 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 8 | 247 | 1,669,750,513 |  21.1000 |   0.0058 |   4.7209 |   0.0001 |   0.3309 |   0.2796 |   3.1534 |  12.1298 |   0.4794 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 8 | 247 | 1,669,750,513 |  21.3841 |   0.0057 |   4.9326 |   0.0001 |   0.3360 |   0.2770 |   3.2781 |  12.1318 |   0.4227 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 8 | 247 | 1,669,750,513 |  21.3332 |   0.0058 |   4.9560 |   0.0001 |   0.2496 |   0.2674 |   3.2846 |  12.1463 |   0.4235 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 40 | 520 | 910,070,918 |  13.5881 |   0.0081 |   2.4880 |   0.0001 |   0.1004 |   0.2164 |   7.7068 |   3.0170 |   0.0514 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 40 | 520 | 910,070,918 |  12.8963 |   0.0081 |   1.8367 |   0.0001 |   0.0949 |   0.2163 |   7.6814 |   3.0079 |   0.0509 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 40 | 520 | 910,070,918 |  12.7170 |   0.0081 |   1.5230 |   0.0001 |   0.0968 |   0.2239 |   7.7938 |   3.0203 |   0.0511 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 40 | 520 | 910,070,918 |  12.6464 |   0.0082 |   1.5379 |   0.0001 |   0.0949 |   0.2157 |   7.7196 |   3.0194 |   0.0507 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 40 | 520 | 910,070,918 |  12.9440 |   0.0078 |   1.7607 |   0.0001 |   0.0977 |   0.2156 |   7.7914 |   3.0193 |   0.0515 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 32 | 520 | 910,070,918 |  12.5458 |   0.0083 |   2.4835 |   0.0001 |   0.1128 |   0.2551 |   6.6185 |   3.0051 |   0.0622 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 32 | 520 | 910,070,918 |  12.3800 |   0.0083 |   2.0575 |   0.0001 |   0.1232 |   0.2608 |   6.7450 |   3.1237 |   0.0612 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 32 | 520 | 910,070,918 |  12.6589 |   0.0082 |   2.4604 |   0.0001 |   0.1153 |   0.2612 |   6.6540 |   3.0985 |   0.0613 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 32 | 520 | 910,070,918 |  11.9072 |   0.0082 |   1.6874 |   0.0001 |   0.1172 |   0.2606 |   6.6774 |   3.0949 |   0.0615 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 32 | 520 | 910,070,918 |  12.7722 |   0.0083 |   2.5775 |   0.0001 |   0.1149 |   0.2569 |   6.6165 |   3.1367 |   0.0613 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 24 | 520 | 910,070,918 |  12.7495 |   0.0058 |   1.6791 |   0.0001 |   0.1477 |   0.3075 |   6.6378 |   3.8858 |   0.0858 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 24 | 520 | 910,070,918 |  13.8746 |   0.0059 |   2.8878 |   0.0001 |   0.1413 |   0.2994 |   6.5966 |   3.8568 |   0.0868 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 24 | 520 | 910,070,918 |  13.5027 |   0.0057 |   2.4407 |   0.0001 |   0.1442 |   0.3026 |   6.6452 |   3.8782 |   0.0861 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 24 | 520 | 910,070,918 |  13.3284 |   0.0058 |   2.3460 |   0.0001 |   0.1405 |   0.2996 |   6.5822 |   3.8701 |   0.0841 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 24 | 520 | 910,070,918 |  13.6065 |   0.0058 |   2.5337 |   0.0001 |   0.1420 |   0.2990 |   6.6333 |   3.9080 |   0.0847 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 16 | 520 | 910,070,918 |  13.6593 |   0.0060 |   2.4311 |   0.0003 |   0.1719 |   0.3202 |   5.9701 |   4.6152 |   0.1444 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 16 | 520 | 910,070,918 |  14.4439 |   0.0057 |   3.2271 |   0.0003 |   0.1698 |   0.3195 |   5.9044 |   4.6740 |   0.1430 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 16 | 520 | 910,070,918 |  14.1039 |   0.0058 |   2.8393 |   0.0004 |   0.1673 |   0.3267 |   6.0458 |   4.5795 |   0.1392 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 16 | 520 | 910,070,918 |  14.3679 |   0.0057 |   3.2188 |   0.0003 |   0.1647 |   0.3210 |   6.0218 |   4.4939 |   0.1416 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 16 | 520 | 910,070,918 |  13.5055 |   0.0058 |   2.4298 |   0.0003 |   0.1684 |   0.3194 |   5.9880 |   4.4487 |   0.1449 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 8 | 520 | 910,070,918 |  24.3106 |   0.0059 |   3.3338 |   0.0003 |   0.3984 |   0.4226 |   6.1002 |  13.8237 |   0.2255 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 8 | 520 | 910,070,918 |  24.2618 |   0.0058 |   3.2202 |   0.0003 |   0.3855 |   0.4209 |   6.1175 |  13.8442 |   0.2674 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 8 | 520 | 910,070,918 |  24.3306 |   0.0059 |   3.3108 |   0.0003 |   0.4077 |   0.4218 |   6.0863 |  13.8676 |   0.2302 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 8 | 520 | 910,070,918 |  24.4356 |   0.0058 |   3.4811 |   0.0004 |   0.3983 |   0.4137 |   5.9957 |  13.9123 |   0.2284 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 8 | 520 | 910,070,918 |  24.7973 |   0.0057 |   3.8188 |   0.0003 |   0.3926 |   0.4202 |   6.0812 |  13.8187 |   0.2596 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 40 | 31 | 1,911,754,892 |   7.5198 |   0.0084 |   6.1865 |   0.0003 |   0.0146 |   0.0371 |   0.8483 |   0.3280 |   0.0966 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 40 | 31 | 1,911,754,892 |   6.4904 |   0.0083 |   5.1640 |   0.0004 |   0.0145 |   0.0369 |   0.8397 |   0.3282 |   0.0985 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 40 | 31 | 1,911,754,892 |   7.6011 |   0.0084 |   6.2640 |   0.0003 |   0.0143 |   0.0375 |   0.8539 |   0.3257 |   0.0970 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 40 | 31 | 1,911,754,892 |   6.7684 |   0.0084 |   5.4319 |   0.0003 |   0.0142 |   0.0379 |   0.8522 |   0.3258 |   0.0977 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 40 | 31 | 1,911,754,892 |   8.7123 |   0.0081 |   7.3869 |   0.0003 |   0.0142 |   0.0371 |   0.8399 |   0.3272 |   0.0986 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 32 | 31 | 1,911,754,892 |   8.2187 |   0.0082 |   6.7360 |   0.0004 |   0.0152 |   0.0419 |   0.9093 |   0.3888 |   0.1189 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 32 | 31 | 1,911,754,892 |   7.3405 |   0.0083 |   5.8268 |   0.0004 |   0.0156 |   0.0413 |   0.9412 |   0.3843 |   0.1226 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 32 | 31 | 1,911,754,892 |   9.3960 |   0.0083 |   7.9488 |   0.0004 |   0.0155 |   0.0407 |   0.8881 |   0.3745 |   0.1197 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 32 | 31 | 1,911,754,892 |   8.3300 |   0.0081 |   6.8462 |   0.0004 |   0.0147 |   0.0418 |   0.9232 |   0.3697 |   0.1260 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 32 | 31 | 1,911,754,892 |   7.8674 |   0.0082 |   6.3191 |   0.0004 |   0.0156 |   0.0411 |   0.9864 |   0.3764 |   0.1203 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 24 | 31 | 1,911,754,892 |   8.3651 |   0.0058 |   6.5192 |   0.0001 |   0.0186 |   0.0485 |   1.0898 |   0.5211 |   0.1620 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 24 | 31 | 1,911,754,892 |   8.1031 |   0.0059 |   6.2998 |   0.0001 |   0.0182 |   0.0488 |   1.0564 |   0.5140 |   0.1600 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 24 | 31 | 1,911,754,892 |   7.9154 |   0.0058 |   6.0789 |   0.0001 |   0.0191 |   0.0497 |   1.0738 |   0.5285 |   0.1595 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 24 | 31 | 1,911,754,892 |   8.5317 |   0.0057 |   6.6965 |   0.0001 |   0.0183 |   0.0481 |   1.0711 |   0.5331 |   0.1589 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 24 | 31 | 1,911,754,892 |   7.4169 |   0.0058 |   5.5992 |   0.0001 |   0.0179 |   0.0482 |   1.0616 |   0.5230 |   0.1612 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 16 | 31 | 1,911,754,892 |   8.7200 |   0.0059 |   6.6603 |   0.0003 |   0.0194 |   0.0646 |   1.1470 |   0.5744 |   0.2480 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 16 | 31 | 1,911,754,892 |   9.3143 |   0.0058 |   7.1198 |   0.0003 |   0.0199 |   0.0642 |   1.2759 |   0.5854 |   0.2430 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 16 | 31 | 1,911,754,892 |   8.0197 |   0.0057 |   5.9567 |   0.0003 |   0.0190 |   0.0684 |   1.1468 |   0.5739 |   0.2490 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 16 | 31 | 1,911,754,892 |   9.0577 |   0.0059 |   6.9913 |   0.0004 |   0.0189 |   0.0652 |   1.1438 |   0.5854 |   0.2468 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 16 | 31 | 1,911,754,892 |   9.1504 |   0.0058 |   7.1116 |   0.0004 |   0.0187 |   0.0647 |   1.1404 |   0.5612 |   0.2477 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 8 | 31 | 1,911,754,892 |  11.5969 |   0.0062 |   7.6471 |   0.0003 |   0.0240 |   0.1167 |   1.4537 |   1.8847 |   0.4641 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 8 | 31 | 1,911,754,892 |  10.9859 |   0.0060 |   6.9848 |   0.0003 |   0.0266 |   0.1140 |   1.5260 |   1.7865 |   0.5416 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 8 | 31 | 1,911,754,892 |  11.2406 |   0.0062 |   7.2686 |   0.0003 |   0.0254 |   0.1153 |   1.5776 |   1.7772 |   0.4700 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 8 | 31 | 1,911,754,892 |   9.5736 |   0.0062 |   5.7333 |   0.0003 |   0.0249 |   0.1162 |   1.4466 |   1.7727 |   0.4736 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 8 | 31 | 1,911,754,892 |  11.2879 |   0.0062 |   7.3836 |   0.0003 |   0.0241 |   0.1155 |   1.4415 |   1.7751 |   0.5416 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
ALL TO ALL COMMUNICATION METHOD: TWO PASS
------------------------------------------------------------------------------------
CC tc_semi_naive.cu -o tc_semi_naive.out -lm
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 40 | 31 | 884,179,859 |   2.6072 |   0.0148 |   1.6230 |   0.0001 |   0.0099 |   0.0990 |   0.5900 |   0.2253 |   0.0453 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 40 | 31 | 884,179,859 |   2.6093 |   0.0083 |   1.6430 |   0.0001 |   0.0096 |   0.1001 |   0.5834 |   0.2187 |   0.0461 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 40 | 31 | 884,179,859 |   3.4156 |   0.0079 |   2.4447 |   0.0001 |   0.0098 |   0.0984 |   0.5846 |   0.2244 |   0.0456 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 40 | 31 | 884,179,859 |   3.2044 |   0.0082 |   2.2280 |   0.0001 |   0.0097 |   0.0972 |   0.5894 |   0.2267 |   0.0451 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 40 | 31 | 884,179,859 |   3.0249 |   0.0152 |   2.0391 |   0.0001 |   0.0098 |   0.0974 |   0.5902 |   0.2271 |   0.0461 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 32 | 31 | 884,179,859 |   2.9116 |   0.0082 |   1.7624 |   0.0001 |   0.0107 |   0.1003 |   0.7085 |   0.2655 |   0.0560 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 32 | 31 | 884,179,859 |   3.5045 |   0.0083 |   2.3354 |   0.0001 |   0.0105 |   0.1067 |   0.7172 |   0.2693 |   0.0571 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 32 | 31 | 884,179,859 |   3.3206 |   0.0080 |   2.1809 |   0.0001 |   0.0105 |   0.1031 |   0.7092 |   0.2522 |   0.0564 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 32 | 31 | 884,179,859 |   3.6613 |   0.0082 |   2.5289 |   0.0001 |   0.0106 |   0.1020 |   0.7199 |   0.2360 |   0.0556 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 32 | 31 | 884,179,859 |   3.5095 |   0.0083 |   2.3856 |   0.0001 |   0.0103 |   0.1026 |   0.6925 |   0.2534 |   0.0567 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 24 | 31 | 884,179,859 |   3.7518 |   0.0058 |   2.5572 |   0.0001 |   0.0118 |   0.1163 |   0.6888 |   0.2981 |   0.0737 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 24 | 31 | 884,179,859 |   3.8576 |   0.0058 |   2.6176 |   0.0001 |   0.0130 |   0.1193 |   0.7110 |   0.3149 |   0.0760 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 24 | 31 | 884,179,859 |   3.4117 |   0.0057 |   2.2268 |   0.0001 |   0.0118 |   0.1177 |   0.6890 |   0.2878 |   0.0728 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 24 | 31 | 884,179,859 |   3.6103 |   0.0058 |   2.3961 |   0.0001 |   0.0120 |   0.1200 |   0.7007 |   0.2985 |   0.0771 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 24 | 31 | 884,179,859 |   3.2942 |   0.0058 |   2.1234 |   0.0001 |   0.0118 |   0.1166 |   0.6629 |   0.3001 |   0.0736 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 16 | 31 | 884,179,859 |   3.8934 |   0.0058 |   2.6230 |   0.0001 |   0.0132 |   0.1511 |   0.6811 |   0.3099 |   0.1092 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 16 | 31 | 884,179,859 |   3.8061 |   0.0057 |   2.5670 |   0.0001 |   0.0130 |   0.1462 |   0.6548 |   0.3089 |   0.1105 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 16 | 31 | 884,179,859 |   4.4488 |   0.0057 |   3.1698 |   0.0001 |   0.0133 |   0.1523 |   0.6855 |   0.3125 |   0.1096 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 16 | 31 | 884,179,859 |   3.8291 |   0.0056 |   2.5619 |   0.0001 |   0.0134 |   0.1446 |   0.6837 |   0.3094 |   0.1104 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 16 | 31 | 884,179,859 |   4.1580 |   0.0058 |   2.8666 |   0.0001 |   0.0133 |   0.1435 |   0.7138 |   0.3036 |   0.1114 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 8 | 31 | 884,179,859 |   5.4491 |   0.0059 |   3.8094 |   0.0001 |   0.0197 |   0.2182 |   0.7416 |   0.4233 |   0.2310 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 8 | 31 | 884,179,859 |   5.4923 |   0.0057 |   3.8642 |   0.0001 |   0.0189 |   0.2214 |   0.7327 |   0.4203 |   0.2289 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 8 | 31 | 884,179,859 |   5.2576 |   0.0059 |   3.6254 |   0.0001 |   0.0187 |   0.2203 |   0.7345 |   0.4228 |   0.2300 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 8 | 31 | 884,179,859 |   5.1505 |   0.0057 |   3.5118 |   0.0001 |   0.0182 |   0.2241 |   0.7371 |   0.4225 |   0.2310 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 8 | 31 | 884,179,859 |   5.4698 |   0.0058 |   3.8290 |   0.0001 |   0.0171 |   0.2222 |   0.7446 |   0.4198 |   0.2314 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 40 | 606 | 871,365,688 |  12.7047 |   0.0082 |   1.6701 |   0.0001 |   0.0612 |   0.1527 |   7.4665 |   3.2759 |   0.0701 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 40 | 606 | 871,365,688 |  12.9594 |   0.0082 |   2.0521 |   0.0001 |   0.0608 |   0.1549 |   7.4020 |   3.2107 |   0.0707 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 40 | 606 | 871,365,688 |  12.7302 |   0.0083 |   1.6941 |   0.0001 |   0.0612 |   0.1539 |   7.5023 |   3.2403 |   0.0702 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 40 | 606 | 871,365,688 |  12.5953 |   0.0083 |   1.6869 |   0.0001 |   0.0617 |   0.1550 |   7.4157 |   3.1983 |   0.0694 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 40 | 606 | 871,365,688 |  12.9789 |   0.0082 |   1.9294 |   0.0001 |   0.0611 |   0.1540 |   7.5021 |   3.2538 |   0.0703 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 32 | 606 | 871,365,688 |  12.5057 |   0.0082 |   2.0397 |   0.0001 |   0.0520 |   0.2094 |   6.9585 |   3.1490 |   0.0888 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 32 | 606 | 871,365,688 |  12.9862 |   0.0082 |   2.4460 |   0.0001 |   0.0525 |   0.2073 |   7.0287 |   3.1546 |   0.0888 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 32 | 606 | 871,365,688 |  12.3488 |   0.0083 |   1.7170 |   0.0001 |   0.0520 |   0.2148 |   7.0630 |   3.2042 |   0.0894 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 32 | 606 | 871,365,688 |  12.4608 |   0.0081 |   2.0451 |   0.0001 |   0.0517 |   0.2070 |   6.9340 |   3.1256 |   0.0893 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 32 | 606 | 871,365,688 |  12.3975 |   0.0082 |   1.9462 |   0.0001 |   0.0523 |   0.2102 |   6.9928 |   3.0985 |   0.0893 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 24 | 606 | 871,365,688 |  13.3495 |   0.0057 |   2.0412 |   0.0001 |   0.0504 |   0.3312 |   6.9700 |   3.8320 |   0.1187 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 24 | 606 | 871,365,688 |  13.3275 |   0.0058 |   2.2747 |   0.0001 |   0.0503 |   0.3391 |   6.8498 |   3.6892 |   0.1185 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 24 | 606 | 871,365,688 |  14.0527 |   0.0058 |   2.6794 |   0.0001 |   0.0508 |   0.3315 |   6.9999 |   3.8694 |   0.1158 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 24 | 606 | 871,365,688 |  14.1538 |   0.0059 |   3.1753 |   0.0001 |   0.0512 |   0.3333 |   6.7614 |   3.7068 |   0.1198 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 24 | 606 | 871,365,688 |  13.5898 |   0.0057 |   2.2251 |   0.0001 |   0.0509 |   0.3373 |   7.0324 |   3.8214 |   0.1170 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 16 | 606 | 871,365,688 |  14.4480 |   0.0058 |   2.7906 |   0.0001 |   0.1146 |   0.3675 |   6.1053 |   4.9210 |   0.1432 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 16 | 606 | 871,365,688 |  14.8039 |   0.0056 |   3.2276 |   0.0001 |   0.1127 |   0.3605 |   6.1664 |   4.7806 |   0.1505 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 16 | 606 | 871,365,688 |  15.4011 |   0.0057 |   3.7816 |   0.0001 |   0.1118 |   0.3858 |   6.1992 |   4.7623 |   0.1546 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 16 | 606 | 871,365,688 |  13.9503 |   0.0059 |   2.5431 |   0.0001 |   0.1108 |   0.3634 |   6.1368 |   4.6273 |   0.1629 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 16 | 606 | 871,365,688 |  14.3427 |   0.0058 |   2.9481 |   0.0001 |   0.1109 |   0.3755 |   6.1784 |   4.5790 |   0.1449 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 8 | 606 | 871,365,688 |  23.5340 |   0.0058 |   3.6266 |   0.0001 |   0.2802 |   0.5259 |   5.9659 |  12.8931 |   0.2366 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 8 | 606 | 871,365,688 |  23.4669 |   0.0057 |   3.6189 |   0.0001 |   0.2855 |   0.5090 |   5.9452 |  12.8321 |   0.2704 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 8 | 606 | 871,365,688 |  23.4967 |   0.0058 |   3.5709 |   0.0001 |   0.2808 |   0.5223 |   5.9635 |  12.8837 |   0.2696 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 8 | 606 | 871,365,688 |  23.4935 |   0.0058 |   3.5863 |   0.0001 |   0.2847 |   0.5259 |   5.9356 |  12.8880 |   0.2671 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 8 | 606 | 871,365,688 |  23.8000 |   0.0060 |   3.9318 |   0.0001 |   0.2746 |   0.5116 |   6.2524 |  12.5522 |   0.2713 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 40 | 247 | 1,669,750,513 |  11.6033 |   0.0080 |   3.8502 |   0.0001 |   0.0741 |   0.3658 |   5.0936 |   2.1180 |   0.0936 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 40 | 247 | 1,669,750,513 |  13.0566 |   0.0083 |   5.3529 |   0.0001 |   0.0727 |   0.3660 |   5.0736 |   2.0881 |   0.0949 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 40 | 247 | 1,669,750,513 |  11.3891 |   0.0083 |   3.6803 |   0.0001 |   0.0735 |   0.3701 |   5.0654 |   2.0969 |   0.0945 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 40 | 247 | 1,669,750,513 |  12.4325 |   0.0084 |   4.7508 |   0.0001 |   0.0730 |   0.3639 |   5.0382 |   2.1031 |   0.0951 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 40 | 247 | 1,669,750,513 |  11.9651 |   0.0082 |   4.2648 |   0.0001 |   0.0741 |   0.3659 |   5.0372 |   2.1188 |   0.0960 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 32 | 247 | 1,669,750,513 |  11.6788 |   0.0083 |   4.6950 |   0.0001 |   0.0902 |   0.3958 |   4.2151 |   2.1586 |   0.1156 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 32 | 247 | 1,669,750,513 |  10.6765 |   0.0082 |   3.7486 |   0.0001 |   0.0949 |   0.4000 |   4.1190 |   2.1892 |   0.1164 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 32 | 247 | 1,669,750,513 |  11.2768 |   0.0082 |   4.2591 |   0.0001 |   0.0913 |   0.3989 |   4.2034 |   2.2007 |   0.1152 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 32 | 247 | 1,669,750,513 |  12.1002 |   0.0083 |   4.9976 |   0.0001 |   0.0904 |   0.3924 |   4.2681 |   2.2280 |   0.1154 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 32 | 247 | 1,669,750,513 |  11.7617 |   0.0082 |   4.7401 |   0.0001 |   0.0905 |   0.3979 |   4.2125 |   2.1988 |   0.1137 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 24 | 247 | 1,669,750,513 |  12.6102 |   0.0059 |   5.0186 |   0.0001 |   0.1240 |   0.4547 |   4.0361 |   2.8169 |   0.1540 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 24 | 247 | 1,669,750,513 |  12.9464 |   0.0058 |   5.3410 |   0.0001 |   0.1246 |   0.4522 |   4.0787 |   2.7886 |   0.1555 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 24 | 247 | 1,669,750,513 |  12.8470 |   0.0057 |   5.2729 |   0.0001 |   0.1272 |   0.4590 |   4.0538 |   2.7743 |   0.1541 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 24 | 247 | 1,669,750,513 |  12.2227 |   0.0058 |   4.6384 |   0.0001 |   0.1232 |   0.4470 |   4.0672 |   2.7894 |   0.1517 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 24 | 247 | 1,669,750,513 |  12.8497 |   0.0059 |   5.2204 |   0.0001 |   0.1255 |   0.4496 |   4.0733 |   2.8204 |   0.1544 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 16 | 247 | 1,669,750,513 |  13.0213 |   0.0057 |   4.3208 |   0.0001 |   0.1494 |   0.5797 |   3.1506 |   4.5805 |   0.2345 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 16 | 247 | 1,669,750,513 |  13.0352 |   0.0060 |   4.1571 |   0.0001 |   0.1495 |   0.6070 |   3.2072 |   4.6364 |   0.2719 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 16 | 247 | 1,669,750,513 |  12.8905 |   0.0058 |   4.1003 |   0.0001 |   0.1474 |   0.6459 |   3.1522 |   4.6072 |   0.2317 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 16 | 247 | 1,669,750,513 |  12.4164 |   0.0059 |   3.7281 |   0.0001 |   0.1522 |   0.5761 |   3.1455 |   4.5753 |   0.2332 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 16 | 247 | 1,669,750,513 |  12.6990 |   0.0059 |   3.9695 |   0.0001 |   0.1486 |   0.5713 |   3.1431 |   4.6310 |   0.2296 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 8 | 247 | 1,669,750,513 |  21.5136 |   0.0059 |   4.9746 |   0.0001 |   0.2973 |   0.7638 |   3.1660 |  11.8154 |   0.4906 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 8 | 247 | 1,669,750,513 |  21.7469 |   0.0078 |   5.2135 |   0.0001 |   0.3060 |   0.7616 |   3.1147 |  11.9195 |   0.4239 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 8 | 247 | 1,669,750,513 |  21.6586 |   0.0056 |   5.0360 |   0.0001 |   0.3482 |   0.7810 |   3.1680 |  11.8986 |   0.4211 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 8 | 247 | 1,669,750,513 |  21.8867 |   0.0058 |   5.1342 |   0.0001 |   0.3661 |   0.7677 |   3.2820 |  11.8447 |   0.4861 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 8 | 247 | 1,669,750,513 |  22.2936 |   0.0058 |   5.3686 |   0.0001 |   0.3343 |   0.7619 |   3.4975 |  11.8369 |   0.4885 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 40 | 520 | 910,070,918 |  11.5944 |   0.0082 |   1.7703 |   0.0001 |   0.0918 |   0.2789 |   6.4846 |   2.9095 |   0.0511 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 40 | 520 | 910,070,918 |  11.9739 |   0.0081 |   2.0302 |   0.0001 |   0.0919 |   0.2912 |   6.5488 |   2.9527 |   0.0509 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 40 | 520 | 910,070,918 |  11.9399 |   0.0081 |   2.2087 |   0.0001 |   0.0916 |   0.2845 |   6.4175 |   2.8777 |   0.0518 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 40 | 520 | 910,070,918 |  11.9586 |   0.0081 |   2.1733 |   0.0001 |   0.0909 |   0.2779 |   6.4461 |   2.9097 |   0.0525 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 40 | 520 | 910,070,918 |  11.7653 |   0.0076 |   2.0167 |   0.0001 |   0.0913 |   0.2845 |   6.4326 |   2.8799 |   0.0526 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 32 | 520 | 910,070,918 |  12.8482 |   0.0082 |   2.4974 |   0.0001 |   0.1052 |   0.3318 |   6.6826 |   3.1595 |   0.0634 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 32 | 520 | 910,070,918 |  12.4482 |   0.0083 |   2.1526 |   0.0001 |   0.1043 |   0.3443 |   6.6276 |   3.1482 |   0.0629 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 32 | 520 | 910,070,918 |  12.4968 |   0.0083 |   2.2299 |   0.0001 |   0.1045 |   0.3397 |   6.5272 |   3.2234 |   0.0639 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 32 | 520 | 910,070,918 |  12.6115 |   0.0082 |   2.2861 |   0.0001 |   0.1047 |   0.3429 |   6.6486 |   3.1565 |   0.0643 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 32 | 520 | 910,070,918 |  13.3887 |   0.0084 |   3.0099 |   0.0001 |   0.1067 |   0.3528 |   6.6899 |   3.1579 |   0.0631 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 24 | 520 | 910,070,918 |  12.9215 |   0.0058 |   2.7632 |   0.0001 |   0.1262 |   0.4143 |   5.8434 |   3.6783 |   0.0903 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 24 | 520 | 910,070,918 |  13.2194 |   0.0058 |   2.9705 |   0.0001 |   0.1372 |   0.4233 |   5.8761 |   3.7154 |   0.0910 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 24 | 520 | 910,070,918 |  12.6424 |   0.0058 |   2.4764 |   0.0001 |   0.1276 |   0.4113 |   5.8396 |   3.6923 |   0.0893 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 24 | 520 | 910,070,918 |  12.7947 |   0.0059 |   2.6391 |   0.0001 |   0.1278 |   0.4192 |   5.8504 |   3.6635 |   0.0887 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 24 | 520 | 910,070,918 |  12.4492 |   0.0058 |   2.2864 |   0.0001 |   0.1272 |   0.4230 |   5.8470 |   3.6689 |   0.0909 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 16 | 520 | 910,070,918 |  14.6954 |   0.0056 |   3.4710 |   0.0003 |   0.1601 |   0.4545 |   5.4810 |   4.9827 |   0.1401 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 16 | 520 | 910,070,918 |  13.9610 |   0.0058 |   3.0488 |   0.0004 |   0.1506 |   0.4469 |   5.4988 |   4.6479 |   0.1618 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 16 | 520 | 910,070,918 |  14.0042 |   0.0058 |   3.1021 |   0.0004 |   0.1542 |   0.4436 |   5.4871 |   4.6719 |   0.1392 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 16 | 520 | 910,070,918 |  13.3548 |   0.0058 |   2.4489 |   0.0003 |   0.1549 |   0.4534 |   5.5518 |   4.6009 |   0.1388 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 16 | 520 | 910,070,918 |  13.6690 |   0.0057 |   2.7307 |   0.0003 |   0.1525 |   0.4453 |   5.4940 |   4.6987 |   0.1418 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 8 | 520 | 910,070,918 |  24.8138 |   0.0057 |   3.5978 |   0.0003 |   0.4355 |   0.6271 |   5.4660 |  14.4563 |   0.2251 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 8 | 520 | 910,070,918 |  24.9316 |   0.0058 |   3.6943 |   0.0003 |   0.4409 |   0.6271 |   5.4782 |  14.4226 |   0.2623 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 8 | 520 | 910,070,918 |  24.9839 |   0.0058 |   3.7095 |   0.0003 |   0.4328 |   0.6353 |   5.5002 |  14.4386 |   0.2614 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 8 | 520 | 910,070,918 |  25.0537 |   0.0058 |   3.7641 |   0.0003 |   0.4345 |   0.6337 |   5.5180 |  14.4392 |   0.2581 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 8 | 520 | 910,070,918 |  25.6318 |   0.0059 |   4.3245 |   0.0003 |   0.4324 |   0.6316 |   5.5417 |  14.4381 |   0.2572 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 40 | 31 | 1,911,754,892 |   6.7493 |   0.0081 |   5.1986 |   0.0003 |   0.0135 |   0.2294 |   0.8880 |   0.3141 |   0.0972 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 40 | 31 | 1,911,754,892 |   6.7739 |   0.0083 |   5.2548 |   0.0003 |   0.0138 |   0.2189 |   0.8724 |   0.3081 |   0.0973 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 40 | 31 | 1,911,754,892 |   6.5619 |   0.0083 |   5.0453 |   0.0004 |   0.0136 |   0.2159 |   0.8783 |   0.3034 |   0.0967 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 40 | 31 | 1,911,754,892 |   7.1040 |   0.0084 |   5.5537 |   0.0003 |   0.0137 |   0.2225 |   0.8932 |   0.3148 |   0.0973 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 40 | 31 | 1,911,754,892 |   9.3811 |   0.0083 |   7.8421 |   0.0003 |   0.0137 |   0.2193 |   0.8767 |   0.3233 |   0.0973 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 32 | 31 | 1,911,754,892 |   8.5243 |   0.0082 |   6.7227 |   0.0004 |   0.0156 |   0.2495 |   0.9949 |   0.4131 |   0.1199 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 32 | 31 | 1,911,754,892 |   7.4014 |   0.0083 |   5.6018 |   0.0003 |   0.0151 |   0.2517 |   0.9943 |   0.4068 |   0.1230 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 32 | 31 | 1,911,754,892 |   7.8866 |   0.0082 |   6.1329 |   0.0003 |   0.0152 |   0.2516 |   0.9842 |   0.3724 |   0.1217 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 32 | 31 | 1,911,754,892 |   7.2156 |   0.0083 |   5.4460 |   0.0004 |   0.0156 |   0.2478 |   0.9790 |   0.3974 |   0.1212 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 32 | 31 | 1,911,754,892 |   7.2072 |   0.0086 |   5.4517 |   0.0004 |   0.0150 |   0.2488 |   0.9655 |   0.3939 |   0.1234 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 24 | 31 | 1,911,754,892 |   7.4325 |   0.0059 |   5.4199 |   0.0002 |   0.0180 |   0.2905 |   1.0372 |   0.4977 |   0.1631 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 24 | 31 | 1,911,754,892 |   7.8664 |   0.0058 |   5.8485 |   0.0002 |   0.0183 |   0.2926 |   1.0418 |   0.4964 |   0.1628 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 24 | 31 | 1,911,754,892 |   7.4298 |   0.0059 |   5.4363 |   0.0002 |   0.0185 |   0.2942 |   1.0385 |   0.4730 |   0.1633 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 24 | 31 | 1,911,754,892 |   7.7442 |   0.0058 |   5.7600 |   0.0002 |   0.0183 |   0.2900 |   1.0263 |   0.4802 |   0.1633 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 24 | 31 | 1,911,754,892 |   7.6510 |   0.0058 |   5.6234 |   0.0002 |   0.0185 |   0.2935 |   1.0522 |   0.4914 |   0.1659 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 16 | 31 | 1,911,754,892 |   9.0068 |   0.0058 |   6.4884 |   0.0004 |   0.0233 |   0.3783 |   1.2273 |   0.6416 |   0.2418 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 16 | 31 | 1,911,754,892 |   9.4888 |   0.0059 |   6.8865 |   0.0003 |   0.0235 |   0.3874 |   1.2908 |   0.6499 |   0.2446 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 16 | 31 | 1,911,754,892 |   9.1982 |   0.0059 |   6.5590 |   0.0003 |   0.0254 |   0.3776 |   1.2595 |   0.7291 |   0.2414 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 16 | 31 | 1,911,754,892 |   8.8865 |   0.0057 |   6.2954 |   0.0004 |   0.0230 |   0.3827 |   1.2630 |   0.6664 |   0.2500 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 16 | 31 | 1,911,754,892 |   9.4328 |   0.0058 |   6.7488 |   0.0003 |   0.0299 |   0.3802 |   1.3206 |   0.7074 |   0.2398 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 8 | 31 | 1,911,754,892 |  10.4866 |   0.0062 |   6.1605 |   0.0003 |   0.0225 |   0.6215 |   1.5576 |   1.5701 |   0.5478 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 8 | 31 | 1,911,754,892 |  11.3741 |   0.0062 |   7.1137 |   0.0003 |   0.0225 |   0.6233 |   1.5576 |   1.5753 |   0.4752 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 8 | 31 | 1,911,754,892 |  11.5040 |   0.0062 |   7.2349 |   0.0003 |   0.0233 |   0.6268 |   1.5814 |   1.5604 |   0.4709 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 8 | 31 | 1,911,754,892 |  10.4700 |   0.0063 |   6.1677 |   0.0003 |   0.0227 |   0.6197 |   1.6444 |   1.5366 |   0.4723 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 8 | 31 | 1,911,754,892 |  12.0150 |   0.0061 |   7.7166 |   0.0003 |   0.0236 |   0.6163 |   1.6060 |   1.5427 |   0.5034 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*

```
