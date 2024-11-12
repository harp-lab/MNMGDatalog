CUDA AWARE MPI - TWO PASS
------------------------------------------------------------------------------------
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> SINGLE JOIN on 5000000 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 1 0 1
| 160,000,000 | 32 | 1 | 25,271,033,550 |   5.0886 |   0.0102 |   0.0767 |   0.0004 |   0.1235 |   0.6296 |   2.3804 |   0.4216 |   0.0000 |   0.2201 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 1 0 1
| 160,000,000 | 32 | 1 | 25,271,033,550 |   5.0203 |   0.0102 |   0.0780 |   0.0004 |   0.1257 |   0.6506 |   2.2992 |   0.4426 |   0.0000 |   0.2187 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 1 0 1
| 160,000,000 | 32 | 1 | 25,271,033,550 |   5.2214 |   0.0105 |   0.0769 |   0.0003 |   0.1233 |   0.6803 |   2.4656 |   0.4505 |   0.0000 |   0.2151 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 1 0 1
| 80,000,000 | 16 | 1 | 6,378,920,191 |   2.3486 |   0.0105 |   0.0767 |   0.0003 |   0.0623 |   0.3073 |   1.0208 |   0.2201 |   0.0000 |   0.1062 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 1 0 1
| 80,000,000 | 16 | 1 | 6,378,920,191 |   2.2526 |   0.0104 |   0.0765 |   0.0003 |   0.0626 |   0.3078 |   0.9277 |   0.2203 |   0.0000 |   0.1083 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 1 0 1
| 80,000,000 | 16 | 1 | 6,378,920,191 |   2.3097 |   0.0101 |   0.0767 |   0.0004 |   0.0626 |   0.3305 |   0.9707 |   0.2194 |   0.0000 |   0.1176 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 1 0 1
| 40,000,000 | 8 | 1 | 1,598,607,411 |   1.1171 |   0.0103 |   0.0765 |   0.0003 |   0.0306 |   0.1706 |   0.4325 |   0.1113 |   0.0000 |   0.0564 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 1 0 1
| 40,000,000 | 8 | 1 | 1,598,607,411 |   1.1151 |   0.0101 |   0.0767 |   0.0004 |   0.0308 |   0.1704 |   0.4290 |   0.0996 |   0.0000 |   0.0586 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 1 0 1
| 40,000,000 | 8 | 1 | 1,598,607,411 |   1.1377 |   0.0102 |   0.0765 |   0.0003 |   0.0307 |   0.1674 |   0.4288 |   0.1012 |   0.0000 |   0.0585 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 1 0 1
| 20,000,000 | 4 | 1 | 399,890,633 |   1.1796 |   0.5395 |   0.0772 |   0.0004 |   0.0153 |   0.1406 |   0.7187 |   0.0388 |   0.0000 |   0.0086 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 1 0 1
| 20,000,000 | 4 | 1 | 399,890,633 |   1.1819 |   0.5416 |   0.0774 |   0.0004 |   0.0154 |   0.1400 |   0.7199 |   0.0407 |   0.0000 |   0.0088 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 1 0 1
| 20,000,000 | 4 | 1 | 399,890,633 |   1.1764 |   0.5398 |   0.0793 |   0.0003 |   0.0154 |   0.1408 |   0.7181 |   0.0387 |   0.0000 |   0.0089 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 2 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 1 0 1
| 10,000,000 | 2 | 1 | 99,981,585 |   0.5435 |   0.2001 |   0.0759 |   0.0002 |   0.0073 |   0.0944 |   0.2824 |   0.0239 |   0.0000 |   0.0031 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 2 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 1 0 1
| 10,000,000 | 2 | 1 | 99,981,585 |   0.5013 |   0.1767 |   0.0759 |   0.0002 |   0.0060 |   0.0806 |   0.2653 |   0.0227 |   0.0000 |   0.0030 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 2 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 1 0 1
| 10,000,000 | 2 | 1 | 99,981,585 |   0.4859 |   0.1760 |   0.0778 |   0.0002 |   0.0061 |   0.0749 |   0.2503 |   0.0208 |   0.0000 |   0.0030 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 1 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 1 0 1
| 5,000,000 | 1 | 1 | 24,996,544 |   0.3827 |   0.1788 |   0.0751 |   0.0002 |   0.0036 |   0.0677 |   0.0905 |   0.0123 |   0.0000 |   0.0014 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 1 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 1 0 1
| 5,000,000 | 1 | 1 | 24,996,544 |   0.3825 |   0.1787 |   0.0770 |   0.0002 |   0.0036 |   0.0678 |   0.0908 |   0.0123 |   0.0000 |   0.0015 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 1 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 1 0 1
| 5,000,000 | 1 | 1 | 24,996,544 |   0.3836 |   0.1787 |   0.0759 |   0.0002 |   0.0036 |   0.0677 |   0.0910 |   0.0123 |   0.0000 |   0.0014 | 5000000_singlejoin.bin |
