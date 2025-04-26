TRADITIONAL MPI - SORTING
------------------------------------------------------------------------------------
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> SINGLE JOIN on 5000000 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 0 1 1
| 160,000,000 | 32 | 1 | 25,271,033,550 |   6.5726 |   0.7172 |   0.0788 |   0.0004 |   0.1235 |   0.0579 |   3.7998 |   0.3457 |   0.0000 |   0.0462 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 0 1 1
| 160,000,000 | 32 | 1 | 25,271,033,550 |   6.6195 |   0.7689 |   0.0772 |   0.0005 |   0.1241 |   0.0556 |   3.9324 |   0.3449 |   0.0000 |   0.0463 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 0 1 1
| 160,000,000 | 32 | 1 | 25,271,033,550 |   6.5436 |   0.7055 |   0.0856 |   0.0004 |   0.1229 |   0.0572 |   3.8304 |   0.3472 |   0.0000 |   0.0448 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 0 1 1
| 80,000,000 | 16 | 1 | 6,378,920,191 |   3.6062 |   0.7064 |   0.0768 |   0.0004 |   0.0624 |   0.0331 |   1.8986 |   0.1638 |   0.0000 |   0.0239 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 0 1 1
| 80,000,000 | 16 | 1 | 6,378,920,191 |   3.6332 |   0.7084 |   0.0802 |   0.0004 |   0.0622 |   0.0300 |   1.9146 |   0.1629 |   0.0000 |   0.0306 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 0 1 1
| 80,000,000 | 16 | 1 | 6,378,920,191 |   3.6088 |   0.7114 |   0.0775 |   0.0003 |   0.0625 |   0.0300 |   1.9071 |   0.1641 |   0.0000 |   0.0245 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 0 1 1
| 40,000,000 | 8 | 1 | 1,598,607,411 |   2.1370 |   0.7022 |   0.0842 |   0.0003 |   0.0304 |   0.0168 |   0.9465 |   0.0786 |   0.0000 |   0.0110 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 0 1 1
| 40,000,000 | 8 | 1 | 1,598,607,411 |   2.1330 |   0.7066 |   0.0773 |   0.0004 |   0.0306 |   0.0169 |   0.9388 |   0.0791 |   0.0000 |   0.0165 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 0 1 1
| 40,000,000 | 8 | 1 | 1,598,607,411 |   2.1569 |   0.7074 |   0.0843 |   0.0004 |   0.0308 |   0.0161 |   0.9670 |   0.0789 |   0.0000 |   0.0159 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 0 1 1
| 20,000,000 | 4 | 1 | 399,890,633 |   1.4723 |   0.7017 |   0.0763 |   0.0003 |   0.0153 |   0.0097 |   0.5164 |   0.0452 |   0.0000 |   0.0087 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 0 1 1
| 20,000,000 | 4 | 1 | 399,890,633 |   1.4781 |   0.7067 |   0.0794 |   0.0003 |   0.0153 |   0.0101 |   0.5170 |   0.0466 |   0.0000 |   0.0085 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 0 1 1
| 20,000,000 | 4 | 1 | 399,890,633 |   1.4807 |   0.6973 |   0.0767 |   0.0003 |   0.0155 |   0.0100 |   0.5324 |   0.0431 |   0.0000 |   0.0087 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 2 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 0 1 1
| 10,000,000 | 2 | 1 | 99,981,585 |   0.7691 |   0.3538 |   0.0763 |   0.0003 |   0.0074 |   0.0062 |   0.2834 |   0.0248 |   0.0000 |   0.0031 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 2 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 0 1 1
| 10,000,000 | 2 | 1 | 99,981,585 |   0.7497 |   0.3419 |   0.0814 |   0.0003 |   0.0072 |   0.0058 |   0.2847 |   0.0244 |   0.0000 |   0.0030 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 2 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 0 1 1
| 10,000,000 | 2 | 1 | 99,981,585 |   0.7533 |   0.3442 |   0.0757 |   0.0003 |   0.0072 |   0.0058 |   0.2831 |   0.0246 |   0.0000 |   0.0029 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 1 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 0 1 1
| 5,000,000 | 1 | 1 | 24,996,544 |   0.3344 |   0.1860 |   0.0757 |   0.0002 |   0.0038 |   0.0040 |   0.0990 |   0.0127 |   0.0000 |   0.0014 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 1 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 0 1 1
| 5,000,000 | 1 | 1 | 24,996,544 |   0.3571 |   0.2086 |   0.0752 |   0.0002 |   0.0044 |   0.0040 |   0.0968 |   0.0142 |   0.0000 |   0.0013 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 1 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 0 1 1
| 5,000,000 | 1 | 1 | 24,996,544 |   0.3643 |   0.2130 |   0.0751 |   0.0002 |   0.0043 |   0.0042 |   0.0994 |   0.0142 |   0.0000 |   0.0013 | 5000000_singlejoin.bin |
