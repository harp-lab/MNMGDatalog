TRADITIONAL MPI - TWO PASS
------------------------------------------------------------------------------------
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> SINGLE JOIN on 5000000 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 0 0 1
| 160,000,000 | 32 | 1 | 25,271,033,550 |   6.9741 |   0.7043 |   0.0834 |   0.0004 |   0.1248 |   0.5081 |   3.8616 |   0.3207 |   0.0000 |   0.0492 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 0 0 1
| 160,000,000 | 32 | 1 | 25,271,033,550 |   6.9560 |   0.7078 |   0.0841 |   0.0005 |   0.1237 |   0.5137 |   3.8306 |   0.3183 |   0.0000 |   0.0369 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 0 0 1
| 160,000,000 | 32 | 1 | 25,271,033,550 |   6.9381 |   0.7128 |   0.0807 |   0.0003 |   0.1232 |   0.5102 |   3.8355 |   0.3158 |   0.0000 |   0.0356 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 0 0 1
| 80,000,000 | 16 | 1 | 6,378,920,191 |   3.8036 |   0.7038 |   0.0769 |   0.0004 |   0.0628 |   0.2464 |   1.9263 |   0.1545 |   0.0000 |   0.0307 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 0 0 1
| 80,000,000 | 16 | 1 | 6,378,920,191 |   3.8468 |   0.7038 |   0.0770 |   0.0004 |   0.0628 |   0.2505 |   1.9370 |   0.1541 |   0.0000 |   0.0252 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 0 0 1
| 80,000,000 | 16 | 1 | 6,378,920,191 |   3.8498 |   0.7268 |   0.0776 |   0.0003 |   0.0627 |   0.2537 |   1.9542 |   0.1551 |   0.0000 |   0.0184 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 0 0 1
| 40,000,000 | 8 | 1 | 1,598,607,411 |   2.2625 |   0.7107 |   0.0771 |   0.0003 |   0.0304 |   0.1270 |   0.9620 |   0.0770 |   0.0000 |   0.0118 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 0 0 1
| 40,000,000 | 8 | 1 | 1,598,607,411 |   2.2535 |   0.7062 |   0.0844 |   0.0004 |   0.0304 |   0.1269 |   0.9554 |   0.0762 |   0.0000 |   0.0104 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 0 0 1
| 40,000,000 | 8 | 1 | 1,598,607,411 |   2.2581 |   0.7062 |   0.0773 |   0.0003 |   0.0302 |   0.1269 |   0.9519 |   0.0750 |   0.0000 |   0.0113 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 0 0 1
| 20,000,000 | 4 | 1 | 399,890,633 |   1.5696 |   0.7047 |   0.0765 |   0.0003 |   0.0155 |   0.1075 |   0.5233 |   0.0412 |   0.0000 |   0.0085 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 0 0 1
| 20,000,000 | 4 | 1 | 399,890,633 |   1.5640 |   0.7064 |   0.0768 |   0.0002 |   0.0151 |   0.1062 |   0.5165 |   0.0408 |   0.0000 |   0.0086 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 0 0 1
| 20,000,000 | 4 | 1 | 399,890,633 |   1.5602 |   0.7020 |   0.0767 |   0.0004 |   0.0153 |   0.1065 |   0.5164 |   0.0401 |   0.0000 |   0.0086 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 2 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 0 0 1
| 10,000,000 | 2 | 1 | 99,981,585 |   0.8635 |   0.3714 |   0.0765 |   0.0002 |   0.0074 |   0.0931 |   0.2838 |   0.0222 |   0.0000 |   0.0031 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 2 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 0 0 1
| 10,000,000 | 2 | 1 | 99,981,585 |   0.8115 |   0.3220 |   0.0755 |   0.0003 |   0.0071 |   0.0931 |   0.2995 |   0.0221 |   0.0000 |   0.0028 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 2 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 0 0 1
| 10,000,000 | 2 | 1 | 99,981,585 |   0.8101 |   0.3153 |   0.0762 |   0.0002 |   0.0072 |   0.0916 |   0.3049 |   0.0218 |   0.0000 |   0.0030 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 1 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 0 0 1
| 5,000,000 | 1 | 1 | 24,996,544 |   0.3911 |   0.1793 |   0.0758 |   0.0002 |   0.0036 |   0.0681 |   0.0977 |   0.0125 |   0.0000 |   0.0014 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 1 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 0 0 1
| 5,000,000 | 1 | 1 | 24,996,544 |   0.3915 |   0.1781 |   0.0757 |   0.0002 |   0.0036 |   0.0680 |   0.0994 |   0.0125 |   0.0000 |   0.0014 | 5000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 1 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 5000000 0 0 1
| 5,000,000 | 1 | 1 | 24,996,544 |   0.3898 |   0.1794 |   0.0751 |   0.0002 |   0.0036 |   0.0680 |   0.0968 |   0.0125 |   0.0000 |   0.0013 | 5000000_singlejoin.bin |
