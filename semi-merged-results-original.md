```
cat semi-merged.output
Job started at: 2024-08-08 13:06:31
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> JOB STARTED >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
TRADITIONAL MPI - SORTING
------------------------------------------------------------------------------------
CC tc_semi_naive.cu -o tc_semi_naive.out -lm
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 1
| 147,892 | 40 | 31 | 884,179,859 |   1.2635 |   0.7472 |   3.1497 |   0.0001 |   0.0106 |   0.0299 |   0.2908 |   0.1373 |   0.0474 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 1
| 147,892 | 40 | 31 | 884,179,859 |   1.2061 |   0.7027 |   2.1347 |   0.0001 |   0.0103 |   0.0242 |   0.2829 |   0.1386 |   0.0473 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 1
| 147,892 | 40 | 31 | 884,179,859 |   1.2024 |   0.7027 |   3.1898 |   0.0001 |   0.0102 |   0.0242 |   0.2832 |   0.1337 |   0.0483 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 1
| 147,892 | 40 | 31 | 884,179,859 |   1.2008 |   0.7029 |   2.2005 |   0.0001 |   0.0101 |   0.0239 |   0.2805 |   0.1352 |   0.0482 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 1
| 147,892 | 40 | 31 | 884,179,859 |   1.2074 |   0.7029 |   2.4463 |   0.0001 |   0.0103 |   0.0243 |   0.2852 |   0.1371 |   0.0475 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 1
| 147,892 | 32 | 31 | 884,179,859 |   1.2850 |   0.7057 |   2.2903 |   0.0001 |   0.0109 |   0.0263 |   0.3385 |   0.1450 |   0.0586 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 1
| 147,892 | 32 | 31 | 884,179,859 |   1.2802 |   0.7008 |   1.8496 |   0.0001 |   0.0108 |   0.0266 |   0.3375 |   0.1456 |   0.0587 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 1
| 147,892 | 32 | 31 | 884,179,859 |   1.2822 |   0.7039 |   2.2140 |   0.0001 |   0.0109 |   0.0263 |   0.3347 |   0.1464 |   0.0600 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 1
| 147,892 | 32 | 31 | 884,179,859 |   1.2844 |   0.7016 |   2.1895 |   0.0001 |   0.0107 |   0.0264 |   0.3415 |   0.1457 |   0.0584 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 1
| 147,892 | 32 | 31 | 884,179,859 |   1.2852 |   0.7095 |   2.8761 |   0.0001 |   0.0107 |   0.0262 |   0.3364 |   0.1430 |   0.0594 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 1
| 147,892 | 24 | 31 | 884,179,859 |   1.4277 |   0.7022 |   2.6731 |   0.0001 |   0.0118 |   0.0277 |   0.4327 |   0.1752 |   0.0780 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 1
| 147,892 | 24 | 31 | 884,179,859 |   1.4390 |   0.7051 |   2.3664 |   0.0001 |   0.0120 |   0.0280 |   0.4359 |   0.1801 |   0.0778 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 1
| 147,892 | 24 | 31 | 884,179,859 |   1.4347 |   0.7034 |   1.9865 |   0.0001 |   0.0120 |   0.0290 |   0.4346 |   0.1777 |   0.0780 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 1
| 147,892 | 24 | 31 | 884,179,859 |   1.4294 |   0.7014 |   2.2072 |   0.0001 |   0.0122 |   0.0278 |   0.4342 |   0.1765 |   0.0772 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 1
| 147,892 | 24 | 31 | 884,179,859 |   1.4428 |   0.7056 |   2.2446 |   0.0001 |   0.0121 |   0.0278 |   0.4338 |   0.1864 |   0.0769 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 1
| 147,892 | 16 | 31 | 884,179,859 |   1.7374 |   0.7016 |   3.3217 |   0.0001 |   0.0141 |   0.0342 |   0.6396 |   0.2312 |   0.1166 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 1
| 147,892 | 16 | 31 | 884,179,859 |   1.7325 |   0.7027 |   2.9949 |   0.0001 |   0.0137 |   0.0341 |   0.6368 |   0.2270 |   0.1182 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 1
| 147,892 | 16 | 31 | 884,179,859 |   1.7325 |   0.7024 |   2.8107 |   0.0001 |   0.0133 |   0.0342 |   0.6340 |   0.2285 |   0.1200 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 1
| 147,892 | 16 | 31 | 884,179,859 |   1.7270 |   0.7011 |   2.6491 |   0.0001 |   0.0136 |   0.0345 |   0.6326 |   0.2276 |   0.1176 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 1
| 147,892 | 16 | 31 | 884,179,859 |   1.7500 |   0.7038 |   2.3075 |   0.0001 |   0.0134 |   0.0347 |   0.6388 |   0.2401 |   0.1192 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 1
| 147,892 | 8 | 31 | 884,179,859 |   2.6719 |   0.7024 |   3.6197 |   0.0001 |   0.0181 |   0.0510 |   1.2490 |   0.4206 |   0.2307 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 1
| 147,892 | 8 | 31 | 884,179,859 |   2.6738 |   0.7027 |   3.6237 |   0.0001 |   0.0185 |   0.0518 |   1.2475 |   0.4219 |   0.2314 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 1
| 147,892 | 8 | 31 | 884,179,859 |   2.6668 |   0.7055 |   3.8309 |   0.0001 |   0.0176 |   0.0519 |   1.2506 |   0.4102 |   0.2308 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 1
| 147,892 | 8 | 31 | 884,179,859 |   2.6720 |   0.7039 |   4.4839 |   0.0001 |   0.0185 |   0.0519 |   1.2517 |   0.4164 |   0.2294 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 1
| 147,892 | 8 | 31 | 884,179,859 |   2.6837 |   0.7059 |   3.6170 |   0.0001 |   0.0176 |   0.0519 |   1.2502 |   0.4248 |   0.2333 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 1
| 165,435 | 40 | 606 | 871,365,688 |   3.9731 |   0.7002 |   1.9471 |   0.0001 |   0.0670 |   0.1654 |   0.3278 |   2.6253 |   0.0872 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 1
| 165,435 | 40 | 606 | 871,365,688 |   3.9444 |   0.6996 |   1.7389 |   0.0001 |   0.0680 |   0.1651 |   0.3185 |   2.6079 |   0.0852 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 1
| 165,435 | 40 | 606 | 871,365,688 |   3.9664 |   0.7013 |   2.2822 |   0.0001 |   0.0684 |   0.1624 |   0.3262 |   2.6222 |   0.0857 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 1
| 165,435 | 40 | 606 | 871,365,688 |   3.9798 |   0.7048 |   2.1761 |   0.0001 |   0.0680 |   0.1659 |   0.3247 |   2.6314 |   0.0849 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 1
| 165,435 | 40 | 606 | 871,365,688 |   3.9604 |   0.7044 |   2.1456 |   0.0001 |   0.0678 |   0.1647 |   0.3271 |   2.5966 |   0.0996 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 1
| 165,435 | 32 | 606 | 871,365,688 |   4.7747 |   0.6991 |   2.5383 |   0.0001 |   0.0602 |   0.2429 |   0.3335 |   3.3417 |   0.0973 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 1
| 165,435 | 32 | 606 | 871,365,688 |   4.8611 |   0.7036 |   2.1459 |   0.0001 |   0.0602 |   0.2478 |   0.3522 |   3.4000 |   0.0973 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 1
| 165,435 | 32 | 606 | 871,365,688 |   4.7824 |   0.7062 |   2.2548 |   0.0001 |   0.0600 |   0.2439 |   0.3351 |   3.3398 |   0.0972 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 1
| 165,435 | 32 | 606 | 871,365,688 |   4.7845 |   0.7021 |   2.7730 |   0.0001 |   0.0602 |   0.2446 |   0.3282 |   3.3520 |   0.0974 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 1
| 165,435 | 32 | 606 | 871,365,688 |   4.8642 |   0.7006 |   1.8945 |   0.0001 |   0.0649 |   0.2513 |   0.3482 |   3.4006 |   0.0986 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 1
| 165,435 | 24 | 606 | 871,365,688 |   6.4675 |   0.7045 |   3.3814 |   0.0001 |   0.0674 |   0.2839 |   0.3363 |   4.9614 |   0.1139 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 1
| 165,435 | 24 | 606 | 871,365,688 |   6.4776 |   0.7049 |   2.6628 |   0.0001 |   0.0682 |   0.2809 |   0.3376 |   4.9628 |   0.1231 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 1
| 165,435 | 24 | 606 | 871,365,688 |   6.4799 |   0.7011 |   1.5351 |   0.0001 |   0.0666 |   0.2840 |   0.3443 |   4.9698 |   0.1139 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 1
| 165,435 | 24 | 606 | 871,365,688 |   6.4691 |   0.7069 |   2.1525 |   0.0001 |   0.0669 |   0.2831 |   0.3420 |   4.9560 |   0.1143 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 1
| 165,435 | 24 | 606 | 871,365,688 |   6.4655 |   0.6989 |   2.4191 |   0.0001 |   0.0673 |   0.2834 |   0.3424 |   4.9593 |   0.1140 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 1
| 165,435 | 16 | 606 | 871,365,688 |   9.6301 |   0.7069 |   3.2344 |   0.0001 |   0.1310 |   0.3220 |   0.4398 |   7.8854 |   0.1448 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 1
| 165,435 | 16 | 606 | 871,365,688 |   9.6198 |   0.7021 |   2.7214 |   0.0001 |   0.1307 |   0.3214 |   0.4118 |   7.8873 |   0.1664 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 1
| 165,435 | 16 | 606 | 871,365,688 |   9.6349 |   0.7050 |   3.6118 |   0.0001 |   0.1325 |   0.3181 |   0.4345 |   7.8759 |   0.1687 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 1
| 165,435 | 16 | 606 | 871,365,688 |   9.6144 |   0.7030 |   3.3788 |   0.0001 |   0.1303 |   0.3240 |   0.4377 |   7.8764 |   0.1429 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 1
| 165,435 | 16 | 606 | 871,365,688 |   9.6157 |   0.7004 |   2.5304 |   0.0001 |   0.1320 |   0.3248 |   0.4185 |   7.8964 |   0.1435 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 1
| 165,435 | 8 | 606 | 871,365,688 |  19.4772 |   0.6979 |   3.1399 |   0.0001 |   0.4307 |   0.4885 |   1.0023 |  16.6193 |   0.2384 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 1
| 165,435 | 8 | 606 | 871,365,688 |  19.5198 |   0.7084 |   3.3790 |   0.0001 |   0.4400 |   0.4863 |   1.0203 |  16.5883 |   0.2764 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 1
| 165,435 | 8 | 606 | 871,365,688 |  19.4985 |   0.7021 |   3.4759 |   0.0001 |   0.4462 |   0.5003 |   1.0215 |  16.5913 |   0.2371 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 1
| 165,435 | 8 | 606 | 871,365,688 |  19.4836 |   0.7063 |   3.4138 |   0.0001 |   0.4317 |   0.4575 |   0.9848 |  16.6681 |   0.2350 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 1
| 165,435 | 8 | 606 | 871,365,688 |  19.4939 |   0.7026 |   3.5437 |   0.0001 |   0.4347 |   0.4801 |   0.9993 |  16.6101 |   0.2671 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 1
| 409,593 | 40 | 247 | 1,669,750,513 |   3.5593 |   0.7093 |   4.1532 |   0.0001 |   0.0800 |   0.1739 |   0.6580 |   1.7879 |   0.1501 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 1
| 409,593 | 40 | 247 | 1,669,750,513 |   3.5571 |   0.7064 |   3.8767 |   0.0001 |   0.0785 |   0.1718 |   0.6677 |   1.7844 |   0.1482 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 1
| 409,593 | 40 | 247 | 1,669,750,513 |   3.5431 |   0.7021 |   4.8390 |   0.0001 |   0.0805 |   0.1754 |   0.6773 |   1.7808 |   0.1269 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 1
| 409,593 | 40 | 247 | 1,669,750,513 |   3.5381 |   0.7020 |   4.6082 |   0.0001 |   0.0797 |   0.1721 |   0.6675 |   1.7911 |   0.1257 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 1
| 409,593 | 40 | 247 | 1,669,750,513 |   3.5280 |   0.7000 |   4.9839 |   0.0001 |   0.0796 |   0.1723 |   0.6570 |   1.7905 |   0.1285 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 1
| 409,593 | 32 | 247 | 1,669,750,513 |   4.3791 |   0.7039 |   6.2510 |   0.0001 |   0.0899 |   0.1971 |   0.7933 |   2.4533 |   0.1416 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 1
| 409,593 | 32 | 247 | 1,669,750,513 |   4.3720 |   0.7009 |   5.4066 |   0.0001 |   0.0907 |   0.1977 |   0.7953 |   2.4433 |   0.1440 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 1
| 409,593 | 32 | 247 | 1,669,750,513 |   4.4369 |   0.7084 |   5.2027 |   0.0001 |   0.0914 |   0.1992 |   0.8051 |   2.4916 |   0.1411 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 1
| 409,593 | 32 | 247 | 1,669,750,513 |   4.3770 |   0.7015 |   4.6743 |   0.0001 |   0.0897 |   0.1939 |   0.7976 |   2.4532 |   0.1410 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 1
| 409,593 | 32 | 247 | 1,669,750,513 |   4.3945 |   0.7024 |   4.3612 |   0.0001 |   0.0912 |   0.1978 |   0.8027 |   2.4584 |   0.1420 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 1
| 409,593 | 24 | 247 | 1,669,750,513 |   5.9795 |   0.7045 |   4.2311 |   0.0001 |   0.1182 |   0.2299 |   1.1778 |   3.5534 |   0.1956 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 1
| 409,593 | 24 | 247 | 1,669,750,513 |   5.9624 |   0.7019 |   4.2892 |   0.0001 |   0.1193 |   0.2253 |   1.1828 |   3.5612 |   0.1717 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 1
| 409,593 | 24 | 247 | 1,669,750,513 |   5.9559 |   0.7036 |   4.6294 |   0.0001 |   0.1181 |   0.2298 |   1.1705 |   3.5559 |   0.1779 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 1
| 409,593 | 24 | 247 | 1,669,750,513 |   5.9234 |   0.7009 |   4.6118 |   0.0001 |   0.1190 |   0.2180 |   1.1668 |   3.5446 |   0.1741 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 1
| 409,593 | 24 | 247 | 1,669,750,513 |   5.9090 |   0.7001 |   5.2343 |   0.0001 |   0.1177 |   0.2254 |   1.1733 |   3.5199 |   0.1724 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 1
| 409,593 | 16 | 247 | 1,669,750,513 |   8.9998 |   0.6984 |   4.1912 |   0.0001 |   0.2004 |   0.2513 |   1.7653 |   5.8238 |   0.2607 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 1
| 409,593 | 16 | 247 | 1,669,750,513 |   8.9401 |   0.7049 |   4.4615 |   0.0001 |   0.2101 |   0.2584 |   1.7584 |   5.7787 |   0.2294 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 1
| 409,593 | 16 | 247 | 1,669,750,513 |   8.9348 |   0.7014 |   3.8607 |   0.0001 |   0.2059 |   0.2502 |   1.7641 |   5.7822 |   0.2309 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 1
| 409,593 | 16 | 247 | 1,669,750,513 |   8.9331 |   0.7068 |   4.3900 |   0.0001 |   0.2005 |   0.2518 |   1.7608 |   5.7835 |   0.2294 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 1
| 409,593 | 16 | 247 | 1,669,750,513 |   8.9350 |   0.7018 |   4.3445 |   0.0001 |   0.2023 |   0.2513 |   1.7415 |   5.8020 |   0.2359 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 1
| 409,593 | 8 | 247 | 1,669,750,513 |  17.5338 |   0.7021 |   5.5519 |   0.0001 |   0.3107 |   0.2899 |   3.5927 |  12.2149 |   0.4234 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 1
| 409,593 | 8 | 247 | 1,669,750,513 |  17.6142 |   0.7028 |   5.1527 |   0.0001 |   0.3079 |   0.2938 |   3.6205 |  12.2626 |   0.4265 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 1
| 409,593 | 8 | 247 | 1,669,750,513 |  17.6648 |   0.6988 |   5.4190 |   0.0001 |   0.3530 |   0.2927 |   3.6369 |  12.1907 |   0.4926 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 1
| 409,593 | 8 | 247 | 1,669,750,513 |  17.5483 |   0.7006 |   3.8247 |   0.0001 |   0.2963 |   0.2892 |   3.5768 |  12.2586 |   0.4268 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 1
| 409,593 | 8 | 247 | 1,669,750,513 |  17.6411 |   0.7035 |   5.4248 |   0.0001 |   0.3440 |   0.2910 |   3.6342 |  12.2455 |   0.4228 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 40 | 520 | 910,070,918 |   4.2154 |   0.6981 |   1.9292 |   0.0001 |   0.0897 |   0.2174 |   0.4734 |   2.6363 |   0.1005 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 40 | 520 | 910,070,918 |   4.2198 |   0.7058 |   2.0397 |   0.0001 |   0.0900 |   0.2176 |   0.4779 |   2.6410 |   0.0875 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 40 | 520 | 910,070,918 |   4.2594 |   0.6991 |   1.8478 |   0.0001 |   0.0970 |   0.2272 |   0.5177 |   2.6184 |   0.1000 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 40 | 520 | 910,070,918 |   4.2197 |   0.7003 |   1.9622 |   0.0001 |   0.0896 |   0.2173 |   0.4746 |   2.6506 |   0.0871 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 40 | 520 | 910,070,918 |   4.2433 |   0.7051 |   1.6537 |   0.0001 |   0.0909 |   0.2169 |   0.4756 |   2.6548 |   0.0999 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 32 | 520 | 910,070,918 |   5.3080 |   0.7038 |   2.3769 |   0.0001 |   0.1129 |   0.2824 |   0.5535 |   3.5617 |   0.0937 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 32 | 520 | 910,070,918 |   5.2923 |   0.7012 |   1.8186 |   0.0001 |   0.1153 |   0.2685 |   0.5240 |   3.5898 |   0.0934 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 32 | 520 | 910,070,918 |   5.2803 |   0.6981 |   2.6988 |   0.0001 |   0.1135 |   0.2668 |   0.5232 |   3.5860 |   0.0925 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 32 | 520 | 910,070,918 |   5.3024 |   0.6992 |   2.6616 |   0.0001 |   0.1200 |   0.2840 |   0.5518 |   3.5544 |   0.0929 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 32 | 520 | 910,070,918 |   5.2915 |   0.7074 |   2.4505 |   0.0001 |   0.1136 |   0.2670 |   0.5305 |   3.5794 |   0.0935 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 24 | 520 | 910,070,918 |   7.0440 |   0.7034 |   2.0470 |   0.0001 |   0.1626 |   0.3436 |   0.6443 |   5.0662 |   0.1237 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 24 | 520 | 910,070,918 |   7.0592 |   0.7036 |   2.2879 |   0.0001 |   0.1639 |   0.3449 |   0.6633 |   5.0710 |   0.1125 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 24 | 520 | 910,070,918 |   7.0409 |   0.7031 |   2.6156 |   0.0001 |   0.1644 |   0.3437 |   0.6462 |   5.0674 |   0.1160 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 24 | 520 | 910,070,918 |   7.0568 |   0.7052 |   2.0983 |   0.0001 |   0.1672 |   0.3501 |   0.6546 |   5.0466 |   0.1330 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 24 | 520 | 910,070,918 |   7.0385 |   0.7010 |   2.4889 |   0.0001 |   0.1609 |   0.3437 |   0.6513 |   5.0552 |   0.1263 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 16 | 520 | 910,070,918 |  10.6801 |   0.6990 |   2.7194 |   0.0004 |   0.2486 |   0.3683 |   0.9101 |   8.3115 |   0.1421 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 16 | 520 | 910,070,918 |  10.6945 |   0.7069 |   2.8880 |   0.0004 |   0.2493 |   0.3641 |   0.9030 |   8.3327 |   0.1382 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 16 | 520 | 910,070,918 |  10.6770 |   0.7069 |   3.8073 |   0.0004 |   0.2481 |   0.3731 |   0.9119 |   8.2973 |   0.1394 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 16 | 520 | 910,070,918 |  10.7473 |   0.7021 |   2.7571 |   0.0004 |   0.2527 |   0.3651 |   0.9415 |   8.3209 |   0.1646 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 16 | 520 | 910,070,918 |  10.6803 |   0.7008 |   2.8625 |   0.0004 |   0.2521 |   0.3696 |   0.8996 |   8.3152 |   0.1425 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 8 | 520 | 910,070,918 |  21.7234 |   0.7038 |   3.4702 |   0.0003 |   0.5201 |   0.4510 |   1.9529 |  17.8639 |   0.2315 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 8 | 520 | 910,070,918 |  21.7238 |   0.7035 |   3.6179 |   0.0004 |   0.5150 |   0.4639 |   1.9696 |  17.8449 |   0.2266 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 8 | 520 | 910,070,918 |  21.6834 |   0.7032 |   3.2765 |   0.0003 |   0.5102 |   0.4534 |   1.9345 |  17.8543 |   0.2275 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 8 | 520 | 910,070,918 |  21.7525 |   0.6965 |   3.8337 |   0.0004 |   0.5171 |   0.4528 |   1.9530 |  17.8641 |   0.2686 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 8 | 520 | 910,070,918 |  21.7033 |   0.7005 |   3.5810 |   0.0003 |   0.5162 |   0.4525 |   1.9496 |  17.8572 |   0.2269 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 1
| 1,049,866 | 40 | 31 | 1,911,754,892 |   1.7932 |   0.7017 |   6.7667 |   0.0003 |   0.0144 |   0.0374 |   0.7126 |   0.2246 |   0.1022 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 1
| 1,049,866 | 40 | 31 | 1,911,754,892 |   1.7954 |   0.7035 |   7.3079 |   0.0004 |   0.0148 |   0.0380 |   0.7088 |   0.2255 |   0.1044 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 1
| 1,049,866 | 40 | 31 | 1,911,754,892 |   1.8631 |   0.7032 |   6.5459 |   0.0003 |   0.0256 |   0.0495 |   0.7298 |   0.2509 |   0.1039 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 1
| 1,049,866 | 40 | 31 | 1,911,754,892 |   1.7920 |   0.7003 |   5.8198 |   0.0004 |   0.0149 |   0.0380 |   0.7105 |   0.2257 |   0.1023 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 1
| 1,049,866 | 40 | 31 | 1,911,754,892 |   1.7901 |   0.7021 |   6.3075 |   0.0003 |   0.0142 |   0.0375 |   0.7095 |   0.2242 |   0.1023 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 1
| 1,049,866 | 32 | 31 | 1,911,754,892 |   2.0312 |   0.7033 |   6.2107 |   0.0004 |   0.0143 |   0.0415 |   0.8742 |   0.2675 |   0.1300 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 1
| 1,049,866 | 32 | 31 | 1,911,754,892 |   2.0309 |   0.7023 |   6.1535 |   0.0004 |   0.0152 |   0.0413 |   0.8737 |   0.2703 |   0.1278 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 1
| 1,049,866 | 32 | 31 | 1,911,754,892 |   2.0328 |   0.7054 |   6.0607 |   0.0004 |   0.0142 |   0.0411 |   0.8782 |   0.2654 |   0.1280 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 1
| 1,049,866 | 32 | 31 | 1,911,754,892 |   2.0354 |   0.7027 |   6.0178 |   0.0004 |   0.0146 |   0.0414 |   0.8751 |   0.2719 |   0.1294 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 1
| 1,049,866 | 32 | 31 | 1,911,754,892 |   2.0275 |   0.6990 |   6.2443 |   0.0004 |   0.0143 |   0.0414 |   0.8780 |   0.2671 |   0.1272 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 1
| 1,049,866 | 24 | 31 | 1,911,754,892 |   2.4481 |   0.7057 |   5.3480 |   0.0001 |   0.0168 |   0.0482 |   1.1623 |   0.3448 |   0.1702 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 1
| 1,049,866 | 24 | 31 | 1,911,754,892 |   2.4319 |   0.7012 |   6.4213 |   0.0001 |   0.0171 |   0.0479 |   1.1577 |   0.3374 |   0.1705 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 1
| 1,049,866 | 24 | 31 | 1,911,754,892 |   2.4390 |   0.7067 |   5.1069 |   0.0001 |   0.0172 |   0.0487 |   1.1612 |   0.3317 |   0.1733 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 1
| 1,049,866 | 24 | 31 | 1,911,754,892 |   2.4474 |   0.7096 |   5.6424 |   0.0001 |   0.0174 |   0.0489 |   1.1632 |   0.3378 |   0.1705 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 1
| 1,049,866 | 24 | 31 | 1,911,754,892 |   2.4360 |   0.7057 |   5.1331 |   0.0001 |   0.0165 |   0.0487 |   1.1535 |   0.3421 |   0.1694 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 1
| 1,049,866 | 16 | 31 | 1,911,754,892 |   3.2579 |   0.7038 |   6.6776 |   0.0004 |   0.0187 |   0.0628 |   1.7178 |   0.5022 |   0.2523 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 1
| 1,049,866 | 16 | 31 | 1,911,754,892 |   3.2256 |   0.7042 |   6.5755 |   0.0004 |   0.0183 |   0.0636 |   1.7190 |   0.4679 |   0.2522 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 1
| 1,049,866 | 16 | 31 | 1,911,754,892 |   3.2278 |   0.7042 |   5.8636 |   0.0004 |   0.0184 |   0.0639 |   1.7102 |   0.4776 |   0.2532 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 1
| 1,049,866 | 16 | 31 | 1,911,754,892 |   3.2565 |   0.7062 |   6.0960 |   0.0003 |   0.0186 |   0.0634 |   1.7133 |   0.4926 |   0.2621 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 1
| 1,049,866 | 16 | 31 | 1,911,754,892 |   3.2364 |   0.7034 |   6.2888 |   0.0004 |   0.0176 |   0.0636 |   1.7157 |   0.4749 |   0.2609 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 1
| 1,049,866 | 8 | 31 | 1,911,754,892 |   6.0832 |   0.7030 |   8.3307 |   0.0003 |   0.0308 |   0.1155 |   3.3366 |   1.3496 |   0.5474 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 1
| 1,049,866 | 8 | 31 | 1,911,754,892 |   6.0895 |   0.7039 |   7.5209 |   0.0003 |   0.0233 |   0.1112 |   3.3351 |   1.3599 |   0.5557 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 1
| 1,049,866 | 8 | 31 | 1,911,754,892 |   6.1205 |   0.7560 |   6.7120 |   0.0003 |   0.0246 |   0.1105 |   3.3294 |   1.3457 |   0.5538 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 1
| 1,049,866 | 8 | 31 | 1,911,754,892 |   6.0708 |   0.7059 |   7.0817 |   0.0003 |   0.0223 |   0.1088 |   3.3302 |   1.3466 |   0.5567 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 1
| 1,049,866 | 8 | 31 | 1,911,754,892 |   6.0409 |   0.7087 |   6.3681 |   0.0003 |   0.0236 |   0.1102 |   3.3163 |   1.4072 |   0.4746 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
TRADITIONAL MPI - TWO PASS
------------------------------------------------------------------------------------
CC tc_semi_naive.cu -o tc_semi_naive.out -lm
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 0
| 147,892 | 40 | 31 | 884,179,859 |   1.2834 |   0.7127 |   2.0164 |   0.0001 |   0.0096 |   0.0952 |   0.2918 |   0.1257 |   0.0482 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 0
| 147,892 | 40 | 31 | 884,179,859 |   1.2756 |   0.7023 |   2.0710 |   0.0001 |   0.0096 |   0.0978 |   0.2903 |   0.1278 |   0.0477 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 0
| 147,892 | 40 | 31 | 884,179,859 |   1.2768 |   0.7016 |   2.0455 |   0.0001 |   0.0095 |   0.0979 |   0.2918 |   0.1282 |   0.0478 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 0
| 147,892 | 40 | 31 | 884,179,859 |   1.2807 |   0.7078 |   1.7388 |   0.0001 |   0.0097 |   0.0955 |   0.2939 |   0.1252 |   0.0484 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 0
| 147,892 | 40 | 31 | 884,179,859 |   1.2807 |   0.7094 |   2.2112 |   0.0001 |   0.0097 |   0.0980 |   0.2879 |   0.1280 |   0.0476 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 0
| 147,892 | 32 | 31 | 884,179,859 |   1.3636 |   0.6991 |   1.9845 |   0.0001 |   0.0107 |   0.1043 |   0.3472 |   0.1422 |   0.0600 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 0
| 147,892 | 32 | 31 | 884,179,859 |   1.3684 |   0.7017 |   2.0202 |   0.0001 |   0.0104 |   0.1083 |   0.3479 |   0.1404 |   0.0596 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 0
| 147,892 | 32 | 31 | 884,179,859 |   1.3754 |   0.7054 |   2.7568 |   0.0001 |   0.0105 |   0.1070 |   0.3477 |   0.1389 |   0.0658 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 0
| 147,892 | 32 | 31 | 884,179,859 |   1.3707 |   0.7032 |   1.9993 |   0.0001 |   0.0106 |   0.1049 |   0.3497 |   0.1408 |   0.0615 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 0
| 147,892 | 32 | 31 | 884,179,859 |   1.3744 |   0.7101 |   2.6428 |   0.0001 |   0.0104 |   0.1048 |   0.3505 |   0.1394 |   0.0592 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 0
| 147,892 | 24 | 31 | 884,179,859 |   1.5365 |   0.7069 |   1.9600 |   0.0001 |   0.0119 |   0.1192 |   0.4430 |   0.1773 |   0.0781 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 0
| 147,892 | 24 | 31 | 884,179,859 |   1.5198 |   0.6991 |   2.1934 |   0.0001 |   0.0119 |   0.1196 |   0.4423 |   0.1690 |   0.0779 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 0
| 147,892 | 24 | 31 | 884,179,859 |   1.5385 |   0.7048 |   2.4563 |   0.0001 |   0.0119 |   0.1239 |   0.4457 |   0.1732 |   0.0788 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 0
| 147,892 | 24 | 31 | 884,179,859 |   1.5249 |   0.7057 |   2.9222 |   0.0001 |   0.0118 |   0.1187 |   0.4408 |   0.1704 |   0.0774 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 0
| 147,892 | 24 | 31 | 884,179,859 |   1.5266 |   0.7042 |   2.1250 |   0.0001 |   0.0120 |   0.1190 |   0.4419 |   0.1706 |   0.0787 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 0
| 147,892 | 16 | 31 | 884,179,859 |   1.8443 |   0.7037 |   2.9528 |   0.0001 |   0.0131 |   0.1517 |   0.6349 |   0.2252 |   0.1157 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 0
| 147,892 | 16 | 31 | 884,179,859 |   1.8566 |   0.7076 |   2.7946 |   0.0001 |   0.0131 |   0.1540 |   0.6373 |   0.2272 |   0.1173 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 0
| 147,892 | 16 | 31 | 884,179,859 |   1.8376 |   0.6996 |   2.4940 |   0.0001 |   0.0133 |   0.1508 |   0.6377 |   0.2197 |   0.1165 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 0
| 147,892 | 16 | 31 | 884,179,859 |   1.8428 |   0.7030 |   2.8473 |   0.0001 |   0.0134 |   0.1492 |   0.6392 |   0.2218 |   0.1159 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 0
| 147,892 | 16 | 31 | 884,179,859 |   1.8368 |   0.7019 |   2.9390 |   0.0001 |   0.0134 |   0.1479 |   0.6378 |   0.2187 |   0.1170 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 0
| 147,892 | 8 | 31 | 884,179,859 |   2.8313 |   0.7019 |   3.5213 |   0.0001 |   0.0179 |   0.2296 |   1.2464 |   0.4036 |   0.2318 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 0
| 147,892 | 8 | 31 | 884,179,859 |   2.8439 |   0.6980 |   3.6151 |   0.0001 |   0.0177 |   0.2338 |   1.2461 |   0.4187 |   0.2295 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 0
| 147,892 | 8 | 31 | 884,179,859 |   2.8241 |   0.7063 |   3.8867 |   0.0001 |   0.0182 |   0.2332 |   1.2501 |   0.3865 |   0.2296 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 0
| 147,892 | 8 | 31 | 884,179,859 |   2.8360 |   0.6952 |   3.6319 |   0.0001 |   0.0179 |   0.2298 |   1.2555 |   0.4040 |   0.2335 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 0
| 147,892 | 8 | 31 | 884,179,859 |   2.8322 |   0.7023 |   3.6115 |   0.0001 |   0.0190 |   0.2296 |   1.2478 |   0.3996 |   0.2338 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| 165,435 | 40 | 606 | 871,365,688 |   4.1440 |   0.7083 |   1.5175 |   0.0001 |   0.0613 |   0.3330 |   0.3025 |   2.6517 |   0.0871 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| 165,435 | 40 | 606 | 871,365,688 |   4.1280 |   0.7038 |   1.6953 |   0.0001 |   0.0609 |   0.3269 |   0.3109 |   2.6397 |   0.0858 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| 165,435 | 40 | 606 | 871,365,688 |   4.1125 |   0.6987 |   2.5880 |   0.0001 |   0.0611 |   0.3205 |   0.3065 |   2.6395 |   0.0862 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| 165,435 | 40 | 606 | 871,365,688 |   4.1194 |   0.7005 |   1.6580 |   0.0001 |   0.0611 |   0.3241 |   0.3057 |   2.6413 |   0.0868 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| 165,435 | 40 | 606 | 871,365,688 |   4.1612 |   0.7058 |   1.8182 |   0.0001 |   0.0609 |   0.3278 |   0.3089 |   2.6732 |   0.0845 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| 165,435 | 32 | 606 | 871,365,688 |   5.0558 |   0.7026 |   1.9532 |   0.0001 |   0.0524 |   0.4112 |   0.3492 |   3.4432 |   0.0972 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| 165,435 | 32 | 606 | 871,365,688 |   4.9875 |   0.7020 |   2.4036 |   0.0001 |   0.0519 |   0.3897 |   0.3119 |   3.4344 |   0.0973 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| 165,435 | 32 | 606 | 871,365,688 |   4.9878 |   0.7034 |   2.3936 |   0.0001 |   0.0520 |   0.3889 |   0.3125 |   3.4340 |   0.0969 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| 165,435 | 32 | 606 | 871,365,688 |   5.0706 |   0.7060 |   2.2372 |   0.0001 |   0.0522 |   0.4117 |   0.3432 |   3.4445 |   0.1130 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| 165,435 | 32 | 606 | 871,365,688 |   5.0138 |   0.7014 |   1.8606 |   0.0001 |   0.0519 |   0.4101 |   0.3101 |   3.4431 |   0.0972 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| 165,435 | 24 | 606 | 871,365,688 |   6.6598 |   0.6980 |   2.4126 |   0.0001 |   0.0520 |   0.4930 |   0.3200 |   4.9855 |   0.1112 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| 165,435 | 24 | 606 | 871,365,688 |   6.7036 |   0.7380 |   2.4774 |   0.0001 |   0.0522 |   0.4960 |   0.3280 |   4.9650 |   0.1242 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| 165,435 | 24 | 606 | 871,365,688 |   6.6558 |   0.7041 |   2.8351 |   0.0001 |   0.0518 |   0.4956 |   0.3284 |   4.9638 |   0.1120 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| 165,435 | 24 | 606 | 871,365,688 |   6.6564 |   0.7119 |   2.6746 |   0.0001 |   0.0515 |   0.4996 |   0.3317 |   4.9364 |   0.1253 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| 165,435 | 24 | 606 | 871,365,688 |   6.6615 |   0.7013 |   2.2764 |   0.0001 |   0.0518 |   0.4956 |   0.3239 |   4.9609 |   0.1278 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| 165,435 | 16 | 606 | 871,365,688 |   9.8277 |   0.7034 |   2.6452 |   0.0001 |   0.1304 |   0.5777 |   0.4194 |   7.8362 |   0.1605 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| 165,435 | 16 | 606 | 871,365,688 |   9.8491 |   0.7075 |   2.8427 |   0.0001 |   0.1317 |   0.5853 |   0.4124 |   7.8698 |   0.1422 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| 165,435 | 16 | 606 | 871,365,688 |   9.8525 |   0.6946 |   3.2896 |   0.0001 |   0.1273 |   0.5825 |   0.4075 |   7.8984 |   0.1421 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| 165,435 | 16 | 606 | 871,365,688 |   9.8054 |   0.7035 |   3.3268 |   0.0001 |   0.1255 |   0.5743 |   0.4191 |   7.8393 |   0.1437 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| 165,435 | 16 | 606 | 871,365,688 |   9.8050 |   0.7013 |   3.1354 |   0.0001 |   0.1248 |   0.5682 |   0.4139 |   7.8533 |   0.1435 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| 165,435 | 8 | 606 | 871,365,688 |  19.7101 |   0.7011 |   3.6158 |   0.0001 |   0.3670 |   0.8538 |   0.8708 |  16.6528 |   0.2645 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| 165,435 | 8 | 606 | 871,365,688 |  19.7368 |   0.7083 |   3.8180 |   0.0001 |   0.3711 |   0.8599 |   0.8921 |  16.6631 |   0.2422 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| 165,435 | 8 | 606 | 871,365,688 |  19.7250 |   0.7050 |   3.5714 |   0.0001 |   0.3651 |   0.8583 |   0.8916 |  16.6699 |   0.2350 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| 165,435 | 8 | 606 | 871,365,688 |  19.7026 |   0.7030 |   3.5578 |   0.0001 |   0.3753 |   0.8668 |   0.8895 |  16.6343 |   0.2337 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| 165,435 | 8 | 606 | 871,365,688 |  19.7185 |   0.6998 |   3.0848 |   0.0001 |   0.3735 |   0.8674 |   0.8845 |  16.6204 |   0.2729 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| 409,593 | 40 | 247 | 1,669,750,513 |   3.7444 |   0.7075 |   4.0399 |   0.0001 |   0.0766 |   0.4422 |   0.6319 |   1.7448 |   0.1415 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| 409,593 | 40 | 247 | 1,669,750,513 |   3.7429 |   0.7046 |   4.3186 |   0.0001 |   0.0813 |   0.4502 |   0.6428 |   1.7218 |   0.1422 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| 409,593 | 40 | 247 | 1,669,750,513 |   3.7404 |   0.7075 |   3.5997 |   0.0001 |   0.0789 |   0.4411 |   0.6312 |   1.7397 |   0.1419 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| 409,593 | 40 | 247 | 1,669,750,513 |   3.7136 |   0.7043 |   4.5987 |   0.0001 |   0.0759 |   0.4426 |   0.6274 |   1.7368 |   0.1264 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| 409,593 | 40 | 247 | 1,669,750,513 |   3.7665 |   0.7383 |   5.0644 |   0.0001 |   0.0777 |   0.4435 |   0.6309 |   1.7343 |   0.1416 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| 409,593 | 32 | 247 | 1,669,750,513 |   4.5669 |   0.7045 |   4.4327 |   0.0001 |   0.0877 |   0.4894 |   0.7715 |   2.3718 |   0.1419 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| 409,593 | 32 | 247 | 1,669,750,513 |   4.5759 |   0.7023 |   3.7386 |   0.0001 |   0.0892 |   0.4923 |   0.7677 |   2.3844 |   0.1399 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| 409,593 | 32 | 247 | 1,669,750,513 |   4.5602 |   0.7039 |   4.6919 |   0.0001 |   0.0890 |   0.4878 |   0.7731 |   2.3606 |   0.1458 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| 409,593 | 32 | 247 | 1,669,750,513 |   4.5691 |   0.7020 |   5.0920 |   0.0001 |   0.0881 |   0.4900 |   0.7628 |   2.3844 |   0.1417 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| 409,593 | 32 | 247 | 1,669,750,513 |   4.6343 |   0.7538 |   4.2233 |   0.0001 |   0.0906 |   0.4885 |   0.7735 |   2.3727 |   0.1551 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| 409,593 | 24 | 247 | 1,669,750,513 |   6.1343 |   0.7019 |   5.1951 |   0.0001 |   0.1281 |   0.5670 |   1.1362 |   3.4273 |   0.1736 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| 409,593 | 24 | 247 | 1,669,750,513 |   6.1429 |   0.7063 |   4.6759 |   0.0001 |   0.1279 |   0.5717 |   1.1240 |   3.4406 |   0.1722 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| 409,593 | 24 | 247 | 1,669,750,513 |   6.1519 |   0.7074 |   5.1184 |   0.0001 |   0.1258 |   0.5681 |   1.1370 |   3.4083 |   0.2051 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| 409,593 | 24 | 247 | 1,669,750,513 |   6.1435 |   0.7062 |   4.1286 |   0.0001 |   0.1258 |   0.5730 |   1.1419 |   3.4199 |   0.1766 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| 409,593 | 24 | 247 | 1,669,750,513 |   6.1647 |   0.7027 |   5.4285 |   0.0001 |   0.1288 |   0.5691 |   1.1426 |   3.4287 |   0.1927 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| 409,593 | 16 | 247 | 1,669,750,513 |   9.1033 |   0.6994 |   4.4272 |   0.0001 |   0.1805 |   0.7164 |   1.6379 |   5.6399 |   0.2291 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| 409,593 | 16 | 247 | 1,669,750,513 |   9.1557 |   0.7024 |   4.4075 |   0.0001 |   0.1813 |   0.7174 |   1.6663 |   5.6530 |   0.2352 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| 409,593 | 16 | 247 | 1,669,750,513 |   9.1306 |   0.7032 |   4.0375 |   0.0001 |   0.1769 |   0.7210 |   1.6670 |   5.6300 |   0.2324 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| 409,593 | 16 | 247 | 1,669,750,513 |   9.1163 |   0.7017 |   4.7260 |   0.0001 |   0.1775 |   0.7248 |   1.6368 |   5.6119 |   0.2635 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| 409,593 | 16 | 247 | 1,669,750,513 |   9.1224 |   0.6989 |   4.0730 |   0.0001 |   0.1798 |   0.7248 |   1.6527 |   5.5956 |   0.2705 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| 409,593 | 8 | 247 | 1,669,750,513 |  17.7882 |   0.6979 |   5.4617 |   0.0001 |   0.2924 |   0.9171 |   3.4309 |  12.0286 |   0.4213 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| 409,593 | 8 | 247 | 1,669,750,513 |  17.7105 |   0.6997 |   5.2718 |   0.0001 |   0.2612 |   0.9022 |   3.4191 |  12.0072 |   0.4210 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| 409,593 | 8 | 247 | 1,669,750,513 |  17.9379 |   0.7024 |   4.9197 |   0.0001 |   0.3285 |   0.9620 |   3.4792 |  12.0443 |   0.4215 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| 409,593 | 8 | 247 | 1,669,750,513 |  17.8680 |   0.7440 |   4.4807 |   0.0001 |   0.3021 |   0.9127 |   3.4920 |  11.9774 |   0.4397 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| 409,593 | 8 | 247 | 1,669,750,513 |  17.8412 |   0.7037 |   5.3176 |   0.0001 |   0.3183 |   0.9154 |   3.4722 |  11.9363 |   0.4952 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 40 | 520 | 910,070,918 |   4.5033 |   0.7042 |   1.9104 |   0.0001 |   0.0893 |   0.4845 |   0.4811 |   2.6439 |   0.1002 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 40 | 520 | 910,070,918 |   4.5814 |   0.7429 |   2.2507 |   0.0001 |   0.0899 |   0.4869 |   0.4953 |   2.6647 |   0.1016 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 40 | 520 | 910,070,918 |   4.5125 |   0.6997 |   2.3817 |   0.0001 |   0.0882 |   0.4889 |   0.4841 |   2.6481 |   0.1035 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 40 | 520 | 910,070,918 |   4.5092 |   0.6992 |   1.9340 |   0.0001 |   0.0879 |   0.4791 |   0.4817 |   2.6600 |   0.1012 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 40 | 520 | 910,070,918 |   4.5306 |   0.7025 |   2.0212 |   0.0001 |   0.1024 |   0.5024 |   0.5140 |   2.6089 |   0.1004 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 32 | 520 | 910,070,918 |   5.5786 |   0.7059 |   2.0782 |   0.0001 |   0.1082 |   0.5384 |   0.5364 |   3.5971 |   0.0925 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 32 | 520 | 910,070,918 |   5.5754 |   0.7049 |   2.1167 |   0.0001 |   0.1079 |   0.5432 |   0.5364 |   3.5903 |   0.0927 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 32 | 520 | 910,070,918 |   5.5942 |   0.7016 |   1.8951 |   0.0001 |   0.1122 |   0.5495 |   0.5495 |   3.5873 |   0.0940 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 32 | 520 | 910,070,918 |   5.5873 |   0.7034 |   2.0296 |   0.0001 |   0.1093 |   0.5397 |   0.5349 |   3.6073 |   0.0926 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 32 | 520 | 910,070,918 |   5.5907 |   0.7070 |   1.8340 |   0.0001 |   0.1079 |   0.5484 |   0.5382 |   3.5952 |   0.0938 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 24 | 520 | 910,070,918 |   7.3520 |   0.7015 |   3.0669 |   0.0001 |   0.1540 |   0.6439 |   0.6675 |   5.0574 |   0.1276 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 24 | 520 | 910,070,918 |   7.3523 |   0.7026 |   2.6672 |   0.0001 |   0.1535 |   0.6376 |   0.6641 |   5.0669 |   0.1277 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 24 | 520 | 910,070,918 |   7.3353 |   0.7037 |   2.5639 |   0.0001 |   0.1557 |   0.6369 |   0.6897 |   5.0380 |   0.1112 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 24 | 520 | 910,070,918 |   7.3639 |   0.7041 |   2.6372 |   0.0001 |   0.1561 |   0.6332 |   0.6631 |   5.0804 |   0.1269 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 24 | 520 | 910,070,918 |   7.3486 |   0.7051 |   3.1068 |   0.0001 |   0.1562 |   0.6289 |   0.6670 |   5.0635 |   0.1278 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 16 | 520 | 910,070,918 |  11.0288 |   0.7036 |   3.0317 |   0.0004 |   0.2446 |   0.7439 |   0.9356 |   8.2577 |   0.1431 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 16 | 520 | 910,070,918 |  11.0504 |   0.7056 |   3.9902 |   0.0004 |   0.2443 |   0.7445 |   0.9388 |   8.2541 |   0.1626 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 16 | 520 | 910,070,918 |  11.0458 |   0.7004 |   3.2949 |   0.0004 |   0.2469 |   0.7552 |   0.9140 |   8.2633 |   0.1656 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 16 | 520 | 910,070,918 |  11.0162 |   0.7077 |   2.8548 |   0.0004 |   0.2437 |   0.7934 |   0.9377 |   8.1944 |   0.1390 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 16 | 520 | 910,070,918 |  11.0131 |   0.7042 |   2.8013 |   0.0004 |   0.2459 |   0.7468 |   0.9147 |   8.2372 |   0.1639 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 8 | 520 | 910,070,918 |  22.0969 |   0.7020 |   3.7273 |   0.0003 |   0.5607 |   0.9604 |   1.9512 |  17.6979 |   0.2244 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 8 | 520 | 910,070,918 |  22.1342 |   0.7078 |   3.5602 |   0.0004 |   0.5624 |   0.9689 |   1.9606 |  17.6701 |   0.2640 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 8 | 520 | 910,070,918 |  22.0718 |   0.7060 |   3.6623 |   0.0003 |   0.5598 |   0.9558 |   1.9354 |  17.6856 |   0.2288 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 8 | 520 | 910,070,918 |  22.1143 |   0.7111 |   3.5469 |   0.0003 |   0.5583 |   0.9506 |   1.9510 |  17.7173 |   0.2256 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 8 | 520 | 910,070,918 |  22.1149 |   0.7043 |   3.7920 |   0.0003 |   0.5719 |   0.9419 |   1.9600 |  17.6709 |   0.2655 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| 1,049,866 | 40 | 31 | 1,911,754,892 |   1.9644 |   0.7011 |   6.4621 |   0.0004 |   0.0141 |   0.2144 |   0.7165 |   0.2147 |   0.1033 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| 1,049,866 | 40 | 31 | 1,911,754,892 |   2.0302 |   0.7673 |   5.3717 |   0.0004 |   0.0138 |   0.2153 |   0.7186 |   0.2124 |   0.1024 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| 1,049,866 | 40 | 31 | 1,911,754,892 |   1.9887 |   0.7199 |   6.2886 |   0.0003 |   0.0142 |   0.2169 |   0.7178 |   0.2169 |   0.1027 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| 1,049,866 | 40 | 31 | 1,911,754,892 |   1.9643 |   0.7033 |   5.9992 |   0.0004 |   0.0142 |   0.2118 |   0.7200 |   0.2127 |   0.1020 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| 1,049,866 | 40 | 31 | 1,911,754,892 |   1.9652 |   0.7002 |   4.5981 |   0.0004 |   0.0143 |   0.2149 |   0.7161 |   0.2140 |   0.1053 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| 1,049,866 | 32 | 31 | 1,911,754,892 |   2.2163 |   0.7015 |   6.7550 |   0.0004 |   0.0150 |   0.2427 |   0.8779 |   0.2503 |   0.1285 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| 1,049,866 | 32 | 31 | 1,911,754,892 |   2.2287 |   0.7030 |   5.8813 |   0.0004 |   0.0149 |   0.2429 |   0.8840 |   0.2550 |   0.1285 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| 1,049,866 | 32 | 31 | 1,911,754,892 |   2.2274 |   0.7008 |   6.6027 |   0.0004 |   0.0149 |   0.2412 |   0.8812 |   0.2604 |   0.1285 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| 1,049,866 | 32 | 31 | 1,911,754,892 |   2.2282 |   0.7052 |   6.1675 |   0.0004 |   0.0149 |   0.2416 |   0.8802 |   0.2553 |   0.1306 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| 1,049,866 | 32 | 31 | 1,911,754,892 |   2.2570 |   0.7013 |   5.2720 |   0.0004 |   0.0150 |   0.2522 |   0.8969 |   0.2647 |   0.1265 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| 1,049,866 | 24 | 31 | 1,911,754,892 |   2.6595 |   0.7032 |   5.4669 |   0.0002 |   0.0162 |   0.2861 |   1.1634 |   0.3211 |   0.1694 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| 1,049,866 | 24 | 31 | 1,911,754,892 |   2.6713 |   0.7011 |   5.7794 |   0.0002 |   0.0166 |   0.2936 |   1.1691 |   0.3209 |   0.1698 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| 1,049,866 | 24 | 31 | 1,911,754,892 |   2.6756 |   0.7039 |   5.6857 |   0.0002 |   0.0172 |   0.2903 |   1.1587 |   0.3325 |   0.1729 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| 1,049,866 | 24 | 31 | 1,911,754,892 |   2.6843 |   0.7066 |   6.4125 |   0.0002 |   0.0169 |   0.2943 |   1.1656 |   0.3305 |   0.1701 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| 1,049,866 | 24 | 31 | 1,911,754,892 |   2.6804 |   0.6992 |   5.1698 |   0.0002 |   0.0168 |   0.2959 |   1.1660 |   0.3277 |   0.1746 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| 1,049,866 | 16 | 31 | 1,911,754,892 |   3.5570 |   0.7020 |   6.7844 |   0.0003 |   0.0228 |   0.3855 |   1.7330 |   0.4558 |   0.2576 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| 1,049,866 | 16 | 31 | 1,911,754,892 |   3.5461 |   0.7009 |   6.6964 |   0.0003 |   0.0220 |   0.3879 |   1.7211 |   0.4597 |   0.2541 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| 1,049,866 | 16 | 31 | 1,911,754,892 |   3.5545 |   0.7045 |   5.8951 |   0.0003 |   0.0234 |   0.3878 |   1.7182 |   0.4660 |   0.2544 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| 1,049,866 | 16 | 31 | 1,911,754,892 |   3.5631 |   0.7059 |   6.2815 |   0.0003 |   0.0229 |   0.3883 |   1.7234 |   0.4708 |   0.2515 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| 1,049,866 | 16 | 31 | 1,911,754,892 |   3.5998 |   0.7025 |   7.5063 |   0.0003 |   0.0317 |   0.3935 |   1.7315 |   0.4785 |   0.2616 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| 1,049,866 | 8 | 31 | 1,911,754,892 |   6.5684 |   0.7064 |   7.0175 |   0.0003 |   0.0231 |   0.6553 |   3.3330 |   1.3009 |   0.5494 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| 1,049,866 | 8 | 31 | 1,911,754,892 |   6.6151 |   0.7555 |   7.3218 |   0.0003 |   0.0238 |   0.6401 |   3.3489 |   1.2932 |   0.5532 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| 1,049,866 | 8 | 31 | 1,911,754,892 |   6.5889 |   0.7027 |   7.3719 |   0.0003 |   0.0240 |   0.6349 |   3.3256 |   1.3394 |   0.5620 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| 1,049,866 | 8 | 31 | 1,911,754,892 |   6.5446 |   0.7006 |   7.2542 |   0.0003 |   0.0229 |   0.6437 |   3.3198 |   1.3087 |   0.5486 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| 1,049,866 | 8 | 31 | 1,911,754,892 |   6.5457 |   0.7030 |   7.4402 |   0.0003 |   0.0225 |   0.6447 |   3.3335 |   1.2761 |   0.5656 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
====================================================================================
CUDA AWARE MPI - SORTING
------------------------------------------------------------------------------------
CC tc_semi_naive.cu -o tc_semi_naive.out -lm
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 40 | 31 | 884,179,859 |   0.9943 |   0.0190 |   1.4993 |   0.0001 |   0.0109 |   0.0237 |   0.6636 |   0.2311 |   0.0460 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 40 | 31 | 884,179,859 |   0.9773 |   0.0057 |   1.8456 |   0.0001 |   0.0108 |   0.0233 |   0.6651 |   0.2262 |   0.0460 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 40 | 31 | 884,179,859 |   0.9908 |   0.0057 |   2.2698 |   0.0001 |   0.0109 |   0.0243 |   0.6761 |   0.2286 |   0.0451 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 40 | 31 | 884,179,859 |   0.9832 |   0.0058 |   1.9901 |   0.0001 |   0.0112 |   0.0232 |   0.6669 |   0.2302 |   0.0459 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 40 | 31 | 884,179,859 |   0.9830 |   0.0057 |   1.8904 |   0.0001 |   0.0109 |   0.0228 |   0.6676 |   0.2305 |   0.0454 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 32 | 31 | 884,179,859 |   0.9792 |   0.0057 |   2.1615 |   0.0001 |   0.0114 |   0.0253 |   0.6412 |   0.2384 |   0.0571 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 32 | 31 | 884,179,859 |   0.9523 |   0.0057 |   1.9633 |   0.0001 |   0.0109 |   0.0254 |   0.6347 |   0.2182 |   0.0574 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 32 | 31 | 884,179,859 |   0.9636 |   0.0058 |   1.6142 |   0.0001 |   0.0111 |   0.0257 |   0.6308 |   0.2330 |   0.0571 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 32 | 31 | 884,179,859 |   0.9913 |   0.0058 |   1.8835 |   0.0001 |   0.0112 |   0.0270 |   0.6377 |   0.2530 |   0.0566 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 32 | 31 | 884,179,859 |   0.9756 |   0.0058 |   1.9931 |   0.0001 |   0.0112 |   0.0255 |   0.6441 |   0.2318 |   0.0572 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 24 | 31 | 884,179,859 |   0.9931 |   0.0057 |   2.1879 |   0.0001 |   0.0129 |   0.0283 |   0.6162 |   0.2555 |   0.0743 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 24 | 31 | 884,179,859 |   0.9839 |   0.0058 |   2.7210 |   0.0001 |   0.0126 |   0.0283 |   0.6113 |   0.2493 |   0.0765 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 24 | 31 | 884,179,859 |   1.0132 |   0.0057 |   2.9742 |   0.0001 |   0.0129 |   0.0286 |   0.6279 |   0.2629 |   0.0752 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 24 | 31 | 884,179,859 |   1.0126 |   0.0059 |   2.6214 |   0.0001 |   0.0133 |   0.0287 |   0.6267 |   0.2645 |   0.0734 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 24 | 31 | 884,179,859 |   1.0015 |   0.0057 |   3.1379 |   0.0001 |   0.0127 |   0.0275 |   0.6267 |   0.2556 |   0.0732 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 16 | 31 | 884,179,859 |   1.0244 |   0.0057 |   3.4380 |   0.0001 |   0.0136 |   0.0342 |   0.5932 |   0.2670 |   0.1106 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 16 | 31 | 884,179,859 |   1.0358 |   0.0057 |   2.5378 |   0.0001 |   0.0140 |   0.0340 |   0.6004 |   0.2717 |   0.1100 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 16 | 31 | 884,179,859 |   1.0474 |   0.0060 |   3.1632 |   0.0001 |   0.0141 |   0.0348 |   0.6044 |   0.2788 |   0.1093 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 16 | 31 | 884,179,859 |   1.1073 |   0.0057 |   3.0431 |   0.0001 |   0.0136 |   0.0348 |   0.6285 |   0.3063 |   0.1184 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 16 | 31 | 884,179,859 |   1.0612 |   0.0057 |   3.5702 |   0.0001 |   0.0141 |   0.0353 |   0.6119 |   0.2837 |   0.1104 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 8 | 31 | 884,179,859 |   1.4457 |   0.0056 |   3.6104 |   0.0001 |   0.0173 |   0.0521 |   0.6982 |   0.4420 |   0.2303 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 8 | 31 | 884,179,859 |   1.4445 |   0.0058 |   3.6925 |   0.0001 |   0.0187 |   0.0505 |   0.6981 |   0.4395 |   0.2318 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 8 | 31 | 884,179,859 |   1.4336 |   0.0058 |   3.6887 |   0.0001 |   0.0181 |   0.0512 |   0.6924 |   0.4335 |   0.2326 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 8 | 31 | 884,179,859 |   1.4388 |   0.0057 |   3.8305 |   0.0001 |   0.0181 |   0.0533 |   0.6977 |   0.4362 |   0.2278 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 8 | 31 | 884,179,859 |   1.4795 |   0.0052 |   3.4798 |   0.0001 |   0.0175 |   0.0651 |   0.7074 |   0.4572 |   0.2271 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 40 | 606 | 871,365,688 |  11.7576 |   0.0057 |   1.5467 |   0.0001 |   0.0692 |   0.1620 |   8.2170 |   3.2331 |   0.0705 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 40 | 606 | 871,365,688 |  11.7612 |   0.0057 |   1.6415 |   0.0001 |   0.0686 |   0.1650 |   8.1886 |   3.2615 |   0.0717 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 40 | 606 | 871,365,688 |  11.6796 |   0.0058 |   1.8276 |   0.0001 |   0.0686 |   0.1594 |   8.1197 |   3.2560 |   0.0701 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 40 | 606 | 871,365,688 |  11.7524 |   0.0057 |   1.6335 |   0.0001 |   0.0685 |   0.1666 |   8.1739 |   3.2665 |   0.0712 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 40 | 606 | 871,365,688 |  11.6693 |   0.0058 |   2.0453 |   0.0001 |   0.0680 |   0.1610 |   8.1086 |   3.2544 |   0.0714 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 32 | 606 | 871,365,688 |  10.6004 |   0.0058 |   2.4128 |   0.0001 |   0.0599 |   0.2304 |   7.1795 |   3.0352 |   0.0896 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 32 | 606 | 871,365,688 |  10.5355 |   0.0057 |   2.4039 |   0.0001 |   0.0588 |   0.2247 |   7.0637 |   3.0926 |   0.0898 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 32 | 606 | 871,365,688 |  10.6891 |   0.0059 |   2.2009 |   0.0001 |   0.0597 |   0.2363 |   7.1988 |   3.0982 |   0.0901 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 32 | 606 | 871,365,688 |  10.5152 |   0.0058 |   2.2178 |   0.0001 |   0.0595 |   0.2286 |   7.1369 |   2.9950 |   0.0893 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 32 | 606 | 871,365,688 |  10.5429 |   0.0058 |   1.7978 |   0.0001 |   0.0587 |   0.2384 |   7.1336 |   3.0178 |   0.0886 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 24 | 606 | 871,365,688 |  11.5031 |   0.0057 |   2.4291 |   0.0001 |   0.0639 |   0.2806 |   7.0597 |   3.9749 |   0.1181 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 24 | 606 | 871,365,688 |  11.5393 |   0.0057 |   2.4202 |   0.0001 |   0.0654 |   0.2822 |   7.1076 |   3.9612 |   0.1171 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 24 | 606 | 871,365,688 |  11.5721 |   0.0056 |   2.4819 |   0.0001 |   0.0640 |   0.2792 |   7.0872 |   4.0176 |   0.1185 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 24 | 606 | 871,365,688 |  11.6939 |   0.0057 |   1.9274 |   0.0001 |   0.0646 |   0.2825 |   7.1629 |   4.0608 |   0.1172 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 24 | 606 | 871,365,688 |  11.5606 |   0.0058 |   2.3379 |   0.0001 |   0.0640 |   0.2833 |   7.0851 |   4.0055 |   0.1169 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 16 | 606 | 871,365,688 |  11.5818 |   0.0060 |   2.7959 |   0.0001 |   0.1126 |   0.2917 |   6.0639 |   4.9654 |   0.1421 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 16 | 606 | 871,365,688 |  11.5717 |   0.0057 |   3.1621 |   0.0001 |   0.1133 |   0.2886 |   6.2040 |   4.8199 |   0.1401 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 16 | 606 | 871,365,688 |  11.4514 |   0.0058 |   2.9366 |   0.0001 |   0.1123 |   0.2862 |   6.0869 |   4.8045 |   0.1555 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 16 | 606 | 871,365,688 |  11.6615 |   0.0057 |   2.7991 |   0.0001 |   0.1131 |   0.2898 |   6.2151 |   4.8990 |   0.1388 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 16 | 606 | 871,365,688 |  11.5163 |   0.0057 |   2.8902 |   0.0001 |   0.1120 |   0.2863 |   6.1692 |   4.8016 |   0.1414 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 8 | 606 | 871,365,688 |  20.8618 |   0.0058 |   3.7129 |   0.0001 |   0.3507 |   0.4141 |   7.2634 |  12.5884 |   0.2394 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 8 | 606 | 871,365,688 |  20.3957 |   0.0057 |   3.9095 |   0.0001 |   0.3543 |   0.4017 |   7.2911 |  12.1107 |   0.2322 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 8 | 606 | 871,365,688 |  19.9689 |   0.0057 |   3.5561 |   0.0001 |   0.3357 |   0.4002 |   7.2744 |  11.7108 |   0.2421 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 8 | 606 | 871,365,688 |  20.5674 |   0.0056 |   3.6238 |   0.0001 |   0.3489 |   0.3962 |   7.8582 |  11.6849 |   0.2735 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 8 | 606 | 871,365,688 |  19.9872 |   0.0058 |   3.7977 |   0.0001 |   0.3341 |   0.3970 |   7.2524 |  11.7263 |   0.2717 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 40 | 247 | 1,669,750,513 |   6.7971 |   0.0057 |   3.7473 |   0.0001 |   0.0742 |   0.1682 |   4.5084 |   1.9452 |   0.0953 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 40 | 247 | 1,669,750,513 |   6.6984 |   0.0057 |   4.9477 |   0.0001 |   0.0762 |   0.1773 |   4.3743 |   1.9699 |   0.0948 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 40 | 247 | 1,669,750,513 |   6.7655 |   0.0057 |   4.0175 |   0.0001 |   0.0753 |   0.1681 |   4.4942 |   1.9260 |   0.0962 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 40 | 247 | 1,669,750,513 |   6.8220 |   0.0058 |   4.3024 |   0.0001 |   0.0743 |   0.1756 |   4.5329 |   1.9374 |   0.0958 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 40 | 247 | 1,669,750,513 |   6.7519 |   0.0057 |   3.8304 |   0.0001 |   0.0744 |   0.1680 |   4.4866 |   1.9226 |   0.0946 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 32 | 247 | 1,669,750,513 |   6.7056 |   0.0058 |   4.8528 |   0.0001 |   0.0893 |   0.1778 |   4.4205 |   1.9002 |   0.1120 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 32 | 247 | 1,669,750,513 |   6.7384 |   0.0057 |   5.3312 |   0.0001 |   0.0897 |   0.1764 |   4.4706 |   1.8795 |   0.1164 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 32 | 247 | 1,669,750,513 |   6.7051 |   0.0058 |   4.3458 |   0.0001 |   0.0902 |   0.1763 |   4.4440 |   1.8746 |   0.1143 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 32 | 247 | 1,669,750,513 |   6.6604 |   0.0057 |   4.2927 |   0.0001 |   0.0904 |   0.1776 |   4.4078 |   1.8640 |   0.1150 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 32 | 247 | 1,669,750,513 |   6.7213 |   0.0058 |   4.0348 |   0.0001 |   0.0905 |   0.1763 |   4.4473 |   1.8864 |   0.1150 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 24 | 247 | 1,669,750,513 |   7.0147 |   0.0057 |   4.1786 |   0.0001 |   0.1116 |   0.1973 |   4.1104 |   2.4366 |   0.1531 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 24 | 247 | 1,669,750,513 |   7.0270 |   0.0058 |   4.1940 |   0.0001 |   0.1129 |   0.1962 |   4.1237 |   2.4334 |   0.1550 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 24 | 247 | 1,669,750,513 |   7.0503 |   0.0057 |   5.0078 |   0.0001 |   0.1144 |   0.1962 |   4.1321 |   2.4462 |   0.1555 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 24 | 247 | 1,669,750,513 |   7.2237 |   0.0058 |   4.0321 |   0.0001 |   0.1086 |   0.1918 |   4.2743 |   2.4899 |   0.1532 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 24 | 247 | 1,669,750,513 |   6.7737 |   0.0057 |   5.9988 |   0.0001 |   0.1116 |   0.1935 |   3.9782 |   2.3323 |   0.1525 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 16 | 247 | 1,669,750,513 |   8.6145 |   0.0058 |   5.2390 |   0.0001 |   0.1588 |   0.2255 |   3.6637 |   4.3011 |   0.2594 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 16 | 247 | 1,669,750,513 |   8.7422 |   0.0058 |   4.0005 |   0.0001 |   0.1628 |   0.2248 |   4.0114 |   4.0789 |   0.2585 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 16 | 247 | 1,669,750,513 |   8.3200 |   0.0057 |   3.9238 |   0.0001 |   0.1616 |   0.2272 |   3.5930 |   4.0647 |   0.2677 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 16 | 247 | 1,669,750,513 |   8.5687 |   0.0057 |   4.0289 |   0.0001 |   0.1646 |   0.2220 |   3.6189 |   4.2896 |   0.2678 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 16 | 247 | 1,669,750,513 |   8.5176 |   0.0057 |   4.2879 |   0.0001 |   0.1659 |   0.2271 |   3.6514 |   4.2094 |   0.2580 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 8 | 247 | 1,669,750,513 |  16.4253 |   0.0059 |   5.3505 |   0.0001 |   0.3931 |   0.2629 |   3.1946 |  12.1519 |   0.4168 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 8 | 247 | 1,669,750,513 |  16.2349 |   0.0058 |   4.7868 |   0.0001 |   0.2685 |   0.2482 |   3.0615 |  12.1638 |   0.4870 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 8 | 247 | 1,669,750,513 |  16.3794 |   0.0057 |   5.5294 |   0.0001 |   0.3127 |   0.2740 |   3.2116 |  12.1549 |   0.4204 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 8 | 247 | 1,669,750,513 |  16.4277 |   0.0057 |   4.8868 |   0.0001 |   0.3337 |   0.2744 |   3.1956 |  12.1262 |   0.4921 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 8 | 247 | 1,669,750,513 |  16.4100 |   0.0057 |   5.5125 |   0.0001 |   0.3458 |   0.2847 |   3.1941 |  12.0993 |   0.4803 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 40 | 520 | 910,070,918 |  10.9129 |   0.0058 |   1.8681 |   0.0001 |   0.0944 |   0.2139 |   7.6715 |   2.8762 |   0.0511 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 40 | 520 | 910,070,918 |  10.7222 |   0.0057 |   2.1955 |   0.0001 |   0.0954 |   0.2144 |   7.5046 |   2.8503 |   0.0518 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 40 | 520 | 910,070,918 |  10.9866 |   0.0057 |   1.8701 |   0.0001 |   0.0948 |   0.2148 |   7.7192 |   2.9011 |   0.0509 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 40 | 520 | 910,070,918 |  11.0058 |   0.0058 |   1.5107 |   0.0001 |   0.0939 |   0.2145 |   7.7492 |   2.8913 |   0.0510 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 40 | 520 | 910,070,918 |  11.1050 |   0.0057 |   1.8830 |   0.0001 |   0.0950 |   0.2142 |   7.7787 |   2.9598 |   0.0516 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 32 | 520 | 910,070,918 |  10.0242 |   0.0059 |   2.2862 |   0.0001 |   0.1141 |   0.2531 |   6.6309 |   2.9583 |   0.0618 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 32 | 520 | 910,070,918 |  10.1392 |   0.0058 |   2.4187 |   0.0001 |   0.1146 |   0.2514 |   6.6767 |   3.0302 |   0.0604 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 32 | 520 | 910,070,918 |  10.0991 |   0.0057 |   2.3968 |   0.0001 |   0.1153 |   0.2544 |   6.6851 |   2.9768 |   0.0618 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 32 | 520 | 910,070,918 |  10.1395 |   0.0058 |   2.1914 |   0.0001 |   0.1150 |   0.2523 |   6.6916 |   3.0128 |   0.0619 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 32 | 520 | 910,070,918 |   9.9549 |   0.0057 |   2.6707 |   0.0001 |   0.1145 |   0.2554 |   6.5404 |   2.9767 |   0.0620 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 24 | 520 | 910,070,918 |  10.8618 |   0.0058 |   2.4399 |   0.0001 |   0.1389 |   0.3028 |   6.6726 |   3.6549 |   0.0868 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 24 | 520 | 910,070,918 |  10.7563 |   0.0058 |   1.9725 |   0.0001 |   0.1404 |   0.2982 |   6.5861 |   3.6389 |   0.0868 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 24 | 520 | 910,070,918 |  10.8094 |   0.0058 |   2.6808 |   0.0001 |   0.1421 |   0.3066 |   6.6136 |   3.6559 |   0.0853 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 24 | 520 | 910,070,918 |  10.8154 |   0.0058 |   2.8317 |   0.0001 |   0.1414 |   0.2998 |   6.6205 |   3.6617 |   0.0863 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 24 | 520 | 910,070,918 |  10.8240 |   0.0058 |   2.5055 |   0.0001 |   0.1423 |   0.3085 |   6.5571 |   3.7238 |   0.0863 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 16 | 520 | 910,070,918 |  10.8724 |   0.0058 |   2.7884 |   0.0003 |   0.1683 |   0.3237 |   6.0315 |   4.1819 |   0.1610 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 16 | 520 | 910,070,918 |  10.9156 |   0.0057 |   2.6475 |   0.0004 |   0.1664 |   0.3383 |   5.9937 |   4.2680 |   0.1432 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 16 | 520 | 910,070,918 |  10.9086 |   0.0057 |   3.2749 |   0.0003 |   0.1688 |   0.3214 |   6.0031 |   4.2623 |   0.1470 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 16 | 520 | 910,070,918 |  10.8635 |   0.0058 |   2.8920 |   0.0004 |   0.1688 |   0.3220 |   6.0045 |   4.2178 |   0.1443 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 16 | 520 | 910,070,918 |  10.9278 |   0.0058 |   4.0487 |   0.0003 |   0.1703 |   0.3218 |   6.0199 |   4.2628 |   0.1468 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 8 | 520 | 910,070,918 |  20.9801 |   0.0057 |   3.7951 |   0.0003 |   0.4203 |   0.4191 |   6.0717 |  13.8375 |   0.2254 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 8 | 520 | 910,070,918 |  20.9904 |   0.0058 |   3.6401 |   0.0004 |   0.4198 |   0.4257 |   6.0966 |  13.7804 |   0.2617 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 8 | 520 | 910,070,918 |  20.9944 |   0.0057 |   3.6256 |   0.0003 |   0.4178 |   0.4242 |   6.1049 |  13.7753 |   0.2661 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 8 | 520 | 910,070,918 |  21.0526 |   0.0057 |   3.5693 |   0.0003 |   0.4207 |   0.4231 |   6.1291 |  13.8085 |   0.2652 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 8 | 520 | 910,070,918 |  20.9939 |   0.0057 |   3.7448 |   0.0004 |   0.4172 |   0.4217 |   6.1069 |  13.7733 |   0.2686 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 40 | 31 | 1,911,754,892 |   1.2859 |   0.0059 |   6.3595 |   0.0003 |   0.0147 |   0.0374 |   0.8279 |   0.3017 |   0.0980 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 40 | 31 | 1,911,754,892 |   1.3157 |   0.0058 |   5.2926 |   0.0003 |   0.0145 |   0.0370 |   0.8516 |   0.3093 |   0.0972 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 40 | 31 | 1,911,754,892 |   1.3181 |   0.0057 |   5.7847 |   0.0003 |   0.0146 |   0.0376 |   0.8403 |   0.3219 |   0.0977 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 40 | 31 | 1,911,754,892 |   1.2986 |   0.0059 |   4.9148 |   0.0004 |   0.0146 |   0.0372 |   0.8358 |   0.3073 |   0.0973 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 40 | 31 | 1,911,754,892 |   1.3020 |   0.0058 |   5.5564 |   0.0003 |   0.0151 |   0.0374 |   0.8338 |   0.3112 |   0.0983 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 32 | 31 | 1,911,754,892 |   1.4491 |   0.0058 |   7.1659 |   0.0004 |   0.0160 |   0.0415 |   0.9046 |   0.3600 |   0.1209 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 32 | 31 | 1,911,754,892 |   1.4608 |   0.0057 |   6.5112 |   0.0004 |   0.0153 |   0.0407 |   0.9222 |   0.3546 |   0.1219 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 32 | 31 | 1,911,754,892 |   1.4848 |   0.0058 |   5.4836 |   0.0004 |   0.0162 |   0.0419 |   0.9447 |   0.3543 |   0.1216 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 32 | 31 | 1,911,754,892 |   1.4393 |   0.0057 |   6.6988 |   0.0004 |   0.0156 |   0.0409 |   0.9012 |   0.3548 |   0.1206 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 32 | 31 | 1,911,754,892 |   1.4198 |   0.0058 |   6.0931 |   0.0004 |   0.0152 |   0.0411 |   0.8709 |   0.3634 |   0.1230 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 24 | 31 | 1,911,754,892 |   1.8027 |   0.0058 |   6.0893 |   0.0001 |   0.0183 |   0.0505 |   1.0662 |   0.5014 |   0.1604 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 24 | 31 | 1,911,754,892 |   1.7599 |   0.0059 |   5.9206 |   0.0001 |   0.0180 |   0.0490 |   1.0461 |   0.4788 |   0.1619 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 24 | 31 | 1,911,754,892 |   1.8152 |   0.0057 |   6.7427 |   0.0001 |   0.0192 |   0.0499 |   1.0750 |   0.5050 |   0.1603 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 24 | 31 | 1,911,754,892 |   1.7910 |   0.0058 |   5.8088 |   0.0001 |   0.0183 |   0.0493 |   1.0771 |   0.4803 |   0.1602 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 24 | 31 | 1,911,754,892 |   1.8024 |   0.0057 |   6.3332 |   0.0001 |   0.0183 |   0.0496 |   1.0727 |   0.4953 |   0.1607 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 16 | 31 | 1,911,754,892 |   1.9711 |   0.0063 |   5.9471 |   0.0003 |   0.0184 |   0.0651 |   1.1126 |   0.5222 |   0.2461 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 16 | 31 | 1,911,754,892 |   2.0387 |   0.0059 |   6.9758 |   0.0003 |   0.0199 |   0.0660 |   1.1543 |   0.5408 |   0.2515 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 16 | 31 | 1,911,754,892 |   2.0224 |   0.0057 |   6.1685 |   0.0003 |   0.0193 |   0.0649 |   1.1408 |   0.5379 |   0.2534 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 16 | 31 | 1,911,754,892 |   2.0201 |   0.0058 |   6.7097 |   0.0004 |   0.0197 |   0.0673 |   1.1264 |   0.5535 |   0.2470 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 16 | 31 | 1,911,754,892 |   1.9489 |   0.0058 |   6.9166 |   0.0004 |   0.0181 |   0.0642 |   1.1092 |   0.5019 |   0.2493 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 8 | 31 | 1,911,754,892 |   3.8864 |   0.0062 |   7.2100 |   0.0003 |   0.0262 |   0.1120 |   1.4543 |   1.7286 |   0.5586 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 8 | 31 | 1,911,754,892 |   3.8044 |   0.0062 |   7.2957 |   0.0003 |   0.0248 |   0.1142 |   1.4322 |   1.7572 |   0.4695 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 8 | 31 | 1,911,754,892 |   3.8199 |   0.0061 |   6.6105 |   0.0003 |   0.0253 |   0.1096 |   1.4464 |   1.7653 |   0.4670 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 8 | 31 | 1,911,754,892 |   3.9145 |   0.0061 |   5.4617 |   0.0003 |   0.0256 |   0.1105 |   1.4484 |   1.7711 |   0.5525 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 8 | 31 | 1,911,754,892 |   3.8119 |   0.0062 |   5.4327 |   0.0003 |   0.0249 |   0.1134 |   1.4333 |   1.7603 |   0.4735 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
CUDA AWARE MPI - TWO PASS
------------------------------------------------------------------------------------
CC tc_semi_naive.cu -o tc_semi_naive.out -lm
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 40 | 31 | 884,179,859 |   0.9766 |   0.0166 |   2.0119 |   0.0001 |   0.0100 |   0.0987 |   0.5789 |   0.2265 |   0.0457 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 40 | 31 | 884,179,859 |   0.9744 |   0.0058 |   1.8701 |   0.0001 |   0.0097 |   0.0961 |   0.5960 |   0.2206 |   0.0461 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 40 | 31 | 884,179,859 |   0.9753 |   0.0057 |   1.5099 |   0.0001 |   0.0099 |   0.0983 |   0.5943 |   0.2207 |   0.0464 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 40 | 31 | 884,179,859 |   0.9708 |   0.0058 |   2.0809 |   0.0001 |   0.0102 |   0.1007 |   0.5811 |   0.2275 |   0.0454 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 40 | 31 | 884,179,859 |   0.9602 |   0.0058 |   1.6559 |   0.0001 |   0.0099 |   0.0968 |   0.5835 |   0.2185 |   0.0458 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 32 | 31 | 884,179,859 |   1.1255 |   0.0061 |   2.0302 |   0.0001 |   0.0108 |   0.1048 |   0.6951 |   0.2518 |   0.0568 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 32 | 31 | 884,179,859 |   1.1637 |   0.0058 |   1.4969 |   0.0001 |   0.0108 |   0.1040 |   0.7159 |   0.2707 |   0.0565 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 32 | 31 | 884,179,859 |   1.1294 |   0.0058 |   2.1890 |   0.0001 |   0.0107 |   0.1023 |   0.6965 |   0.2580 |   0.0560 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 32 | 31 | 884,179,859 |   1.1207 |   0.0058 |   2.2036 |   0.0001 |   0.0107 |   0.1027 |   0.6928 |   0.2525 |   0.0562 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 32 | 31 | 884,179,859 |   1.1293 |   0.0057 |   1.7200 |   0.0001 |   0.0107 |   0.1068 |   0.7018 |   0.2478 |   0.0564 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 24 | 31 | 884,179,859 |   1.2598 |   0.0057 |   2.4332 |   0.0001 |   0.0140 |   0.1340 |   0.7257 |   0.3071 |   0.0732 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 24 | 31 | 884,179,859 |   1.1529 |   0.0058 |   2.6339 |   0.0001 |   0.0119 |   0.1193 |   0.6665 |   0.2751 |   0.0743 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 24 | 31 | 884,179,859 |   1.1605 |   0.0058 |   2.1401 |   0.0001 |   0.0118 |   0.1180 |   0.6842 |   0.2669 |   0.0737 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 24 | 31 | 884,179,859 |   1.1665 |   0.0056 |   3.3780 |   0.0001 |   0.0118 |   0.1161 |   0.6868 |   0.2719 |   0.0742 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 24 | 31 | 884,179,859 |   1.2233 |   0.0058 |   1.8909 |   0.0001 |   0.0115 |   0.1172 |   0.7110 |   0.3036 |   0.0741 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 16 | 31 | 884,179,859 |   1.2341 |   0.0059 |   2.7796 |   0.0001 |   0.0134 |   0.1500 |   0.6677 |   0.2887 |   0.1083 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 16 | 31 | 884,179,859 |   1.2113 |   0.0057 |   3.1600 |   0.0001 |   0.0131 |   0.1478 |   0.6467 |   0.2861 |   0.1119 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 16 | 31 | 884,179,859 |   1.1987 |   0.0058 |   2.6140 |   0.0001 |   0.0135 |   0.1488 |   0.6394 |   0.2818 |   0.1093 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 16 | 31 | 884,179,859 |   1.2241 |   0.0058 |   3.3152 |   0.0001 |   0.0134 |   0.1487 |   0.6612 |   0.2850 |   0.1099 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 16 | 31 | 884,179,859 |   1.2657 |   0.0057 |   2.8827 |   0.0001 |   0.0134 |   0.1455 |   0.6729 |   0.3195 |   0.1086 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 8 | 31 | 884,179,859 |   1.6084 |   0.0059 |   3.8300 |   0.0001 |   0.0170 |   0.2226 |   0.7473 |   0.3862 |   0.2294 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 8 | 31 | 884,179,859 |   1.5977 |   0.0057 |   3.5167 |   0.0001 |   0.0173 |   0.2176 |   0.7348 |   0.3874 |   0.2347 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 8 | 31 | 884,179,859 |   1.6017 |   0.0057 |   3.4370 |   0.0001 |   0.0184 |   0.2223 |   0.7293 |   0.3894 |   0.2366 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 8 | 31 | 884,179,859 |   1.5955 |   0.0055 |   3.6089 |   0.0001 |   0.0172 |   0.2200 |   0.7315 |   0.3851 |   0.2361 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 8 | 31 | 884,179,859 |   1.6075 |   0.0057 |   3.5575 |   0.0001 |   0.0173 |   0.2241 |   0.7376 |   0.3843 |   0.2384 | data/data_147892.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 40 | 606 | 871,365,688 |  10.9583 |   0.0059 |   2.2795 |   0.0001 |   0.0607 |   0.1540 |   7.4783 |   3.1863 |   0.0730 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 40 | 606 | 871,365,688 |  10.9204 |   0.0058 |   1.6917 |   0.0001 |   0.0612 |   0.1523 |   7.4585 |   3.1707 |   0.0718 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 40 | 606 | 871,365,688 |  10.9013 |   0.0058 |   2.0668 |   0.0001 |   0.0611 |   0.1531 |   7.4529 |   3.1558 |   0.0724 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 40 | 606 | 871,365,688 |  10.7871 |   0.0058 |   1.6514 |   0.0001 |   0.0607 |   0.1553 |   7.3932 |   3.0992 |   0.0729 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 40 | 606 | 871,365,688 |  10.8517 |   0.0058 |   2.0015 |   0.0001 |   0.0606 |   0.1532 |   7.4574 |   3.1020 |   0.0726 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 32 | 606 | 871,365,688 |  10.2981 |   0.0060 |   2.3200 |   0.0001 |   0.0507 |   0.2110 |   6.9458 |   2.9936 |   0.0910 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 32 | 606 | 871,365,688 |  10.3097 |   0.0096 |   2.2297 |   0.0001 |   0.0505 |   0.2097 |   6.9513 |   2.9972 |   0.0915 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 32 | 606 | 871,365,688 |  10.2946 |   0.0057 |   1.7502 |   0.0001 |   0.0504 |   0.2084 |   6.9507 |   2.9878 |   0.0916 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 32 | 606 | 871,365,688 |  10.0610 |   0.0058 |   2.4160 |   0.0001 |   0.0504 |   0.2082 |   6.8637 |   2.8418 |   0.0910 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 32 | 606 | 871,365,688 |  10.3676 |   0.0058 |   2.2412 |   0.0001 |   0.0506 |   0.2107 |   6.9734 |   3.0347 |   0.0922 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 24 | 606 | 871,365,688 |  10.7032 |   0.0060 |   2.6913 |   0.0001 |   0.0501 |   0.3301 |   6.5578 |   3.6417 |   0.1176 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 24 | 606 | 871,365,688 |  10.5206 |   0.0057 |   2.5484 |   0.0001 |   0.0503 |   0.3344 |   6.4831 |   3.5300 |   0.1171 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 24 | 606 | 871,365,688 |  10.7193 |   0.0058 |   2.8996 |   0.0001 |   0.0506 |   0.3343 |   6.5658 |   3.6447 |   0.1181 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 24 | 606 | 871,365,688 |  10.4935 |   0.0057 |   2.0627 |   0.0001 |   0.0507 |   0.3335 |   6.4215 |   3.5653 |   0.1167 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 24 | 606 | 871,365,688 |  10.6805 |   0.0058 |   2.4293 |   0.0001 |   0.0510 |   0.3398 |   6.5970 |   3.5699 |   0.1169 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 16 | 606 | 871,365,688 |  12.1094 |   0.0058 |   2.4812 |   0.0001 |   0.1201 |   0.3869 |   6.0544 |   5.4037 |   0.1385 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 16 | 606 | 871,365,688 |  11.4234 |   0.0057 |   2.9366 |   0.0001 |   0.1130 |   0.3635 |   6.3319 |   4.4681 |   0.1411 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 16 | 606 | 871,365,688 |  11.4175 |   0.0056 |   2.7702 |   0.0001 |   0.1116 |   0.3698 |   6.3164 |   4.4734 |   0.1406 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 16 | 606 | 871,365,688 |  11.4158 |   0.0058 |   2.2441 |   0.0001 |   0.1114 |   0.3640 |   6.3038 |   4.4664 |   0.1643 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 16 | 606 | 871,365,688 |  11.5115 |   0.0057 |   2.2447 |   0.0001 |   0.1171 |   0.3761 |   6.3389 |   4.5333 |   0.1404 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 8 | 606 | 871,365,688 |  20.3027 |   0.0058 |   3.4958 |   0.0001 |   0.2881 |   0.5228 |   6.7107 |  12.5409 |   0.2343 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 8 | 606 | 871,365,688 |  19.8459 |   0.0058 |   3.7820 |   0.0001 |   0.2952 |   0.5297 |   6.2515 |  12.5278 |   0.2358 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 8 | 606 | 871,365,688 |  19.8839 |   0.0058 |   3.9802 |   0.0001 |   0.2967 |   0.5193 |   6.0115 |  12.7763 |   0.2743 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 8 | 606 | 871,365,688 |  19.9438 |   0.0057 |   2.9082 |   0.0001 |   0.2879 |   0.5241 |   6.0362 |  12.8548 |   0.2351 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 8 | 606 | 871,365,688 |  19.9637 |   0.0058 |   3.6277 |   0.0001 |   0.2970 |   0.5279 |   6.0279 |  12.8319 |   0.2732 | data/data_165435.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 40 | 247 | 1,669,750,513 |   7.6558 |   0.0060 |   3.5403 |   0.0001 |   0.0755 |   0.3683 |   5.0952 |   2.0155 |   0.0952 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 40 | 247 | 1,669,750,513 |   7.5746 |   0.0058 |   3.9385 |   0.0001 |   0.0745 |   0.3710 |   5.0361 |   1.9917 |   0.0954 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 40 | 247 | 1,669,750,513 |   7.6971 |   0.0058 |   4.5413 |   0.0001 |   0.0741 |   0.3684 |   5.1392 |   2.0125 |   0.0970 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 40 | 247 | 1,669,750,513 |   7.6164 |   0.0058 |   4.1997 |   0.0001 |   0.0744 |   0.3604 |   5.0809 |   1.9990 |   0.0959 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 40 | 247 | 1,669,750,513 |   7.6530 |   0.0057 |   3.9553 |   0.0001 |   0.0739 |   0.3624 |   5.1136 |   2.0027 |   0.0947 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 32 | 247 | 1,669,750,513 |   6.7378 |   0.0059 |   4.0331 |   0.0001 |   0.0917 |   0.3929 |   4.1027 |   2.0279 |   0.1166 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 32 | 247 | 1,669,750,513 |   6.9534 |   0.0058 |   5.5911 |   0.0001 |   0.0896 |   0.3975 |   4.2141 |   2.1343 |   0.1120 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 32 | 247 | 1,669,750,513 |   6.9209 |   0.0058 |   5.3093 |   0.0001 |   0.0903 |   0.3972 |   4.1980 |   2.1137 |   0.1159 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 32 | 247 | 1,669,750,513 |   6.9838 |   0.0058 |   4.4506 |   0.0001 |   0.0900 |   0.4061 |   4.2267 |   2.1395 |   0.1156 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 32 | 247 | 1,669,750,513 |   6.8985 |   0.0058 |   4.7726 |   0.0001 |   0.0893 |   0.3951 |   4.1837 |   2.1089 |   0.1156 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 24 | 247 | 1,669,750,513 |   7.3751 |   0.0058 |   4.6463 |   0.0001 |   0.1237 |   0.4480 |   4.0056 |   2.6334 |   0.1585 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 24 | 247 | 1,669,750,513 |   7.3307 |   0.0058 |   4.9279 |   0.0001 |   0.1237 |   0.4484 |   3.9974 |   2.5985 |   0.1568 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 24 | 247 | 1,669,750,513 |   7.3548 |   0.0057 |   4.6983 |   0.0001 |   0.1227 |   0.4436 |   4.0472 |   2.5811 |   0.1545 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 24 | 247 | 1,669,750,513 |   7.3124 |   0.0058 |   4.3037 |   0.0001 |   0.1253 |   0.4450 |   3.9950 |   2.5871 |   0.1542 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 24 | 247 | 1,669,750,513 |   7.3321 |   0.0059 |   4.9267 |   0.0001 |   0.1216 |   0.4543 |   4.0336 |   2.5610 |   0.1556 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 16 | 247 | 1,669,750,513 |   8.7046 |   0.0059 |   4.2545 |   0.0001 |   0.1526 |   0.5870 |   3.1490 |   4.5424 |   0.2677 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 16 | 247 | 1,669,750,513 |   8.7407 |   0.0057 |   4.3416 |   0.0001 |   0.1541 |   0.5905 |   3.2099 |   4.5483 |   0.2321 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 16 | 247 | 1,669,750,513 |   9.0580 |   0.0057 |   4.3072 |   0.0001 |   0.1543 |   0.5889 |   3.4984 |   4.5508 |   0.2599 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 16 | 247 | 1,669,750,513 |   8.7143 |   0.0057 |   3.7437 |   0.0001 |   0.1471 |   0.5969 |   3.2052 |   4.4974 |   0.2619 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 16 | 247 | 1,669,750,513 |   8.7270 |   0.0057 |   3.5770 |   0.0001 |   0.1574 |   0.5810 |   3.1547 |   4.5690 |   0.2591 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 8 | 247 | 1,669,750,513 |  16.6330 |   0.0058 |   5.1628 |   0.0001 |   0.3570 |   0.7838 |   3.2063 |  11.7772 |   0.5029 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 8 | 247 | 1,669,750,513 |  16.5837 |   0.0058 |   4.4299 |   0.0001 |   0.3579 |   0.7743 |   3.1580 |  11.7878 |   0.4999 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 8 | 247 | 1,669,750,513 |  16.5806 |   0.0057 |   5.3743 |   0.0001 |   0.3280 |   0.7753 |   3.1527 |  11.8260 |   0.4929 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 8 | 247 | 1,669,750,513 |  16.8084 |   0.0058 |   5.4875 |   0.0001 |   0.3473 |   0.7700 |   3.1738 |  12.0254 |   0.4861 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 8 | 247 | 1,669,750,513 |  16.5856 |   0.0057 |   5.0770 |   0.0001 |   0.3485 |   0.7690 |   3.1268 |  11.8264 |   0.5090 | data/data_409593.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 40 | 520 | 910,070,918 |   9.6546 |   0.0057 |   1.7244 |   0.0001 |   0.0909 |   0.2868 |   6.4406 |   2.7778 |   0.0528 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 40 | 520 | 910,070,918 |   9.7622 |   0.0057 |   1.8902 |   0.0001 |   0.0907 |   0.2797 |   6.5275 |   2.8062 |   0.0523 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 40 | 520 | 910,070,918 |   9.7282 |   0.0057 |   2.1020 |   0.0001 |   0.0909 |   0.2794 |   6.4743 |   2.8255 |   0.0524 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 40 | 520 | 910,070,918 |   9.7235 |   0.0057 |   2.5049 |   0.0001 |   0.0907 |   0.2807 |   6.4827 |   2.8036 |   0.0600 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 40 | 520 | 910,070,918 |   9.6881 |   0.0057 |   2.2574 |   0.0001 |   0.0912 |   0.2805 |   6.4166 |   2.8414 |   0.0526 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 32 | 520 | 910,070,918 |  10.1600 |   0.0057 |   2.3401 |   0.0001 |   0.1040 |   0.3425 |   6.6371 |   3.0051 |   0.0656 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 32 | 520 | 910,070,918 |  10.1420 |   0.0057 |   2.5653 |   0.0001 |   0.1037 |   0.3471 |   6.6196 |   3.0008 |   0.0649 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 32 | 520 | 910,070,918 |  10.1360 |   0.0058 |   2.4593 |   0.0001 |   0.1030 |   0.3414 |   6.5959 |   3.0248 |   0.0650 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 32 | 520 | 910,070,918 |  10.1497 |   0.0057 |   2.2930 |   0.0001 |   0.1038 |   0.3436 |   6.6206 |   3.0107 |   0.0651 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 32 | 520 | 910,070,918 |   9.9032 |   0.0057 |   2.1368 |   0.0001 |   0.1030 |   0.3319 |   6.4999 |   2.8967 |   0.0660 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 24 | 520 | 910,070,918 |   9.9474 |   0.0057 |   3.4059 |   0.0001 |   0.1272 |   0.4169 |   5.8291 |   3.4769 |   0.0916 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 24 | 520 | 910,070,918 |   9.9556 |   0.0058 |   2.8121 |   0.0001 |   0.1280 |   0.4216 |   5.8414 |   3.4671 |   0.0916 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 24 | 520 | 910,070,918 |   9.9364 |   0.0058 |   2.9456 |   0.0001 |   0.1273 |   0.4176 |   5.8364 |   3.4584 |   0.0908 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 24 | 520 | 910,070,918 |  10.0264 |   0.0058 |   2.3372 |   0.0001 |   0.1292 |   0.4198 |   5.8213 |   3.5607 |   0.0895 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 24 | 520 | 910,070,918 |   9.8779 |   0.0058 |   2.6424 |   0.0001 |   0.1291 |   0.4235 |   5.7889 |   3.4385 |   0.0921 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 16 | 520 | 910,070,918 |  10.8191 |   0.0057 |   2.9210 |   0.0004 |   0.1523 |   0.4439 |   5.5562 |   4.5203 |   0.1403 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 16 | 520 | 910,070,918 |  10.8049 |   0.0057 |   3.4954 |   0.0004 |   0.1516 |   0.4413 |   5.4896 |   4.5767 |   0.1398 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 16 | 520 | 910,070,918 |  11.0353 |   0.0057 |   3.3400 |   0.0003 |   0.1569 |   0.4529 |   5.5152 |   4.7388 |   0.1655 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 16 | 520 | 910,070,918 |  10.8781 |   0.0056 |   3.4800 |   0.0003 |   0.1517 |   0.4530 |   5.5007 |   4.6015 |   0.1652 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 16 | 520 | 910,070,918 |  10.8757 |   0.0057 |   2.8648 |   0.0004 |   0.1504 |   0.4480 |   5.4951 |   4.6128 |   0.1633 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 8 | 520 | 910,070,918 |  21.2552 |   0.0057 |   3.6104 |   0.0003 |   0.4558 |   0.6311 |   5.5388 |  14.3581 |   0.2653 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 8 | 520 | 910,070,918 |  21.2663 |   0.0058 |   3.7866 |   0.0003 |   0.4550 |   0.6297 |   5.5149 |  14.3968 |   0.2639 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 8 | 520 | 910,070,918 |  22.7257 |   0.0056 |   3.4609 |   0.0003 |   0.4383 |   0.6263 |   6.6013 |  14.8288 |   0.2251 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 8 | 520 | 910,070,918 |  21.2411 |   0.0058 |   3.6135 |   0.0003 |   0.4542 |   0.6336 |   5.5084 |  14.3740 |   0.2648 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 8 | 520 | 910,070,918 |  21.2143 |   0.0057 |   3.9772 |   0.0004 |   0.4508 |   0.6275 |   5.5128 |  14.3526 |   0.2646 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 40 | 31 | 1,911,754,892 |   1.5559 |   0.0057 |   6.3585 |   0.0003 |   0.0140 |   0.2170 |   0.9066 |   0.3159 |   0.0962 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 40 | 31 | 1,911,754,892 |   1.5605 |   0.0058 |   5.9325 |   0.0003 |   0.0136 |   0.2205 |   0.9052 |   0.3180 |   0.0971 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 40 | 31 | 1,911,754,892 |   1.5644 |   0.0065 |   6.1325 |   0.0003 |   0.0136 |   0.2213 |   0.9108 |   0.3146 |   0.0972 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 40 | 31 | 1,911,754,892 |   1.5752 |   0.0058 |   5.9284 |   0.0003 |   0.0138 |   0.2251 |   0.9141 |   0.3188 |   0.0973 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 40 | 31 | 1,911,754,892 |   1.5619 |   0.0058 |   5.2275 |   0.0003 |   0.0140 |   0.2255 |   0.9002 |   0.3194 |   0.0967 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 32 | 31 | 1,911,754,892 |   1.7205 |   0.0058 |   7.1865 |   0.0004 |   0.0152 |   0.2554 |   0.9600 |   0.3630 |   0.1208 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 32 | 31 | 1,911,754,892 |   1.7918 |   0.0057 |   5.6114 |   0.0004 |   0.0155 |   0.2521 |   1.0133 |   0.3845 |   0.1203 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 32 | 31 | 1,911,754,892 |   1.7205 |   0.0058 |   6.5187 |   0.0004 |   0.0153 |   0.2497 |   0.9670 |   0.3595 |   0.1228 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 32 | 31 | 1,911,754,892 |   1.7135 |   0.0059 |   7.4929 |   0.0003 |   0.0153 |   0.2454 |   0.9679 |   0.3580 |   0.1207 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 32 | 31 | 1,911,754,892 |   1.7149 |   0.0057 |   6.6237 |   0.0004 |   0.0154 |   0.2405 |   0.9758 |   0.3564 |   0.1207 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 24 | 31 | 1,911,754,892 |   1.9898 |   0.0057 |   6.4627 |   0.0002 |   0.0193 |   0.2873 |   1.0541 |   0.4589 |   0.1644 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 24 | 31 | 1,911,754,892 |   2.0055 |   0.0056 |   6.0165 |   0.0002 |   0.0186 |   0.2878 |   1.0530 |   0.4762 |   0.1640 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 24 | 31 | 1,911,754,892 |   1.9967 |   0.0057 |   6.1502 |   0.0002 |   0.0183 |   0.2956 |   1.0389 |   0.4746 |   0.1634 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 24 | 31 | 1,911,754,892 |   2.0219 |   0.0057 |   5.7211 |   0.0002 |   0.0194 |   0.2901 |   1.0528 |   0.4918 |   0.1618 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 24 | 31 | 1,911,754,892 |   1.9535 |   0.0057 |   6.4437 |   0.0002 |   0.0179 |   0.2900 |   1.0228 |   0.4530 |   0.1638 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 16 | 31 | 1,911,754,892 |   2.5472 |   0.0057 |   7.8457 |   0.0003 |   0.0241 |   0.3852 |   1.2531 |   0.6293 |   0.2494 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 16 | 31 | 1,911,754,892 |   2.5726 |   0.0057 |   6.7051 |   0.0003 |   0.0238 |   0.3800 |   1.3031 |   0.6231 |   0.2366 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 16 | 31 | 1,911,754,892 |   2.5327 |   0.0059 |   6.3715 |   0.0004 |   0.0243 |   0.3831 |   1.2431 |   0.6336 |   0.2424 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 16 | 31 | 1,911,754,892 |   2.6082 |   0.0058 |   6.7811 |   0.0003 |   0.0254 |   0.3763 |   1.2650 |   0.6984 |   0.2370 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 16 | 31 | 1,911,754,892 |   2.5431 |   0.0057 |   7.0548 |   0.0003 |   0.0242 |   0.3840 |   1.2497 |   0.6339 |   0.2453 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 8 | 31 | 1,911,754,892 |   4.2500 |   0.0061 |   7.7469 |   0.0003 |   0.0222 |   0.6172 |   1.5937 |   1.5170 |   0.4935 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 8 | 31 | 1,911,754,892 |   4.2565 |   0.0061 |   7.1459 |   0.0003 |   0.0234 |   0.6217 |   1.5581 |   1.5075 |   0.5395 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 8 | 31 | 1,911,754,892 |   4.1872 |   0.0061 |   5.4754 |   0.0003 |   0.0235 |   0.6152 |   1.5685 |   1.5023 |   0.4712 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 8 | 31 | 1,911,754,892 |   4.2236 |   0.0063 |   5.7059 |   0.0003 |   0.0244 |   0.6181 |   1.5543 |   1.5453 |   0.4749 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 8 | 31 | 1,911,754,892 |   4.2326 |   0.0062 |   7.0196 |   0.0003 |   0.0237 |   0.6224 |   1.5595 |   1.5174 |   0.5031 | data/com-dblpungraph.bin_tc.bin |
rm -f data/*_tc.bin*
Job ended at: 2024-08-08 15:03:49
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> JOB ENDED >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
```
