CUDA AWARE MPI - TWO PASS
------------------------------------------------------------------------------------
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> SINGLE JOIN on 15000000 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 1 0 1
| 15,000,000 | 32 | 1 | 224,966,459 |   0.1625 |   0.0057 |   0.0084 |   0.0003 |   0.0016 |   0.0173 |   0.1201 |   0.0091 |   0.0000 |   0.0041 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 1 0 1
| 15,000,000 | 32 | 1 | 224,966,459 |   0.1617 |   0.0057 |   0.0086 |   0.0003 |   0.0017 |   0.0158 |   0.1179 |   0.0080 |   0.0000 |   0.0042 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 1 0 1
| 15,000,000 | 32 | 1 | 224,966,459 |   0.1586 |   0.0058 |   0.0084 |   0.0004 |   0.0017 |   0.0148 |   0.1169 |   0.0099 |   0.0000 |   0.0043 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 1 0 1
| 15,000,000 | 16 | 1 | 224,950,913 |   0.1793 |   0.0060 |   0.0157 |   0.0003 |   0.0033 |   0.0197 |   0.1102 |   0.0104 |   0.0000 |   0.0061 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 1 0 1
| 15,000,000 | 16 | 1 | 224,950,913 |   0.1790 |   0.0059 |   0.0153 |   0.0003 |   0.0032 |   0.0195 |   0.1113 |   0.0102 |   0.0000 |   0.0064 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 1 0 1
| 15,000,000 | 16 | 1 | 224,950,913 |   0.1797 |   0.0060 |   0.0154 |   0.0003 |   0.0032 |   0.0203 |   0.1108 |   0.0107 |   0.0000 |   0.0063 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 1 0 1
| 15,000,000 | 8 | 1 | 224,961,629 |   0.3123 |   0.0066 |   0.0294 |   0.0003 |   0.0048 |   0.0321 |   0.1940 |   0.0178 |   0.0000 |   0.0103 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 1 0 1
| 15,000,000 | 8 | 1 | 224,961,629 |   0.3152 |   0.0067 |   0.0295 |   0.0009 |   0.0049 |   0.0318 |   0.2022 |   0.0233 |   0.0000 |   0.0099 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 1 0 1
| 15,000,000 | 8 | 1 | 224,961,629 |   0.3145 |   0.0067 |   0.0294 |   0.0003 |   0.0049 |   0.0320 |   0.1963 |   0.0178 |   0.0000 |   0.0098 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 1 0 1
| 15,000,000 | 4 | 1 | 224,952,211 |   0.9637 |   0.5340 |   0.0587 |   0.0003 |   0.0084 |   0.1317 |   0.6442 |   0.0248 |   0.0000 |   0.0058 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 1 0 1
| 15,000,000 | 4 | 1 | 224,952,211 |   0.9678 |   0.5382 |   0.0581 |   0.0003 |   0.0081 |   0.0987 |   0.6432 |   0.0263 |   0.0000 |   0.0058 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 1 0 1
| 15,000,000 | 4 | 1 | 224,952,211 |   0.9668 |   0.5379 |   0.0591 |   0.0004 |   0.0081 |   0.0675 |   0.6490 |   0.0256 |   0.0000 |   0.0058 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 2 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 1 0 1
| 15,000,000 | 2 | 1 | 224,954,187 |   0.8964 |   0.2076 |   0.1148 |   0.0003 |   0.0151 |   0.1878 |   0.4054 |   0.0441 |   0.0000 |   0.0057 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 2 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 1 0 1
| 15,000,000 | 2 | 1 | 224,954,187 |   0.8551 |   0.1797 |   0.1188 |   0.0003 |   0.0127 |   0.1811 |   0.3973 |   0.0432 |   0.0000 |   0.0057 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 2 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 1 0 1
| 15,000,000 | 2 | 1 | 224,954,187 |   0.8202 |   0.1785 |   0.1143 |   0.0003 |   0.0127 |   0.1519 |   0.3674 |   0.0432 |   0.0000 |   0.0056 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 1 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 1 0 1
| 15,000,000 | 1 | 1 | 224,975,474 |   1.6872 |   0.1844 |   0.2256 |   0.0003 |   0.0251 |   0.4816 |   0.6597 |   0.0879 |   0.0000 |   0.0063 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 1 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 1 0 1
| 15,000,000 | 1 | 1 | 224,975,474 |   1.6931 |   0.1891 |   0.2256 |   0.0003 |   0.0251 |   0.4816 |   0.6586 |   0.0878 |   0.0000 |   0.0064 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 1 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 1 0 1
| 15,000,000 | 1 | 1 | 224,975,474 |   1.6883 |   0.1859 |   0.2254 |   0.0003 |   0.0251 |   0.4816 |   0.6580 |   0.0878 |   0.0000 |   0.0063 | 15000000_singlejoin.bin |
Polaris job ended at: 2024-11-12 06:41:17
Total time taken: 0 hour(s), 10 minute(s), 20 second(s)
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> JOB ENDED >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

