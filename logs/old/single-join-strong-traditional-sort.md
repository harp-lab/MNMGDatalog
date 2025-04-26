TRADITIONAL MPI - SORTING
------------------------------------------------------------------------------------
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> SINGLE JOIN on 15000000 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 0 1 1
| 15,000,000 | 32 | 1 | 224,966,459 |   0.7774 |   0.7039 |   0.0084 |   0.0003 |   0.0016 |   0.0052 |   0.0573 |   0.0057 |   0.0000 |   0.0018 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 0 1 1
| 15,000,000 | 32 | 1 | 224,966,459 |   0.7789 |   0.7055 |   0.0084 |   0.0003 |   0.0017 |   0.0037 |   0.0655 |   0.0059 |   0.0000 |   0.0018 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 0 1 1
| 15,000,000 | 32 | 1 | 224,966,459 |   0.7750 |   0.7021 |   0.0088 |   0.0003 |   0.0017 |   0.0036 |   0.0624 |   0.0060 |   0.0000 |   0.0019 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 0 1 1
| 15,000,000 | 16 | 1 | 224,950,913 |   0.8906 |   0.7667 |   0.0154 |   0.0003 |   0.0031 |   0.0054 |   0.1011 |   0.0088 |   0.0000 |   0.0026 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 0 1 1
| 15,000,000 | 16 | 1 | 224,950,913 |   0.8229 |   0.7008 |   0.0154 |   0.0003 |   0.0031 |   0.0038 |   0.0847 |   0.0088 |   0.0000 |   0.0026 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 0 1 1
| 15,000,000 | 16 | 1 | 224,950,913 |   0.8225 |   0.7001 |   0.0162 |   0.0003 |   0.0031 |   0.0046 |   0.0918 |   0.0085 |   0.0000 |   0.0029 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 0 1 1
| 15,000,000 | 8 | 1 | 224,961,629 |   0.9221 |   0.7003 |   0.0294 |   0.0003 |   0.0045 |   0.0047 |   0.1493 |   0.0141 |   0.0000 |   0.0039 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 0 1 1
| 15,000,000 | 8 | 1 | 224,961,629 |   0.9249 |   0.7011 |   0.0294 |   0.0003 |   0.0046 |   0.0048 |   0.1487 |   0.0143 |   0.0000 |   0.0039 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 0 1 1
| 15,000,000 | 8 | 1 | 224,961,629 |   0.9280 |   0.7047 |   0.0295 |   0.0003 |   0.0046 |   0.0046 |   0.1486 |   0.0144 |   0.0000 |   0.0038 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 0 1 1
| 15,000,000 | 4 | 1 | 224,952,211 |   1.1562 |   0.7063 |   0.0580 |   0.0003 |   0.0078 |   0.0067 |   0.3038 |   0.0265 |   0.0000 |   0.0058 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 0 1 1
| 15,000,000 | 4 | 1 | 224,952,211 |   1.1637 |   0.7067 |   0.0580 |   0.0002 |   0.0081 |   0.0071 |   0.3102 |   0.0272 |   0.0000 |   0.0059 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 0 1 1
| 15,000,000 | 4 | 1 | 224,952,211 |   1.1671 |   0.7069 |   0.0581 |   0.0004 |   0.0084 |   0.0076 |   0.3117 |   0.0274 |   0.0000 |   0.0060 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 2 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 0 1 1
| 15,000,000 | 2 | 1 | 224,954,187 |   1.2486 |   0.3777 |   0.1147 |   0.0003 |   0.0153 |   0.0101 |   0.5981 |   0.0473 |   0.0000 |   0.0056 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 2 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 0 1 1
| 15,000,000 | 2 | 1 | 224,954,187 |   1.1947 |   0.3241 |   0.1231 |   0.0003 |   0.0128 |   0.0096 |   0.5993 |   0.0445 |   0.0000 |   0.0055 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 2 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 0 1 1
| 15,000,000 | 2 | 1 | 224,954,187 |   1.1889 |   0.3239 |   0.1138 |   0.0003 |   0.0128 |   0.0096 |   0.5962 |   0.0445 |   0.0000 |   0.0054 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 1 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 0 1 1
| 15,000,000 | 1 | 1 | 224,975,474 |   1.2741 |   0.1858 |   0.2255 |   0.0004 |   0.0252 |   0.0150 |   0.7036 |   0.0882 |   0.0000 |   0.0058 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 1 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 0 1 1
| 15,000,000 | 1 | 1 | 224,975,474 |   1.2762 |   0.1843 |   0.2268 |   0.0003 |   0.0252 |   0.0150 |   0.6922 |   0.0881 |   0.0000 |   0.0062 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 1 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 0 1 1
| 15,000,000 | 1 | 1 | 224,975,474 |   1.2589 |   0.1827 |   0.2254 |   0.0003 |   0.0251 |   0.0151 |   0.6948 |   0.0881 |   0.0000 |   0.0060 | 15000000_singlejoin.bin |
