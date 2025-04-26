```
cat tc-merged.output
Polaris job started at: 2024-08-15 09:09:09
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> JOB STARTED >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
CC tc.cu -o tc.out -lm -O3
TRADITIONAL MPI - SORTING
------------------------------------------------------------------------------------
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 0 1 1
| 147,892 | 40 | 31 | 884,179,859 |   1.2405 |   0.7023 |   0.2165 |   0.0006 |   0.0171 |   0.0206 |   0.3097 |   0.0416 |   0.1039 |   0.0446 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 0 1 1
| 147,892 | 40 | 31 | 884,179,859 |   1.2843 |   0.7629 |   0.0052 |   0.0001 |   0.0167 |   0.0212 |   0.2949 |   0.0405 |   0.1034 |   0.0446 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 0 1 1
| 147,892 | 40 | 31 | 884,179,859 |   1.2217 |   0.7060 |   0.0044 |   0.0001 |   0.0171 |   0.0203 |   0.2876 |   0.0414 |   0.1041 |   0.0451 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 0 1 1
| 147,892 | 40 | 31 | 884,179,859 |   1.2203 |   0.7026 |   0.0033 |   0.0001 |   0.0171 |   0.0204 |   0.2899 |   0.0402 |   0.1048 |   0.0452 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 0 1 1
| 147,892 | 40 | 31 | 884,179,859 |   1.2277 |   0.7064 |   0.0032 |   0.0001 |   0.0173 |   0.0206 |   0.2932 |   0.0406 |   0.1045 |   0.0449 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 0 1 1
| 147,892 | 32 | 31 | 884,179,859 |   1.2919 |   0.6968 |   0.0054 |   0.0001 |   0.0179 |   0.0221 |   0.3414 |   0.0474 |   0.1102 |   0.0560 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 0 1 1
| 147,892 | 32 | 31 | 884,179,859 |   1.3017 |   0.7047 |   0.0033 |   0.0001 |   0.0182 |   0.0220 |   0.3425 |   0.0465 |   0.1128 |   0.0550 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 0 1 1
| 147,892 | 32 | 31 | 884,179,859 |   1.2873 |   0.6995 |   0.0032 |   0.0001 |   0.0185 |   0.0218 |   0.3386 |   0.0457 |   0.1076 |   0.0556 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 0 1 1
| 147,892 | 32 | 31 | 884,179,859 |   1.2984 |   0.7037 |   0.0034 |   0.0001 |   0.0183 |   0.0218 |   0.3428 |   0.0460 |   0.1098 |   0.0559 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 0 1 1
| 147,892 | 32 | 31 | 884,179,859 |   1.3558 |   0.7609 |   0.0033 |   0.0001 |   0.0185 |   0.0221 |   0.3453 |   0.0462 |   0.1077 |   0.0550 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 0 1 1
| 147,892 | 24 | 31 | 884,179,859 |   1.4509 |   0.6988 |   0.0052 |   0.0001 |   0.0207 |   0.0231 |   0.4378 |   0.0545 |   0.1436 |   0.0722 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 0 1 1
| 147,892 | 24 | 31 | 884,179,859 |   1.4385 |   0.6981 |   0.0031 |   0.0001 |   0.0205 |   0.0236 |   0.4377 |   0.0544 |   0.1315 |   0.0726 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 0 1 1
| 147,892 | 24 | 31 | 884,179,859 |   1.4435 |   0.7008 |   0.0034 |   0.0001 |   0.0206 |   0.0235 |   0.4409 |   0.0546 |   0.1314 |   0.0717 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 0 1 1
| 147,892 | 24 | 31 | 884,179,859 |   1.4399 |   0.7013 |   0.0031 |   0.0001 |   0.0203 |   0.0231 |   0.4370 |   0.0545 |   0.1314 |   0.0722 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 0 1 1
| 147,892 | 24 | 31 | 884,179,859 |   1.4388 |   0.6987 |   0.0033 |   0.0001 |   0.0204 |   0.0230 |   0.4365 |   0.0546 |   0.1337 |   0.0718 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 0 1 1
| 147,892 | 16 | 31 | 884,179,859 |   1.7371 |   0.7042 |   0.0052 |   0.0001 |   0.0254 |   0.0254 |   0.6338 |   0.0728 |   0.1680 |   0.1073 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 0 1 1
| 147,892 | 16 | 31 | 884,179,859 |   1.7421 |   0.6969 |   0.0028 |   0.0001 |   0.0254 |   0.0261 |   0.6381 |   0.0731 |   0.1759 |   0.1064 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 0 1 1
| 147,892 | 16 | 31 | 884,179,859 |   1.7537 |   0.7052 |   0.0029 |   0.0001 |   0.0255 |   0.0263 |   0.6366 |   0.0731 |   0.1803 |   0.1065 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 0 1 1
| 147,892 | 16 | 31 | 884,179,859 |   1.7430 |   0.7042 |   0.0033 |   0.0001 |   0.0255 |   0.0262 |   0.6368 |   0.0718 |   0.1712 |   0.1072 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 0 1 1
| 147,892 | 16 | 31 | 884,179,859 |   1.7427 |   0.6995 |   0.0032 |   0.0001 |   0.0254 |   0.0259 |   0.6386 |   0.0732 |   0.1732 |   0.1069 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 0 1 1
| 147,892 | 8 | 31 | 884,179,859 |   2.6768 |   0.6975 |   0.0046 |   0.0001 |   0.0385 |   0.0366 |   1.2497 |   0.1281 |   0.3128 |   0.2136 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 0 1 1
| 147,892 | 8 | 31 | 884,179,859 |   2.6794 |   0.6943 |   0.0032 |   0.0001 |   0.0390 |   0.0376 |   1.2508 |   0.1301 |   0.3185 |   0.2091 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 0 1 1
| 147,892 | 8 | 31 | 884,179,859 |   2.6699 |   0.7016 |   0.0029 |   0.0001 |   0.0386 |   0.0372 |   1.2531 |   0.1269 |   0.3015 |   0.2109 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 0 1 1
| 147,892 | 8 | 31 | 884,179,859 |   2.6741 |   0.6987 |   0.0029 |   0.0001 |   0.0394 |   0.0372 |   1.2494 |   0.1276 |   0.3117 |   0.2100 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 0 1 1
| 147,892 | 8 | 31 | 884,179,859 |   2.6731 |   0.7030 |   0.0031 |   0.0001 |   0.0396 |   0.0370 |   1.2488 |   0.1265 |   0.3062 |   0.2120 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 0 1 1
| 165,435 | 40 | 606 | 871,365,688 |   4.3828 |   0.7018 |   0.0093 |   0.0001 |   0.0910 |   0.1913 |   0.3458 |   0.1222 |   2.8866 |   0.0441 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 0 1 1
| 165,435 | 40 | 606 | 871,365,688 |   4.3843 |   0.7044 |   0.0049 |   0.0001 |   0.0909 |   0.1909 |   0.3461 |   0.1241 |   2.8715 |   0.0563 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 0 1 1
| 165,435 | 40 | 606 | 871,365,688 |   4.3832 |   0.7003 |   0.0033 |   0.0001 |   0.0905 |   0.1932 |   0.3467 |   0.1233 |   2.8845 |   0.0446 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 0 1 1
| 165,435 | 40 | 606 | 871,365,688 |   4.3854 |   0.6995 |   0.0033 |   0.0001 |   0.0905 |   0.1889 |   0.3458 |   0.1226 |   2.8819 |   0.0560 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 0 1 1
| 165,435 | 40 | 606 | 871,365,688 |   4.3943 |   0.7092 |   0.0033 |   0.0001 |   0.0909 |   0.1915 |   0.3407 |   0.1252 |   2.8907 |   0.0460 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 0 1 1
| 165,435 | 32 | 606 | 871,365,688 |   4.8229 |   0.6997 |   0.0049 |   0.0001 |   0.0998 |   0.2223 |   0.3392 |   0.1764 |   3.2312 |   0.0542 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 0 1 1
| 165,435 | 32 | 606 | 871,365,688 |   4.8272 |   0.6822 |   0.0034 |   0.0001 |   0.0989 |   0.2206 |   0.3471 |   0.1842 |   3.2388 |   0.0552 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 0 1 1
| 165,435 | 32 | 606 | 871,365,688 |   4.8188 |   0.6937 |   0.0033 |   0.0001 |   0.0992 |   0.2206 |   0.3422 |   0.1708 |   3.2371 |   0.0551 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 0 1 1
| 165,435 | 32 | 606 | 871,365,688 |   4.7889 |   0.6829 |   0.0045 |   0.0001 |   0.0971 |   0.2189 |   0.3382 |   0.1708 |   3.2268 |   0.0542 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 0 1 1
| 165,435 | 32 | 606 | 871,365,688 |   4.8350 |   0.6922 |   0.0033 |   0.0001 |   0.0974 |   0.2220 |   0.3472 |   0.1782 |   3.2420 |   0.0559 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 0 1 1
| 165,435 | 24 | 606 | 871,365,688 |   6.4959 |   0.6852 |   0.0052 |   0.0001 |   0.0871 |   0.2941 |   0.3769 |   0.2482 |   4.7084 |   0.0960 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 0 1 1
| 165,435 | 24 | 606 | 871,365,688 |   6.5150 |   0.6967 |   0.0034 |   0.0001 |   0.0871 |   0.2825 |   0.3722 |   0.2534 |   4.7478 |   0.0752 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 0 1 1
| 165,435 | 24 | 606 | 871,365,688 |   6.4762 |   0.6974 |   0.0032 |   0.0001 |   0.0864 |   0.2862 |   0.3641 |   0.2343 |   4.7349 |   0.0729 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 0 1 1
| 165,435 | 24 | 606 | 871,365,688 |   6.4998 |   0.6873 |   0.0031 |   0.0001 |   0.0856 |   0.2854 |   0.3699 |   0.2426 |   4.7346 |   0.0944 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 0 1 1
| 165,435 | 24 | 606 | 871,365,688 |   6.5247 |   0.7012 |   0.0032 |   0.0001 |   0.0878 |   0.2835 |   0.3728 |   0.2548 |   4.7334 |   0.0911 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 0 1 1
| 165,435 | 16 | 606 | 871,365,688 |   9.6528 |   0.6906 |   0.0046 |   0.0001 |   0.1374 |   0.2991 |   0.4493 |   0.3158 |   7.6531 |   0.1075 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 0 1 1
| 165,435 | 16 | 606 | 871,365,688 |   9.6808 |   0.6968 |   0.0032 |   0.0001 |   0.1342 |   0.2974 |   0.4524 |   0.3450 |   7.6492 |   0.1057 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 0 1 1
| 165,435 | 16 | 606 | 871,365,688 |   9.5990 |   0.6911 |   0.0029 |   0.0001 |   0.1369 |   0.2962 |   0.4563 |   0.2916 |   7.6208 |   0.1060 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 0 1 1
| 165,435 | 16 | 606 | 871,365,688 |   9.6062 |   0.6946 |   0.0031 |   0.0001 |   0.1372 |   0.2951 |   0.4504 |   0.3033 |   7.6206 |   0.1050 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 0 1 1
| 165,435 | 16 | 606 | 871,365,688 |   9.6663 |   0.6929 |   0.0032 |   0.0001 |   0.1360 |   0.3124 |   0.4767 |   0.3243 |   7.6168 |   0.1070 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 0 1 1
| 165,435 | 8 | 606 | 871,365,688 |  19.4687 |   0.6908 |   0.0055 |   0.0001 |   0.4761 |   0.4693 |   0.9887 |   0.3599 |  16.2771 |   0.2066 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 0 1 1
| 165,435 | 8 | 606 | 871,365,688 |  19.4915 |   0.6965 |   0.0036 |   0.0001 |   0.4862 |   0.4662 |   0.9971 |   0.3493 |  16.2473 |   0.2489 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 0 1 1
| 165,435 | 8 | 606 | 871,365,688 |  19.4553 |   0.6976 |   0.0029 |   0.0001 |   0.4689 |   0.4684 |   0.9694 |   0.3854 |  16.2568 |   0.2089 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 0 1 1
| 165,435 | 8 | 606 | 871,365,688 |  19.4730 |   0.6880 |   0.0029 |   0.0001 |   0.4966 |   0.4685 |   0.9968 |   0.3510 |  16.2555 |   0.2165 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 0 1 1
| 165,435 | 8 | 606 | 871,365,688 |  19.4921 |   0.6905 |   0.0029 |   0.0001 |   0.4924 |   0.4669 |   1.0108 |   0.3518 |  16.2327 |   0.2469 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 0 1 1
| 409,593 | 40 | 247 | 1,669,750,513 |   3.7186 |   0.7053 |   0.0085 |   0.0001 |   0.0959 |   0.1583 |   0.6572 |   0.1802 |   1.8313 |   0.0903 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 0 1 1
| 409,593 | 40 | 247 | 1,669,750,513 |   3.7620 |   0.7085 |   0.0050 |   0.0001 |   0.0942 |   0.1582 |   0.6686 |   0.1857 |   1.8613 |   0.0853 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 0 1 1
| 409,593 | 40 | 247 | 1,669,750,513 |   3.7295 |   0.7028 |   0.0034 |   0.0001 |   0.0951 |   0.1593 |   0.6615 |   0.1811 |   1.8440 |   0.0857 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 0 1 1
| 409,593 | 40 | 247 | 1,669,750,513 |   3.7393 |   0.7003 |   0.0035 |   0.0001 |   0.0953 |   0.1581 |   0.6611 |   0.1818 |   1.8571 |   0.0856 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 0 1 1
| 409,593 | 40 | 247 | 1,669,750,513 |   3.7541 |   0.7099 |   0.0032 |   0.0001 |   0.0951 |   0.1585 |   0.6501 |   0.1794 |   1.8752 |   0.0859 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 0 1 1
| 409,593 | 32 | 247 | 1,669,750,513 |   4.3957 |   0.7005 |   0.0049 |   0.0001 |   0.1114 |   0.1767 |   0.8204 |   0.1901 |   2.2711 |   0.1253 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 0 1 1
| 409,593 | 32 | 247 | 1,669,750,513 |   4.3721 |   0.6901 |   0.0034 |   0.0001 |   0.1126 |   0.1749 |   0.8176 |   0.1929 |   2.2819 |   0.1021 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 0 1 1
| 409,593 | 32 | 247 | 1,669,750,513 |   4.3734 |   0.6885 |   0.0034 |   0.0001 |   0.1136 |   0.1769 |   0.8157 |   0.1933 |   2.2675 |   0.1178 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 0 1 1
| 409,593 | 32 | 247 | 1,669,750,513 |   4.4293 |   0.6961 |   0.0032 |   0.0001 |   0.1132 |   0.1767 |   0.8267 |   0.2115 |   2.2843 |   0.1209 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 0 1 1
| 409,593 | 32 | 247 | 1,669,750,513 |   4.4543 |   0.7583 |   0.0034 |   0.0001 |   0.1142 |   0.1762 |   0.8146 |   0.1980 |   2.2661 |   0.1268 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 0 1 1
| 409,593 | 24 | 247 | 1,669,750,513 |   5.9842 |   0.6951 |   0.0055 |   0.0001 |   0.1551 |   0.2144 |   1.1947 |   0.2350 |   3.3314 |   0.1584 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 0 1 1
| 409,593 | 24 | 247 | 1,669,750,513 |   5.9835 |   0.7039 |   0.0034 |   0.0001 |   0.1578 |   0.2150 |   1.2003 |   0.2436 |   3.3265 |   0.1364 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 0 1 1
| 409,593 | 24 | 247 | 1,669,750,513 |   5.9494 |   0.6885 |   0.0034 |   0.0001 |   0.1509 |   0.2173 |   1.2092 |   0.2173 |   3.3303 |   0.1357 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 0 1 1
| 409,593 | 24 | 247 | 1,669,750,513 |   5.9536 |   0.6960 |   0.0034 |   0.0001 |   0.1544 |   0.2198 |   1.1896 |   0.2152 |   3.3135 |   0.1651 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 0 1 1
| 409,593 | 24 | 247 | 1,669,750,513 |   5.9386 |   0.6938 |   0.0034 |   0.0001 |   0.1581 |   0.2161 |   1.1815 |   0.2167 |   3.3369 |   0.1354 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 0 1 1
| 409,593 | 16 | 247 | 1,669,750,513 |   8.9715 |   0.7018 |   0.0055 |   0.0001 |   0.2273 |   0.2476 |   1.7463 |   0.2690 |   5.5776 |   0.2019 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 0 1 1
| 409,593 | 16 | 247 | 1,669,750,513 |   8.9843 |   0.7565 |   0.0030 |   0.0001 |   0.2242 |   0.2520 |   1.7400 |   0.2622 |   5.5137 |   0.2356 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 0 1 1
| 409,593 | 16 | 247 | 1,669,750,513 |   8.9472 |   0.7006 |   0.0030 |   0.0001 |   0.2277 |   0.2497 |   1.7363 |   0.2690 |   5.5602 |   0.2035 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 0 1 1
| 409,593 | 16 | 247 | 1,669,750,513 |   8.9196 |   0.7049 |   0.0033 |   0.0001 |   0.2231 |   0.2479 |   1.7182 |   0.2620 |   5.5599 |   0.2036 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 0 1 1
| 409,593 | 16 | 247 | 1,669,750,513 |   8.9213 |   0.6946 |   0.0030 |   0.0001 |   0.2269 |   0.2509 |   1.7314 |   0.2667 |   5.5458 |   0.2049 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 0 1 1
| 409,593 | 8 | 247 | 1,669,750,513 |  17.5323 |   0.6967 |   0.0058 |   0.0001 |   0.3400 |   0.2576 |   3.5507 |   0.3949 |  11.8280 |   0.4644 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 0 1 1
| 409,593 | 8 | 247 | 1,669,750,513 |  17.5266 |   0.6986 |   0.0031 |   0.0001 |   0.3241 |   0.2729 |   3.5632 |   0.3928 |  11.8638 |   0.4109 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 0 1 1
| 409,593 | 8 | 247 | 1,669,750,513 |  17.5412 |   0.6987 |   0.0032 |   0.0001 |   0.3496 |   0.2578 |   3.5679 |   0.3918 |  11.8226 |   0.4526 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 0 1 1
| 409,593 | 8 | 247 | 1,669,750,513 |  17.6596 |   0.6943 |   0.0032 |   0.0001 |   0.3412 |   0.2604 |   3.5982 |   0.3879 |  11.9013 |   0.4763 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 0 1 1
| 409,593 | 8 | 247 | 1,669,750,513 |  17.6127 |   0.6947 |   0.0031 |   0.0001 |   0.3404 |   0.2657 |   3.5586 |   0.4104 |  11.8705 |   0.4724 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 40 | 520 | 910,070,918 |   4.3579 |   0.6996 |   0.0094 |   0.0001 |   0.1087 |   0.1998 |   0.4887 |   0.2225 |   2.5806 |   0.0580 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 40 | 520 | 910,070,918 |   4.3769 |   0.7279 |   0.0050 |   0.0001 |   0.1088 |   0.2003 |   0.4889 |   0.2197 |   2.5833 |   0.0480 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 40 | 520 | 910,070,918 |   4.3821 |   0.7079 |   0.0033 |   0.0001 |   0.1110 |   0.2004 |   0.4861 |   0.2246 |   2.6036 |   0.0484 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 40 | 520 | 910,070,918 |   4.3539 |   0.6993 |   0.0033 |   0.0001 |   0.1102 |   0.1984 |   0.4818 |   0.2262 |   2.5915 |   0.0464 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 40 | 520 | 910,070,918 |   4.3504 |   0.7049 |   0.0033 |   0.0001 |   0.1088 |   0.2008 |   0.4855 |   0.2235 |   2.5803 |   0.0465 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 32 | 520 | 910,070,918 |   5.3599 |   0.6961 |   0.0055 |   0.0001 |   0.1414 |   0.2591 |   0.5513 |   0.2777 |   3.3630 |   0.0712 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 32 | 520 | 910,070,918 |   5.3001 |   0.6988 |   0.0033 |   0.0001 |   0.1422 |   0.2485 |   0.5330 |   0.2545 |   3.3663 |   0.0567 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 32 | 520 | 910,070,918 |   5.3204 |   0.6982 |   0.0034 |   0.0001 |   0.1409 |   0.2442 |   0.5340 |   0.2601 |   3.3733 |   0.0696 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 32 | 520 | 910,070,918 |   5.3168 |   0.7014 |   0.0034 |   0.0001 |   0.1391 |   0.2442 |   0.5356 |   0.2523 |   3.3863 |   0.0578 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 32 | 520 | 910,070,918 |   5.3647 |   0.7001 |   0.0032 |   0.0001 |   0.1409 |   0.2456 |   0.5330 |   0.3220 |   3.3659 |   0.0572 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 24 | 520 | 910,070,918 |   7.0696 |   0.6922 |   0.0059 |   0.0001 |   0.1955 |   0.3359 |   0.6562 |   0.2837 |   4.8150 |   0.0910 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 24 | 520 | 910,070,918 |   7.0766 |   0.6927 |   0.0032 |   0.0001 |   0.1935 |   0.3400 |   0.6545 |   0.2931 |   4.8116 |   0.0912 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 24 | 520 | 910,070,918 |   7.0714 |   0.6990 |   0.0032 |   0.0001 |   0.1919 |   0.3403 |   0.6608 |   0.3191 |   4.7711 |   0.0890 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 24 | 520 | 910,070,918 |   7.0581 |   0.6975 |   0.0032 |   0.0001 |   0.1924 |   0.3374 |   0.6499 |   0.2917 |   4.7987 |   0.0905 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 24 | 520 | 910,070,918 |   7.0360 |   0.6990 |   0.0031 |   0.0001 |   0.1937 |   0.3356 |   0.6490 |   0.2907 |   4.7915 |   0.0763 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 16 | 520 | 910,070,918 |  10.7299 |   0.7016 |   0.0063 |   0.0004 |   0.2747 |   0.3474 |   0.9102 |   0.4104 |   7.9742 |   0.1111 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 16 | 520 | 910,070,918 |  10.7115 |   0.6966 |   0.0031 |   0.0004 |   0.2721 |   0.3429 |   0.8992 |   0.3371 |   8.0284 |   0.1349 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 16 | 520 | 910,070,918 |  10.7755 |   0.6992 |   0.0033 |   0.0004 |   0.2721 |   0.3435 |   0.9346 |   0.3783 |   8.0208 |   0.1267 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 16 | 520 | 910,070,918 |  10.7201 |   0.7022 |   0.0030 |   0.0004 |   0.2730 |   0.3423 |   0.8954 |   0.3428 |   8.0392 |   0.1248 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 16 | 520 | 910,070,918 |  10.7136 |   0.6960 |   0.0036 |   0.0004 |   0.2754 |   0.3440 |   0.8928 |   0.3554 |   8.0110 |   0.1387 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 8 | 520 | 910,070,918 |  21.6890 |   0.6990 |   0.0065 |   0.0003 |   0.5476 |   0.3967 |   1.8836 |   0.4471 |  17.4636 |   0.2510 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 8 | 520 | 910,070,918 |  21.6721 |   0.6981 |   0.0032 |   0.0004 |   0.5516 |   0.4142 |   1.9087 |   0.4629 |  17.4217 |   0.2145 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 8 | 520 | 910,070,918 |  21.6814 |   0.6997 |   0.0032 |   0.0004 |   0.5618 |   0.4096 |   1.9167 |   0.4559 |  17.4212 |   0.2162 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 8 | 520 | 910,070,918 |  21.6805 |   0.6963 |   0.0032 |   0.0004 |   0.5651 |   0.3984 |   1.8980 |   0.4450 |  17.4637 |   0.2137 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 8 | 520 | 910,070,918 |  21.7101 |   0.6921 |   0.0032 |   0.0004 |   0.5424 |   0.4090 |   1.9018 |   0.4279 |  17.4775 |   0.2590 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 0 1 1
| 1,049,866 | 40 | 31 | 1,911,754,892 |   1.8257 |   0.7017 |   0.0113 |   0.0004 |   0.0287 |   0.0269 |   0.7148 |   0.0816 |   0.1787 |   0.0929 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 0 1 1
| 1,049,866 | 40 | 31 | 1,911,754,892 |   1.8195 |   0.6990 |   0.0049 |   0.0004 |   0.0288 |   0.0270 |   0.7166 |   0.0803 |   0.1741 |   0.0933 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 0 1 1
| 1,049,866 | 40 | 31 | 1,911,754,892 |   1.8213 |   0.7023 |   0.0035 |   0.0004 |   0.0290 |   0.0268 |   0.7147 |   0.0809 |   0.1739 |   0.0934 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 0 1 1
| 1,049,866 | 40 | 31 | 1,911,754,892 |   1.8234 |   0.7032 |   0.0036 |   0.0004 |   0.0289 |   0.0269 |   0.7117 |   0.0819 |   0.1754 |   0.0951 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 0 1 1
| 1,049,866 | 40 | 31 | 1,911,754,892 |   1.8167 |   0.7027 |   0.0034 |   0.0004 |   0.0286 |   0.0269 |   0.7123 |   0.0821 |   0.1714 |   0.0924 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 0 1 1
| 1,049,866 | 32 | 31 | 1,911,754,892 |   2.0537 |   0.7022 |   0.0071 |   0.0004 |   0.0311 |   0.0296 |   0.8789 |   0.0923 |   0.2005 |   0.1186 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 0 1 1
| 1,049,866 | 32 | 31 | 1,911,754,892 |   2.1136 |   0.7667 |   0.0036 |   0.0004 |   0.0313 |   0.0299 |   0.8806 |   0.0945 |   0.1921 |   0.1181 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 0 1 1
| 1,049,866 | 32 | 31 | 1,911,754,892 |   2.0583 |   0.7034 |   0.0035 |   0.0004 |   0.0320 |   0.0294 |   0.8831 |   0.0939 |   0.2004 |   0.1158 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 0 1 1
| 1,049,866 | 32 | 31 | 1,911,754,892 |   2.0434 |   0.7024 |   0.0035 |   0.0004 |   0.0316 |   0.0294 |   0.8787 |   0.0915 |   0.1930 |   0.1164 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 0 1 1
| 1,049,866 | 32 | 31 | 1,911,754,892 |   2.0398 |   0.7047 |   0.0036 |   0.0004 |   0.0319 |   0.0297 |   0.8767 |   0.0923 |   0.1880 |   0.1162 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 0 1 1
| 1,049,866 | 24 | 31 | 1,911,754,892 |   2.4513 |   0.6993 |   0.0069 |   0.0001 |   0.0383 |   0.0321 |   1.1559 |   0.1247 |   0.2469 |   0.1541 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 0 1 1
| 1,049,866 | 24 | 31 | 1,911,754,892 |   2.4604 |   0.7003 |   0.0036 |   0.0001 |   0.0378 |   0.0319 |   1.1532 |   0.1182 |   0.2644 |   0.1545 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 0 1 1
| 1,049,866 | 24 | 31 | 1,911,754,892 |   2.5162 |   0.6957 |   0.0035 |   0.0001 |   0.0382 |   0.0318 |   1.1504 |   0.1221 |   0.3229 |   0.1550 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 0 1 1
| 1,049,866 | 24 | 31 | 1,911,754,892 |   2.4502 |   0.7027 |   0.0034 |   0.0001 |   0.0376 |   0.0322 |   1.1514 |   0.1203 |   0.2521 |   0.1538 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 0 1 1
| 1,049,866 | 24 | 31 | 1,911,754,892 |   2.4500 |   0.6963 |   0.0035 |   0.0001 |   0.0375 |   0.0323 |   1.1579 |   0.1191 |   0.2527 |   0.1541 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 0 1 1
| 1,049,866 | 16 | 31 | 1,911,754,892 |   3.2975 |   0.7009 |   0.0077 |   0.0004 |   0.0469 |   0.0395 |   1.7388 |   0.1694 |   0.3720 |   0.2298 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 0 1 1
| 1,049,866 | 16 | 31 | 1,911,754,892 |   3.2828 |   0.7040 |   0.0035 |   0.0004 |   0.0469 |   0.0394 |   1.7363 |   0.1629 |   0.3639 |   0.2291 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 0 1 1
| 1,049,866 | 16 | 31 | 1,911,754,892 |   3.2667 |   0.6995 |   0.0034 |   0.0004 |   0.0464 |   0.0386 |   1.7235 |   0.1662 |   0.3612 |   0.2307 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 0 1 1
| 1,049,866 | 16 | 31 | 1,911,754,892 |   3.3304 |   0.7655 |   0.0033 |   0.0004 |   0.0474 |   0.0395 |   1.7326 |   0.1640 |   0.3537 |   0.2274 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 0 1 1
| 1,049,866 | 16 | 31 | 1,911,754,892 |   3.2705 |   0.7051 |   0.0033 |   0.0004 |   0.0460 |   0.0407 |   1.7281 |   0.1670 |   0.3498 |   0.2335 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 0 1 1
| 1,049,866 | 8 | 31 | 1,911,754,892 |   6.0669 |   0.7062 |   0.0081 |   0.0003 |   0.0758 |   0.0622 |   3.3113 |   0.3175 |   1.1307 |   0.4628 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 0 1 1
| 1,049,866 | 8 | 31 | 1,911,754,892 |   6.0601 |   0.6974 |   0.0036 |   0.0003 |   0.0744 |   0.0636 |   3.3362 |   0.3205 |   1.0323 |   0.5354 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 0 1 1
| 1,049,866 | 8 | 31 | 1,911,754,892 |   6.1022 |   0.7049 |   0.0036 |   0.0003 |   0.0761 |   0.0637 |   3.3252 |   0.3174 |   1.1573 |   0.4573 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 0 1 1
| 1,049,866 | 8 | 31 | 1,911,754,892 |   6.0848 |   0.6999 |   0.0037 |   0.0003 |   0.0744 |   0.0627 |   3.3334 |   0.3163 |   1.0603 |   0.5375 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 0 1 1
| 1,049,866 | 8 | 31 | 1,911,754,892 |   6.0621 |   0.7003 |   0.0037 |   0.0003 |   0.0741 |   0.0640 |   3.3267 |   0.3140 |   1.0525 |   0.5302 | data/com-dblpungraph.bin_tc.bin |
TRADITIONAL MPI - TWO PASS
------------------------------------------------------------------------------------
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 0 0 1
| 147,892 | 40 | 31 | 884,179,859 |   1.2902 |   0.6993 |   0.0033 |   0.0001 |   0.0155 |   0.0927 |   0.2971 |   0.0371 |   0.1032 |   0.0451 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 0 0 1
| 147,892 | 40 | 31 | 884,179,859 |   1.2899 |   0.7042 |   0.0032 |   0.0001 |   0.0158 |   0.0937 |   0.2946 |   0.0368 |   0.0998 |   0.0449 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 0 0 1
| 147,892 | 40 | 31 | 884,179,859 |   1.2899 |   0.7006 |   0.0033 |   0.0001 |   0.0159 |   0.0946 |   0.2973 |   0.0368 |   0.0996 |   0.0450 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 0 0 1
| 147,892 | 40 | 31 | 884,179,859 |   1.2970 |   0.7041 |   0.0031 |   0.0001 |   0.0156 |   0.0949 |   0.3009 |   0.0358 |   0.1010 |   0.0446 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 0 0 1
| 147,892 | 40 | 31 | 884,179,859 |   1.2956 |   0.7097 |   0.0033 |   0.0001 |   0.0154 |   0.0929 |   0.2941 |   0.0377 |   0.1004 |   0.0455 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 0 0 1
| 147,892 | 32 | 31 | 884,179,859 |   1.3728 |   0.6985 |   0.0033 |   0.0001 |   0.0174 |   0.0976 |   0.3505 |   0.0428 |   0.1100 |   0.0560 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 0 0 1
| 147,892 | 32 | 31 | 884,179,859 |   1.3777 |   0.7017 |   0.0034 |   0.0001 |   0.0175 |   0.1000 |   0.3536 |   0.0419 |   0.1081 |   0.0550 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 0 0 1
| 147,892 | 32 | 31 | 884,179,859 |   1.3762 |   0.7011 |   0.0031 |   0.0001 |   0.0176 |   0.1000 |   0.3524 |   0.0419 |   0.1073 |   0.0558 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 0 0 1
| 147,892 | 32 | 31 | 884,179,859 |   1.3752 |   0.7008 |   0.0033 |   0.0001 |   0.0175 |   0.0992 |   0.3527 |   0.0411 |   0.1089 |   0.0550 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 0 0 1
| 147,892 | 32 | 31 | 884,179,859 |   1.3801 |   0.7019 |   0.0029 |   0.0001 |   0.0175 |   0.1007 |   0.3514 |   0.0431 |   0.1083 |   0.0571 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 0 0 1
| 147,892 | 24 | 31 | 884,179,859 |   1.5354 |   0.7030 |   0.0034 |   0.0001 |   0.0200 |   0.1146 |   0.4462 |   0.0499 |   0.1284 |   0.0732 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 0 0 1
| 147,892 | 24 | 31 | 884,179,859 |   1.5324 |   0.7028 |   0.0032 |   0.0001 |   0.0202 |   0.1133 |   0.4434 |   0.0487 |   0.1315 |   0.0722 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 0 0 1
| 147,892 | 24 | 31 | 884,179,859 |   1.5294 |   0.7012 |   0.0033 |   0.0001 |   0.0200 |   0.1138 |   0.4442 |   0.0512 |   0.1265 |   0.0725 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 0 0 1
| 147,892 | 24 | 31 | 884,179,859 |   1.5318 |   0.7027 |   0.0034 |   0.0001 |   0.0199 |   0.1153 |   0.4450 |   0.0488 |   0.1291 |   0.0710 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 0 0 1
| 147,892 | 24 | 31 | 884,179,859 |   1.5336 |   0.7064 |   0.0032 |   0.0001 |   0.0199 |   0.1128 |   0.4466 |   0.0489 |   0.1267 |   0.0723 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 0 0 1
| 147,892 | 16 | 31 | 884,179,859 |   1.8480 |   0.7026 |   0.0029 |   0.0001 |   0.0246 |   0.1412 |   0.6383 |   0.0673 |   0.1668 |   0.1072 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 0 0 1
| 147,892 | 16 | 31 | 884,179,859 |   1.8515 |   0.6957 |   0.0030 |   0.0001 |   0.0246 |   0.1411 |   0.6460 |   0.0651 |   0.1727 |   0.1063 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 0 0 1
| 147,892 | 16 | 31 | 884,179,859 |   1.8545 |   0.7030 |   0.0031 |   0.0001 |   0.0248 |   0.1417 |   0.6406 |   0.0672 |   0.1708 |   0.1062 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 0 0 1
| 147,892 | 16 | 31 | 884,179,859 |   1.8509 |   0.7003 |   0.0032 |   0.0001 |   0.0248 |   0.1445 |   0.6395 |   0.0670 |   0.1669 |   0.1077 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 0 0 1
| 147,892 | 16 | 31 | 884,179,859 |   1.8608 |   0.7048 |   0.0030 |   0.0001 |   0.0248 |   0.1443 |   0.6398 |   0.0667 |   0.1747 |   0.1057 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 0 0 1
| 147,892 | 8 | 31 | 884,179,859 |   2.8496 |   0.7024 |   0.0029 |   0.0001 |   0.0387 |   0.2143 |   1.2507 |   0.1137 |   0.3159 |   0.2137 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 0 0 1
| 147,892 | 8 | 31 | 884,179,859 |   2.8304 |   0.6945 |   0.0028 |   0.0001 |   0.0387 |   0.2125 |   1.2435 |   0.1148 |   0.3148 |   0.2115 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 0 0 1
| 147,892 | 8 | 31 | 884,179,859 |   2.8384 |   0.7009 |   0.0032 |   0.0001 |   0.0385 |   0.2135 |   1.2487 |   0.1158 |   0.3102 |   0.2106 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 0 0 1
| 147,892 | 8 | 31 | 884,179,859 |   2.8495 |   0.7019 |   0.0029 |   0.0001 |   0.0402 |   0.2167 |   1.2499 |   0.1161 |   0.3152 |   0.2094 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 0 0 1
| 147,892 | 8 | 31 | 884,179,859 |   2.8493 |   0.7022 |   0.0031 |   0.0001 |   0.0382 |   0.2168 |   1.2511 |   0.1148 |   0.3123 |   0.2138 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 0 0 1
| 165,435 | 40 | 606 | 871,365,688 |   4.5197 |   0.7039 |   0.0033 |   0.0001 |   0.0853 |   0.3148 |   0.3173 |   0.1171 |   2.9366 |   0.0446 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 0 0 1
| 165,435 | 40 | 606 | 871,365,688 |   4.5342 |   0.7034 |   0.0032 |   0.0001 |   0.0853 |   0.3187 |   0.3139 |   0.1191 |   2.9482 |   0.0456 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 0 0 1
| 165,435 | 40 | 606 | 871,365,688 |   4.5315 |   0.7022 |   0.0031 |   0.0001 |   0.0848 |   0.3131 |   0.3114 |   0.1190 |   2.9523 |   0.0487 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 0 0 1
| 165,435 | 40 | 606 | 871,365,688 |   4.5257 |   0.7060 |   0.0034 |   0.0001 |   0.0840 |   0.3114 |   0.3184 |   0.1182 |   2.9324 |   0.0551 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 0 0 1
| 165,435 | 40 | 606 | 871,365,688 |   4.5050 |   0.7070 |   0.0033 |   0.0001 |   0.0852 |   0.3006 |   0.3090 |   0.1188 |   2.9399 |   0.0444 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 0 0 1
| 165,435 | 32 | 606 | 871,365,688 |   5.0113 |   0.6995 |   0.0033 |   0.0001 |   0.0686 |   0.3846 |   0.3629 |   0.1637 |   3.2775 |   0.0545 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 0 0 1
| 165,435 | 32 | 606 | 871,365,688 |   5.0035 |   0.6891 |   0.0033 |   0.0001 |   0.0682 |   0.3854 |   0.3594 |   0.1646 |   3.2809 |   0.0559 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 0 0 1
| 165,435 | 32 | 606 | 871,365,688 |   4.9917 |   0.6926 |   0.0033 |   0.0001 |   0.0685 |   0.3869 |   0.3584 |   0.1631 |   3.2672 |   0.0549 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 0 0 1
| 165,435 | 32 | 606 | 871,365,688 |   4.9969 |   0.6811 |   0.0033 |   0.0001 |   0.0687 |   0.3812 |   0.3610 |   0.1623 |   3.2877 |   0.0549 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 0 0 1
| 165,435 | 32 | 606 | 871,365,688 |   4.9968 |   0.6867 |   0.0033 |   0.0001 |   0.0681 |   0.3849 |   0.3546 |   0.1627 |   3.2846 |   0.0552 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 0 0 1
| 165,435 | 24 | 606 | 871,365,688 |   6.7122 |   0.6937 |   0.0035 |   0.0001 |   0.0713 |   0.4968 |   0.3692 |   0.2295 |   4.7770 |   0.0746 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 0 0 1
| 165,435 | 24 | 606 | 871,365,688 |   6.6722 |   0.6950 |   0.0031 |   0.0001 |   0.0715 |   0.4961 |   0.3638 |   0.2270 |   4.7466 |   0.0721 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 0 0 1
| 165,435 | 24 | 606 | 871,365,688 |   6.7039 |   0.6943 |   0.0034 |   0.0001 |   0.0718 |   0.4909 |   0.3622 |   0.2307 |   4.7650 |   0.0887 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 0 0 1
| 165,435 | 24 | 606 | 871,365,688 |   6.6930 |   0.6941 |   0.0030 |   0.0001 |   0.0714 |   0.4886 |   0.3645 |   0.2357 |   4.7667 |   0.0720 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 0 0 1
| 165,435 | 24 | 606 | 871,365,688 |   6.6797 |   0.7024 |   0.0031 |   0.0001 |   0.0723 |   0.4893 |   0.3673 |   0.2268 |   4.7354 |   0.0861 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 0 0 1
| 165,435 | 16 | 606 | 871,365,688 |   9.8663 |   0.6978 |   0.0030 |   0.0001 |   0.1361 |   0.5810 |   0.4511 |   0.3021 |   7.5715 |   0.1267 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 0 0 1
| 165,435 | 16 | 606 | 871,365,688 |   9.8690 |   0.6978 |   0.0031 |   0.0001 |   0.1370 |   0.5631 |   0.4532 |   0.2973 |   7.5921 |   0.1284 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 0 0 1
| 165,435 | 16 | 606 | 871,365,688 |   9.8501 |   0.6924 |   0.0031 |   0.0001 |   0.1361 |   0.5754 |   0.4517 |   0.3139 |   7.5748 |   0.1056 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 0 0 1
| 165,435 | 16 | 606 | 871,365,688 |   9.8920 |   0.6973 |   0.0029 |   0.0001 |   0.1385 |   0.5700 |   0.4673 |   0.3226 |   7.5908 |   0.1053 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 0 0 1
| 165,435 | 16 | 606 | 871,365,688 |   9.8761 |   0.6844 |   0.0031 |   0.0001 |   0.1413 |   0.5926 |   0.4921 |   0.3013 |   7.5451 |   0.1191 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 0 0 1
| 165,435 | 8 | 606 | 871,365,688 |  19.7161 |   0.6878 |   0.0029 |   0.0001 |   0.4339 |   0.8189 |   0.9144 |   0.3383 |  16.2680 |   0.2548 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 0 0 1
| 165,435 | 8 | 606 | 871,365,688 |  19.7311 |   0.7067 |   0.0029 |   0.0001 |   0.4340 |   0.8118 |   0.9273 |   0.3552 |  16.2533 |   0.2426 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 0 0 1
| 165,435 | 8 | 606 | 871,365,688 |  19.7398 |   0.7066 |   0.0029 |   0.0001 |   0.4359 |   0.8175 |   0.9149 |   0.3506 |  16.2750 |   0.2391 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 0 0 1
| 165,435 | 8 | 606 | 871,365,688 |  19.6928 |   0.7014 |   0.0032 |   0.0001 |   0.4322 |   0.8165 |   0.9124 |   0.3395 |  16.2400 |   0.2506 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 0 0 1
| 165,435 | 8 | 606 | 871,365,688 |  19.6937 |   0.6916 |   0.0032 |   0.0001 |   0.4202 |   0.8263 |   0.8830 |   0.3506 |  16.2827 |   0.2392 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 0 0 1
| 409,593 | 40 | 247 | 1,669,750,513 |   3.9147 |   0.7058 |   0.0032 |   0.0001 |   0.0900 |   0.4375 |   0.6431 |   0.1695 |   1.7843 |   0.0844 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 0 0 1
| 409,593 | 40 | 247 | 1,669,750,513 |   3.9210 |   0.7022 |   0.0032 |   0.0001 |   0.0912 |   0.4377 |   0.6379 |   0.1736 |   1.7932 |   0.0851 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 0 0 1
| 409,593 | 40 | 247 | 1,669,750,513 |   3.9228 |   0.7048 |   0.0032 |   0.0001 |   0.0906 |   0.4340 |   0.6422 |   0.1694 |   1.7961 |   0.0855 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 0 0 1
| 409,593 | 40 | 247 | 1,669,750,513 |   3.9134 |   0.7029 |   0.0033 |   0.0001 |   0.0905 |   0.4345 |   0.6434 |   0.1689 |   1.7870 |   0.0860 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 0 0 1
| 409,593 | 40 | 247 | 1,669,750,513 |   3.9379 |   0.6998 |   0.0034 |   0.0001 |   0.0919 |   0.4405 |   0.6373 |   0.1738 |   1.8086 |   0.0859 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 0 0 1
| 409,593 | 32 | 247 | 1,669,750,513 |   4.5503 |   0.6949 |   0.0032 |   0.0001 |   0.1094 |   0.4707 |   0.7803 |   0.1810 |   2.1895 |   0.1244 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 0 0 1
| 409,593 | 32 | 247 | 1,669,750,513 |   4.5681 |   0.6947 |   0.0033 |   0.0001 |   0.1076 |   0.4701 |   0.7832 |   0.1805 |   2.2162 |   0.1157 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 0 0 1
| 409,593 | 32 | 247 | 1,669,750,513 |   4.5912 |   0.6936 |   0.0033 |   0.0001 |   0.1091 |   0.4686 |   0.7845 |   0.1898 |   2.2165 |   0.1289 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 0 0 1
| 409,593 | 32 | 247 | 1,669,750,513 |   4.5664 |   0.6943 |   0.0033 |   0.0001 |   0.1078 |   0.4707 |   0.7809 |   0.1991 |   2.2104 |   0.1031 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 0 0 1
| 409,593 | 32 | 247 | 1,669,750,513 |   4.5806 |   0.7009 |   0.0031 |   0.0001 |   0.1090 |   0.4716 |   0.7803 |   0.1853 |   2.2301 |   0.1033 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 0 0 1
| 409,593 | 24 | 247 | 1,669,750,513 |   6.1783 |   0.6905 |   0.0034 |   0.0001 |   0.1599 |   0.5346 |   1.1768 |   0.1993 |   3.2499 |   0.1673 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 0 0 1
| 409,593 | 24 | 247 | 1,669,750,513 |   6.1551 |   0.6965 |   0.0035 |   0.0001 |   0.1571 |   0.5412 |   1.1443 |   0.2024 |   3.2763 |   0.1372 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 0 0 1
| 409,593 | 24 | 247 | 1,669,750,513 |   6.1536 |   0.6932 |   0.0032 |   0.0001 |   0.1600 |   0.5471 |   1.1405 |   0.2002 |   3.2701 |   0.1425 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 0 0 1
| 409,593 | 24 | 247 | 1,669,750,513 |   6.1386 |   0.6967 |   0.0032 |   0.0001 |   0.1548 |   0.5452 |   1.1541 |   0.2003 |   3.2511 |   0.1365 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 0 0 1
| 409,593 | 24 | 247 | 1,669,750,513 |   6.1394 |   0.6938 |   0.0032 |   0.0001 |   0.1575 |   0.5427 |   1.1565 |   0.2066 |   3.2472 |   0.1352 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 0 0 1
| 409,593 | 16 | 247 | 1,669,750,513 |   9.1117 |   0.6938 |   0.0032 |   0.0001 |   0.2045 |   0.7018 |   1.6364 |   0.2472 |   5.4245 |   0.2034 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 0 0 1
| 409,593 | 16 | 247 | 1,669,750,513 |   9.1857 |   0.7023 |   0.0033 |   0.0001 |   0.2095 |   0.7013 |   1.6838 |   0.2527 |   5.4325 |   0.2035 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 0 0 1
| 409,593 | 16 | 247 | 1,669,750,513 |   9.1859 |   0.7031 |   0.0031 |   0.0001 |   0.2123 |   0.7004 |   1.6838 |   0.2545 |   5.4282 |   0.2036 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 0 0 1
| 409,593 | 16 | 247 | 1,669,750,513 |   9.1570 |   0.7076 |   0.0031 |   0.0001 |   0.2117 |   0.6998 |   1.6418 |   0.2513 |   5.3990 |   0.2459 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 0 0 1
| 409,593 | 16 | 247 | 1,669,750,513 |   9.1468 |   0.7027 |   0.0032 |   0.0001 |   0.2088 |   0.7038 |   1.6441 |   0.2425 |   5.4414 |   0.2035 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 0 0 1
| 409,593 | 8 | 247 | 1,669,750,513 |  17.8867 |   0.7008 |   0.0031 |   0.0001 |   0.3238 |   0.8902 |   3.4660 |   0.3786 |  11.6521 |   0.4751 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 0 0 1
| 409,593 | 8 | 247 | 1,669,750,513 |  17.8267 |   0.6999 |   0.0031 |   0.0001 |   0.3317 |   0.8820 |   3.4073 |   0.3699 |  11.6462 |   0.4896 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 0 0 1
| 409,593 | 8 | 247 | 1,669,750,513 |  17.9844 |   0.7071 |   0.0031 |   0.0001 |   0.3767 |   0.8882 |   3.5270 |   0.3716 |  11.6350 |   0.4787 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 0 0 1
| 409,593 | 8 | 247 | 1,669,750,513 |  17.9193 |   0.7023 |   0.0032 |   0.0001 |   0.3675 |   0.8911 |   3.4936 |   0.3684 |  11.6343 |   0.4621 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 0 0 1
| 409,593 | 8 | 247 | 1,669,750,513 |  17.9681 |   0.6997 |   0.0030 |   0.0001 |   0.4006 |   0.8908 |   3.4942 |   0.3699 |  11.6380 |   0.4748 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 40 | 520 | 910,070,918 |   4.6492 |   0.7057 |   0.0033 |   0.0001 |   0.1111 |   0.4737 |   0.5095 |   0.2140 |   2.5882 |   0.0468 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 40 | 520 | 910,070,918 |   4.6404 |   0.7034 |   0.0035 |   0.0001 |   0.1111 |   0.4655 |   0.5051 |   0.2060 |   2.6021 |   0.0472 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 40 | 520 | 910,070,918 |   4.6616 |   0.7059 |   0.0034 |   0.0001 |   0.1118 |   0.4735 |   0.5045 |   0.2080 |   2.5998 |   0.0581 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 40 | 520 | 910,070,918 |   4.6425 |   0.7000 |   0.0034 |   0.0001 |   0.1114 |   0.4757 |   0.5044 |   0.2099 |   2.5929 |   0.0481 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 40 | 520 | 910,070,918 |   4.6474 |   0.7026 |   0.0033 |   0.0001 |   0.1122 |   0.4805 |   0.5004 |   0.2108 |   2.5925 |   0.0483 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 32 | 520 | 910,070,918 |   5.6117 |   0.6984 |   0.0033 |   0.0001 |   0.1273 |   0.5291 |   0.5367 |   0.2545 |   3.4081 |   0.0576 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 32 | 520 | 910,070,918 |   5.6110 |   0.6979 |   0.0034 |   0.0001 |   0.1285 |   0.5364 |   0.5391 |   0.2386 |   3.4127 |   0.0576 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 32 | 520 | 910,070,918 |   5.5639 |   0.6958 |   0.0034 |   0.0001 |   0.1255 |   0.5324 |   0.5390 |   0.2412 |   3.3729 |   0.0568 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 32 | 520 | 910,070,918 |   5.6006 |   0.7010 |   0.0034 |   0.0001 |   0.1264 |   0.5228 |   0.5396 |   0.2444 |   3.4077 |   0.0586 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 32 | 520 | 910,070,918 |   5.6053 |   0.6960 |   0.0033 |   0.0001 |   0.1278 |   0.5198 |   0.5432 |   0.2449 |   3.4161 |   0.0575 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 24 | 520 | 910,070,918 |   7.3387 |   0.6947 |   0.0034 |   0.0001 |   0.1850 |   0.5997 |   0.6687 |   0.2787 |   4.8179 |   0.0939 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 24 | 520 | 910,070,918 |   7.3569 |   0.6989 |   0.0033 |   0.0001 |   0.1819 |   0.6043 |   0.6832 |   0.2790 |   4.8334 |   0.0760 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 24 | 520 | 910,070,918 |   7.3155 |   0.6992 |   0.0032 |   0.0001 |   0.1842 |   0.6008 |   0.6678 |   0.2761 |   4.8105 |   0.0768 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 24 | 520 | 910,070,918 |   7.3325 |   0.7010 |   0.0035 |   0.0001 |   0.1844 |   0.6022 |   0.6677 |   0.2870 |   4.8008 |   0.0892 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 24 | 520 | 910,070,918 |   7.3105 |   0.6929 |   0.0035 |   0.0001 |   0.1861 |   0.6071 |   0.7122 |   0.2844 |   4.7379 |   0.0898 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 16 | 520 | 910,070,918 |  11.0346 |   0.6963 |   0.0032 |   0.0004 |   0.2707 |   0.7247 |   0.9286 |   0.3374 |   7.9646 |   0.1120 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 16 | 520 | 910,070,918 |  11.1322 |   0.7026 |   0.0034 |   0.0004 |   0.2686 |   0.7275 |   0.9322 |   0.4115 |   7.9757 |   0.1137 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 16 | 520 | 910,070,918 |  11.0633 |   0.6999 |   0.0032 |   0.0004 |   0.2689 |   0.7295 |   0.9182 |   0.3497 |   7.9598 |   0.1369 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 16 | 520 | 910,070,918 |  11.0962 |   0.7023 |   0.0034 |   0.0004 |   0.2665 |   0.7202 |   0.9060 |   0.4293 |   7.9596 |   0.1119 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 16 | 520 | 910,070,918 |  11.1402 |   0.7007 |   0.0035 |   0.0004 |   0.2733 |   0.7414 |   0.9549 |   0.4319 |   7.9265 |   0.1112 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 8 | 520 | 910,070,918 |  22.0819 |   0.6939 |   0.0032 |   0.0003 |   0.5839 |   0.9035 |   1.9025 |   0.4258 |  17.3557 |   0.2162 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 8 | 520 | 910,070,918 |  22.1103 |   0.7008 |   0.0033 |   0.0003 |   0.5845 |   0.9324 |   1.9056 |   0.4090 |  17.3242 |   0.2535 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 8 | 520 | 910,070,918 |  22.1112 |   0.7030 |   0.0034 |   0.0003 |   0.5800 |   0.9437 |   1.9136 |   0.4320 |  17.2876 |   0.2510 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 8 | 520 | 910,070,918 |  22.1063 |   0.6997 |   0.0032 |   0.0003 |   0.5920 |   0.9244 |   1.9344 |   0.4104 |  17.3312 |   0.2139 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 8 | 520 | 910,070,918 |  22.1275 |   0.6994 |   0.0033 |   0.0003 |   0.5892 |   0.9409 |   1.9295 |   0.4346 |  17.3186 |   0.2148 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 0 0 1
| 1,049,866 | 40 | 31 | 1,911,754,892 |   2.0257 |   0.7074 |   0.0035 |   0.0004 |   0.0272 |   0.2148 |   0.7412 |   0.0752 |   0.1663 |   0.0932 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 0 0 1
| 1,049,866 | 40 | 31 | 1,911,754,892 |   2.0126 |   0.7045 |   0.0035 |   0.0004 |   0.0273 |   0.2142 |   0.7382 |   0.0749 |   0.1597 |   0.0935 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 0 0 1
| 1,049,866 | 40 | 31 | 1,911,754,892 |   2.0164 |   0.7015 |   0.0034 |   0.0004 |   0.0273 |   0.2146 |   0.7401 |   0.0756 |   0.1637 |   0.0932 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 0 0 1
| 1,049,866 | 40 | 31 | 1,911,754,892 |   2.0232 |   0.7046 |   0.0034 |   0.0004 |   0.0273 |   0.2143 |   0.7428 |   0.0754 |   0.1651 |   0.0934 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 0 0 1
| 1,049,866 | 40 | 31 | 1,911,754,892 |   2.0836 |   0.7425 |   0.0034 |   0.0054 |   0.0345 |   0.2216 |   0.7515 |   0.0742 |   0.1613 |   0.0924 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 0 0 1
| 1,049,866 | 32 | 31 | 1,911,754,892 |   2.2393 |   0.7066 |   0.0033 |   0.0004 |   0.0304 |   0.2274 |   0.8872 |   0.0819 |   0.1894 |   0.1161 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 0 0 1
| 1,049,866 | 32 | 31 | 1,911,754,892 |   2.2398 |   0.7041 |   0.0033 |   0.0004 |   0.0304 |   0.2283 |   0.8869 |   0.0824 |   0.1899 |   0.1174 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 0 0 1
| 1,049,866 | 32 | 31 | 1,911,754,892 |   2.2393 |   0.7026 |   0.0034 |   0.0004 |   0.0301 |   0.2294 |   0.8897 |   0.0819 |   0.1876 |   0.1176 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 0 0 1
| 1,049,866 | 32 | 31 | 1,911,754,892 |   2.2371 |   0.7020 |   0.0034 |   0.0004 |   0.0298 |   0.2236 |   0.8899 |   0.0816 |   0.1918 |   0.1181 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 0 0 1
| 1,049,866 | 32 | 31 | 1,911,754,892 |   2.2416 |   0.7025 |   0.0034 |   0.0004 |   0.0304 |   0.2295 |   0.8893 |   0.0815 |   0.1920 |   0.1160 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 0 0 1
| 1,049,866 | 24 | 31 | 1,911,754,892 |   2.7018 |   0.7051 |   0.0035 |   0.0002 |   0.0371 |   0.2855 |   1.1592 |   0.1117 |   0.2476 |   0.1554 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 0 0 1
| 1,049,866 | 24 | 31 | 1,911,754,892 |   2.6895 |   0.6976 |   0.0036 |   0.0002 |   0.0378 |   0.2759 |   1.1596 |   0.1055 |   0.2582 |   0.1546 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 0 0 1
| 1,049,866 | 24 | 31 | 1,911,754,892 |   2.7029 |   0.7002 |   0.0035 |   0.0002 |   0.0372 |   0.2791 |   1.1597 |   0.1053 |   0.2638 |   0.1574 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 0 0 1
| 1,049,866 | 24 | 31 | 1,911,754,892 |   2.6921 |   0.7027 |   0.0034 |   0.0002 |   0.0373 |   0.2727 |   1.1755 |   0.1060 |   0.2405 |   0.1572 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 0 0 1
| 1,049,866 | 24 | 31 | 1,911,754,892 |   2.6756 |   0.7003 |   0.0036 |   0.0002 |   0.0376 |   0.2736 |   1.1567 |   0.1060 |   0.2439 |   0.1573 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 0 0 1
| 1,049,866 | 16 | 31 | 1,911,754,892 |   3.6027 |   0.7028 |   0.0035 |   0.0003 |   0.0489 |   0.3630 |   1.7434 |   0.1499 |   0.3646 |   0.2298 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 0 0 1
| 1,049,866 | 16 | 31 | 1,911,754,892 |   3.6303 |   0.7570 |   0.0033 |   0.0004 |   0.0474 |   0.3622 |   1.7272 |   0.1484 |   0.3539 |   0.2338 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 0 0 1
| 1,049,866 | 16 | 31 | 1,911,754,892 |   3.5611 |   0.7001 |   0.0035 |   0.0003 |   0.0485 |   0.3667 |   1.7181 |   0.1488 |   0.3507 |   0.2278 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 0 0 1
| 1,049,866 | 16 | 31 | 1,911,754,892 |   3.5755 |   0.6983 |   0.0034 |   0.0003 |   0.0487 |   0.3612 |   1.7398 |   0.1497 |   0.3495 |   0.2281 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 0 0 1
| 1,049,866 | 16 | 31 | 1,911,754,892 |   3.6028 |   0.7045 |   0.0033 |   0.0003 |   0.0504 |   0.3617 |   1.7361 |   0.1488 |   0.3708 |   0.2302 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 0 0 1
| 1,049,866 | 8 | 31 | 1,911,754,892 |   6.5125 |   0.7017 |   0.0037 |   0.0003 |   0.0738 |   0.5865 |   3.3134 |   0.2851 |   1.0191 |   0.5325 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 0 0 1
| 1,049,866 | 8 | 31 | 1,911,754,892 |   6.5216 |   0.6963 |   0.0036 |   0.0003 |   0.0727 |   0.5916 |   3.3128 |   0.2865 |   1.0207 |   0.5407 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 0 0 1
| 1,049,866 | 8 | 31 | 1,911,754,892 |   6.4981 |   0.7018 |   0.0037 |   0.0003 |   0.0733 |   0.5913 |   3.3103 |   0.2906 |   1.0776 |   0.4529 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 0 0 1
| 1,049,866 | 8 | 31 | 1,911,754,892 |   6.5164 |   0.7001 |   0.0040 |   0.0003 |   0.0745 |   0.5919 |   3.3205 |   0.2881 |   1.0844 |   0.4565 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 0 0 1
| 1,049,866 | 8 | 31 | 1,911,754,892 |   6.5856 |   0.7006 |   0.0036 |   0.0003 |   0.0856 |   0.5916 |   3.3321 |   0.2988 |   1.0441 |   0.5325 | data/com-dblpungraph.bin_tc.bin |
====================================================================================
CC tc.cu -o tc.out -lm -O3
CUDA AWARE MPI - SORTING
------------------------------------------------------------------------------------
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 1 1 1
| 147,892 | 40 | 31 | 884,179,859 |   0.9897 |   0.0145 |   0.0037 |   0.0001 |   0.0168 |   0.0215 |   0.6523 |   0.0459 |   0.1933 |   0.0453 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 1 1 1
| 147,892 | 40 | 31 | 884,179,859 |   0.9777 |   0.0073 |   0.0037 |   0.0001 |   0.0172 |   0.0210 |   0.6427 |   0.0487 |   0.1961 |   0.0446 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 1 1 1
| 147,892 | 40 | 31 | 884,179,859 |   0.9747 |   0.0071 |   0.0039 |   0.0001 |   0.0172 |   0.0213 |   0.6332 |   0.0457 |   0.2047 |   0.0454 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 1 1 1
| 147,892 | 40 | 31 | 884,179,859 |   0.9679 |   0.0072 |   0.0039 |   0.0001 |   0.0168 |   0.0218 |   0.6331 |   0.0490 |   0.1931 |   0.0469 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 1 1 1
| 147,892 | 40 | 31 | 884,179,859 |   0.9874 |   0.0074 |   0.0037 |   0.0001 |   0.0170 |   0.0212 |   0.6515 |   0.0476 |   0.1975 |   0.0452 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 1 1 1
| 147,892 | 32 | 31 | 884,179,859 |   1.0017 |   0.0072 |   0.0037 |   0.0001 |   0.0184 |   0.0225 |   0.6451 |   0.0574 |   0.1951 |   0.0559 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 1 1 1
| 147,892 | 32 | 31 | 884,179,859 |   0.9928 |   0.0073 |   0.0037 |   0.0001 |   0.0186 |   0.0226 |   0.6386 |   0.0591 |   0.1915 |   0.0551 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 1 1 1
| 147,892 | 32 | 31 | 884,179,859 |   1.0231 |   0.0071 |   0.0038 |   0.0001 |   0.0189 |   0.0225 |   0.6710 |   0.0587 |   0.1889 |   0.0560 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 1 1 1
| 147,892 | 32 | 31 | 884,179,859 |   0.9940 |   0.0073 |   0.0038 |   0.0001 |   0.0186 |   0.0229 |   0.6404 |   0.0567 |   0.1921 |   0.0558 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 1 1 1
| 147,892 | 32 | 31 | 884,179,859 |   0.9833 |   0.0072 |   0.0037 |   0.0001 |   0.0186 |   0.0229 |   0.6397 |   0.0562 |   0.1826 |   0.0559 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 1 1 1
| 147,892 | 24 | 31 | 884,179,859 |   1.0054 |   0.0072 |   0.0035 |   0.0001 |   0.0217 |   0.0238 |   0.6142 |   0.0649 |   0.2002 |   0.0734 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 1 1 1
| 147,892 | 24 | 31 | 884,179,859 |   1.0157 |   0.0072 |   0.0037 |   0.0001 |   0.0215 |   0.0241 |   0.6197 |   0.0641 |   0.2070 |   0.0722 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 1 1 1
| 147,892 | 24 | 31 | 884,179,859 |   1.0169 |   0.0072 |   0.0039 |   0.0001 |   0.0213 |   0.0237 |   0.6176 |   0.0657 |   0.2061 |   0.0753 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 1 1 1
| 147,892 | 24 | 31 | 884,179,859 |   0.9940 |   0.0074 |   0.0037 |   0.0001 |   0.0216 |   0.0239 |   0.6033 |   0.0645 |   0.2006 |   0.0726 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 1 1 1
| 147,892 | 24 | 31 | 884,179,859 |   1.0099 |   0.0073 |   0.0034 |   0.0001 |   0.0215 |   0.0242 |   0.6109 |   0.0647 |   0.2086 |   0.0726 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 1 1 1
| 147,892 | 16 | 31 | 884,179,859 |   1.0974 |   0.0073 |   0.0035 |   0.0001 |   0.0259 |   0.0273 |   0.6073 |   0.0801 |   0.2409 |   0.1085 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 1 1 1
| 147,892 | 16 | 31 | 884,179,859 |   1.0815 |   0.0072 |   0.0034 |   0.0001 |   0.0260 |   0.0271 |   0.6191 |   0.0807 |   0.2140 |   0.1075 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 1 1 1
| 147,892 | 16 | 31 | 884,179,859 |   1.1162 |   0.0072 |   0.0036 |   0.0001 |   0.0270 |   0.0273 |   0.6241 |   0.0829 |   0.2394 |   0.1083 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 1 1 1
| 147,892 | 16 | 31 | 884,179,859 |   1.1783 |   0.0073 |   0.0037 |   0.0001 |   0.0259 |   0.0276 |   0.6873 |   0.0837 |   0.2386 |   0.1079 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 1 1 1
| 147,892 | 16 | 31 | 884,179,859 |   1.0877 |   0.0072 |   0.0033 |   0.0001 |   0.0262 |   0.0272 |   0.6184 |   0.0792 |   0.2216 |   0.1077 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 1 1 1
| 147,892 | 8 | 31 | 884,179,859 |   1.4936 |   0.0073 |   0.0032 |   0.0001 |   0.0402 |   0.0384 |   0.7163 |   0.1373 |   0.3418 |   0.2121 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 1 1 1
| 147,892 | 8 | 31 | 884,179,859 |   1.5046 |   0.0072 |   0.0032 |   0.0001 |   0.0398 |   0.0396 |   0.7323 |   0.1382 |   0.3366 |   0.2108 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 1 1 1
| 147,892 | 8 | 31 | 884,179,859 |   1.5058 |   0.0072 |   0.0033 |   0.0001 |   0.0395 |   0.0380 |   0.7278 |   0.1386 |   0.3448 |   0.2099 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 1 1 1
| 147,892 | 8 | 31 | 884,179,859 |   1.4942 |   0.0071 |   0.0033 |   0.0001 |   0.0388 |   0.0380 |   0.7198 |   0.1369 |   0.3383 |   0.2153 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 1 1 1
| 147,892 | 8 | 31 | 884,179,859 |   1.5664 |   0.0073 |   0.0032 |   0.0001 |   0.0484 |   0.0541 |   0.7560 |   0.1489 |   0.3395 |   0.2122 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 1 1 1
| 165,435 | 40 | 606 | 871,365,688 |  12.4063 |   0.0073 |   0.0035 |   0.0001 |   0.0996 |   0.2109 |   8.2189 |   0.2134 |   3.6112 |   0.0451 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 1 1 1
| 165,435 | 40 | 606 | 871,365,688 |  12.4116 |   0.0072 |   0.0038 |   0.0001 |   0.0979 |   0.2101 |   8.2057 |   0.2122 |   3.6341 |   0.0443 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 1 1 1
| 165,435 | 40 | 606 | 871,365,688 |  12.3812 |   0.0072 |   0.0037 |   0.0001 |   0.0992 |   0.2118 |   8.2139 |   0.2129 |   3.5920 |   0.0443 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 1 1 1
| 165,435 | 40 | 606 | 871,365,688 |  12.4069 |   0.0073 |   0.0039 |   0.0001 |   0.0999 |   0.2083 |   8.2136 |   0.2118 |   3.6216 |   0.0443 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 1 1 1
| 165,435 | 40 | 606 | 871,365,688 |  12.4225 |   0.0072 |   0.0037 |   0.0001 |   0.0996 |   0.2104 |   8.2567 |   0.2174 |   3.5862 |   0.0449 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 1 1 1
| 165,435 | 32 | 606 | 871,365,688 |  12.2930 |   0.0072 |   0.0035 |   0.0001 |   0.1026 |   0.2351 |   8.1229 |   0.2942 |   3.4760 |   0.0548 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 1 1 1
| 165,435 | 32 | 606 | 871,365,688 |  12.2674 |   0.0073 |   0.0037 |   0.0001 |   0.1051 |   0.2528 |   8.1068 |   0.2863 |   3.4548 |   0.0542 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 1 1 1
| 165,435 | 32 | 606 | 871,365,688 |  12.2069 |   0.0073 |   0.0037 |   0.0001 |   0.1029 |   0.2348 |   8.0565 |   0.2934 |   3.4580 |   0.0540 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 1 1 1
| 165,435 | 32 | 606 | 871,365,688 |  12.3362 |   0.0072 |   0.0037 |   0.0001 |   0.1169 |   0.2372 |   8.1209 |   0.2956 |   3.5026 |   0.0558 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 1 1 1
| 165,435 | 32 | 606 | 871,365,688 |  12.1782 |   0.0073 |   0.0038 |   0.0001 |   0.1040 |   0.2342 |   8.0748 |   0.2782 |   3.4250 |   0.0546 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 1 1 1
| 165,435 | 24 | 606 | 871,365,688 |  10.4274 |   0.0073 |   0.0038 |   0.0001 |   0.0867 |   0.2896 |   6.3688 |   0.5130 |   3.0868 |   0.0750 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 1 1 1
| 165,435 | 24 | 606 | 871,365,688 |  10.3679 |   0.0072 |   0.0034 |   0.0001 |   0.0862 |   0.2744 |   6.3510 |   0.5106 |   3.0665 |   0.0720 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 1 1 1
| 165,435 | 24 | 606 | 871,365,688 |  10.5087 |   0.0072 |   0.0038 |   0.0001 |   0.0875 |   0.2750 |   6.4902 |   0.5100 |   3.0664 |   0.0723 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 1 1 1
| 165,435 | 24 | 606 | 871,365,688 |  10.3832 |   0.0071 |   0.0037 |   0.0001 |   0.0873 |   0.2776 |   6.3675 |   0.5096 |   3.0623 |   0.0717 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 1 1 1
| 165,435 | 24 | 606 | 871,365,688 |  10.3658 |   0.0072 |   0.0036 |   0.0001 |   0.0866 |   0.2784 |   6.3357 |   0.5168 |   3.0688 |   0.0720 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 1 1 1
| 165,435 | 16 | 606 | 871,365,688 |  12.0080 |   0.0072 |   0.0035 |   0.0001 |   0.1289 |   0.2853 |   6.3319 |   0.5011 |   4.6270 |   0.1266 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 1 1 1
| 165,435 | 16 | 606 | 871,365,688 |  12.0143 |   0.0072 |   0.0035 |   0.0001 |   0.1226 |   0.2861 |   6.4858 |   0.4685 |   4.5384 |   0.1056 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 1 1 1
| 165,435 | 16 | 606 | 871,365,688 |  12.0114 |   0.0073 |   0.0037 |   0.0001 |   0.1300 |   0.3016 |   6.4517 |   0.4708 |   4.5230 |   0.1269 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 1 1 1
| 165,435 | 16 | 606 | 871,365,688 |  12.2215 |   0.0071 |   0.0036 |   0.0001 |   0.1267 |   0.2826 |   6.3572 |   0.4713 |   4.8497 |   0.1268 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 1 1 1
| 165,435 | 16 | 606 | 871,365,688 |  12.0723 |   0.0072 |   0.0032 |   0.0001 |   0.1233 |   0.2853 |   6.4987 |   0.4768 |   4.5748 |   0.1061 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 1 1 1
| 165,435 | 8 | 606 | 871,365,688 |  19.9026 |   0.0071 |   0.0032 |   0.0001 |   0.3919 |   0.4030 |   7.4722 |   0.5474 |  10.8606 |   0.2203 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 1 1 1
| 165,435 | 8 | 606 | 871,365,688 |  20.6126 |   0.0072 |   0.0033 |   0.0001 |   0.4088 |   0.3907 |   7.4834 |   0.5542 |  11.5610 |   0.2073 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 1 1 1
| 165,435 | 8 | 606 | 871,365,688 |  20.7763 |   0.0072 |   0.0033 |   0.0001 |   0.3914 |   0.4211 |   7.9014 |   0.5596 |  11.2857 |   0.2098 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 1 1 1
| 165,435 | 8 | 606 | 871,365,688 |  20.2124 |   0.0072 |   0.0033 |   0.0001 |   0.3759 |   0.4146 |   7.3338 |   0.5442 |  11.2900 |   0.2467 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 1 1 1
| 165,435 | 8 | 606 | 871,365,688 |  19.8359 |   0.0072 |   0.0033 |   0.0001 |   0.3825 |   0.4069 |   7.4350 |   0.5508 |  10.8443 |   0.2092 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 1 1 1
| 409,593 | 40 | 247 | 1,669,750,513 |   6.6035 |   0.0072 |   0.0039 |   0.0001 |   0.0907 |   0.1619 |   4.2810 |   0.2806 |   1.6952 |   0.0868 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 1 1 1
| 409,593 | 40 | 247 | 1,669,750,513 |   6.6829 |   0.0073 |   0.0038 |   0.0001 |   0.0908 |   0.1616 |   4.3288 |   0.2815 |   1.7279 |   0.0849 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 1 1 1
| 409,593 | 40 | 247 | 1,669,750,513 |   6.6970 |   0.0074 |   0.0038 |   0.0001 |   0.0908 |   0.1631 |   4.2999 |   0.2772 |   1.7744 |   0.0840 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 1 1 1
| 409,593 | 40 | 247 | 1,669,750,513 |   6.6547 |   0.0071 |   0.0039 |   0.0001 |   0.0913 |   0.1635 |   4.2777 |   0.2806 |   1.7502 |   0.0842 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 1 1 1
| 409,593 | 40 | 247 | 1,669,750,513 |   6.6387 |   0.0073 |   0.0039 |   0.0001 |   0.0909 |   0.1621 |   4.2707 |   0.2795 |   1.7404 |   0.0877 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 1 1 1
| 409,593 | 32 | 247 | 1,669,750,513 |   6.4937 |   0.0072 |   0.0037 |   0.0001 |   0.1142 |   0.1725 |   3.9040 |   0.3253 |   1.8682 |   0.1022 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 1 1 1
| 409,593 | 32 | 247 | 1,669,750,513 |   6.4442 |   0.0072 |   0.0036 |   0.0001 |   0.1151 |   0.1762 |   3.9347 |   0.3174 |   1.7926 |   0.1010 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 1 1 1
| 409,593 | 32 | 247 | 1,669,750,513 |   6.3600 |   0.0073 |   0.0038 |   0.0001 |   0.1153 |   0.1711 |   3.8034 |   0.3014 |   1.8595 |   0.1020 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 1 1 1
| 409,593 | 32 | 247 | 1,669,750,513 |   6.4684 |   0.0072 |   0.0038 |   0.0001 |   0.1144 |   0.1724 |   3.8997 |   0.3123 |   1.8601 |   0.1024 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 1 1 1
| 409,593 | 32 | 247 | 1,669,750,513 |   6.5407 |   0.0071 |   0.0038 |   0.0001 |   0.1128 |   0.1803 |   3.9417 |   0.3153 |   1.8773 |   0.1061 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 1 1 1
| 409,593 | 24 | 247 | 1,669,750,513 |   6.3103 |   0.0072 |   0.0038 |   0.0001 |   0.1478 |   0.2008 |   3.3679 |   0.3293 |   2.1211 |   0.1361 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 1 1 1
| 409,593 | 24 | 247 | 1,669,750,513 |   6.3499 |   0.0073 |   0.0038 |   0.0001 |   0.1484 |   0.2016 |   3.4248 |   0.3247 |   2.1059 |   0.1371 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 1 1 1
| 409,593 | 24 | 247 | 1,669,750,513 |   6.2518 |   0.0071 |   0.0038 |   0.0001 |   0.1460 |   0.2001 |   3.3753 |   0.3210 |   2.0659 |   0.1364 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 1 1 1
| 409,593 | 24 | 247 | 1,669,750,513 |   6.2756 |   0.0073 |   0.0039 |   0.0001 |   0.1474 |   0.1995 |   3.3710 |   0.3293 |   2.0831 |   0.1380 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 1 1 1
| 409,593 | 24 | 247 | 1,669,750,513 |   6.3844 |   0.0072 |   0.0037 |   0.0001 |   0.1487 |   0.2050 |   3.4425 |   0.3265 |   2.1181 |   0.1364 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 1 1 1
| 409,593 | 16 | 247 | 1,669,750,513 |   8.3563 |   0.0073 |   0.0035 |   0.0001 |   0.1885 |   0.2364 |   3.5320 |   0.3799 |   3.8104 |   0.2017 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 1 1 1
| 409,593 | 16 | 247 | 1,669,750,513 |   9.0000 |   0.0072 |   0.0034 |   0.0001 |   0.1783 |   0.2288 |   4.2724 |   0.4202 |   3.6468 |   0.2460 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 1 1 1
| 409,593 | 16 | 247 | 1,669,750,513 |   8.5441 |   0.0073 |   0.0033 |   0.0001 |   0.1946 |   0.2329 |   3.5395 |   0.3764 |   3.9914 |   0.2020 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 1 1 1
| 409,593 | 16 | 247 | 1,669,750,513 |   8.8067 |   0.0073 |   0.0037 |   0.0001 |   0.1954 |   0.2346 |   3.5856 |   0.3818 |   4.1644 |   0.2375 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 1 1 1
| 409,593 | 16 | 247 | 1,669,750,513 |   8.8876 |   0.0073 |   0.0035 |   0.0001 |   0.1869 |   0.2397 |   3.7348 |   0.3815 |   4.1334 |   0.2040 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 1 1 1
| 409,593 | 8 | 247 | 1,669,750,513 |  16.1596 |   0.0072 |   0.0034 |   0.0001 |   0.3545 |   0.2640 |   3.1903 |   0.4711 |  11.4848 |   0.3875 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 1 1 1
| 409,593 | 8 | 247 | 1,669,750,513 |  16.1747 |   0.0072 |   0.0034 |   0.0001 |   0.3567 |   0.2634 |   3.1196 |   0.4599 |  11.5650 |   0.4026 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 1 1 1
| 409,593 | 8 | 247 | 1,669,750,513 |  16.2439 |   0.0073 |   0.0034 |   0.0001 |   0.3780 |   0.2662 |   3.1511 |   0.4542 |  11.5891 |   0.3980 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 1 1 1
| 409,593 | 8 | 247 | 1,669,750,513 |  16.1357 |   0.0072 |   0.0034 |   0.0001 |   0.2937 |   0.2628 |   3.0607 |   0.4490 |  11.6609 |   0.4013 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 1 1 1
| 409,593 | 8 | 247 | 1,669,750,513 |  19.9480 |   0.0072 |   0.0035 |   0.0001 |   0.3635 |   0.2710 |   6.4172 |   0.4640 |  11.9537 |   0.4713 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 40 | 520 | 910,070,918 |  11.4510 |   0.0072 |   0.0045 |   0.0001 |   0.1180 |   0.2178 |   7.7681 |   0.3738 |   2.9189 |   0.0470 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 40 | 520 | 910,070,918 |  11.2885 |   0.0072 |   0.0039 |   0.0001 |   0.1193 |   0.2093 |   7.6054 |   0.3902 |   2.9105 |   0.0466 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 40 | 520 | 910,070,918 |  11.4423 |   0.0072 |   0.0037 |   0.0001 |   0.1183 |   0.2088 |   7.7529 |   0.3711 |   2.9371 |   0.0468 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 40 | 520 | 910,070,918 |  11.3427 |   0.0073 |   0.0038 |   0.0001 |   0.1187 |   0.2101 |   7.6857 |   0.3774 |   2.8962 |   0.0472 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 40 | 520 | 910,070,918 |  11.3681 |   0.0071 |   0.0037 |   0.0001 |   0.1177 |   0.2096 |   7.7158 |   0.3709 |   2.9005 |   0.0465 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 32 | 520 | 910,070,918 |  10.4173 |   0.0073 |   0.0038 |   0.0001 |   0.1417 |   0.2540 |   6.6997 |   0.4215 |   2.8369 |   0.0562 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 32 | 520 | 910,070,918 |  10.4737 |   0.0072 |   0.0039 |   0.0001 |   0.1424 |   0.2522 |   6.7462 |   0.4184 |   2.8491 |   0.0581 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 32 | 520 | 910,070,918 |  10.5760 |   0.0072 |   0.0039 |   0.0001 |   0.1469 |   0.2641 |   6.8114 |   0.4255 |   2.8636 |   0.0573 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 32 | 520 | 910,070,918 |  10.3869 |   0.0073 |   0.0038 |   0.0001 |   0.1428 |   0.2553 |   6.6986 |   0.4057 |   2.8204 |   0.0568 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 32 | 520 | 910,070,918 |  10.4245 |   0.0072 |   0.0037 |   0.0001 |   0.1423 |   0.2577 |   6.7225 |   0.4195 |   2.8178 |   0.0573 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 24 | 520 | 910,070,918 |  11.1182 |   0.0072 |   0.0038 |   0.0001 |   0.1782 |   0.3072 |   6.6160 |   0.5557 |   3.3779 |   0.0758 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 24 | 520 | 910,070,918 |  11.1145 |   0.0073 |   0.0038 |   0.0001 |   0.1778 |   0.3055 |   6.6105 |   0.5593 |   3.3780 |   0.0761 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 24 | 520 | 910,070,918 |  11.0177 |   0.0073 |   0.0036 |   0.0001 |   0.1779 |   0.3123 |   6.5151 |   0.5387 |   3.3905 |   0.0759 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 24 | 520 | 910,070,918 |  11.1360 |   0.0072 |   0.0037 |   0.0001 |   0.1803 |   0.3095 |   6.5030 |   0.5666 |   3.4929 |   0.0764 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 24 | 520 | 910,070,918 |  11.2218 |   0.0072 |   0.0037 |   0.0001 |   0.1767 |   0.3065 |   6.6728 |   0.5522 |   3.4308 |   0.0754 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 16 | 520 | 910,070,918 |  11.6391 |   0.0073 |   0.0037 |   0.0003 |   0.1989 |   0.3204 |   6.5231 |   0.5378 |   3.9402 |   0.1112 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 16 | 520 | 910,070,918 |  11.6428 |   0.0071 |   0.0034 |   0.0004 |   0.1981 |   0.3235 |   6.5562 |   0.5377 |   3.9061 |   0.1138 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 16 | 520 | 910,070,918 |  11.5554 |   0.0072 |   0.0036 |   0.0004 |   0.1980 |   0.3190 |   6.5304 |   0.5391 |   3.8469 |   0.1145 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 16 | 520 | 910,070,918 |  12.1040 |   0.0073 |   0.0038 |   0.0004 |   0.1992 |   0.3364 |   6.5497 |   0.5529 |   4.3439 |   0.1142 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 16 | 520 | 910,070,918 |  11.5722 |   0.0072 |   0.0035 |   0.0003 |   0.2004 |   0.3222 |   6.5405 |   0.5375 |   3.8538 |   0.1102 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 8 | 520 | 910,070,918 |  21.0711 |   0.0072 |   0.0035 |   0.0004 |   0.4553 |   0.3764 |   6.0791 |   0.6666 |  13.2367 |   0.2494 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 8 | 520 | 910,070,918 |  23.4292 |   0.0073 |   0.0035 |   0.0003 |   0.4502 |   0.3842 |   7.1310 |   1.2545 |  13.9877 |   0.2140 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 8 | 520 | 910,070,918 |  21.0165 |   0.0072 |   0.0035 |   0.0003 |   0.4515 |   0.3727 |   6.0465 |   0.6478 |  13.2370 |   0.2536 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 8 | 520 | 910,070,918 |  20.9844 |   0.0070 |   0.0035 |   0.0003 |   0.4550 |   0.3743 |   6.0324 |   0.6587 |  13.2059 |   0.2507 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 8 | 520 | 910,070,918 |  21.0469 |   0.0072 |   0.0034 |   0.0003 |   0.4650 |   0.3775 |   6.0683 |   0.6601 |  13.2190 |   0.2495 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 1 1 1
| 1,049,866 | 40 | 31 | 1,911,754,892 |   1.3126 |   0.0073 |   0.0038 |   0.0003 |   0.0289 |   0.0276 |   0.8549 |   0.0858 |   0.2142 |   0.0936 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 1 1 1
| 1,049,866 | 40 | 31 | 1,911,754,892 |   1.3252 |   0.0072 |   0.0038 |   0.0003 |   0.0291 |   0.0283 |   0.8566 |   0.0875 |   0.2213 |   0.0948 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 1 1 1
| 1,049,866 | 40 | 31 | 1,911,754,892 |   1.3331 |   0.0136 |   0.0074 |   0.0004 |   0.0293 |   0.0275 |   0.8600 |   0.0860 |   0.2205 |   0.0959 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 1 1 1
| 1,049,866 | 40 | 31 | 1,911,754,892 |   1.2958 |   0.0073 |   0.0038 |   0.0004 |   0.0286 |   0.0274 |   0.8580 |   0.0842 |   0.1963 |   0.0938 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 1 1 1
| 1,049,866 | 40 | 31 | 1,911,754,892 |   1.3188 |   0.0072 |   0.0038 |   0.0003 |   0.0293 |   0.0275 |   0.8596 |   0.0886 |   0.2118 |   0.0945 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 1 1 1
| 1,049,866 | 32 | 31 | 1,911,754,892 |   1.5048 |   0.0072 |   0.0039 |   0.0004 |   0.0324 |   0.0313 |   0.9417 |   0.1009 |   0.2734 |   0.1175 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 1 1 1
| 1,049,866 | 32 | 31 | 1,911,754,892 |   1.4752 |   0.0073 |   0.0039 |   0.0004 |   0.0319 |   0.0298 |   0.9127 |   0.1042 |   0.2729 |   0.1161 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 1 1 1
| 1,049,866 | 32 | 31 | 1,911,754,892 |   1.5205 |   0.0072 |   0.0039 |   0.0004 |   0.0326 |   0.0304 |   0.9624 |   0.1011 |   0.2692 |   0.1173 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 1 1 1
| 1,049,866 | 32 | 31 | 1,911,754,892 |   1.4989 |   0.0073 |   0.0038 |   0.0004 |   0.0318 |   0.0302 |   0.9241 |   0.1050 |   0.2841 |   0.1161 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 1 1 1
| 1,049,866 | 32 | 31 | 1,911,754,892 |   1.5197 |   0.0073 |   0.0039 |   0.0004 |   0.0317 |   0.0294 |   0.9452 |   0.1091 |   0.2788 |   0.1178 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 1 1 1
| 1,049,866 | 24 | 31 | 1,911,754,892 |   1.8012 |   0.0072 |   0.0035 |   0.0001 |   0.0395 |   0.0328 |   1.0331 |   0.1299 |   0.4015 |   0.1571 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 1 1 1
| 1,049,866 | 24 | 31 | 1,911,754,892 |   1.8064 |   0.0072 |   0.0039 |   0.0001 |   0.0394 |   0.0337 |   1.0338 |   0.1279 |   0.4076 |   0.1567 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 1 1 1
| 1,049,866 | 24 | 31 | 1,911,754,892 |   1.7967 |   0.0072 |   0.0037 |   0.0001 |   0.0391 |   0.0333 |   1.0285 |   0.1296 |   0.4041 |   0.1547 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 1 1 1
| 1,049,866 | 24 | 31 | 1,911,754,892 |   1.7988 |   0.0072 |   0.0039 |   0.0001 |   0.0399 |   0.0332 |   1.0197 |   0.1261 |   0.4167 |   0.1560 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 1 1 1
| 1,049,866 | 24 | 31 | 1,911,754,892 |   1.7823 |   0.0072 |   0.0038 |   0.0001 |   0.0387 |   0.0337 |   1.0103 |   0.1342 |   0.3988 |   0.1593 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 1 1 1
| 1,049,866 | 16 | 31 | 1,911,754,892 |   2.0833 |   0.0074 |   0.0036 |   0.0004 |   0.0477 |   0.0428 |   1.1523 |   0.1698 |   0.4310 |   0.2319 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 1 1 1
| 1,049,866 | 16 | 31 | 1,911,754,892 |   2.0574 |   0.0072 |   0.0036 |   0.0004 |   0.0473 |   0.0419 |   1.1401 |   0.1685 |   0.4149 |   0.2371 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 1 1 1
| 1,049,866 | 16 | 31 | 1,911,754,892 |   2.0445 |   0.0073 |   0.0035 |   0.0004 |   0.0474 |   0.0414 |   1.1306 |   0.1725 |   0.4171 |   0.2279 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 1 1 1
| 1,049,866 | 16 | 31 | 1,911,754,892 |   2.0123 |   0.0072 |   0.0036 |   0.0003 |   0.0469 |   0.0422 |   1.1269 |   0.1690 |   0.3910 |   0.2286 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 1 1 1
| 1,049,866 | 16 | 31 | 1,911,754,892 |   2.0269 |   0.0073 |   0.0036 |   0.0004 |   0.0471 |   0.0409 |   1.1347 |   0.1719 |   0.3908 |   0.2340 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 1 1 1
| 1,049,866 | 8 | 31 | 1,911,754,892 |   3.8330 |   0.0075 |   0.0037 |   0.0003 |   0.0799 |   0.0656 |   1.4439 |   0.3177 |   1.4634 |   0.4548 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 1 1 1
| 1,049,866 | 8 | 31 | 1,911,754,892 |   3.8270 |   0.0076 |   0.0037 |   0.0003 |   0.0795 |   0.0671 |   1.4444 |   0.3174 |   1.4543 |   0.4564 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 1 1 1
| 1,049,866 | 8 | 31 | 1,911,754,892 |   3.8231 |   0.0076 |   0.0038 |   0.0003 |   0.0785 |   0.0655 |   1.4545 |   0.3146 |   1.4389 |   0.4631 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 1 1 1
| 1,049,866 | 8 | 31 | 1,911,754,892 |   3.8128 |   0.0076 |   0.0037 |   0.0003 |   0.0807 |   0.0674 |   1.4315 |   0.3167 |   1.4555 |   0.4531 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 1 1 1
| 1,049,866 | 8 | 31 | 1,911,754,892 |   3.7985 |   0.0076 |   0.0037 |   0.0003 |   0.0793 |   0.0656 |   1.4362 |   0.3153 |   1.4381 |   0.4561 | data/com-dblpungraph.bin_tc.bin |
CUDA AWARE MPI - TWO PASS
------------------------------------------------------------------------------------
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 1 0 1
| 147,892 | 40 | 31 | 884,179,859 |   1.0433 |   0.0072 |   0.0037 |   0.0001 |   0.0164 |   0.0928 |   0.6464 |   0.0427 |   0.1931 |   0.0445 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 1 0 1
| 147,892 | 40 | 31 | 884,179,859 |   1.0270 |   0.0072 |   0.0038 |   0.0001 |   0.0164 |   0.0931 |   0.6352 |   0.0426 |   0.1863 |   0.0459 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 1 0 1
| 147,892 | 40 | 31 | 884,179,859 |   1.0220 |   0.0072 |   0.0036 |   0.0001 |   0.0164 |   0.0957 |   0.6262 |   0.0414 |   0.1891 |   0.0459 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 1 0 1
| 147,892 | 40 | 31 | 884,179,859 |   1.0353 |   0.0071 |   0.0038 |   0.0001 |   0.0167 |   0.0943 |   0.6401 |   0.0417 |   0.1897 |   0.0456 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 1 0 1
| 147,892 | 40 | 31 | 884,179,859 |   1.0375 |   0.0072 |   0.0039 |   0.0001 |   0.0161 |   0.0953 |   0.6387 |   0.0450 |   0.1899 |   0.0452 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 1 0 1
| 147,892 | 32 | 31 | 884,179,859 |   1.1300 |   0.0072 |   0.0037 |   0.0001 |   0.0185 |   0.1010 |   0.6955 |   0.0448 |   0.2075 |   0.0555 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 1 0 1
| 147,892 | 32 | 31 | 884,179,859 |   1.1212 |   0.0073 |   0.0037 |   0.0001 |   0.0184 |   0.0955 |   0.6689 |   0.0462 |   0.2289 |   0.0559 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 1 0 1
| 147,892 | 32 | 31 | 884,179,859 |   1.1296 |   0.0072 |   0.0037 |   0.0001 |   0.0182 |   0.1004 |   0.6875 |   0.0458 |   0.2135 |   0.0568 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 1 0 1
| 147,892 | 32 | 31 | 884,179,859 |   1.1153 |   0.0071 |   0.0037 |   0.0001 |   0.0184 |   0.0951 |   0.6871 |   0.0453 |   0.2077 |   0.0546 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 1 0 1
| 147,892 | 32 | 31 | 884,179,859 |   1.1146 |   0.0071 |   0.0037 |   0.0001 |   0.0181 |   0.0956 |   0.6835 |   0.0445 |   0.2102 |   0.0555 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 1 0 1
| 147,892 | 24 | 31 | 884,179,859 |   1.1662 |   0.0071 |   0.0037 |   0.0001 |   0.0206 |   0.1088 |   0.6793 |   0.0584 |   0.2199 |   0.0719 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 1 0 1
| 147,892 | 24 | 31 | 884,179,859 |   1.1948 |   0.0072 |   0.0037 |   0.0001 |   0.0213 |   0.1118 |   0.6873 |   0.0572 |   0.2358 |   0.0742 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 1 0 1
| 147,892 | 24 | 31 | 884,179,859 |   1.2095 |   0.0073 |   0.0046 |   0.0001 |   0.0211 |   0.1095 |   0.6947 |   0.0585 |   0.2459 |   0.0724 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 1 0 1
| 147,892 | 24 | 31 | 884,179,859 |   1.1980 |   0.0072 |   0.0037 |   0.0001 |   0.0211 |   0.1093 |   0.6929 |   0.0573 |   0.2372 |   0.0730 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 1 0 1
| 147,892 | 24 | 31 | 884,179,859 |   1.2071 |   0.0074 |   0.0036 |   0.0001 |   0.0213 |   0.1124 |   0.6931 |   0.0577 |   0.2417 |   0.0734 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 1 0 1
| 147,892 | 16 | 31 | 884,179,859 |   1.3226 |   0.0072 |   0.0037 |   0.0001 |   0.0265 |   0.1378 |   0.7190 |   0.0738 |   0.2506 |   0.1077 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 1 0 1
| 147,892 | 16 | 31 | 884,179,859 |   1.3108 |   0.0073 |   0.0035 |   0.0001 |   0.0260 |   0.1340 |   0.7072 |   0.0727 |   0.2541 |   0.1095 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 1 0 1
| 147,892 | 16 | 31 | 884,179,859 |   1.2911 |   0.0071 |   0.0034 |   0.0001 |   0.0261 |   0.1329 |   0.6923 |   0.0720 |   0.2519 |   0.1086 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 1 0 1
| 147,892 | 16 | 31 | 884,179,859 |   1.3164 |   0.0072 |   0.0038 |   0.0001 |   0.0265 |   0.1416 |   0.7123 |   0.0718 |   0.2478 |   0.1092 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 1 0 1
| 147,892 | 16 | 31 | 884,179,859 |   1.3217 |   0.0072 |   0.0036 |   0.0001 |   0.0269 |   0.1357 |   0.7204 |   0.0740 |   0.2498 |   0.1077 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 1 0 1
| 147,892 | 8 | 31 | 884,179,859 |   1.6656 |   0.0072 |   0.0032 |   0.0001 |   0.0407 |   0.2002 |   0.7682 |   0.1233 |   0.3149 |   0.2110 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 1 0 1
| 147,892 | 8 | 31 | 884,179,859 |   1.6528 |   0.0070 |   0.0032 |   0.0001 |   0.0390 |   0.1995 |   0.7563 |   0.1210 |   0.3139 |   0.2160 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 1 0 1
| 147,892 | 8 | 31 | 884,179,859 |   1.6505 |   0.0072 |   0.0032 |   0.0001 |   0.0397 |   0.2061 |   0.7532 |   0.1255 |   0.3061 |   0.2127 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 1 0 1
| 147,892 | 8 | 31 | 884,179,859 |   1.6626 |   0.0073 |   0.0032 |   0.0001 |   0.0398 |   0.2083 |   0.7587 |   0.1253 |   0.3127 |   0.2105 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_147892.bin 1 0 1
| 147,892 | 8 | 31 | 884,179,859 |   1.6691 |   0.0073 |   0.0033 |   0.0001 |   0.0412 |   0.2017 |   0.7619 |   0.1235 |   0.3207 |   0.2128 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 1 0 1
| 165,435 | 40 | 606 | 871,365,688 |  11.4400 |   0.0073 |   0.0039 |   0.0001 |   0.0944 |   0.1373 |   7.7542 |   0.1859 |   3.2161 |   0.0448 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 1 0 1
| 165,435 | 40 | 606 | 871,365,688 |  11.3607 |   0.0072 |   0.0042 |   0.0001 |   0.0929 |   0.1379 |   7.7137 |   0.1851 |   3.1793 |   0.0446 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 1 0 1
| 165,435 | 40 | 606 | 871,365,688 |  11.3262 |   0.0073 |   0.0037 |   0.0001 |   0.0938 |   0.1370 |   7.7228 |   0.1807 |   3.1408 |   0.0439 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 1 0 1
| 165,435 | 40 | 606 | 871,365,688 |  11.4517 |   0.0073 |   0.0037 |   0.0001 |   0.0934 |   0.1374 |   7.7897 |   0.1896 |   3.1900 |   0.0443 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 1 0 1
| 165,435 | 40 | 606 | 871,365,688 |  11.2555 |   0.0073 |   0.0036 |   0.0001 |   0.0924 |   0.1368 |   7.6675 |   0.1904 |   3.1172 |   0.0439 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 1 0 1
| 165,435 | 32 | 606 | 871,365,688 |  11.4587 |   0.0072 |   0.0038 |   0.0001 |   0.0718 |   0.2175 |   7.7702 |   0.2096 |   3.1275 |   0.0547 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 1 0 1
| 165,435 | 32 | 606 | 871,365,688 |  11.3476 |   0.0072 |   0.0037 |   0.0001 |   0.0712 |   0.2141 |   7.7173 |   0.2178 |   3.0661 |   0.0538 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 1 0 1
| 165,435 | 32 | 606 | 871,365,688 |  11.3220 |   0.0073 |   0.0037 |   0.0001 |   0.0729 |   0.2180 |   7.6471 |   0.2111 |   3.1103 |   0.0552 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 1 0 1
| 165,435 | 32 | 606 | 871,365,688 |  11.2860 |   0.0072 |   0.0037 |   0.0001 |   0.0732 |   0.2205 |   7.6661 |   0.2223 |   3.0410 |   0.0556 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 1 0 1
| 165,435 | 32 | 606 | 871,365,688 |  11.0996 |   0.0071 |   0.0038 |   0.0001 |   0.0707 |   0.2131 |   7.5694 |   0.2209 |   2.9642 |   0.0541 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 1 0 1
| 165,435 | 24 | 606 | 871,365,688 |  11.8295 |   0.0072 |   0.0037 |   0.0001 |   0.0721 |   0.3310 |   7.3556 |   0.3383 |   3.6507 |   0.0746 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 1 0 1
| 165,435 | 24 | 606 | 871,365,688 |  11.9113 |   0.0072 |   0.0038 |   0.0001 |   0.0725 |   0.3285 |   7.3436 |   0.3427 |   3.7435 |   0.0732 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 1 0 1
| 165,435 | 24 | 606 | 871,365,688 |  11.9206 |   0.0072 |   0.0036 |   0.0001 |   0.0715 |   0.3311 |   7.3474 |   0.3414 |   3.7333 |   0.0886 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 1 0 1
| 165,435 | 24 | 606 | 871,365,688 |  11.7907 |   0.0072 |   0.0037 |   0.0001 |   0.0718 |   0.3317 |   7.2692 |   0.3370 |   3.7019 |   0.0719 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 1 0 1
| 165,435 | 24 | 606 | 871,365,688 |  12.0472 |   0.0072 |   0.0036 |   0.0001 |   0.0711 |   0.3335 |   7.4087 |   0.3431 |   3.8091 |   0.0745 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 1 0 1
| 165,435 | 16 | 606 | 871,365,688 |  11.3319 |   0.0072 |   0.0034 |   0.0001 |   0.1222 |   0.3658 |   5.7643 |   0.4017 |   4.5640 |   0.1066 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 1 0 1
| 165,435 | 16 | 606 | 871,365,688 |  11.7712 |   0.0072 |   0.0036 |   0.0001 |   0.1257 |   0.3837 |   5.7825 |   0.4117 |   4.9540 |   0.1064 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 1 0 1
| 165,435 | 16 | 606 | 871,365,688 |  11.3833 |   0.0072 |   0.0034 |   0.0001 |   0.1240 |   0.3703 |   5.7860 |   0.4084 |   4.5676 |   0.1196 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 1 0 1
| 165,435 | 16 | 606 | 871,365,688 |  11.4225 |   0.0073 |   0.0037 |   0.0001 |   0.1245 |   0.3661 |   5.7902 |   0.4076 |   4.5994 |   0.1274 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 1 0 1
| 165,435 | 16 | 606 | 871,365,688 |  11.6775 |   0.0072 |   0.0037 |   0.0001 |   0.1241 |   0.3639 |   5.7402 |   0.4131 |   4.9191 |   0.1097 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 1 0 1
| 165,435 | 8 | 606 | 871,365,688 |  19.8747 |   0.0072 |   0.0033 |   0.0001 |   0.3566 |   0.5172 |   5.6040 |   0.5436 |  12.5954 |   0.2508 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 1 0 1
| 165,435 | 8 | 606 | 871,365,688 |  20.0023 |   0.0072 |   0.0033 |   0.0001 |   0.3525 |   0.4988 |   5.7853 |   0.5413 |  12.6094 |   0.2078 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 1 0 1
| 165,435 | 8 | 606 | 871,365,688 |  19.9015 |   0.0072 |   0.0032 |   0.0001 |   0.3510 |   0.4919 |   5.6169 |   0.5393 |  12.6787 |   0.2165 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 1 0 1
| 165,435 | 8 | 606 | 871,365,688 |  19.8355 |   0.0072 |   0.0061 |   0.0001 |   0.3511 |   0.5046 |   5.6412 |   0.5421 |  12.5802 |   0.2090 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_165435.bin 1 0 1
| 165,435 | 8 | 606 | 871,365,688 |  19.9357 |   0.0072 |   0.0032 |   0.0001 |   0.3609 |   0.5150 |   5.5888 |   0.5477 |  12.7067 |   0.2094 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 1 0 1
| 409,593 | 40 | 247 | 1,669,750,513 |   7.3985 |   0.0072 |   0.0062 |   0.0001 |   0.0889 |   0.3609 |   4.7014 |   0.2448 |   1.9114 |   0.0839 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 1 0 1
| 409,593 | 40 | 247 | 1,669,750,513 |   7.4517 |   0.0073 |   0.0058 |   0.0001 |   0.0951 |   0.3730 |   4.7500 |   0.2343 |   1.9083 |   0.0837 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 1 0 1
| 409,593 | 40 | 247 | 1,669,750,513 |   7.3855 |   0.0072 |   0.0047 |   0.0001 |   0.0891 |   0.3648 |   4.7075 |   0.2304 |   1.9014 |   0.0849 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 1 0 1
| 409,593 | 40 | 247 | 1,669,750,513 |   7.3066 |   0.0072 |   0.0037 |   0.0001 |   0.0901 |   0.3595 |   4.7074 |   0.2323 |   1.8267 |   0.0832 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 1 0 1
| 409,593 | 40 | 247 | 1,669,750,513 |   7.2997 |   0.0073 |   0.0038 |   0.0001 |   0.0900 |   0.3617 |   4.7194 |   0.2266 |   1.8099 |   0.0848 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 1 0 1
| 409,593 | 32 | 247 | 1,669,750,513 |   7.2938 |   0.0072 |   0.0035 |   0.0001 |   0.1107 |   0.3776 |   4.3456 |   0.2693 |   2.0810 |   0.1024 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 1 0 1
| 409,593 | 32 | 247 | 1,669,750,513 |   7.1705 |   0.0071 |   0.0047 |   0.0001 |   0.1094 |   0.3802 |   4.2967 |   0.2513 |   2.0236 |   0.1020 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 1 0 1
| 409,593 | 32 | 247 | 1,669,750,513 |   7.2371 |   0.0072 |   0.0036 |   0.0001 |   0.1104 |   0.3840 |   4.3308 |   0.2526 |   2.0495 |   0.1025 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 1 0 1
| 409,593 | 32 | 247 | 1,669,750,513 |   7.1494 |   0.0073 |   0.0038 |   0.0001 |   0.1113 |   0.3808 |   4.2788 |   0.2611 |   2.0067 |   0.1033 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 1 0 1
| 409,593 | 32 | 247 | 1,669,750,513 |   7.1957 |   0.0072 |   0.0038 |   0.0001 |   0.1101 |   0.3782 |   4.3067 |   0.2579 |   2.0335 |   0.1019 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 1 0 1
| 409,593 | 24 | 247 | 1,669,750,513 |   6.7243 |   0.0072 |   0.0037 |   0.0001 |   0.1431 |   0.4424 |   3.5198 |   0.3021 |   2.1716 |   0.1380 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 1 0 1
| 409,593 | 24 | 247 | 1,669,750,513 |   6.7850 |   0.0071 |   0.0035 |   0.0001 |   0.1426 |   0.4403 |   3.5966 |   0.3020 |   2.1591 |   0.1371 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 1 0 1
| 409,593 | 24 | 247 | 1,669,750,513 |   6.7697 |   0.0073 |   0.0036 |   0.0001 |   0.1466 |   0.4353 |   3.5249 |   0.2853 |   2.2329 |   0.1373 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 1 0 1
| 409,593 | 24 | 247 | 1,669,750,513 |   6.7754 |   0.0072 |   0.0039 |   0.0001 |   0.1429 |   0.4333 |   3.5503 |   0.3016 |   2.2026 |   0.1374 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 1 0 1
| 409,593 | 24 | 247 | 1,669,750,513 |   6.7941 |   0.0144 |   0.0050 |   0.0001 |   0.1420 |   0.4394 |   3.5891 |   0.3007 |   2.1708 |   0.1376 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 1 0 1
| 409,593 | 16 | 247 | 1,669,750,513 |   8.4835 |   0.0072 |   0.0036 |   0.0001 |   0.1930 |   0.5744 |   2.7701 |   0.3371 |   4.3573 |   0.2443 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 1 0 1
| 409,593 | 16 | 247 | 1,669,750,513 |   8.4829 |   0.0073 |   0.0034 |   0.0001 |   0.1931 |   0.5737 |   2.7535 |   0.3328 |   4.3874 |   0.2350 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 1 0 1
| 409,593 | 16 | 247 | 1,669,750,513 |   8.5053 |   0.0073 |   0.0036 |   0.0001 |   0.1872 |   0.5805 |   2.7566 |   0.3406 |   4.4314 |   0.2016 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 1 0 1
| 409,593 | 16 | 247 | 1,669,750,513 |   8.5070 |   0.0073 |   0.0037 |   0.0001 |   0.1911 |   0.5782 |   2.7730 |   0.3356 |   4.3728 |   0.2489 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 1 0 1
| 409,593 | 16 | 247 | 1,669,750,513 |   8.4810 |   0.0071 |   0.0035 |   0.0001 |   0.1950 |   0.5739 |   2.7974 |   0.3391 |   4.3329 |   0.2355 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 1 0 1
| 409,593 | 8 | 247 | 1,669,750,513 |  16.4233 |   0.0072 |   0.0033 |   0.0001 |   0.3312 |   0.7462 |   3.0226 |   0.4574 |  11.3990 |   0.4597 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 1 0 1
| 409,593 | 8 | 247 | 1,669,750,513 |  20.1579 |   0.0072 |   0.0033 |   0.0001 |   0.3590 |   0.7277 |   6.2801 |   0.4633 |  11.9293 |   0.3912 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 1 0 1
| 409,593 | 8 | 247 | 1,669,750,513 |  16.4117 |   0.0072 |   0.0035 |   0.0001 |   0.3353 |   0.7329 |   3.0461 |   0.4535 |  11.3770 |   0.4596 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 1 0 1
| 409,593 | 8 | 247 | 1,669,750,513 |  16.5622 |   0.0072 |   0.0033 |   0.0001 |   0.3629 |   0.7411 |   3.0868 |   0.4536 |  11.4424 |   0.4680 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/data_409593.bin 1 0 1
| 409,593 | 8 | 247 | 1,669,750,513 |  16.4598 |   0.0072 |   0.0037 |   0.0001 |   0.3392 |   0.7426 |   3.0316 |   0.4583 |  11.4051 |   0.4758 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 40 | 520 | 910,070,918 |  10.1409 |   0.0075 |   0.0100 |   0.0001 |   0.1173 |   0.2792 |   6.5984 |   0.3030 |   2.7881 |   0.0473 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 40 | 520 | 910,070,918 |  10.1999 |   0.0074 |   0.0054 |   0.0001 |   0.1180 |   0.2707 |   6.6727 |   0.2926 |   2.7918 |   0.0467 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 40 | 520 | 910,070,918 |  10.2063 |   0.0073 |   0.0037 |   0.0001 |   0.1183 |   0.2757 |   6.6437 |   0.2943 |   2.8198 |   0.0472 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 40 | 520 | 910,070,918 |  10.2723 |   0.0072 |   0.0038 |   0.0001 |   0.1167 |   0.2785 |   6.6855 |   0.2992 |   2.8384 |   0.0467 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 40 | 520 | 910,070,918 |  10.0925 |   0.0073 |   0.0038 |   0.0001 |   0.1168 |   0.2743 |   6.5912 |   0.2853 |   2.7703 |   0.0472 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 32 | 520 | 910,070,918 |  10.3493 |   0.0072 |   0.0059 |   0.0001 |   0.1281 |   0.3284 |   6.6709 |   0.3339 |   2.8237 |   0.0570 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 32 | 520 | 910,070,918 |  10.4274 |   0.0071 |   0.0038 |   0.0001 |   0.1291 |   0.3345 |   6.7201 |   0.3381 |   2.8410 |   0.0574 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 32 | 520 | 910,070,918 |  10.3253 |   0.0072 |   0.0037 |   0.0001 |   0.1273 |   0.3264 |   6.6793 |   0.3262 |   2.8022 |   0.0566 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 32 | 520 | 910,070,918 |  10.4139 |   0.0072 |   0.0038 |   0.0001 |   0.1348 |   0.3256 |   6.7182 |   0.3369 |   2.8345 |   0.0566 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 32 | 520 | 910,070,918 |  10.3790 |   0.0072 |   0.0037 |   0.0001 |   0.1275 |   0.3231 |   6.7156 |   0.3283 |   2.8206 |   0.0565 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 24 | 520 | 910,070,918 |  10.1431 |   0.0072 |   0.0058 |   0.0001 |   0.1620 |   0.4021 |   5.8225 |   0.4741 |   3.1982 |   0.0769 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 24 | 520 | 910,070,918 |  10.1201 |   0.0072 |   0.0037 |   0.0001 |   0.1599 |   0.3956 |   5.8336 |   0.4709 |   3.1752 |   0.0777 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 24 | 520 | 910,070,918 |  10.1331 |   0.0072 |   0.0035 |   0.0001 |   0.1609 |   0.3944 |   5.8057 |   0.4705 |   3.2191 |   0.0754 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 24 | 520 | 910,070,918 |  10.2221 |   0.0072 |   0.0037 |   0.0001 |   0.1717 |   0.4031 |   5.8807 |   0.4903 |   3.1931 |   0.0760 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 24 | 520 | 910,070,918 |  10.1176 |   0.0072 |   0.0039 |   0.0001 |   0.1610 |   0.3964 |   5.8196 |   0.4692 |   3.1874 |   0.0768 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 16 | 520 | 910,070,918 |  10.7981 |   0.0073 |   0.0068 |   0.0004 |   0.1807 |   0.4337 |   5.5499 |   0.4901 |   4.0021 |   0.1339 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 16 | 520 | 910,070,918 |  10.8394 |   0.0073 |   0.0038 |   0.0003 |   0.1837 |   0.4388 |   5.5280 |   0.4928 |   4.0756 |   0.1129 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 16 | 520 | 910,070,918 |  11.2289 |   0.0073 |   0.0035 |   0.0003 |   0.1841 |   0.4309 |   5.6400 |   0.5017 |   4.3474 |   0.1172 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 16 | 520 | 910,070,918 |  10.9627 |   0.0073 |   0.0034 |   0.0003 |   0.1834 |   0.4358 |   5.5797 |   0.4941 |   4.1513 |   0.1108 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 16 | 520 | 910,070,918 |  10.8963 |   0.0072 |   0.0037 |   0.0004 |   0.1837 |   0.4317 |   5.5979 |   0.4949 |   4.0447 |   0.1359 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 8 | 520 | 910,070,918 |  21.2679 |   0.0072 |   0.0065 |   0.0003 |   0.4872 |   0.6000 |   5.4907 |   0.6591 |  13.7660 |   0.2574 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 8 | 520 | 910,070,918 |  21.2144 |   0.0073 |   0.0035 |   0.0003 |   0.4873 |   0.6113 |   5.4797 |   0.6522 |  13.7259 |   0.2504 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 8 | 520 | 910,070,918 |  21.2245 |   0.0072 |   0.0036 |   0.0003 |   0.4825 |   0.5964 |   5.4943 |   0.6527 |  13.7342 |   0.2570 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 8 | 520 | 910,070,918 |  21.2868 |   0.0072 |   0.0036 |   0.0003 |   0.4940 |   0.5914 |   5.5251 |   0.6578 |  13.7973 |   0.2138 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 8 | 520 | 910,070,918 |  21.2610 |   0.0072 |   0.0036 |   0.0003 |   0.4860 |   0.5956 |   5.4946 |   0.6500 |  13.8120 |   0.2152 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 1 0 1
| 1,049,866 | 40 | 31 | 1,911,754,892 |   1.7001 |   0.0074 |   0.0098 |   0.0003 |   0.0283 |   0.2203 |   0.9816 |   0.0936 |   0.2724 |   0.0961 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 1 0 1
| 1,049,866 | 40 | 31 | 1,911,754,892 |   1.6271 |   0.0073 |   0.0056 |   0.0003 |   0.0279 |   0.2140 |   0.9382 |   0.0758 |   0.2682 |   0.0954 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 1 0 1
| 1,049,866 | 40 | 31 | 1,911,754,892 |   1.6194 |   0.0073 |   0.0052 |   0.0004 |   0.0284 |   0.2123 |   0.9428 |   0.0753 |   0.2568 |   0.0962 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 1 0 1
| 1,049,866 | 40 | 31 | 1,911,754,892 |   1.6386 |   0.0072 |   0.0040 |   0.0003 |   0.0288 |   0.2125 |   0.9530 |   0.0767 |   0.2651 |   0.0951 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 1 0 1
| 1,049,866 | 40 | 31 | 1,911,754,892 |   1.6301 |   0.0073 |   0.0039 |   0.0003 |   0.0284 |   0.2075 |   0.9496 |   0.0771 |   0.2653 |   0.0945 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 1 0 1
| 1,049,866 | 32 | 31 | 1,911,754,892 |   1.7752 |   0.0072 |   0.0072 |   0.0004 |   0.0311 |   0.2338 |   1.0092 |   0.0920 |   0.2847 |   0.1169 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 1 0 1
| 1,049,866 | 32 | 31 | 1,911,754,892 |   1.7905 |   0.0073 |   0.0039 |   0.0003 |   0.0314 |   0.2357 |   1.0256 |   0.0935 |   0.2772 |   0.1195 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 1 0 1
| 1,049,866 | 32 | 31 | 1,911,754,892 |   1.7844 |   0.0072 |   0.0037 |   0.0004 |   0.0312 |   0.2332 |   1.0213 |   0.0959 |   0.2783 |   0.1171 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 1 0 1
| 1,049,866 | 32 | 31 | 1,911,754,892 |   1.7830 |   0.0073 |   0.0039 |   0.0003 |   0.0314 |   0.2371 |   1.0193 |   0.0930 |   0.2778 |   0.1168 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 1 0 1
| 1,049,866 | 32 | 31 | 1,911,754,892 |   1.7883 |   0.0072 |   0.0039 |   0.0004 |   0.0311 |   0.2415 |   1.0212 |   0.0933 |   0.2732 |   0.1206 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 1 0 1
| 1,049,866 | 24 | 31 | 1,911,754,892 |   2.0397 |   0.0074 |   0.0068 |   0.0002 |   0.0378 |   0.2649 |   1.0631 |   0.1099 |   0.4007 |   0.1556 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 1 0 1
| 1,049,866 | 24 | 31 | 1,911,754,892 |   2.0289 |   0.0072 |   0.0038 |   0.0002 |   0.0386 |   0.2729 |   1.0503 |   0.1108 |   0.3929 |   0.1559 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 1 0 1
| 1,049,866 | 24 | 31 | 1,911,754,892 |   2.0316 |   0.0072 |   0.0038 |   0.0002 |   0.0386 |   0.2740 |   1.0434 |   0.1143 |   0.3993 |   0.1547 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 1 0 1
| 1,049,866 | 24 | 31 | 1,911,754,892 |   2.1045 |   0.0073 |   0.0040 |   0.0002 |   0.0389 |   0.2772 |   1.0795 |   0.1136 |   0.4313 |   0.1564 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 1 0 1
| 1,049,866 | 24 | 31 | 1,911,754,892 |   2.0382 |   0.0072 |   0.0038 |   0.0002 |   0.0388 |   0.2676 |   1.0592 |   0.1108 |   0.3979 |   0.1566 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 1 0 1
| 1,049,866 | 16 | 31 | 1,911,754,892 |   2.4951 |   0.0072 |   0.0070 |   0.0003 |   0.0494 |   0.3539 |   1.2277 |   0.1534 |   0.4637 |   0.2395 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 1 0 1
| 1,049,866 | 16 | 31 | 1,911,754,892 |   2.4721 |   0.0073 |   0.0038 |   0.0003 |   0.0503 |   0.3574 |   1.2282 |   0.1494 |   0.4503 |   0.2289 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 1 0 1
| 1,049,866 | 16 | 31 | 1,911,754,892 |   2.5007 |   0.0073 |   0.0038 |   0.0003 |   0.0508 |   0.3593 |   1.2347 |   0.1517 |   0.4654 |   0.2312 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 1 0 1
| 1,049,866 | 16 | 31 | 1,911,754,892 |   2.5338 |   0.0072 |   0.0038 |   0.0003 |   0.0583 |   0.3774 |   1.2527 |   0.1608 |   0.4390 |   0.2380 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 1 0 1
| 1,049,866 | 16 | 31 | 1,911,754,892 |   2.4521 |   0.0075 |   0.0037 |   0.0003 |   0.0491 |   0.3577 |   1.2110 |   0.1530 |   0.4434 |   0.2300 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 1 0 1
| 1,049,866 | 8 | 31 | 1,911,754,892 |   4.2177 |   0.0077 |   0.0087 |   0.0003 |   0.0742 |   0.5669 |   1.5584 |   0.2809 |   1.2771 |   0.4522 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 1 0 1
| 1,049,866 | 8 | 31 | 1,911,754,892 |   4.2765 |   0.0078 |   0.0038 |   0.0003 |   0.0762 |   0.5749 |   1.5713 |   0.2820 |   1.2266 |   0.5374 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 1 0 1
| 1,049,866 | 8 | 31 | 1,911,754,892 |   4.2509 |   0.0077 |   0.0039 |   0.0003 |   0.0756 |   0.5782 |   1.5841 |   0.2852 |   1.2638 |   0.4560 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 1 0 1
| 1,049,866 | 8 | 31 | 1,911,754,892 |   4.2343 |   0.0075 |   0.0038 |   0.0003 |   0.0747 |   0.5707 |   1.5629 |   0.2816 |   1.2737 |   0.4628 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc.out data/com-dblpungraph.bin 1 0 1
| 1,049,866 | 8 | 31 | 1,911,754,892 |   4.2382 |   0.0076 |   0.0037 |   0.0003 |   0.0755 |   0.5726 |   1.5689 |   0.2787 |   1.2140 |   0.5206 | data/com-dblpungraph.bin_tc.bin |
Polaris job ended at: 2024-08-15 10:31:15
Total time taken: 1 hour(s), 22 minute(s), 6 second(s)
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> JOB ENDED >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

```
