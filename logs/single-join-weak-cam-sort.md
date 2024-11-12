CUDA AWARE MPI - SORTING
------------------------------------------------------------------------------------
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> SINGLE JOIN on 5000000 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 1 1 1
| 160,000,000 | 32 | 1 | 25,271,033,550 |   4.5527 |   0.0117 |   0.0772 |   0.0004 |   0.1231 |   0.0567 |   2.1881 |   0.3904 |   0.0000 |   0.4015 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 1 1 1
| 160,000,000 | 32 | 1 | 25,271,033,550 |   4.7037 |   0.0103 |   0.0770 |   0.0004 |   0.1232 |   0.0575 |   2.3345 |   0.3929 |   0.0000 |   0.3961 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 1 1 1
| 160,000,000 | 32 | 1 | 25,271,033,550 |   4.5934 |   0.0104 |   0.0802 |   0.0003 |   0.1232 |   0.0582 |   2.2477 |   0.3955 |   0.0000 |   0.3975 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 1 1 1
| 80,000,000 | 16 | 1 | 6,378,920,191 |   2.1792 |   0.0102 |   0.0769 |   0.0004 |   0.0630 |   0.0305 |   1.0097 |   0.1648 |   0.0000 |   0.2011 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 1 1 1
| 80,000,000 | 16 | 1 | 6,378,920,191 |   2.1115 |   0.0103 |   0.0767 |   0.0004 |   0.0623 |   0.0310 |   0.9374 |   0.1620 |   0.0000 |   0.2041 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 1 1 1
| 80,000,000 | 16 | 1 | 6,378,920,191 |   2.1001 |   0.0104 |   0.0768 |   0.0004 |   0.0628 |   0.0305 |   0.9352 |   0.1618 |   0.0000 |   0.1999 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 1 1 1
| 40,000,000 | 8 | 1 | 1,598,607,411 |   1.0385 |   0.0103 |   0.0770 |   0.0004 |   0.0308 |   0.0171 |   0.4369 |   0.0947 |   0.0000 |   0.1026 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 1 1 1
| 40,000,000 | 8 | 1 | 1,598,607,411 |   1.1006 |   0.0106 |   0.0762 |   0.0004 |   0.0317 |   0.0317 |   0.4780 |   0.0951 |   0.0000 |   0.1010 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 1 1 1
| 40,000,000 | 8 | 1 | 1,598,607,411 |   1.0339 |   0.0106 |   0.0764 |   0.0003 |   0.0306 |   0.0166 |   0.4285 |   0.0948 |   0.0000 |   0.1021 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 1 1 1
| 20,000,000 | 4 | 1 | 399,890,633 |   1.1294 |   0.5435 |   0.0787 |   0.0003 |   0.0154 |   0.0098 |   0.7595 |   0.0465 |   0.0000 |   0.0070 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 1 1 1
| 20,000,000 | 4 | 1 | 399,890,633 |   1.1263 |   0.5430 |   0.0800 |   0.0003 |   0.0154 |   0.0497 |   0.7459 |   0.0465 |   0.0000 |   0.0071 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 1 1 1
| 20,000,000 | 4 | 1 | 399,890,633 |   1.1242 |   0.5416 |   0.0782 |   0.0002 |   0.0152 |   0.0158 |   0.7461 |   0.0463 |   0.0000 |   0.0071 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 2 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 1 1 1
| 10,000,000 | 2 | 1 | 99,981,585 |   0.4787 |   0.2058 |   0.0765 |   0.0002 |   0.0073 |   0.0093 |   0.3042 |   0.0245 |   0.0000 |   0.0026 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 2 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 1 1 1
| 10,000,000 | 2 | 1 | 99,981,585 |   0.4341 |   0.1759 |   0.0765 |   0.0002 |   0.0062 |   0.0081 |   0.2643 |   0.0237 |   0.0000 |   0.0026 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 2 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 1 1 1
| 10,000,000 | 2 | 1 | 99,981,585 |   0.4293 |   0.1759 |   0.0767 |   0.0002 |   0.0061 |   0.0083 |   0.2635 |   0.0225 |   0.0000 |   0.0027 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 1 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 1 1 1
| 5,000,000 | 1 | 1 | 24,996,544 |   0.3706 |   0.2088 |   0.0761 |   0.0002 |   0.0043 |   0.0042 |   0.1079 |   0.0140 |   0.0000 |   0.0015 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 1 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 1 1 1
| 5,000,000 | 1 | 1 | 24,996,544 |   0.3718 |   0.2100 |   0.0757 |   0.0002 |   0.0043 |   0.0040 |   0.1085 |   0.0140 |   0.0000 |   0.0015 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 1 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 1 1 1
| 5,000,000 | 1 | 1 | 24,996,544 |   0.3681 |   0.2070 |   0.0758 |   0.0002 |   0.0043 |   0.0042 |   0.1086 |   0.0140 |   0.0000 |   0.0015 | 5000000_singlejoin.bin |
