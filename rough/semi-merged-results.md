```shell
cat semi-merged.output
Job started at: 2024-08-07 18:00:52
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> JOB STARTED >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
TRADITIONAL MPI - SORTING
------------------------------------------------------------------------------------
CC tc_semi_naive.cu -o tc_semi_naive.out -lm
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 1
| 147,892 | 40 | 31 | 884,179,859 |   3.7547 |   0.7128 |   2.5185 |   0.0001 |   0.0104 |   0.0241 |   0.2992 |   0.1417 |   0.0480 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 1
| 147,892 | 40 | 31 | 884,179,859 |   3.5732 |   0.7074 |   2.3537 |   0.0001 |   0.0106 |   0.0238 |   0.2879 |   0.1424 |   0.0473 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 1
| 147,892 | 40 | 31 | 884,179,859 |   3.1631 |   0.7163 |   1.9403 |   0.0001 |   0.0100 |   0.0235 |   0.2817 |   0.1439 |   0.0472 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 1
| 147,892 | 40 | 31 | 884,179,859 |   3.7132 |   0.7049 |   2.4946 |   0.0001 |   0.0105 |   0.0236 |   0.2872 |   0.1449 |   0.0474 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 1
| 147,892 | 40 | 31 | 884,179,859 |   3.3001 |   0.7101 |   2.0744 |   0.0001 |   0.0104 |   0.0237 |   0.2893 |   0.1445 |   0.0476 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 1
| 147,892 | 32 | 31 | 884,179,859 |   3.8214 |   0.7055 |   2.5302 |   0.0001 |   0.0105 |   0.0261 |   0.3375 |   0.1504 |   0.0613 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 1
| 147,892 | 32 | 31 | 884,179,859 |   3.7672 |   0.7029 |   2.4778 |   0.0001 |   0.0105 |   0.0261 |   0.3383 |   0.1522 |   0.0593 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 1
| 147,892 | 32 | 31 | 884,179,859 |   3.8125 |   0.7056 |   2.5244 |   0.0001 |   0.0106 |   0.0265 |   0.3356 |   0.1510 |   0.0587 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 1
| 147,892 | 32 | 31 | 884,179,859 |   3.1116 |   0.7059 |   1.8180 |   0.0001 |   0.0105 |   0.0264 |   0.3363 |   0.1526 |   0.0618 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 1
| 147,892 | 32 | 31 | 884,179,859 |   3.4989 |   0.7094 |   2.2033 |   0.0001 |   0.0105 |   0.0262 |   0.3391 |   0.1518 |   0.0587 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 1
| 147,892 | 24 | 31 | 884,179,859 |   3.7997 |   0.7049 |   2.3584 |   0.0001 |   0.0118 |   0.0280 |   0.4320 |   0.1872 |   0.0773 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 1
| 147,892 | 24 | 31 | 884,179,859 |   4.1642 |   0.7049 |   2.6774 |   0.0001 |   0.0228 |   0.0344 |   0.4356 |   0.2086 |   0.0803 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 1
| 147,892 | 24 | 31 | 884,179,859 |   3.6018 |   0.7071 |   2.1539 |   0.0001 |   0.0118 |   0.0277 |   0.4333 |   0.1895 |   0.0784 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 1
| 147,892 | 24 | 31 | 884,179,859 |   3.7202 |   0.7101 |   2.2662 |   0.0001 |   0.0121 |   0.0279 |   0.4360 |   0.1900 |   0.0778 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 1
| 147,892 | 24 | 31 | 884,179,859 |   3.9891 |   0.7044 |   2.5460 |   0.0001 |   0.0118 |   0.0274 |   0.4327 |   0.1881 |   0.0785 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 1
| 147,892 | 16 | 31 | 884,179,859 |   4.3667 |   0.7133 |   2.5970 |   0.0001 |   0.0135 |   0.0344 |   0.6452 |   0.2455 |   0.1178 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 1
| 147,892 | 16 | 31 | 884,179,859 |   4.0957 |   0.7073 |   2.3285 |   0.0001 |   0.0135 |   0.0342 |   0.6428 |   0.2520 |   0.1173 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 1
| 147,892 | 16 | 31 | 884,179,859 |   4.5114 |   0.7042 |   2.7636 |   0.0001 |   0.0133 |   0.0338 |   0.6364 |   0.2444 |   0.1157 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 1
| 147,892 | 16 | 31 | 884,179,859 |   4.3193 |   0.7031 |   2.5765 |   0.0001 |   0.0135 |   0.0344 |   0.6353 |   0.2401 |   0.1163 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 1
| 147,892 | 16 | 31 | 884,179,859 |   4.5744 |   0.7052 |   2.8114 |   0.0001 |   0.0135 |   0.0341 |   0.6433 |   0.2503 |   0.1164 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 1
| 147,892 | 8 | 31 | 884,179,859 |   6.5436 |   0.7001 |   3.8460 |   0.0001 |   0.0178 |   0.0514 |   1.2529 |   0.4447 |   0.2305 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 1
| 147,892 | 8 | 31 | 884,179,859 |   6.3121 |   0.7116 |   3.6056 |   0.0001 |   0.0179 |   0.0517 |   1.2491 |   0.4489 |   0.2272 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 1
| 147,892 | 8 | 31 | 884,179,859 |   6.6250 |   0.7059 |   3.9079 |   0.0001 |   0.0187 |   0.0514 |   1.2567 |   0.4512 |   0.2332 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 1
| 147,892 | 8 | 31 | 884,179,859 |   6.3834 |   0.7089 |   3.6441 |   0.0001 |   0.0193 |   0.0525 |   1.2548 |   0.4736 |   0.2302 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 1
| 147,892 | 8 | 31 | 884,179,859 |   6.0938 |   0.7009 |   3.3790 |   0.0001 |   0.0180 |   0.0516 |   1.2600 |   0.4523 |   0.2318 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 1
| 165,435 | 40 | 606 | 871,365,688 |   6.0059 |   0.7063 |   1.9932 |   0.0001 |   0.0679 |   0.1653 |   0.3261 |   2.6599 |   0.0871 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 1
| 165,435 | 40 | 606 | 871,365,688 |   6.3490 |   0.7091 |   2.3429 |   0.0001 |   0.0670 |   0.1674 |   0.3305 |   2.6461 |   0.0860 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 1
| 165,435 | 40 | 606 | 871,365,688 |   6.1072 |   0.7038 |   2.1349 |   0.0001 |   0.0676 |   0.1669 |   0.3266 |   2.6223 |   0.0850 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 1
| 165,435 | 40 | 606 | 871,365,688 |   5.6023 |   0.7055 |   1.6192 |   0.0001 |   0.0674 |   0.1641 |   0.3209 |   2.6409 |   0.0842 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 1
| 165,435 | 40 | 606 | 871,365,688 |   6.1794 |   0.7067 |   2.1882 |   0.0001 |   0.0683 |   0.1723 |   0.3555 |   2.6023 |   0.0861 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 1
| 165,435 | 32 | 606 | 871,365,688 |   6.5977 |   0.7065 |   1.7893 |   0.0001 |   0.0598 |   0.2384 |   0.3334 |   3.3738 |   0.0966 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 1
| 165,435 | 32 | 606 | 871,365,688 |   6.7164 |   0.7089 |   1.9095 |   0.0001 |   0.0600 |   0.2384 |   0.3378 |   3.3482 |   0.1134 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 1
| 165,435 | 32 | 606 | 871,365,688 |   6.4682 |   0.7086 |   1.6712 |   0.0001 |   0.0594 |   0.2375 |   0.3344 |   3.3587 |   0.0983 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 1
| 165,435 | 32 | 606 | 871,365,688 |   7.3483 |   0.7328 |   2.5333 |   0.0001 |   0.0596 |   0.2373 |   0.3287 |   3.3586 |   0.0980 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 1
| 165,435 | 32 | 606 | 871,365,688 |   6.6783 |   0.7057 |   1.8931 |   0.0001 |   0.0599 |   0.2395 |   0.3349 |   3.3472 |   0.0979 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 1
| 165,435 | 24 | 606 | 871,365,688 |   9.3029 |   0.7083 |   2.8193 |   0.0001 |   0.0683 |   0.2802 |   0.3444 |   4.9710 |   0.1112 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 1
| 165,435 | 24 | 606 | 871,365,688 |   8.9520 |   0.7031 |   2.4825 |   0.0001 |   0.0670 |   0.2777 |   0.3356 |   4.9746 |   0.1115 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 1
| 165,435 | 24 | 606 | 871,365,688 |   9.0084 |   0.7063 |   2.5356 |   0.0001 |   0.0677 |   0.2795 |   0.3436 |   4.9641 |   0.1115 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 1
| 165,435 | 24 | 606 | 871,365,688 |   9.0406 |   0.7025 |   2.5655 |   0.0001 |   0.0672 |   0.2796 |   0.3365 |   4.9758 |   0.1134 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 1
| 165,435 | 24 | 606 | 871,365,688 |   9.5090 |   0.7053 |   3.0306 |   0.0001 |   0.0672 |   0.2789 |   0.3344 |   4.9696 |   0.1229 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 1
| 165,435 | 16 | 606 | 871,365,688 |  12.4219 |   0.7041 |   2.7825 |   0.0001 |   0.1332 |   0.3297 |   0.4540 |   7.8743 |   0.1440 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 1
| 165,435 | 16 | 606 | 871,365,688 |  12.3442 |   0.7079 |   2.7323 |   0.0001 |   0.1297 |   0.3154 |   0.4195 |   7.8963 |   0.1430 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 1
| 165,435 | 16 | 606 | 871,365,688 |  12.7738 |   0.7060 |   3.0647 |   0.0001 |   0.1376 |   0.3353 |   0.4464 |   7.9295 |   0.1542 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 1
| 165,435 | 16 | 606 | 871,365,688 |  13.3081 |   0.7026 |   3.6771 |   0.0001 |   0.1267 |   0.3249 |   0.4166 |   7.9169 |   0.1431 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 1
| 165,435 | 16 | 606 | 871,365,688 |  12.1392 |   0.7080 |   2.5251 |   0.0001 |   0.1256 |   0.3199 |   0.4177 |   7.8995 |   0.1433 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 1
| 165,435 | 8 | 606 | 871,365,688 |  22.7786 |   0.7028 |   3.3104 |   0.0001 |   0.4052 |   0.4695 |   0.9489 |  16.6750 |   0.2669 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 1
| 165,435 | 8 | 606 | 871,365,688 |  23.0890 |   0.7066 |   3.5709 |   0.0001 |   0.4202 |   0.4661 |   0.9871 |  16.6667 |   0.2713 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 1
| 165,435 | 8 | 606 | 871,365,688 |  23.0244 |   0.7070 |   3.4989 |   0.0001 |   0.4318 |   0.4637 |   0.9852 |  16.6681 |   0.2697 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 1
| 165,435 | 8 | 606 | 871,365,688 |  23.2074 |   0.7044 |   3.7303 |   0.0001 |   0.4102 |   0.4680 |   0.9668 |  16.6589 |   0.2686 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 1
| 165,435 | 8 | 606 | 871,365,688 |  23.1042 |   0.7084 |   3.6009 |   0.0001 |   0.4183 |   0.4599 |   0.9612 |  16.6819 |   0.2736 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 1
| 409,593 | 40 | 247 | 1,669,750,513 |   6.9714 |   0.7062 |   3.4394 |   0.0001 |   0.0829 |   0.1773 |   0.6607 |   1.7641 |   0.1408 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 1
| 409,593 | 40 | 247 | 1,669,750,513 |   7.4682 |   0.7057 |   3.9250 |   0.0001 |   0.0781 |   0.1722 |   0.6630 |   1.7900 |   0.1340 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 1
| 409,593 | 40 | 247 | 1,669,750,513 |   7.3914 |   0.7059 |   3.8347 |   0.0001 |   0.0781 |   0.1732 |   0.6687 |   1.8037 |   0.1269 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 1
| 409,593 | 40 | 247 | 1,669,750,513 |   7.0422 |   0.7080 |   3.3975 |   0.0001 |   0.0930 |   0.1880 |   0.6884 |   1.8194 |   0.1479 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 1
| 409,593 | 40 | 247 | 1,669,750,513 |   7.7062 |   0.7032 |   4.1503 |   0.0001 |   0.0781 |   0.1739 |   0.6646 |   1.7875 |   0.1484 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 1
| 409,593 | 32 | 247 | 1,669,750,513 |   9.3318 |   0.7077 |   4.9445 |   0.0001 |   0.0904 |   0.1937 |   0.8014 |   2.4533 |   0.1405 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 1
| 409,593 | 32 | 247 | 1,669,750,513 |   9.1185 |   0.7105 |   4.7115 |   0.0001 |   0.0905 |   0.1887 |   0.7980 |   2.4567 |   0.1625 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 1
| 409,593 | 32 | 247 | 1,669,750,513 |   8.3938 |   0.7062 |   4.0035 |   0.0001 |   0.0912 |   0.1901 |   0.7962 |   2.4651 |   0.1413 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 1
| 409,593 | 32 | 247 | 1,669,750,513 |   9.3159 |   0.7093 |   4.7676 |   0.0001 |   0.0906 |   0.2698 |   0.8779 |   2.4583 |   0.1424 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 1
| 409,593 | 32 | 247 | 1,669,750,513 |   9.0269 |   0.7062 |   4.6387 |   0.0001 |   0.0911 |   0.1904 |   0.7891 |   2.4699 |   0.1414 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 1
| 409,593 | 24 | 247 | 1,669,750,513 |  10.7519 |   0.7040 |   4.7921 |   0.0001 |   0.1175 |   0.2234 |   1.1710 |   3.5424 |   0.2014 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 1
| 409,593 | 24 | 247 | 1,669,750,513 |  10.7458 |   0.7051 |   4.8010 |   0.0001 |   0.1133 |   0.2231 |   1.1648 |   3.5609 |   0.1775 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 1
| 409,593 | 24 | 247 | 1,669,750,513 |  11.3786 |   0.7044 |   5.4327 |   0.0001 |   0.1178 |   0.2231 |   1.1693 |   3.5575 |   0.1737 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 1
| 409,593 | 24 | 247 | 1,669,750,513 |  12.3665 |   0.7028 |   6.4028 |   0.0001 |   0.1175 |   0.2199 |   1.1516 |   3.5634 |   0.2084 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 1
| 409,593 | 24 | 247 | 1,669,750,513 |  11.0497 |   0.7035 |   5.0975 |   0.0001 |   0.1189 |   0.2230 |   1.1653 |   3.5705 |   0.1709 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 1
| 409,593 | 16 | 247 | 1,669,750,513 |  13.0321 |   0.7023 |   4.0450 |   0.0001 |   0.1878 |   0.2466 |   1.7478 |   5.8329 |   0.2696 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 1
| 409,593 | 16 | 247 | 1,669,750,513 |  13.3177 |   0.7026 |   4.3315 |   0.0001 |   0.1950 |   0.2447 |   1.7579 |   5.8149 |   0.2711 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 1
| 409,593 | 16 | 247 | 1,669,750,513 |  12.9595 |   0.7061 |   3.9704 |   0.0001 |   0.1942 |   0.2492 |   1.7431 |   5.8327 |   0.2637 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 1
| 409,593 | 16 | 247 | 1,669,750,513 |  13.6558 |   0.7039 |   4.7440 |   0.0001 |   0.1913 |   0.2566 |   1.7751 |   5.7484 |   0.2363 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 1
| 409,593 | 16 | 247 | 1,669,750,513 |  12.4419 |   0.7015 |   3.4791 |   0.0001 |   0.1878 |   0.2469 |   1.7377 |   5.8256 |   0.2632 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 1
| 409,593 | 8 | 247 | 1,669,750,513 |  23.0072 |   0.6985 |   5.5063 |   0.0001 |   0.2813 |   0.2747 |   3.5305 |  12.2166 |   0.4991 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 1
| 409,593 | 8 | 247 | 1,669,750,513 |  22.5189 |   0.7021 |   4.8249 |   0.0001 |   0.3242 |   0.2890 |   3.6045 |  12.3450 |   0.4291 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 1
| 409,593 | 8 | 247 | 1,669,750,513 |  22.2913 |   0.7035 |   4.6541 |   0.0001 |   0.3257 |   0.2644 |   3.5856 |  12.3362 |   0.4217 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 1
| 409,593 | 8 | 247 | 1,669,750,513 |  23.1314 |   0.7000 |   5.4576 |   0.0001 |   0.3001 |   0.2806 |   3.5686 |  12.3691 |   0.4553 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 1
| 409,593 | 8 | 247 | 1,669,750,513 |  22.6234 |   0.7057 |   4.9419 |   0.0001 |   0.3051 |   0.2542 |   3.5567 |  12.3732 |   0.4867 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 40 | 520 | 910,070,918 |   6.0078 |   0.7071 |   1.7647 |   0.0001 |   0.0892 |   0.2195 |   0.4691 |   2.6555 |   0.1025 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 40 | 520 | 910,070,918 |   5.8788 |   0.7102 |   1.6369 |   0.0001 |   0.0903 |   0.2174 |   0.4687 |   2.6664 |   0.0889 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 40 | 520 | 910,070,918 |   5.8733 |   0.7060 |   1.6474 |   0.0001 |   0.0905 |   0.2180 |   0.4717 |   2.6509 |   0.0886 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 40 | 520 | 910,070,918 |   5.9870 |   0.7052 |   1.7513 |   0.0001 |   0.0899 |   0.2174 |   0.4694 |   2.6508 |   0.1028 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 40 | 520 | 910,070,918 |   5.7576 |   0.7091 |   1.5116 |   0.0001 |   0.0884 |   0.2175 |   0.4721 |   2.6561 |   0.1027 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 32 | 520 | 910,070,918 |   7.1407 |   0.7037 |   1.8546 |   0.0001 |   0.1108 |   0.2655 |   0.5168 |   3.5952 |   0.0940 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 32 | 520 | 910,070,918 |   8.0391 |   0.7100 |   2.7235 |   0.0001 |   0.1132 |   0.2670 |   0.5260 |   3.6074 |   0.0920 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 32 | 520 | 910,070,918 |   7.4427 |   0.7103 |   2.1441 |   0.0001 |   0.1137 |   0.2678 |   0.5140 |   3.5991 |   0.0936 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 32 | 520 | 910,070,918 |   7.5008 |   0.7085 |   2.1987 |   0.0001 |   0.1137 |   0.2684 |   0.5157 |   3.5892 |   0.1065 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 32 | 520 | 910,070,918 |   7.9936 |   0.7078 |   2.6949 |   0.0001 |   0.1139 |   0.2674 |   0.5199 |   3.5888 |   0.1009 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 24 | 520 | 910,070,918 |  10.1734 |   0.7032 |   3.1078 |   0.0001 |   0.1619 |   0.3385 |   0.6485 |   5.1006 |   0.1127 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 24 | 520 | 910,070,918 |  10.1138 |   0.7026 |   3.1030 |   0.0001 |   0.1580 |   0.3466 |   0.6430 |   5.0482 |   0.1123 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 24 | 520 | 910,070,918 |   9.4021 |   0.7049 |   2.3594 |   0.0001 |   0.1604 |   0.3443 |   0.6441 |   5.0764 |   0.1127 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 24 | 520 | 910,070,918 |   9.7661 |   0.6984 |   2.6906 |   0.0001 |   0.1625 |   0.3436 |   0.6722 |   5.0671 |   0.1316 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 24 | 520 | 910,070,918 |   8.9826 |   0.7057 |   1.9022 |   0.0001 |   0.1592 |   0.3413 |   0.6462 |   5.1065 |   0.1215 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 16 | 520 | 910,070,918 |  14.0815 |   0.7092 |   3.3541 |   0.0003 |   0.2424 |   0.3572 |   0.9037 |   8.3731 |   0.1414 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 16 | 520 | 910,070,918 |  13.4871 |   0.7083 |   2.7412 |   0.0004 |   0.2394 |   0.3536 |   0.9256 |   8.3562 |   0.1626 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 16 | 520 | 910,070,918 |  13.7800 |   0.7069 |   3.0618 |   0.0004 |   0.2418 |   0.3576 |   0.8929 |   8.3564 |   0.1622 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 16 | 520 | 910,070,918 |  13.4950 |   0.7053 |   2.7900 |   0.0004 |   0.2403 |   0.3569 |   0.8885 |   8.3537 |   0.1600 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 16 | 520 | 910,070,918 |  13.7710 |   0.7036 |   3.0725 |   0.0004 |   0.2475 |   0.3596 |   0.9400 |   8.3070 |   0.1405 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 8 | 520 | 910,070,918 |  25.3531 |   0.7047 |   3.6586 |   0.0003 |   0.5006 |   0.4561 |   1.9328 |  17.8701 |   0.2299 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 8 | 520 | 910,070,918 |  25.7514 |   0.7031 |   4.0701 |   0.0004 |   0.4836 |   0.4463 |   1.8974 |  17.9236 |   0.2270 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 8 | 520 | 910,070,918 |  25.3485 |   0.7010 |   3.6693 |   0.0003 |   0.4950 |   0.4444 |   1.8968 |  17.8760 |   0.2656 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 8 | 520 | 910,070,918 |  25.3261 |   0.7061 |   3.6138 |   0.0003 |   0.4888 |   0.4380 |   1.8961 |  17.9218 |   0.2612 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 8 | 520 | 910,070,918 |  25.5111 |   0.6994 |   3.7612 |   0.0003 |   0.5055 |   0.4435 |   1.9054 |  17.9277 |   0.2681 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 1
| 1,049,866 | 40 | 31 | 1,911,754,892 |   7.4237 |   0.7118 |   5.5980 |   0.0004 |   0.0148 |   0.0383 |   0.7159 |   0.2427 |   0.1018 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 1
| 1,049,866 | 40 | 31 | 1,911,754,892 |   7.8299 |   0.7025 |   6.0203 |   0.0004 |   0.0151 |   0.0383 |   0.7106 |   0.2408 |   0.1020 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 1
| 1,049,866 | 40 | 31 | 1,911,754,892 |   7.4612 |   0.7471 |   5.6000 |   0.0004 |   0.0151 |   0.0376 |   0.7137 |   0.2461 |   0.1014 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 1
| 1,049,866 | 40 | 31 | 1,911,754,892 |   8.6109 |   0.7061 |   6.7872 |   0.0004 |   0.0152 |   0.0379 |   0.7146 |   0.2478 |   0.1018 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 1
| 1,049,866 | 40 | 31 | 1,911,754,892 |   7.5160 |   0.7060 |   5.6954 |   0.0004 |   0.0148 |   0.0377 |   0.7160 |   0.2435 |   0.1023 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 1
| 1,049,866 | 32 | 31 | 1,911,754,892 |   9.0430 |   0.7412 |   6.9139 |   0.0068 |   0.0230 |   0.0472 |   0.8895 |   0.2927 |   0.1287 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 1
| 1,049,866 | 32 | 31 | 1,911,754,892 |   9.1625 |   0.7089 |   7.1047 |   0.0004 |   0.0144 |   0.0422 |   0.8794 |   0.2864 |   0.1262 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 1
| 1,049,866 | 32 | 31 | 1,911,754,892 |   7.5398 |   0.7069 |   5.4762 |   0.0004 |   0.0152 |   0.0421 |   0.8745 |   0.2967 |   0.1279 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 1
| 1,049,866 | 32 | 31 | 1,911,754,892 |   8.1207 |   0.7066 |   6.0637 |   0.0004 |   0.0148 |   0.0421 |   0.8762 |   0.2902 |   0.1268 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 1
| 1,049,866 | 32 | 31 | 1,911,754,892 |   8.5957 |   0.7059 |   6.5351 |   0.0004 |   0.0147 |   0.0421 |   0.8748 |   0.2940 |   0.1287 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 1
| 1,049,866 | 24 | 31 | 1,911,754,892 |   7.8556 |   0.7036 |   5.3929 |   0.0001 |   0.0168 |   0.0478 |   1.1555 |   0.3658 |   0.1732 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 1
| 1,049,866 | 24 | 31 | 1,911,754,892 |   8.9323 |   0.7038 |   6.4681 |   0.0001 |   0.0166 |   0.0483 |   1.1559 |   0.3704 |   0.1690 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 1
| 1,049,866 | 24 | 31 | 1,911,754,892 |   8.2718 |   0.7043 |   5.7962 |   0.0001 |   0.0168 |   0.0477 |   1.1667 |   0.3680 |   0.1720 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 1
| 1,049,866 | 24 | 31 | 1,911,754,892 |   8.3507 |   0.7125 |   5.8851 |   0.0001 |   0.0168 |   0.0495 |   1.1592 |   0.3550 |   0.1725 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 1
| 1,049,866 | 24 | 31 | 1,911,754,892 |   8.4482 |   0.7050 |   5.9593 |   0.0001 |   0.0168 |   0.0484 |   1.1627 |   0.3854 |   0.1706 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 1
| 1,049,866 | 16 | 31 | 1,911,754,892 |   9.2696 |   0.7081 |   5.9847 |   0.0003 |   0.0190 |   0.0638 |   1.7192 |   0.5177 |   0.2567 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 1
| 1,049,866 | 16 | 31 | 1,911,754,892 |   9.1351 |   0.7130 |   5.8528 |   0.0004 |   0.0182 |   0.0628 |   1.7233 |   0.5085 |   0.2561 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 1
| 1,049,866 | 16 | 31 | 1,911,754,892 |   9.3415 |   0.7118 |   6.0508 |   0.0004 |   0.0183 |   0.0640 |   1.7208 |   0.5189 |   0.2565 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 1
| 1,049,866 | 16 | 31 | 1,911,754,892 |   9.9956 |   0.7061 |   6.7000 |   0.0004 |   0.0190 |   0.0637 |   1.7216 |   0.5194 |   0.2656 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 1
| 1,049,866 | 16 | 31 | 1,911,754,892 |  10.3278 |   0.7074 |   7.0635 |   0.0003 |   0.0180 |   0.0640 |   1.7093 |   0.5078 |   0.2576 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 1
| 1,049,866 | 8 | 31 | 1,911,754,892 |  13.5563 |   0.7219 |   7.3575 |   0.0003 |   0.0245 |   0.1166 |   3.3426 |   1.4304 |   0.5624 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 1
| 1,049,866 | 8 | 31 | 1,911,754,892 |  13.4848 |   0.7099 |   7.3704 |   0.0003 |   0.0225 |   0.1097 |   3.3327 |   1.3758 |   0.5635 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 1
| 1,049,866 | 8 | 31 | 1,911,754,892 |  13.2459 |   0.7079 |   7.1101 |   0.0003 |   0.0241 |   0.1093 |   3.3344 |   1.4062 |   0.5535 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 1
| 1,049,866 | 8 | 31 | 1,911,754,892 |  12.8604 |   0.7076 |   6.7219 |   0.0003 |   0.0237 |   0.1113 |   3.3254 |   1.4121 |   0.5581 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 1
| 1,049,866 | 8 | 31 | 1,911,754,892 |  13.6754 |   0.7109 |   7.5982 |   0.0003 |   0.0232 |   0.1076 |   3.3188 |   1.3653 |   0.5511 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
TRADITIONAL MPI - TWO PASS
------------------------------------------------------------------------------------
CC tc_semi_naive.cu -o tc_semi_naive.out -lm
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 0
| 147,892 | 40 | 31 | 884,179,859 |   3.3191 |   0.7132 |   2.0211 |   0.0001 |   0.0100 |   0.0986 |   0.2931 |   0.1335 |   0.0494 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 0
| 147,892 | 40 | 31 | 884,179,859 |   4.0032 |   0.7057 |   2.7195 |   0.0001 |   0.0098 |   0.0980 |   0.2915 |   0.1311 |   0.0475 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 0
| 147,892 | 40 | 31 | 884,179,859 |   3.0135 |   0.7099 |   1.7249 |   0.0001 |   0.0096 |   0.0968 |   0.2905 |   0.1330 |   0.0486 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 0
| 147,892 | 40 | 31 | 884,179,859 |   3.6563 |   0.7069 |   2.3682 |   0.0001 |   0.0095 |   0.0976 |   0.2937 |   0.1320 |   0.0482 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 0
| 147,892 | 40 | 31 | 884,179,859 |   3.1968 |   0.7070 |   1.9084 |   0.0001 |   0.0095 |   0.0991 |   0.2931 |   0.1321 |   0.0475 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 0
| 147,892 | 32 | 31 | 884,179,859 |   3.1843 |   0.7033 |   1.8063 |   0.0001 |   0.0104 |   0.1079 |   0.3485 |   0.1477 |   0.0601 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 0
| 147,892 | 32 | 31 | 884,179,859 |   4.0416 |   0.7003 |   2.6703 |   0.0001 |   0.0104 |   0.1076 |   0.3478 |   0.1450 |   0.0602 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 0
| 147,892 | 32 | 31 | 884,179,859 |   3.0457 |   0.7085 |   1.6689 |   0.0001 |   0.0103 |   0.1039 |   0.3484 |   0.1463 |   0.0594 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 0
| 147,892 | 32 | 31 | 884,179,859 |   3.7207 |   0.7113 |   2.3367 |   0.0001 |   0.0103 |   0.1068 |   0.3474 |   0.1488 |   0.0594 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 0
| 147,892 | 32 | 31 | 884,179,859 |   3.6791 |   0.7094 |   2.3007 |   0.0001 |   0.0103 |   0.1080 |   0.3469 |   0.1452 |   0.0585 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 0
| 147,892 | 24 | 31 | 884,179,859 |   4.0301 |   0.7025 |   2.5065 |   0.0001 |   0.0113 |   0.1206 |   0.4386 |   0.1734 |   0.0770 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 0
| 147,892 | 24 | 31 | 884,179,859 |   4.4174 |   0.7346 |   2.8100 |   0.0001 |   0.0180 |   0.1217 |   0.4627 |   0.1918 |   0.0786 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 0
| 147,892 | 24 | 31 | 884,179,859 |   3.6553 |   0.7057 |   2.1149 |   0.0001 |   0.0115 |   0.1220 |   0.4431 |   0.1786 |   0.0793 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 0
| 147,892 | 24 | 31 | 884,179,859 |   4.9129 |   0.7065 |   3.3806 |   0.0001 |   0.0115 |   0.1191 |   0.4412 |   0.1769 |   0.0770 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 0
| 147,892 | 24 | 31 | 884,179,859 |   3.8350 |   0.7048 |   2.3009 |   0.0001 |   0.0117 |   0.1185 |   0.4473 |   0.1746 |   0.0773 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 0
| 147,892 | 16 | 31 | 884,179,859 |   4.6195 |   0.7090 |   2.7449 |   0.0001 |   0.0135 |   0.1540 |   0.6436 |   0.2396 |   0.1146 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 0
| 147,892 | 16 | 31 | 884,179,859 |   4.6202 |   0.7095 |   2.7385 |   0.0001 |   0.0131 |   0.1555 |   0.6434 |   0.2419 |   0.1182 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 0
| 147,892 | 16 | 31 | 884,179,859 |   4.8504 |   0.7040 |   2.9850 |   0.0001 |   0.0132 |   0.1533 |   0.6433 |   0.2370 |   0.1146 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 0
| 147,892 | 16 | 31 | 884,179,859 |   4.1464 |   0.7050 |   2.2838 |   0.0001 |   0.0127 |   0.1509 |   0.6421 |   0.2365 |   0.1152 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 0
| 147,892 | 16 | 31 | 884,179,859 |   5.2488 |   0.7040 |   3.3817 |   0.0001 |   0.0128 |   0.1516 |   0.6402 |   0.2415 |   0.1170 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 0
| 147,892 | 8 | 31 | 884,179,859 |   6.8693 |   0.7085 |   3.9856 |   0.0001 |   0.0178 |   0.2310 |   1.2562 |   0.4392 |   0.2309 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 0
| 147,892 | 8 | 31 | 884,179,859 |   6.5897 |   0.7000 |   3.7098 |   0.0001 |   0.0177 |   0.2342 |   1.2507 |   0.4444 |   0.2329 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 0
| 147,892 | 8 | 31 | 884,179,859 |   7.1661 |   0.7080 |   4.2709 |   0.0001 |   0.0182 |   0.2311 |   1.2517 |   0.4567 |   0.2295 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 0
| 147,892 | 8 | 31 | 884,179,859 |   6.5377 |   0.7058 |   3.6490 |   0.0001 |   0.0181 |   0.2315 |   1.2545 |   0.4481 |   0.2305 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 0
| 147,892 | 8 | 31 | 884,179,859 |   6.6940 |   0.7024 |   3.8124 |   0.0001 |   0.0188 |   0.2319 |   1.2541 |   0.4424 |   0.2320 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| 165,435 | 40 | 606 | 871,365,688 |   5.8272 |   0.7095 |   1.6969 |   0.0001 |   0.0617 |   0.3215 |   0.3053 |   2.6461 |   0.0861 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| 165,435 | 40 | 606 | 871,365,688 |   6.0646 |   0.7081 |   1.9299 |   0.0001 |   0.0612 |   0.3401 |   0.3005 |   2.6398 |   0.0849 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| 165,435 | 40 | 606 | 871,365,688 |   5.8515 |   0.7085 |   1.7097 |   0.0001 |   0.0607 |   0.3328 |   0.3076 |   2.6473 |   0.0848 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| 165,435 | 40 | 606 | 871,365,688 |   5.9056 |   0.7062 |   1.7498 |   0.0001 |   0.0610 |   0.3373 |   0.3127 |   2.6535 |   0.0850 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| 165,435 | 40 | 606 | 871,365,688 |   6.2570 |   0.7066 |   2.1369 |   0.0001 |   0.0611 |   0.3213 |   0.3066 |   2.6370 |   0.0873 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| 165,435 | 32 | 606 | 871,365,688 |   7.1326 |   0.7049 |   2.1206 |   0.0001 |   0.0517 |   0.4046 |   0.3168 |   3.4351 |   0.0988 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| 165,435 | 32 | 606 | 871,365,688 |   7.1803 |   0.7089 |   2.1613 |   0.0001 |   0.0517 |   0.4070 |   0.3184 |   3.4348 |   0.0980 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| 165,435 | 32 | 606 | 871,365,688 |   7.3887 |   0.7095 |   2.3914 |   0.0001 |   0.0516 |   0.3887 |   0.3112 |   3.4385 |   0.0977 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| 165,435 | 32 | 606 | 871,365,688 |   7.1229 |   0.7077 |   2.1016 |   0.0001 |   0.0514 |   0.4054 |   0.3186 |   3.4383 |   0.0998 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| 165,435 | 32 | 606 | 871,365,688 |   7.3116 |   0.7050 |   2.2886 |   0.0001 |   0.0516 |   0.4075 |   0.3085 |   3.4524 |   0.0979 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| 165,435 | 24 | 606 | 871,365,688 |   9.0504 |   0.7059 |   2.3838 |   0.0001 |   0.0517 |   0.4980 |   0.3198 |   4.9660 |   0.1251 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| 165,435 | 24 | 606 | 871,365,688 |   9.0922 |   0.7035 |   2.4425 |   0.0001 |   0.0514 |   0.4915 |   0.3197 |   4.9710 |   0.1124 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| 165,435 | 24 | 606 | 871,365,688 |   8.9965 |   0.7046 |   2.3204 |   0.0001 |   0.0524 |   0.4998 |   0.3245 |   4.9828 |   0.1119 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| 165,435 | 24 | 606 | 871,365,688 |   9.0540 |   0.7024 |   2.3978 |   0.0001 |   0.0519 |   0.5003 |   0.3175 |   4.9718 |   0.1123 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| 165,435 | 24 | 606 | 871,365,688 |   8.6623 |   0.7041 |   2.0003 |   0.0001 |   0.0518 |   0.5037 |   0.3185 |   4.9713 |   0.1125 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| 165,435 | 16 | 606 | 871,365,688 |  12.3190 |   0.7019 |   2.4662 |   0.0001 |   0.1231 |   0.5921 |   0.4170 |   7.8749 |   0.1438 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| 165,435 | 16 | 606 | 871,365,688 |  12.3899 |   0.7046 |   2.5716 |   0.0001 |   0.1248 |   0.5839 |   0.3951 |   7.8656 |   0.1443 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| 165,435 | 16 | 606 | 871,365,688 |  12.9278 |   0.7045 |   3.1013 |   0.0001 |   0.1247 |   0.5841 |   0.4041 |   7.8646 |   0.1444 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| 165,435 | 16 | 606 | 871,365,688 |  12.5366 |   0.7077 |   2.6993 |   0.0001 |   0.1236 |   0.5853 |   0.4028 |   7.8727 |   0.1452 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| 165,435 | 16 | 606 | 871,365,688 |  13.1702 |   0.7057 |   3.3436 |   0.0001 |   0.1236 |   0.5870 |   0.4127 |   7.8532 |   0.1443 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| 165,435 | 8 | 606 | 871,365,688 |  23.5980 |   0.7020 |   3.8563 |   0.0001 |   0.3642 |   0.8975 |   0.8840 |  16.6259 |   0.2681 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| 165,435 | 8 | 606 | 871,365,688 |  23.5232 |   0.7061 |   3.7354 |   0.0001 |   0.3473 |   0.9122 |   0.8575 |  16.6922 |   0.2725 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| 165,435 | 8 | 606 | 871,365,688 |  23.5204 |   0.7085 |   3.8053 |   0.0001 |   0.3457 |   0.8452 |   0.8578 |  16.6869 |   0.2710 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| 165,435 | 8 | 606 | 871,365,688 |  23.6573 |   0.7080 |   3.9030 |   0.0001 |   0.3613 |   0.8372 |   0.8808 |  16.6954 |   0.2715 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| 165,435 | 8 | 606 | 871,365,688 |  23.4992 |   0.7039 |   3.7558 |   0.0001 |   0.3522 |   0.8508 |   0.8736 |  16.6899 |   0.2730 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| 409,593 | 40 | 247 | 1,669,750,513 |   7.8544 |   0.7081 |   4.1042 |   0.0001 |   0.0777 |   0.4449 |   0.6353 |   1.7572 |   0.1269 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| 409,593 | 40 | 247 | 1,669,750,513 |   8.1290 |   0.7074 |   4.4081 |   0.0001 |   0.0764 |   0.4364 |   0.6260 |   1.7469 |   0.1276 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| 409,593 | 40 | 247 | 1,669,750,513 |   7.3581 |   0.7087 |   3.5495 |   0.0001 |   0.0818 |   0.4531 |   0.6422 |   1.7837 |   0.1390 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| 409,593 | 40 | 247 | 1,669,750,513 |   7.5964 |   0.7087 |   3.8536 |   0.0001 |   0.0757 |   0.4383 |   0.6199 |   1.7714 |   0.1287 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| 409,593 | 40 | 247 | 1,669,750,513 |   7.8853 |   0.7076 |   4.1175 |   0.0001 |   0.0759 |   0.4384 |   0.6291 |   1.7773 |   0.1396 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| 409,593 | 32 | 247 | 1,669,750,513 |   9.1991 |   0.7692 |   4.5286 |   0.0001 |   0.0877 |   0.4931 |   0.7725 |   2.4036 |   0.1442 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| 409,593 | 32 | 247 | 1,669,750,513 |   9.5334 |   0.7087 |   4.9435 |   0.0001 |   0.0873 |   0.4861 |   0.7616 |   2.3806 |   0.1655 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| 409,593 | 32 | 247 | 1,669,750,513 |  10.2080 |   0.7053 |   5.6385 |   0.0001 |   0.0884 |   0.4889 |   0.7699 |   2.3730 |   0.1440 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| 409,593 | 32 | 247 | 1,669,750,513 |   8.4198 |   0.7092 |   3.8251 |   0.0001 |   0.0874 |   0.4842 |   0.7681 |   2.4051 |   0.1407 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| 409,593 | 32 | 247 | 1,669,750,513 |   9.2755 |   0.7142 |   4.6788 |   0.0001 |   0.0870 |   0.4926 |   0.7648 |   2.3730 |   0.1651 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| 409,593 | 24 | 247 | 1,669,750,513 |  11.2230 |   0.7067 |   5.0515 |   0.0001 |   0.1230 |   0.5637 |   1.1375 |   3.4679 |   0.1725 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| 409,593 | 24 | 247 | 1,669,750,513 |  11.0791 |   0.7063 |   4.9433 |   0.0001 |   0.1193 |   0.5714 |   1.1069 |   3.4577 |   0.1742 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| 409,593 | 24 | 247 | 1,669,750,513 |  10.6318 |   0.7033 |   4.3820 |   0.0001 |   0.1237 |   0.5915 |   1.1553 |   3.5019 |   0.1741 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| 409,593 | 24 | 247 | 1,669,750,513 |  10.7106 |   0.7091 |   4.5482 |   0.0001 |   0.1242 |   0.5583 |   1.1273 |   3.4684 |   0.1750 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| 409,593 | 24 | 247 | 1,669,750,513 |  10.4084 |   0.7049 |   4.2464 |   0.0001 |   0.1255 |   0.5656 |   1.1441 |   3.4229 |   0.1989 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| 409,593 | 16 | 247 | 1,669,750,513 |  13.0374 |   0.7004 |   3.8617 |   0.0001 |   0.1747 |   0.7153 |   1.6339 |   5.6863 |   0.2652 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| 409,593 | 16 | 247 | 1,669,750,513 |  12.7797 |   0.7058 |   3.6285 |   0.0001 |   0.1779 |   0.7510 |   1.6378 |   5.6463 |   0.2325 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| 409,593 | 16 | 247 | 1,669,750,513 |  13.5373 |   0.7059 |   4.3106 |   0.0001 |   0.1728 |   0.7469 |   1.6814 |   5.6856 |   0.2339 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| 409,593 | 16 | 247 | 1,669,750,513 |  13.0672 |   0.7082 |   3.8728 |   0.0001 |   0.1801 |   0.7704 |   1.6511 |   5.6492 |   0.2354 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| 409,593 | 16 | 247 | 1,669,750,513 |  13.6355 |   0.7054 |   4.4419 |   0.0001 |   0.1725 |   0.7767 |   1.6287 |   5.6458 |   0.2643 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| 409,593 | 8 | 247 | 1,669,750,513 |  23.5458 |   0.7576 |   5.3108 |   0.0001 |   0.3463 |   1.0959 |   3.4762 |  12.0664 |   0.4924 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| 409,593 | 8 | 247 | 1,669,750,513 |  23.4190 |   0.7003 |   4.9748 |   0.0001 |   0.3310 |   1.4599 |   3.4823 |  12.0403 |   0.4303 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| 409,593 | 8 | 247 | 1,669,750,513 |  23.6659 |   0.7012 |   5.2213 |   0.0001 |   0.3137 |   1.4803 |   3.4745 |  12.0542 |   0.4206 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| 409,593 | 8 | 247 | 1,669,750,513 |  23.8116 |   0.7015 |   5.6574 |   0.0001 |   0.3374 |   1.1303 |   3.4643 |  12.1013 |   0.4193 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| 409,593 | 8 | 247 | 1,669,750,513 |  23.4842 |   0.7094 |   5.2309 |   0.0001 |   0.2868 |   1.1859 |   3.4421 |  12.1306 |   0.4985 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 40 | 520 | 910,070,918 |   6.1562 |   0.7086 |   1.6189 |   0.0001 |   0.0877 |   0.4828 |   0.4845 |   2.6797 |   0.0941 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 40 | 520 | 910,070,918 |   6.4721 |   0.7075 |   1.9120 |   0.0001 |   0.0893 |   0.5060 |   0.4826 |   2.6797 |   0.0949 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 40 | 520 | 910,070,918 |   6.8839 |   0.7075 |   2.3394 |   0.0001 |   0.1021 |   0.4884 |   0.5066 |   2.6502 |   0.0896 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 40 | 520 | 910,070,918 |   6.6269 |   0.7052 |   2.0852 |   0.0001 |   0.0878 |   0.4906 |   0.4868 |   2.6687 |   0.1025 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 40 | 520 | 910,070,918 |   6.7010 |   0.7079 |   2.1927 |   0.0001 |   0.0885 |   0.4836 |   0.4800 |   2.6587 |   0.0897 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 32 | 520 | 910,070,918 |   7.7880 |   0.7012 |   2.1940 |   0.0001 |   0.1076 |   0.5343 |   0.5497 |   3.6091 |   0.0920 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 32 | 520 | 910,070,918 |   7.7458 |   0.7064 |   2.1462 |   0.0001 |   0.1061 |   0.5359 |   0.5337 |   3.6116 |   0.1057 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 32 | 520 | 910,070,918 |   7.6470 |   0.7056 |   2.0457 |   0.0001 |   0.1061 |   0.5424 |   0.5365 |   3.6173 |   0.0932 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 32 | 520 | 910,070,918 |   8.2120 |   0.7083 |   2.5749 |   0.0001 |   0.1178 |   0.5450 |   0.5431 |   3.6312 |   0.0916 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 32 | 520 | 910,070,918 |   8.1105 |   0.7086 |   2.5191 |   0.0001 |   0.1066 |   0.5341 |   0.5322 |   3.6161 |   0.0937 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 24 | 520 | 910,070,918 |   9.8804 |   0.7025 |   2.5459 |   0.0001 |   0.1552 |   0.6231 |   0.6629 |   5.0784 |   0.1123 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 24 | 520 | 910,070,918 |  10.0011 |   0.7062 |   2.6524 |   0.0001 |   0.1516 |   0.6256 |   0.6559 |   5.0823 |   0.1269 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 24 | 520 | 910,070,918 |  10.0351 |   0.7099 |   2.6663 |   0.0001 |   0.1511 |   0.6428 |   0.6510 |   5.0948 |   0.1190 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 24 | 520 | 910,070,918 |   9.5539 |   0.7070 |   2.1477 |   0.0001 |   0.1534 |   0.6415 |   0.6671 |   5.1101 |   0.1270 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 24 | 520 | 910,070,918 |   9.7099 |   0.7053 |   2.3529 |   0.0001 |   0.1515 |   0.6369 |   0.6558 |   5.0948 |   0.1127 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 16 | 520 | 910,070,918 |  13.7483 |   0.7037 |   2.6245 |   0.0004 |   0.2371 |   0.8367 |   0.9378 |   8.2489 |   0.1592 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 16 | 520 | 910,070,918 |  14.5637 |   0.7038 |   3.4517 |   0.0004 |   0.2360 |   0.8409 |   0.9134 |   8.2780 |   0.1396 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 16 | 520 | 910,070,918 |  14.3148 |   0.7077 |   3.2084 |   0.0004 |   0.2370 |   0.8207 |   0.9254 |   8.2545 |   0.1610 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 16 | 520 | 910,070,918 |  14.3702 |   0.7060 |   3.0801 |   0.0004 |   0.2379 |   0.9999 |   0.9229 |   8.2805 |   0.1425 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 16 | 520 | 910,070,918 |  13.8963 |   0.7024 |   2.8228 |   0.0004 |   0.2354 |   0.7711 |   0.9250 |   8.2787 |   0.1605 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 8 | 520 | 910,070,918 |  25.7918 |   0.7044 |   3.2950 |   0.0003 |   0.5571 |   1.3026 |   1.9306 |  17.7445 |   0.2573 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 8 | 520 | 910,070,918 |  26.0297 |   0.7062 |   3.5705 |   0.0003 |   0.5509 |   1.2998 |   1.9173 |  17.7579 |   0.2267 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 8 | 520 | 910,070,918 |  25.7630 |   0.6999 |   3.1085 |   0.0003 |   0.5441 |   1.5258 |   1.9203 |  17.7360 |   0.2281 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 8 | 520 | 910,070,918 |  25.9015 |   0.7108 |   3.6080 |   0.0003 |   0.5399 |   1.1366 |   1.9046 |  17.7416 |   0.2595 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 8 | 520 | 910,070,918 |  26.0264 |   0.7009 |   3.7166 |   0.0003 |   0.5400 |   1.1687 |   1.9107 |  17.7644 |   0.2247 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| 1,049,866 | 40 | 31 | 1,911,754,892 |   7.3249 |   0.7106 |   5.3333 |   0.0004 |   0.0136 |   0.2115 |   0.7234 |   0.2304 |   0.1017 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| 1,049,866 | 40 | 31 | 1,911,754,892 |   8.5484 |   0.7091 |   6.5487 |   0.0004 |   0.0139 |   0.2162 |   0.7217 |   0.2348 |   0.1036 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| 1,049,866 | 40 | 31 | 1,911,754,892 |   7.0611 |   0.7081 |   5.0650 |   0.0003 |   0.0139 |   0.2148 |   0.7239 |   0.2321 |   0.1028 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| 1,049,866 | 40 | 31 | 1,911,754,892 |   7.5362 |   0.7081 |   5.5418 |   0.0004 |   0.0140 |   0.2160 |   0.7241 |   0.2308 |   0.1011 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| 1,049,866 | 40 | 31 | 1,911,754,892 |   8.4224 |   0.7018 |   6.4374 |   0.0004 |   0.0143 |   0.2109 |   0.7229 |   0.2326 |   0.1020 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| 1,049,866 | 32 | 31 | 1,911,754,892 |   8.5721 |   0.7079 |   6.3276 |   0.0004 |   0.0149 |   0.2382 |   0.8790 |   0.2762 |   0.1279 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| 1,049,866 | 32 | 31 | 1,911,754,892 |   9.2942 |   0.7111 |   7.0366 |   0.0004 |   0.0150 |   0.2404 |   0.8836 |   0.2753 |   0.1318 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| 1,049,866 | 32 | 31 | 1,911,754,892 |   9.5527 |   0.7105 |   7.2745 |   0.0004 |   0.0165 |   0.2449 |   0.8937 |   0.2839 |   0.1284 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| 1,049,866 | 32 | 31 | 1,911,754,892 |   9.5586 |   0.7090 |   7.3014 |   0.0004 |   0.0145 |   0.2417 |   0.8900 |   0.2729 |   0.1288 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| 1,049,866 | 32 | 31 | 1,911,754,892 |   8.7861 |   0.7060 |   6.5433 |   0.0004 |   0.0147 |   0.2395 |   0.8813 |   0.2749 |   0.1260 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| 1,049,866 | 24 | 31 | 1,911,754,892 |   9.0757 |   0.7058 |   6.3790 |   0.0002 |   0.0175 |   0.2909 |   1.1605 |   0.3520 |   0.1697 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| 1,049,866 | 24 | 31 | 1,911,754,892 |   9.8593 |   0.7078 |   7.1531 |   0.0002 |   0.0166 |   0.2923 |   1.1635 |   0.3540 |   0.1720 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| 1,049,866 | 24 | 31 | 1,911,754,892 |   8.7156 |   0.7115 |   6.0241 |   0.0002 |   0.0166 |   0.2917 |   1.1552 |   0.3457 |   0.1705 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| 1,049,866 | 24 | 31 | 1,911,754,892 |   9.2455 |   0.7102 |   6.5572 |   0.0002 |   0.0173 |   0.2924 |   1.1550 |   0.3441 |   0.1692 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| 1,049,866 | 24 | 31 | 1,911,754,892 |   9.6809 |   0.7066 |   6.9849 |   0.0002 |   0.0170 |   0.2945 |   1.1573 |   0.3505 |   0.1698 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| 1,049,866 | 16 | 31 | 1,911,754,892 |  10.4000 |   0.7136 |   6.7739 |   0.0003 |   0.0227 |   0.3943 |   1.7240 |   0.5111 |   0.2601 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| 1,049,866 | 16 | 31 | 1,911,754,892 |  10.7072 |   0.7034 |   7.1187 |   0.0003 |   0.0227 |   0.3939 |   1.7205 |   0.4965 |   0.2511 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| 1,049,866 | 16 | 31 | 1,911,754,892 |  10.6185 |   0.7019 |   7.0375 |   0.0003 |   0.0215 |   0.3913 |   1.7223 |   0.4919 |   0.2517 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| 1,049,866 | 16 | 31 | 1,911,754,892 |  11.5388 |   0.7349 |   7.9268 |   0.0003 |   0.0223 |   0.3918 |   1.7204 |   0.4905 |   0.2518 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| 1,049,866 | 16 | 31 | 1,911,754,892 |  10.3711 |   0.7017 |   6.8039 |   0.0003 |   0.0213 |   0.3935 |   1.7212 |   0.4744 |   0.2548 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| 1,049,866 | 8 | 31 | 1,911,754,892 |  13.8349 |   0.7074 |   7.2429 |   0.0003 |   0.0228 |   0.6397 |   3.3355 |   1.3385 |   0.5479 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| 1,049,866 | 8 | 31 | 1,911,754,892 |  13.8110 |   0.7036 |   7.2348 |   0.0003 |   0.0222 |   0.6391 |   3.3149 |   1.3358 |   0.5603 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| 1,049,866 | 8 | 31 | 1,911,754,892 |  13.8307 |   0.6979 |   7.1895 |   0.0003 |   0.0232 |   0.6521 |   3.3450 |   1.4370 |   0.4855 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| 1,049,866 | 8 | 31 | 1,911,754,892 |  13.2255 |   0.7017 |   6.6374 |   0.0003 |   0.0233 |   0.6300 |   3.3182 |   1.3650 |   0.5496 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| 1,049,866 | 8 | 31 | 1,911,754,892 |  14.4581 |   0.7069 |   7.8615 |   0.0003 |   0.0228 |   0.6462 |   3.3294 |   1.4034 |   0.4876 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
====================================================================================
CUDA AWARE MPI - SORTING
------------------------------------------------------------------------------------
CC tc_semi_naive.cu -o tc_semi_naive.out -lm
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 40 | 31 | 884,179,859 |   3.0967 |   0.0177 |   2.0912 |   0.0001 |   0.0110 |   0.0236 |   0.6619 |   0.2454 |   0.0458 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 40 | 31 | 884,179,859 |   2.9003 |   0.0058 |   1.9121 |   0.0001 |   0.0109 |   0.0236 |   0.6545 |   0.2474 |   0.0460 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 40 | 31 | 884,179,859 |   2.7136 |   0.0057 |   1.7230 |   0.0001 |   0.0107 |   0.0242 |   0.6634 |   0.2396 |   0.0469 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 40 | 31 | 884,179,859 |   3.1949 |   0.0060 |   2.2030 |   0.0001 |   0.0111 |   0.0234 |   0.6651 |   0.2405 |   0.0459 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 40 | 31 | 884,179,859 |   2.8189 |   0.0057 |   1.8208 |   0.0001 |   0.0106 |   0.0229 |   0.6701 |   0.2434 |   0.0453 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 32 | 31 | 884,179,859 |   3.2416 |   0.0057 |   2.2643 |   0.0001 |   0.0108 |   0.0254 |   0.6388 |   0.2404 |   0.0561 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 32 | 31 | 884,179,859 |   3.6177 |   0.0058 |   2.6298 |   0.0001 |   0.0111 |   0.0259 |   0.6519 |   0.2365 |   0.0566 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 32 | 31 | 884,179,859 |   3.7294 |   0.0058 |   2.7659 |   0.0001 |   0.0109 |   0.0257 |   0.6261 |   0.2382 |   0.0567 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 32 | 31 | 884,179,859 |   2.9751 |   0.0058 |   1.9799 |   0.0001 |   0.0110 |   0.0258 |   0.6544 |   0.2414 |   0.0567 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 32 | 31 | 884,179,859 |   3.1226 |   0.0057 |   2.1493 |   0.0001 |   0.0109 |   0.0260 |   0.6378 |   0.2362 |   0.0566 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 24 | 31 | 884,179,859 |   3.7719 |   0.0058 |   2.7680 |   0.0001 |   0.0124 |   0.0277 |   0.6157 |   0.2663 |   0.0759 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 24 | 31 | 884,179,859 |   3.7006 |   0.0057 |   2.6855 |   0.0001 |   0.0127 |   0.0277 |   0.6248 |   0.2713 |   0.0729 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 24 | 31 | 884,179,859 |   3.5739 |   0.0057 |   2.5593 |   0.0001 |   0.0129 |   0.0279 |   0.6243 |   0.2699 |   0.0739 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 24 | 31 | 884,179,859 |   3.1371 |   0.0059 |   2.1366 |   0.0001 |   0.0125 |   0.0280 |   0.6164 |   0.2638 |   0.0738 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 24 | 31 | 884,179,859 |   3.5693 |   0.0058 |   2.5545 |   0.0001 |   0.0126 |   0.0281 |   0.6255 |   0.2688 |   0.0739 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 16 | 31 | 884,179,859 |   3.3992 |   0.0057 |   2.3322 |   0.0001 |   0.0139 |   0.0353 |   0.6068 |   0.2955 |   0.1097 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 16 | 31 | 884,179,859 |   4.1428 |   0.0058 |   3.0642 |   0.0001 |   0.0144 |   0.0344 |   0.6113 |   0.3038 |   0.1089 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 16 | 31 | 884,179,859 |   4.4195 |   0.0058 |   3.3522 |   0.0001 |   0.0138 |   0.0370 |   0.6083 |   0.2925 |   0.1098 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 16 | 31 | 884,179,859 |   4.2221 |   0.0058 |   3.1756 |   0.0001 |   0.0143 |   0.0351 |   0.5890 |   0.2917 |   0.1105 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 16 | 31 | 884,179,859 |   3.6260 |   0.0057 |   2.5696 |   0.0001 |   0.0137 |   0.0353 |   0.6030 |   0.2889 |   0.1099 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 8 | 31 | 884,179,859 |   5.4480 |   0.0058 |   3.9606 |   0.0001 |   0.0191 |   0.0519 |   0.7034 |   0.4818 |   0.2254 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 8 | 31 | 884,179,859 |   5.3358 |   0.0058 |   3.8806 |   0.0001 |   0.0176 |   0.0517 |   0.6927 |   0.4576 |   0.2299 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 8 | 31 | 884,179,859 |   5.1687 |   0.0058 |   3.7043 |   0.0001 |   0.0181 |   0.0529 |   0.6875 |   0.4707 |   0.2294 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 8 | 31 | 884,179,859 |   4.9749 |   0.0060 |   3.4923 |   0.0001 |   0.0187 |   0.0528 |   0.6986 |   0.4797 |   0.2269 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 8 | 31 | 884,179,859 |   5.2437 |   0.0058 |   3.7633 |   0.0001 |   0.0191 |   0.0510 |   0.6981 |   0.4763 |   0.2301 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 40 | 606 | 871,365,688 |  14.0109 |   0.0059 |   2.1250 |   0.0001 |   0.0673 |   0.1609 |   8.2296 |   3.3533 |   0.0688 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 40 | 606 | 871,365,688 |  13.5461 |   0.0058 |   1.7193 |   0.0001 |   0.0679 |   0.1594 |   8.1758 |   3.3486 |   0.0692 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 40 | 606 | 871,365,688 |  13.6602 |   0.0058 |   1.7456 |   0.0001 |   0.0682 |   0.1631 |   8.2228 |   3.3864 |   0.0683 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 40 | 606 | 871,365,688 |  13.7327 |   0.0059 |   1.8722 |   0.0001 |   0.0680 |   0.1650 |   8.2043 |   3.3467 |   0.0706 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 40 | 606 | 871,365,688 |  13.8141 |   0.0058 |   1.9895 |   0.0001 |   0.0680 |   0.1602 |   8.1924 |   3.3289 |   0.0693 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 32 | 606 | 871,365,688 |  12.5672 |   0.0058 |   1.9917 |   0.0001 |   0.0593 |   0.2317 |   6.9641 |   3.2281 |   0.0865 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 32 | 606 | 871,365,688 |  13.5615 |   0.0058 |   2.7049 |   0.0001 |   0.0590 |   0.2289 |   7.2456 |   3.2284 |   0.0888 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 32 | 606 | 871,365,688 |  12.6416 |   0.0058 |   1.9267 |   0.0001 |   0.0591 |   0.2284 |   7.1618 |   3.1720 |   0.0878 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 32 | 606 | 871,365,688 |  12.9878 |   0.0058 |   2.1733 |   0.0001 |   0.0595 |   0.2256 |   7.1873 |   3.2491 |   0.0871 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 32 | 606 | 871,365,688 |  12.7494 |   0.0059 |   2.0737 |   0.0001 |   0.0600 |   0.2301 |   7.1358 |   3.1570 |   0.0869 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 24 | 606 | 871,365,688 |  14.0302 |   0.0056 |   2.3240 |   0.0001 |   0.0640 |   0.2854 |   7.0347 |   4.2020 |   0.1143 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 24 | 606 | 871,365,688 |  14.4358 |   0.0057 |   2.6378 |   0.0001 |   0.0640 |   0.2815 |   7.1080 |   4.2248 |   0.1139 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 24 | 606 | 871,365,688 |  14.2240 |   0.0058 |   2.4420 |   0.0001 |   0.0726 |   0.2960 |   7.0374 |   4.2560 |   0.1141 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 24 | 606 | 871,365,688 |  13.6386 |   0.0057 |   1.9356 |   0.0001 |   0.0636 |   0.2822 |   7.0199 |   4.2179 |   0.1136 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 24 | 606 | 871,365,688 |  14.5503 |   0.0057 |   2.8345 |   0.0001 |   0.0640 |   0.2838 |   7.0785 |   4.1693 |   0.1144 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 16 | 606 | 871,365,688 |  14.7059 |   0.0057 |   3.0731 |   0.0001 |   0.1120 |   0.2845 |   6.1562 |   4.9079 |   0.1664 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 16 | 606 | 871,365,688 |  15.0146 |   0.0057 |   2.7902 |   0.0001 |   0.1209 |   0.2983 |   6.0799 |   5.5679 |   0.1516 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 16 | 606 | 871,365,688 |  14.2419 |   0.0058 |   2.5154 |   0.0001 |   0.1121 |   0.2855 |   6.1817 |   5.0000 |   0.1414 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 16 | 606 | 871,365,688 |  15.4989 |   0.0168 |   3.6852 |   0.0001 |   0.1123 |   0.2879 |   6.2688 |   4.9653 |   0.1625 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 16 | 606 | 871,365,688 |  14.5296 |   0.0052 |   2.8795 |   0.0001 |   0.1213 |   0.2865 |   6.2141 |   4.8792 |   0.1437 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 8 | 606 | 871,365,688 |  24.0677 |   0.0057 |   3.6618 |   0.0001 |   0.3272 |   0.3723 |   7.6108 |  11.8274 |   0.2623 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 8 | 606 | 871,365,688 |  24.0877 |   0.0057 |   3.9566 |   0.0001 |   0.3320 |   0.3846 |   6.9194 |  12.2529 |   0.2365 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 8 | 606 | 871,365,688 |  23.7045 |   0.0059 |   3.6355 |   0.0001 |   0.3353 |   0.3728 |   7.2782 |  11.8434 |   0.2332 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 8 | 606 | 871,365,688 |  24.1489 |   0.0058 |   3.5622 |   0.0001 |   0.3324 |   0.3678 |   7.7616 |  11.8801 |   0.2389 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 8 | 606 | 871,365,688 |  23.4978 |   0.0057 |   3.6257 |   0.0001 |   0.3389 |   0.3720 |   7.0187 |  11.8708 |   0.2659 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 40 | 247 | 1,669,750,513 |  10.2592 |   0.0077 |   3.3744 |   0.0001 |   0.0736 |   0.1674 |   4.5010 |   2.0390 |   0.0961 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 40 | 247 | 1,669,750,513 |  11.3865 |   0.0058 |   4.6686 |   0.0001 |   0.0738 |   0.1665 |   4.3155 |   2.0627 |   0.0937 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 40 | 247 | 1,669,750,513 |  10.8432 |   0.0057 |   3.8640 |   0.0001 |   0.0788 |   0.1751 |   4.5562 |   2.0701 |   0.0932 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 40 | 247 | 1,669,750,513 |  10.6060 |   0.0058 |   3.7865 |   0.0001 |   0.0739 |   0.1646 |   4.4646 |   2.0169 |   0.0936 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 40 | 247 | 1,669,750,513 |  11.6206 |   0.0058 |   4.8542 |   0.0001 |   0.0761 |   0.1686 |   4.3479 |   2.0738 |   0.0940 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 32 | 247 | 1,669,750,513 |  11.1016 |   0.0058 |   4.3289 |   0.0001 |   0.0900 |   0.1737 |   4.4219 |   1.9682 |   0.1130 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 32 | 247 | 1,669,750,513 |  12.7985 |   0.0059 |   5.9545 |   0.0001 |   0.0917 |   0.1777 |   4.4744 |   1.9810 |   0.1132 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 32 | 247 | 1,669,750,513 |  11.1180 |   0.0057 |   4.3506 |   0.0001 |   0.0911 |   0.1766 |   4.3327 |   2.0480 |   0.1133 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 32 | 247 | 1,669,750,513 |  11.8335 |   0.0058 |   5.0313 |   0.0001 |   0.0951 |   0.1806 |   4.4197 |   1.9861 |   0.1148 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 32 | 247 | 1,669,750,513 |  12.1840 |   0.0058 |   5.3902 |   0.0001 |   0.0906 |   0.1743 |   4.4296 |   1.9795 |   0.1139 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 24 | 247 | 1,669,750,513 |  12.0532 |   0.0061 |   4.8088 |   0.0001 |   0.1161 |   0.2000 |   4.1476 |   2.6221 |   0.1525 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 24 | 247 | 1,669,750,513 |  11.8849 |   0.0058 |   4.6632 |   0.0001 |   0.1135 |   0.1948 |   4.1335 |   2.6188 |   0.1551 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 24 | 247 | 1,669,750,513 |  12.2147 |   0.0059 |   5.0992 |   0.0001 |   0.1252 |   0.2059 |   4.0762 |   2.5501 |   0.1520 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 24 | 247 | 1,669,750,513 |  11.6708 |   0.0058 |   4.4625 |   0.0001 |   0.1146 |   0.1955 |   4.1148 |   2.6242 |   0.1532 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 24 | 247 | 1,669,750,513 |  11.9240 |   0.0058 |   4.6388 |   0.0001 |   0.1150 |   0.2062 |   4.1452 |   2.6624 |   0.1506 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 16 | 247 | 1,669,750,513 |  12.4797 |   0.0059 |   4.0997 |   0.0001 |   0.1537 |   0.2175 |   3.6345 |   4.1395 |   0.2289 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 16 | 247 | 1,669,750,513 |  12.4406 |   0.0058 |   3.7542 |   0.0001 |   0.1592 |   0.2307 |   3.7367 |   4.3235 |   0.2305 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 16 | 247 | 1,669,750,513 |  12.4709 |   0.0058 |   3.8492 |   0.0001 |   0.1601 |   0.2217 |   3.6486 |   4.3556 |   0.2299 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 16 | 247 | 1,669,750,513 |  12.6835 |   0.0058 |   4.2968 |   0.0001 |   0.1603 |   0.2166 |   3.6146 |   4.1604 |   0.2290 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 16 | 247 | 1,669,750,513 |  13.5367 |   0.0058 |   4.7016 |   0.0001 |   0.1586 |   0.2190 |   3.8687 |   4.3505 |   0.2324 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 8 | 247 | 1,669,750,513 |  21.0242 |   0.0058 |   4.4663 |   0.0001 |   0.2971 |   0.2696 |   3.3290 |  12.1612 |   0.4951 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 8 | 247 | 1,669,750,513 |  21.3888 |   0.0058 |   4.9622 |   0.0001 |   0.2979 |   0.2829 |   3.1535 |  12.2666 |   0.4198 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 8 | 247 | 1,669,750,513 |  21.7477 |   0.0058 |   5.3356 |   0.0001 |   0.2865 |   0.2798 |   3.1778 |  12.1876 |   0.4746 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 8 | 247 | 1,669,750,513 |  21.5456 |   0.0059 |   5.1489 |   0.0001 |   0.3059 |   0.2629 |   3.1549 |  12.2472 |   0.4198 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 8 | 247 | 1,669,750,513 |  21.8502 |   0.0059 |   5.6037 |   0.0001 |   0.2503 |   0.2450 |   3.0960 |  12.2287 |   0.4205 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 40 | 520 | 910,070,918 |  12.6656 |   0.0060 |   1.6934 |   0.0001 |   0.0936 |   0.2115 |   7.6234 |   2.9867 |   0.0508 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 40 | 520 | 910,070,918 |  12.6575 |   0.0058 |   1.5972 |   0.0001 |   0.0958 |   0.2171 |   7.6717 |   3.0180 |   0.0519 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 40 | 520 | 910,070,918 |  12.7315 |   0.0057 |   1.7258 |   0.0001 |   0.0935 |   0.2134 |   7.6675 |   2.9740 |   0.0515 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 40 | 520 | 910,070,918 |  12.8881 |   0.0058 |   1.8883 |   0.0001 |   0.0939 |   0.2135 |   7.6461 |   2.9890 |   0.0514 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 40 | 520 | 910,070,918 |  13.4616 |   0.0059 |   2.5047 |   0.0001 |   0.0950 |   0.2125 |   7.6149 |   2.9774 |   0.0513 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 32 | 520 | 910,070,918 |  12.6794 |   0.0060 |   2.4554 |   0.0001 |   0.1134 |   0.2549 |   6.6692 |   3.1195 |   0.0610 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 32 | 520 | 910,070,918 |  12.1459 |   0.0058 |   1.9101 |   0.0001 |   0.1138 |   0.2576 |   6.6795 |   3.1175 |   0.0616 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 32 | 520 | 910,070,918 |  12.6332 |   0.0058 |   2.4089 |   0.0001 |   0.1139 |   0.2562 |   6.6522 |   3.1346 |   0.0616 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 32 | 520 | 910,070,918 |  12.6589 |   0.0058 |   2.4624 |   0.0001 |   0.1130 |   0.2540 |   6.6472 |   3.1149 |   0.0615 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 32 | 520 | 910,070,918 |  12.4705 |   0.0058 |   2.3234 |   0.0001 |   0.1136 |   0.2538 |   6.6053 |   3.1067 |   0.0619 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 24 | 520 | 910,070,918 |  13.2714 |   0.0059 |   2.2390 |   0.0001 |   0.1434 |   0.2988 |   6.6217 |   3.8775 |   0.0852 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 24 | 520 | 910,070,918 |  13.6216 |   0.0058 |   2.6504 |   0.0001 |   0.1408 |   0.3019 |   6.5918 |   3.8446 |   0.0861 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 24 | 520 | 910,070,918 |  14.0134 |   0.0058 |   2.9268 |   0.0001 |   0.1424 |   0.3030 |   6.6491 |   3.9045 |   0.0816 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 24 | 520 | 910,070,918 |  13.3466 |   0.0058 |   2.3506 |   0.0001 |   0.1419 |   0.3029 |   6.6056 |   3.8535 |   0.0862 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 24 | 520 | 910,070,918 |  13.3463 |   0.0057 |   2.3024 |   0.0001 |   0.1418 |   0.3115 |   6.6380 |   3.8604 |   0.0863 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 16 | 520 | 910,070,918 |  15.1491 |   0.0058 |   4.0848 |   0.0003 |   0.1676 |   0.3147 |   5.9645 |   4.4703 |   0.1410 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 16 | 520 | 910,070,918 |  14.4799 |   0.0058 |   3.2633 |   0.0004 |   0.1762 |   0.3198 |   5.9648 |   4.6062 |   0.1435 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 16 | 520 | 910,070,918 |  14.4762 |   0.0057 |   3.1018 |   0.0003 |   0.1713 |   0.3128 |   5.9982 |   4.7437 |   0.1423 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 16 | 520 | 910,070,918 |  14.0641 |   0.0058 |   2.8289 |   0.0003 |   0.2264 |   0.3165 |   6.0747 |   4.4702 |   0.1413 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 16 | 520 | 910,070,918 |  15.2019 |   0.0058 |   4.0361 |   0.0004 |   0.1674 |   0.3164 |   6.0340 |   4.5020 |   0.1398 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 8 | 520 | 910,070,918 |  24.7777 |   0.0057 |   3.7382 |   0.0003 |   0.3992 |   0.4086 |   6.0877 |  13.8671 |   0.2710 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 8 | 520 | 910,070,918 |  24.9779 |   0.0057 |   3.9567 |   0.0003 |   0.4052 |   0.4130 |   6.0513 |  13.8770 |   0.2687 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 8 | 520 | 910,070,918 |  24.6437 |   0.0058 |   3.5883 |   0.0003 |   0.3951 |   0.4113 |   6.1128 |  13.8624 |   0.2677 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 8 | 520 | 910,070,918 |  24.6845 |   0.0058 |   3.6419 |   0.0004 |   0.4050 |   0.4077 |   6.0914 |  13.8743 |   0.2580 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 8 | 520 | 910,070,918 |  24.5390 |   0.0057 |   3.5680 |   0.0003 |   0.3996 |   0.4081 |   6.0466 |  13.8834 |   0.2272 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 40 | 31 | 1,911,754,892 |   6.5503 |   0.0061 |   5.2326 |   0.0004 |   0.0147 |   0.0371 |   0.8301 |   0.3307 |   0.0988 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 40 | 31 | 1,911,754,892 |   6.6934 |   0.0059 |   5.3760 |   0.0003 |   0.0145 |   0.0371 |   0.8400 |   0.3222 |   0.0972 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 40 | 31 | 1,911,754,892 |   7.1137 |   0.0058 |   5.8148 |   0.0004 |   0.0141 |   0.0373 |   0.8308 |   0.3136 |   0.0968 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 40 | 31 | 1,911,754,892 |   7.1485 |   0.0058 |   5.8097 |   0.0003 |   0.0148 |   0.0378 |   0.8461 |   0.3366 |   0.0973 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 40 | 31 | 1,911,754,892 |   6.6137 |   0.0058 |   5.2929 |   0.0003 |   0.0144 |   0.0366 |   0.8372 |   0.3302 |   0.0964 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 32 | 31 | 1,911,754,892 |   8.4234 |   0.0057 |   6.8954 |   0.0003 |   0.0155 |   0.0409 |   0.9692 |   0.3766 |   0.1197 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 32 | 31 | 1,911,754,892 |   9.1460 |   0.0057 |   7.6692 |   0.0004 |   0.0146 |   0.0421 |   0.9316 |   0.3600 |   0.1224 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 32 | 31 | 1,911,754,892 |   7.5404 |   0.0057 |   6.0287 |   0.0004 |   0.0152 |   0.0414 |   0.9361 |   0.3898 |   0.1231 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 32 | 31 | 1,911,754,892 |   9.0433 |   0.0058 |   7.5549 |   0.0003 |   0.0158 |   0.0414 |   0.8882 |   0.4150 |   0.1219 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 32 | 31 | 1,911,754,892 |   8.4941 |   0.0059 |   7.0112 |   0.0004 |   0.0157 |   0.0411 |   0.9134 |   0.3842 |   0.1221 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 24 | 31 | 1,911,754,892 |   8.5523 |   0.0059 |   6.7457 |   0.0001 |   0.0186 |   0.0483 |   1.0559 |   0.5164 |   0.1615 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 24 | 31 | 1,911,754,892 |   7.6663 |   0.0057 |   5.8870 |   0.0001 |   0.0193 |   0.0500 |   1.0416 |   0.5020 |   0.1607 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 24 | 31 | 1,911,754,892 |   8.2609 |   0.0057 |   6.4759 |   0.0001 |   0.0178 |   0.0482 |   1.0437 |   0.5088 |   0.1609 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 24 | 31 | 1,911,754,892 |   7.6400 |   0.0057 |   5.7702 |   0.0001 |   0.0260 |   0.0560 |   1.0708 |   0.5506 |   0.1607 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 24 | 31 | 1,911,754,892 |   7.2159 |   0.0058 |   5.4285 |   0.0001 |   0.0190 |   0.0480 |   1.0458 |   0.5080 |   0.1607 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 16 | 31 | 1,911,754,892 |   8.8227 |   0.0058 |   6.7647 |   0.0003 |   0.0186 |   0.0670 |   1.1465 |   0.5664 |   0.2534 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 16 | 31 | 1,911,754,892 |   7.9718 |   0.0057 |   5.9115 |   0.0003 |   0.0184 |   0.0658 |   1.1437 |   0.5754 |   0.2508 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 16 | 31 | 1,911,754,892 |   8.0841 |   0.0057 |   6.0866 |   0.0003 |   0.0185 |   0.0656 |   1.1099 |   0.5503 |   0.2471 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 16 | 31 | 1,911,754,892 |   8.3168 |   0.0058 |   6.2249 |   0.0004 |   0.0181 |   0.0646 |   1.1689 |   0.5892 |   0.2450 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 16 | 31 | 1,911,754,892 |   8.0820 |   0.0058 |   6.0658 |   0.0003 |   0.0186 |   0.0671 |   1.1163 |   0.5629 |   0.2451 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 8 | 31 | 1,911,754,892 |  11.3008 |   0.0063 |   7.3276 |   0.0003 |   0.0240 |   0.1181 |   1.5672 |   1.7866 |   0.4708 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 8 | 31 | 1,911,754,892 |  11.8224 |   0.0062 |   7.4971 |   0.0003 |   0.0352 |   0.1115 |   1.7917 |   1.9140 |   0.4663 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 8 | 31 | 1,911,754,892 |  10.4887 |   0.0061 |   6.5877 |   0.0003 |   0.0234 |   0.1150 |   1.5410 |   1.7463 |   0.4689 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 8 | 31 | 1,911,754,892 |  10.6380 |   0.0062 |   6.7194 |   0.0003 |   0.0278 |   0.1133 |   1.5020 |   1.7975 |   0.4715 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 8 | 31 | 1,911,754,892 |  11.6226 |   0.0061 |   7.6848 |   0.0003 |   0.0262 |   0.1151 |   1.5410 |   1.7808 |   0.4682 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
CUDA AWARE MPI - TWO PASS
------------------------------------------------------------------------------------
CC tc_semi_naive.cu -o tc_semi_naive.out -lm
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 40 | 31 | 884,179,859 |   2.8262 |   0.0167 |   1.8473 |   0.0001 |   0.0098 |   0.0977 |   0.5825 |   0.2260 |   0.0462 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 40 | 31 | 884,179,859 |   3.3834 |   0.0059 |   2.4092 |   0.0001 |   0.0098 |   0.0982 |   0.5855 |   0.2286 |   0.0462 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 40 | 31 | 884,179,859 |   2.5787 |   0.0060 |   1.6157 |   0.0001 |   0.0099 |   0.0997 |   0.5752 |   0.2264 |   0.0458 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 40 | 31 | 884,179,859 |   2.9462 |   0.0059 |   1.9734 |   0.0001 |   0.0100 |   0.0997 |   0.5844 |   0.2265 |   0.0461 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 40 | 31 | 884,179,859 |   2.7589 |   0.0060 |   1.7873 |   0.0001 |   0.0098 |   0.0995 |   0.5864 |   0.2244 |   0.0454 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 32 | 31 | 884,179,859 |   3.2443 |   0.0058 |   2.1197 |   0.0001 |   0.0106 |   0.1023 |   0.7051 |   0.2450 |   0.0558 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 32 | 31 | 884,179,859 |   3.5813 |   0.0057 |   2.4695 |   0.0001 |   0.0105 |   0.1012 |   0.6746 |   0.2628 |   0.0569 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 32 | 31 | 884,179,859 |   3.3304 |   0.0057 |   2.2327 |   0.0001 |   0.0105 |   0.0991 |   0.6711 |   0.2546 |   0.0567 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 32 | 31 | 884,179,859 |   3.3818 |   0.0058 |   2.2618 |   0.0001 |   0.0104 |   0.1019 |   0.6978 |   0.2473 |   0.0567 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 32 | 31 | 884,179,859 |   3.6496 |   0.0057 |   2.4803 |   0.0001 |   0.0107 |   0.1044 |   0.7129 |   0.2798 |   0.0557 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 24 | 31 | 884,179,859 |   3.5052 |   0.0059 |   2.3297 |   0.0001 |   0.0115 |   0.1174 |   0.6835 |   0.2833 |   0.0739 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 24 | 31 | 884,179,859 |   3.3384 |   0.0058 |   2.1609 |   0.0001 |   0.0116 |   0.1166 |   0.6794 |   0.2911 |   0.0729 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 24 | 31 | 884,179,859 |   3.8512 |   0.0057 |   2.5923 |   0.0001 |   0.0117 |   0.1209 |   0.6927 |   0.3540 |   0.0738 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 24 | 31 | 884,179,859 |   3.7758 |   0.0058 |   2.6098 |   0.0001 |   0.0114 |   0.1184 |   0.6753 |   0.2803 |   0.0749 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 24 | 31 | 884,179,859 |   4.1538 |   0.0058 |   2.9608 |   0.0001 |   0.0118 |   0.1174 |   0.6742 |   0.3096 |   0.0740 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 16 | 31 | 884,179,859 |   4.0990 |   0.0060 |   2.8352 |   0.0001 |   0.0133 |   0.1453 |   0.6642 |   0.3250 |   0.1100 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 16 | 31 | 884,179,859 |   3.9837 |   0.0057 |   2.7191 |   0.0001 |   0.0135 |   0.1460 |   0.6807 |   0.3086 |   0.1101 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 16 | 31 | 884,179,859 |   4.6700 |   0.0058 |   3.4333 |   0.0001 |   0.0131 |   0.1486 |   0.6522 |   0.3066 |   0.1102 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 16 | 31 | 884,179,859 |   4.4994 |   0.0057 |   3.2445 |   0.0001 |   0.0131 |   0.1480 |   0.6690 |   0.3089 |   0.1101 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 16 | 31 | 884,179,859 |   3.6194 |   0.0058 |   2.3872 |   0.0001 |   0.0131 |   0.1447 |   0.6546 |   0.3051 |   0.1089 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 8 | 31 | 884,179,859 |   5.5375 |   0.0059 |   3.8510 |   0.0001 |   0.0246 |   0.2278 |   0.7506 |   0.4499 |   0.2275 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 8 | 31 | 884,179,859 |   5.0606 |   0.0058 |   3.4228 |   0.0001 |   0.0205 |   0.2229 |   0.7344 |   0.4228 |   0.2313 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 8 | 31 | 884,179,859 |   5.7488 |   0.0055 |   4.1086 |   0.0001 |   0.0175 |   0.2248 |   0.7418 |   0.4164 |   0.2341 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 8 | 31 | 884,179,859 |   5.2053 |   0.0059 |   3.5796 |   0.0001 |   0.0187 |   0.2235 |   0.7338 |   0.4143 |   0.2294 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 8 | 31 | 884,179,859 |   5.4086 |   0.0057 |   3.5878 |   0.0001 |   0.0174 |   0.2218 |   0.7398 |   0.6022 |   0.2339 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 40 | 606 | 871,365,688 |  12.8248 |   0.0061 |   2.0093 |   0.0001 |   0.0612 |   0.1520 |   7.3167 |   3.2097 |   0.0698 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 40 | 606 | 871,365,688 |  12.6823 |   0.0058 |   1.8172 |   0.0001 |   0.0608 |   0.1535 |   7.3737 |   3.1991 |   0.0722 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 40 | 606 | 871,365,688 |  12.4721 |   0.0060 |   1.5810 |   0.0001 |   0.0615 |   0.1520 |   7.3876 |   3.2134 |   0.0705 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 40 | 606 | 871,365,688 |  12.7229 |   0.0058 |   1.7433 |   0.0001 |   0.0609 |   0.1533 |   7.4532 |   3.2357 |   0.0706 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 40 | 606 | 871,365,688 |  12.7077 |   0.0058 |   1.7586 |   0.0001 |   0.0609 |   0.1519 |   7.4121 |   3.2479 |   0.0705 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 32 | 606 | 871,365,688 |  12.3856 |   0.0061 |   1.9594 |   0.0001 |   0.0506 |   0.2074 |   6.9906 |   3.0814 |   0.0900 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 32 | 606 | 871,365,688 |  12.8625 |   0.0058 |   2.4523 |   0.0001 |   0.0506 |   0.2095 |   6.9352 |   3.1197 |   0.0895 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 32 | 606 | 871,365,688 |  12.2486 |   0.0058 |   1.6871 |   0.0001 |   0.0504 |   0.2073 |   6.9919 |   3.2178 |   0.0884 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 32 | 606 | 871,365,688 |  13.1452 |   0.0057 |   2.7369 |   0.0001 |   0.0502 |   0.2063 |   6.9838 |   3.0726 |   0.0895 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 32 | 606 | 871,365,688 |  12.4080 |   0.0059 |   1.8976 |   0.0001 |   0.0511 |   0.2105 |   6.9817 |   3.1724 |   0.0888 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 24 | 606 | 871,365,688 |  14.0725 |   0.0059 |   3.0287 |   0.0001 |   0.0502 |   0.3362 |   6.7985 |   3.7348 |   0.1181 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 24 | 606 | 871,365,688 |  13.4129 |   0.0057 |   2.1511 |   0.0001 |   0.0503 |   0.3299 |   6.9401 |   3.8200 |   0.1158 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 24 | 606 | 871,365,688 |  14.1859 |   0.0059 |   3.0121 |   0.0001 |   0.0508 |   0.3322 |   6.9046 |   3.7606 |   0.1197 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 24 | 606 | 871,365,688 |  14.2123 |   0.0057 |   2.6945 |   0.0001 |   0.0500 |   0.3307 |   7.0782 |   3.9359 |   0.1172 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 24 | 606 | 871,365,688 |  14.2145 |   0.0057 |   2.9224 |   0.0001 |   0.0507 |   0.3399 |   6.9371 |   3.8431 |   0.1154 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 16 | 606 | 871,365,688 |  14.4509 |   0.0060 |   3.0367 |   0.0001 |   0.1110 |   0.3606 |   6.1167 |   4.6602 |   0.1597 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 16 | 606 | 871,365,688 |  13.8121 |   0.0058 |   2.4729 |   0.0001 |   0.1124 |   0.3711 |   6.1231 |   4.5559 |   0.1709 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 16 | 606 | 871,365,688 |  14.7457 |   0.0056 |   3.3377 |   0.0001 |   0.1119 |   0.3647 |   6.1074 |   4.6675 |   0.1507 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 16 | 606 | 871,365,688 |  14.4652 |   0.0060 |   3.0651 |   0.0001 |   0.1100 |   0.3629 |   6.1230 |   4.6479 |   0.1501 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 16 | 606 | 871,365,688 |  14.8694 |   0.0058 |   3.3720 |   0.0001 |   0.1097 |   0.3615 |   6.1142 |   4.7654 |   0.1407 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 8 | 606 | 871,365,688 |  24.5291 |   0.0061 |   4.0706 |   0.0001 |   0.2758 |   0.5648 |   5.9719 |  13.4041 |   0.2358 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 8 | 606 | 871,365,688 |  23.1044 |   0.0057 |   3.2099 |   0.0001 |   0.2821 |   0.5211 |   5.9228 |  12.8901 |   0.2726 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 8 | 606 | 871,365,688 |  24.1006 |   0.0055 |   4.2134 |   0.0001 |   0.2606 |   0.4928 |   5.9520 |  12.9445 |   0.2318 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 8 | 606 | 871,365,688 |  23.4316 |   0.0058 |   3.4979 |   0.0001 |   0.2641 |   0.5204 |   5.9811 |  12.8925 |   0.2698 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 8 | 606 | 871,365,688 |  24.1578 |   0.0057 |   4.0137 |   0.0001 |   0.2786 |   0.5259 |   6.3554 |  12.7448 |   0.2335 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 40 | 247 | 1,669,750,513 |  12.4740 |   0.0058 |   4.7959 |   0.0001 |   0.0733 |   0.3651 |   5.0378 |   2.1013 |   0.0947 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 40 | 247 | 1,669,750,513 |  11.5903 |   0.0057 |   3.9150 |   0.0001 |   0.0730 |   0.3681 |   5.0441 |   2.0894 |   0.0950 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 40 | 247 | 1,669,750,513 |  12.4197 |   0.0058 |   4.6866 |   0.0001 |   0.0736 |   0.3646 |   5.0795 |   2.1155 |   0.0940 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 40 | 247 | 1,669,750,513 |  11.8283 |   0.0057 |   4.1559 |   0.0001 |   0.0733 |   0.3657 |   5.0277 |   2.1053 |   0.0946 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 40 | 247 | 1,669,750,513 |  11.8819 |   0.0057 |   4.2092 |   0.0001 |   0.0738 |   0.3634 |   5.0495 |   2.0857 |   0.0946 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 32 | 247 | 1,669,750,513 |  12.4051 |   0.0058 |   5.3822 |   0.0001 |   0.0910 |   0.3919 |   4.1858 |   2.2330 |   0.1152 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 32 | 247 | 1,669,750,513 |  11.1320 |   0.0057 |   4.1734 |   0.0001 |   0.0901 |   0.3950 |   4.1505 |   2.1990 |   0.1181 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 32 | 247 | 1,669,750,513 |  12.0355 |   0.0057 |   5.0682 |   0.0001 |   0.0900 |   0.3887 |   4.1557 |   2.2119 |   0.1152 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 32 | 247 | 1,669,750,513 |  11.9322 |   0.0058 |   4.9482 |   0.0001 |   0.0887 |   0.3940 |   4.1770 |   2.2025 |   0.1159 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 32 | 247 | 1,669,750,513 |  11.7731 |   0.0058 |   4.9272 |   0.0001 |   0.0894 |   0.3812 |   4.0625 |   2.1908 |   0.1160 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 24 | 247 | 1,669,750,513 |  11.9210 |   0.0058 |   4.4224 |   0.0001 |   0.1258 |   0.4524 |   3.9779 |   2.7834 |   0.1532 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 24 | 247 | 1,669,750,513 |  12.5139 |   0.0058 |   5.0922 |   0.0001 |   0.1241 |   0.4438 |   3.9878 |   2.7088 |   0.1514 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 24 | 247 | 1,669,750,513 |  12.4106 |   0.0057 |   4.9351 |   0.0001 |   0.1245 |   0.4414 |   3.9744 |   2.7748 |   0.1546 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 24 | 247 | 1,669,750,513 |  11.9706 |   0.0058 |   4.5013 |   0.0001 |   0.1253 |   0.4443 |   3.9738 |   2.7663 |   0.1536 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 24 | 247 | 1,669,750,513 |  12.2051 |   0.0059 |   4.6661 |   0.0001 |   0.1266 |   0.4509 |   4.0096 |   2.7935 |   0.1525 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 16 | 247 | 1,669,750,513 |  12.7583 |   0.0058 |   3.9931 |   0.0001 |   0.1423 |   0.5861 |   3.1793 |   4.5890 |   0.2626 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 16 | 247 | 1,669,750,513 |  13.0403 |   0.0057 |   4.2927 |   0.0001 |   0.1497 |   0.5890 |   3.1897 |   4.5518 |   0.2616 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 16 | 247 | 1,669,750,513 |  13.9193 |   0.0059 |   4.4907 |   0.0001 |   0.1407 |   0.5893 |   3.7161 |   4.7434 |   0.2331 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 16 | 247 | 1,669,750,513 |  13.5023 |   0.0058 |   4.5735 |   0.0001 |   0.1411 |   0.5925 |   3.4885 |   4.4387 |   0.2622 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 16 | 247 | 1,669,750,513 |  12.9245 |   0.0059 |   3.7810 |   0.0001 |   0.1369 |   0.5831 |   3.5095 |   4.6789 |   0.2291 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 8 | 247 | 1,669,750,513 |  21.8696 |   0.0058 |   5.1591 |   0.0001 |   0.3230 |   0.7649 |   3.2382 |  11.8715 |   0.5071 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 8 | 247 | 1,669,750,513 |  21.6762 |   0.0058 |   5.1388 |   0.0001 |   0.3042 |   0.7569 |   3.1065 |  11.9410 |   0.4230 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 8 | 247 | 1,669,750,513 |  22.0899 |   0.0057 |   5.4534 |   0.0001 |   0.3392 |   0.7570 |   3.2184 |  11.8185 |   0.4976 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 8 | 247 | 1,669,750,513 |  21.9205 |   0.0057 |   5.3231 |   0.0001 |   0.2783 |   0.7534 |   3.1625 |  11.9120 |   0.4854 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 8 | 247 | 1,669,750,513 |  21.6864 |   0.0058 |   5.1337 |   0.0001 |   0.3029 |   0.7609 |   3.1654 |  11.8952 |   0.4225 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 40 | 520 | 910,070,918 |  11.5844 |   0.0058 |   1.8838 |   0.0001 |   0.0920 |   0.2840 |   6.4292 |   2.8382 |   0.0513 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 40 | 520 | 910,070,918 |  11.6602 |   0.0058 |   1.8830 |   0.0001 |   0.0924 |   0.2851 |   6.4327 |   2.9099 |   0.0514 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 40 | 520 | 910,070,918 |  11.2806 |   0.0058 |   1.5536 |   0.0001 |   0.0910 |   0.2801 |   6.4424 |   2.8549 |   0.0527 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 40 | 520 | 910,070,918 |  11.9961 |   0.0058 |   2.2000 |   0.0001 |   0.0918 |   0.2814 |   6.4711 |   2.8944 |   0.0516 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 40 | 520 | 910,070,918 |  11.4740 |   0.0057 |   1.6817 |   0.0001 |   0.0904 |   0.2759 |   6.4871 |   2.8806 |   0.0525 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 32 | 520 | 910,070,918 |  12.4856 |   0.0057 |   2.3387 |   0.0001 |   0.1110 |   0.3404 |   6.4420 |   3.1837 |   0.0640 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 32 | 520 | 910,070,918 |  12.5230 |   0.0057 |   2.4202 |   0.0001 |   0.1029 |   0.3356 |   6.4021 |   3.1909 |   0.0655 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 32 | 520 | 910,070,918 |  12.2984 |   0.0058 |   2.0210 |   0.0001 |   0.1025 |   0.3302 |   6.6008 |   3.1733 |   0.0646 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 32 | 520 | 910,070,918 |  12.7474 |   0.0057 |   2.4248 |   0.0001 |   0.1036 |   0.3403 |   6.6702 |   3.1398 |   0.0630 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 32 | 520 | 910,070,918 |  12.7915 |   0.0057 |   2.5298 |   0.0001 |   0.1032 |   0.3349 |   6.5826 |   3.1718 |   0.0634 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 24 | 520 | 910,070,918 |  13.1574 |   0.0058 |   3.0012 |   0.0001 |   0.1291 |   0.4156 |   5.8464 |   3.6694 |   0.0897 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 24 | 520 | 910,070,918 |  12.5648 |   0.0057 |   2.3276 |   0.0001 |   0.1315 |   0.4213 |   5.8698 |   3.7196 |   0.0892 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 24 | 520 | 910,070,918 |  12.3272 |   0.0058 |   2.1877 |   0.0001 |   0.1296 |   0.4205 |   5.8310 |   3.6622 |   0.0903 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 24 | 520 | 910,070,918 |  13.1763 |   0.0058 |   2.9544 |   0.0001 |   0.1297 |   0.4105 |   5.8698 |   3.7171 |   0.0889 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 24 | 520 | 910,070,918 |  12.1285 |   0.0058 |   1.9949 |   0.0001 |   0.1289 |   0.4194 |   5.8160 |   3.6738 |   0.0897 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 16 | 520 | 910,070,918 |  14.2520 |   0.0058 |   3.3183 |   0.0004 |   0.1516 |   0.4508 |   5.4885 |   4.6650 |   0.1716 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 16 | 520 | 910,070,918 |  13.6125 |   0.0058 |   2.6743 |   0.0003 |   0.1535 |   0.4459 |   5.4934 |   4.6808 |   0.1583 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 16 | 520 | 910,070,918 |  13.8444 |   0.0058 |   2.9529 |   0.0003 |   0.1507 |   0.4476 |   5.4809 |   4.6670 |   0.1392 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 16 | 520 | 910,070,918 |  14.0926 |   0.0058 |   3.1510 |   0.0003 |   0.1499 |   0.4551 |   5.5334 |   4.6347 |   0.1623 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 16 | 520 | 910,070,918 |  13.1550 |   0.0059 |   2.2500 |   0.0003 |   0.1517 |   0.4417 |   5.5016 |   4.6640 |   0.1397 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 8 | 520 | 910,070,918 |  27.4024 |   0.0055 |   3.7230 |   0.0003 |   0.4239 |   1.4054 |   6.7393 |  14.8420 |   0.2630 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 8 | 520 | 910,070,918 |  24.7721 |   0.0057 |   3.4177 |   0.0003 |   0.4411 |   0.6318 |   5.5479 |  14.4599 |   0.2677 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 8 | 520 | 910,070,918 |  24.9369 |   0.0058 |   3.7103 |   0.0003 |   0.4460 |   0.6350 |   5.4576 |  14.4096 |   0.2723 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 8 | 520 | 910,070,918 |  25.1835 |   0.0058 |   3.9114 |   0.0003 |   0.4421 |   0.6296 |   5.4711 |  14.4660 |   0.2572 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 8 | 520 | 910,070,918 |  25.3382 |   0.0058 |   4.0263 |   0.0003 |   0.4426 |   0.6226 |   5.4757 |  14.4964 |   0.2685 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 40 | 31 | 1,911,754,892 |   7.3455 |   0.0058 |   5.8137 |   0.0003 |   0.0136 |   0.2220 |   0.8761 |   0.3165 |   0.0975 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 40 | 31 | 1,911,754,892 |   6.9558 |   0.0057 |   5.4339 |   0.0003 |   0.0137 |   0.2194 |   0.8782 |   0.3084 |   0.0962 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 40 | 31 | 1,911,754,892 |   7.5277 |   0.0058 |   6.0049 |   0.0003 |   0.0136 |   0.2175 |   0.8793 |   0.3101 |   0.0962 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 40 | 31 | 1,911,754,892 |   6.5090 |   0.0057 |   4.9941 |   0.0003 |   0.0135 |   0.2180 |   0.8703 |   0.3106 |   0.0965 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 40 | 31 | 1,911,754,892 |   7.9804 |   0.0058 |   6.4424 |   0.0003 |   0.0137 |   0.2221 |   0.8866 |   0.3114 |   0.0979 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 32 | 31 | 1,911,754,892 |   8.0885 |   0.0058 |   6.3659 |   0.0003 |   0.0155 |   0.2513 |   0.9618 |   0.3637 |   0.1242 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 32 | 31 | 1,911,754,892 |   6.9514 |   0.0058 |   5.1699 |   0.0003 |   0.0157 |   0.2405 |   0.9988 |   0.3959 |   0.1244 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 32 | 31 | 1,911,754,892 |   9.8560 |   0.0058 |   8.0975 |   0.0003 |   0.0155 |   0.2555 |   0.9706 |   0.3879 |   0.1229 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 32 | 31 | 1,911,754,892 |   8.3592 |   0.0058 |   6.6156 |   0.0003 |   0.0158 |   0.2477 |   0.9689 |   0.3846 |   0.1204 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 32 | 31 | 1,911,754,892 |   9.2020 |   0.0057 |   7.4253 |   0.0003 |   0.0159 |   0.2567 |   0.9881 |   0.3882 |   0.1218 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 24 | 31 | 1,911,754,892 |   7.5135 |   0.0057 |   5.5353 |   0.0002 |   0.0185 |   0.2868 |   1.0291 |   0.4765 |   0.1613 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 24 | 31 | 1,911,754,892 |   8.0363 |   0.0057 |   6.0214 |   0.0002 |   0.0190 |   0.2968 |   1.0333 |   0.4954 |   0.1643 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 24 | 31 | 1,911,754,892 |   8.6287 |   0.0058 |   6.6728 |   0.0002 |   0.0189 |   0.2935 |   1.0056 |   0.4688 |   0.1630 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 24 | 31 | 1,911,754,892 |   8.5745 |   0.0058 |   6.5571 |   0.0002 |   0.0191 |   0.2932 |   1.0337 |   0.5049 |   0.1606 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 24 | 31 | 1,911,754,892 |   7.8085 |   0.0058 |   5.8097 |   0.0002 |   0.0181 |   0.2956 |   1.0242 |   0.4917 |   0.1632 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 16 | 31 | 1,911,754,892 |  10.2715 |   0.0058 |   7.8021 |   0.0003 |   0.0227 |   0.3840 |   1.2066 |   0.6075 |   0.2423 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 16 | 31 | 1,911,754,892 |   9.8333 |   0.0058 |   7.2294 |   0.0003 |   0.0390 |   0.3923 |   1.2687 |   0.6523 |   0.2455 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 16 | 31 | 1,911,754,892 |   9.3618 |   0.0058 |   6.7757 |   0.0003 |   0.0243 |   0.3805 |   1.2892 |   0.6480 |   0.2380 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 16 | 31 | 1,911,754,892 |   8.3379 |   0.0057 |   5.7486 |   0.0004 |   0.0238 |   0.3907 |   1.2602 |   0.6606 |   0.2479 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 16 | 31 | 1,911,754,892 |   9.0289 |   0.0058 |   6.3825 |   0.0003 |   0.0251 |   0.3771 |   1.2483 |   0.7515 |   0.2382 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 8 | 31 | 1,911,754,892 |  11.5182 |   0.0061 |   7.2433 |   0.0003 |   0.0241 |   0.6196 |   1.5758 |   1.5772 |   0.4719 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 8 | 31 | 1,911,754,892 |  11.6849 |   0.0061 |   7.4389 |   0.0003 |   0.0222 |   0.6177 |   1.5610 |   1.5644 |   0.4743 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 8 | 31 | 1,911,754,892 |  11.3047 |   0.0061 |   7.0188 |   0.0003 |   0.0219 |   0.6185 |   1.5831 |   1.5769 |   0.4791 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 8 | 31 | 1,911,754,892 |  10.8723 |   0.0063 |   6.6190 |   0.0003 |   0.0237 |   0.6208 |   1.5688 |   1.5627 |   0.4706 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 8 | 31 | 1,911,754,892 |  10.6107 |   0.0062 |   6.2468 |   0.0003 |   0.0246 |   0.6194 |   1.6389 |   1.5987 |   0.4756 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
Job ended at: 2024-08-07 19:59:53
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> JOB ENDED >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
```