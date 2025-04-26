CC single_join.cu -o single_join.out -lm -O3
CUDA AWARE MPI - SORTING
------------------------------------------------------------------------------------
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> SINGLE JOIN on 15000000 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 1 1 1
| 15,000,000 | 32 | 1 | 224,966,459 |   0.1569 |   0.0058 |   0.0083 |   0.0003 |   0.0017 |   0.0069 |   0.1143 |   0.0086 |   0.0000 |   0.0121 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 1 1 1
| 15,000,000 | 32 | 1 | 224,966,459 |   0.1543 |   0.0057 |   0.0083 |   0.0003 |   0.0017 |   0.0046 |   0.1176 |   0.0139 |   0.0000 |   0.0060 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 1 1 1
| 15,000,000 | 32 | 1 | 224,966,459 |   0.1513 |   0.0057 |   0.0086 |   0.0003 |   0.0018 |   0.0039 |   0.1148 |   0.0094 |   0.0000 |   0.0060 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 1 1 1
| 15,000,000 | 16 | 1 | 224,950,913 |   0.1668 |   0.0059 |   0.0153 |   0.0003 |   0.0032 |   0.0041 |   0.1092 |   0.0091 |   0.0000 |   0.0097 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 1 1 1
| 15,000,000 | 16 | 1 | 224,950,913 |   0.1670 |   0.0061 |   0.0154 |   0.0003 |   0.0032 |   0.0043 |   0.1108 |   0.0087 |   0.0000 |   0.0097 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 1 1 1
| 15,000,000 | 16 | 1 | 224,950,913 |   0.1666 |   0.0059 |   0.0172 |   0.0003 |   0.0032 |   0.0045 |   0.1093 |   0.0091 |   0.0000 |   0.0102 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 1 1 1
| 15,000,000 | 8 | 1 | 224,961,629 |   0.2298 |   0.0066 |   0.0306 |   0.0003 |   0.0049 |   0.0051 |   0.1317 |   0.0154 |   0.0000 |   0.0170 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 1 1 1
| 15,000,000 | 8 | 1 | 224,961,629 |   0.2289 |   0.0067 |   0.0304 |   0.0003 |   0.0049 |   0.0052 |   0.1303 |   0.0154 |   0.0000 |   0.0170 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 1 1 1
| 15,000,000 | 8 | 1 | 224,961,629 |   0.2291 |   0.0068 |   0.0296 |   0.0003 |   0.0050 |   0.0052 |   0.1303 |   0.0153 |   0.0000 |   0.0170 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 1 1 1
| 15,000,000 | 4 | 1 | 224,952,211 |   0.9267 |   0.5350 |   0.0587 |   0.0003 |   0.0082 |   0.0459 |   0.6560 |   0.0270 |   0.0000 |   0.0048 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 1 1 1
| 15,000,000 | 4 | 1 | 224,952,211 |   0.9281 |   0.5336 |   0.0589 |   0.0003 |   0.0082 |   0.0434 |   0.6656 |   0.0269 |   0.0000 |   0.0050 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 1 1 1
| 15,000,000 | 4 | 1 | 224,952,211 |   0.9240 |   0.5354 |   0.0598 |   0.0003 |   0.0081 |   0.0456 |   0.6581 |   0.0268 |   0.0000 |   0.0049 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 2 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 1 1 1
| 15,000,000 | 2 | 1 | 224,954,187 |   0.7664 |   0.2132 |   0.1144 |   0.0003 |   0.0150 |   0.0125 |   0.4446 |   0.0447 |   0.0000 |   0.0048 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 2 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 1 1 1
| 15,000,000 | 2 | 1 | 224,954,187 |   0.7055 |   0.1786 |   0.1142 |   0.0003 |   0.0129 |   0.0120 |   0.3904 |   0.0441 |   0.0000 |   0.0048 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 2 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 1 1 1
| 15,000,000 | 2 | 1 | 224,954,187 |   0.7162 |   0.1783 |   0.1142 |   0.0003 |   0.0129 |   0.0119 |   0.4001 |   0.0460 |   0.0000 |   0.0048 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 1 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 1 1 1
| 15,000,000 | 1 | 1 | 224,975,474 |   1.2780 |   0.1831 |   0.2253 |   0.0004 |   0.0250 |   0.0150 |   0.7156 |   0.0879 |   0.0000 |   0.0065 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 1 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 1 1 1
| 15,000,000 | 1 | 1 | 224,975,474 |   1.2888 |   0.1841 |   0.2258 |   0.0004 |   0.0251 |   0.0150 |   0.7152 |   0.0880 |   0.0000 |   0.0062 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 1 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 1 1 1
| 15,000,000 | 1 | 1 | 224,975,474 |   1.2769 |   0.1859 |   0.2264 |   0.0003 |   0.0252 |   0.0150 |   0.7135 |   0.0881 |   0.0000 |   0.0066 | 15000000_singlejoin.bin |

