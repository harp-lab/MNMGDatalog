```
cat sg-merged.output
Job started at: 2024-08-11 01:04:07
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> JOB STARTED >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
TRADITIONAL MPI - SORTING
------------------------------------------------------------------------------------
CC sg.cu -o sg.out -lm
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1
| 147,892 | 40 | 20 | 3,700,737,910 |   5.3301 |   0.7111 |   9.9013 |   0.0001 |   0.0847 |   0.0769 |   3.7185 |   0.2494 |   0.2965 |   0.1929 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1
| 147,892 | 40 | 20 | 3,700,737,910 |   5.3127 |   0.7063 |   9.6503 |   0.0001 |   0.0844 |   0.0777 |   3.7051 |   0.2488 |   0.3012 |   0.1892 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1
| 147,892 | 40 | 20 | 3,700,737,910 |   5.2962 |   0.7041 |   9.6388 |   0.0001 |   0.0861 |   0.0777 |   3.7023 |   0.2490 |   0.2851 |   0.1918 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1
| 147,892 | 40 | 20 | 3,700,737,910 |   5.3029 |   0.7081 |  11.8027 |   0.0001 |   0.0863 |   0.0770 |   3.7001 |   0.2487 |   0.2907 |   0.1920 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1
| 147,892 | 40 | 20 | 3,700,737,910 |   5.2921 |   0.7079 |  11.0390 |   0.0001 |   0.0863 |   0.0774 |   3.6936 |   0.2487 |   0.2862 |   0.1920 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1
| 147,892 | 32 | 20 | 3,700,737,910 |   6.3501 |   0.7005 |  10.1321 |   0.0001 |   0.1040 |   0.0914 |   4.5681 |   0.2987 |   0.3573 |   0.2301 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1
| 147,892 | 32 | 20 | 3,700,737,910 |   6.2514 |   0.7073 |   9.1705 |   0.0001 |   0.0998 |   0.0891 |   4.5141 |   0.2976 |   0.3075 |   0.2359 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1
| 147,892 | 32 | 20 | 3,700,737,910 |   6.2929 |   0.7047 |  12.1981 |   0.0001 |   0.1027 |   0.0892 |   4.5390 |   0.2985 |   0.3214 |   0.2373 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1
| 147,892 | 32 | 20 | 3,700,737,910 |   6.2970 |   0.7080 |  12.4313 |   0.0001 |   0.0992 |   0.0903 |   4.5556 |   0.2966 |   0.3116 |   0.2356 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1
| 147,892 | 32 | 20 | 3,700,737,910 |   6.3260 |   0.7060 |  12.0231 |   0.0001 |   0.1022 |   0.0907 |   4.5723 |   0.2962 |   0.3216 |   0.2370 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1
| 147,892 | 24 | 20 | 3,700,737,910 |   8.1570 |   0.7117 |  10.1657 |   0.0001 |   0.1322 |   0.1151 |   5.9888 |   0.4114 |   0.4850 |   0.3127 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1
| 147,892 | 24 | 20 | 3,700,737,910 |   8.2008 |   0.6784 |   8.5078 |   0.0001 |   0.1393 |   0.1320 |   6.0513 |   0.4140 |   0.4766 |   0.3092 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1
| 147,892 | 24 | 20 | 3,700,737,910 |   8.1040 |   0.6787 |  10.6196 |   0.0001 |   0.1311 |   0.1144 |   5.9988 |   0.4104 |   0.4608 |   0.3099 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1
| 147,892 | 24 | 20 | 3,700,737,910 |   8.1544 |   0.7074 |  10.4652 |   0.0001 |   0.1331 |   0.1139 |   6.0064 |   0.4122 |   0.4738 |   0.3076 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1
| 147,892 | 24 | 20 | 3,700,737,910 |   8.1927 |   0.7035 |   9.2617 |   0.0001 |   0.1267 |   0.1138 |   6.0144 |   0.4124 |   0.5117 |   0.3101 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1
| 147,892 | 16 | 20 | 3,700,737,910 |  12.1882 |   0.6924 |  12.8394 |   0.0001 |   0.1843 |   0.1575 |   8.8730 |   0.6120 |   1.2336 |   0.4354 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1
| 147,892 | 16 | 20 | 3,700,737,910 |  12.2360 |   0.7053 |  12.0952 |   0.0001 |   0.1849 |   0.1606 |   8.8982 |   0.6103 |   1.2374 |   0.4392 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1
| 147,892 | 16 | 20 | 3,700,737,910 |  12.1932 |   0.6919 |  10.8499 |   0.0001 |   0.1811 |   0.1556 |   8.9118 |   0.6141 |   1.2108 |   0.4278 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1
| 147,892 | 16 | 20 | 3,700,737,910 |  12.2260 |   0.7045 |  11.8089 |   0.0001 |   0.1845 |   0.1555 |   8.9209 |   0.6105 |   1.2155 |   0.4345 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1
| 147,892 | 16 | 20 | 3,700,737,910 |  12.2126 |   0.7051 |  10.8898 |   0.0001 |   0.1808 |   0.1601 |   8.9050 |   0.6121 |   1.2133 |   0.4361 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1
| 147,892 | 8 | 20 | 3,700,737,910 |  29.4553 |   0.7115 |  13.6224 |   0.0001 |   0.5464 |   0.8355 |  16.7207 |   1.5332 |   8.1569 |   0.9511 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1
| 147,892 | 8 | 20 | 3,700,737,910 |  29.8800 |   0.6663 |  13.4754 |   0.0001 |   0.6052 |   0.8762 |  16.7677 |   1.5437 |   8.4796 |   0.9412 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1
| 147,892 | 8 | 20 | 3,700,737,910 |  29.8343 |   0.6616 |  13.4802 |   0.0001 |   0.5976 |   0.8670 |  16.8034 |   1.5700 |   8.3910 |   0.9436 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1
| 147,892 | 8 | 20 | 3,700,737,910 |  30.0843 |   0.6698 |  13.6708 |   0.0001 |   0.5641 |   0.8964 |  16.8241 |   1.5623 |   8.6307 |   0.9368 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1
| 147,892 | 8 | 20 | 3,700,737,910 |  30.0370 |   0.6498 |  13.7915 |   0.0001 |   0.5701 |   0.8496 |  16.7519 |   1.5309 |   8.7457 |   0.9389 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1
| 165,435 | 40 | 588 | 3,137,407,481 |  17.4267 |   0.7076 |   8.5653 |   0.0001 |   0.4488 |   0.6724 |   2.1599 |   0.3567 |  12.9248 |   0.1565 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1
| 165,435 | 40 | 588 | 3,137,407,481 |  17.4055 |   0.7099 |   9.6860 |   0.0001 |   0.4531 |   0.6710 |   2.0914 |   0.3618 |  12.9578 |   0.1606 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1
| 165,435 | 40 | 588 | 3,137,407,481 |  17.3759 |   0.7077 |   9.1804 |   0.0001 |   0.4517 |   0.6633 |   2.1142 |   0.3650 |  12.9168 |   0.1572 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1
| 165,435 | 40 | 588 | 3,137,407,481 |  17.3414 |   0.7055 |   7.8681 |   0.0001 |   0.4574 |   0.6659 |   2.1018 |   0.3591 |  12.8614 |   0.1902 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1
| 165,435 | 40 | 588 | 3,137,407,481 |  17.4882 |   0.7059 |   7.9908 |   0.0001 |   0.4491 |   0.6743 |   2.1614 |   0.4071 |  12.8969 |   0.1936 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1
| 165,435 | 32 | 588 | 3,137,407,481 |  21.4308 |   0.7048 |   9.4114 |   0.0001 |   0.5383 |   0.7019 |   2.4365 |   0.3875 |  16.4318 |   0.2300 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1
| 165,435 | 32 | 588 | 3,137,407,481 |  21.3928 |   0.7054 |   8.3649 |   0.0001 |   0.5326 |   0.7015 |   2.4512 |   0.3913 |  16.3741 |   0.2366 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1
| 165,435 | 32 | 588 | 3,137,407,481 |  21.3915 |   0.7103 |  11.1765 |   0.0001 |   0.5523 |   0.6933 |   2.4272 |   0.3939 |  16.4189 |   0.1955 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1
| 165,435 | 32 | 588 | 3,137,407,481 |  21.4117 |   0.7088 |   8.8383 |   0.0001 |   0.5391 |   0.7114 |   2.4549 |   0.3912 |  16.3772 |   0.2290 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1
| 165,435 | 32 | 588 | 3,137,407,481 |  21.3860 |   0.7028 |   7.7953 |   0.0001 |   0.5485 |   0.6990 |   2.4932 |   0.4328 |  16.3170 |   0.1925 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1
| 165,435 | 24 | 588 | 3,137,407,481 |  27.7746 |   0.7071 |  11.2242 |   0.0001 |   0.6269 |   0.7762 |   3.1136 |   0.4203 |  21.8364 |   0.2941 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1
| 165,435 | 24 | 588 | 3,137,407,481 |  27.9263 |   0.7107 |  11.6340 |   0.0001 |   0.6342 |   0.7543 |   3.2147 |   0.4727 |  21.8396 |   0.3001 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1
| 165,435 | 24 | 588 | 3,137,407,481 |  27.8167 |   0.7125 |  11.6970 |   0.0001 |   0.6518 |   0.7712 |   3.1494 |   0.4249 |  21.8562 |   0.2505 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1
| 165,435 | 24 | 588 | 3,137,407,481 |  27.9481 |   0.7075 |  10.2538 |   0.0001 |   0.6315 |   0.7902 |   3.1589 |   0.4716 |  21.9332 |   0.2552 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1
| 165,435 | 24 | 588 | 3,137,407,481 |  27.7703 |   0.7052 |  11.8615 |   0.0001 |   0.6398 |   0.7586 |   3.1321 |   0.4253 |  21.8610 |   0.2483 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1
| 165,435 | 16 | 588 | 3,137,407,481 |  43.6761 |   0.7066 |   8.2251 |   0.0001 |   0.8250 |   0.8303 |   4.4433 |   0.4661 |  36.0339 |   0.3707 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1
| 165,435 | 16 | 588 | 3,137,407,481 |  43.6831 |   0.7058 |  11.9700 |   0.0001 |   0.8008 |   0.8533 |   4.4524 |   0.4686 |  36.0311 |   0.3711 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1
| 165,435 | 16 | 588 | 3,137,407,481 |  43.4814 |   0.7065 |  10.2854 |   0.0001 |   0.7907 |   0.8268 |   4.4483 |   0.4898 |  35.8489 |   0.3703 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1
| 165,435 | 16 | 588 | 3,137,407,481 |  43.7010 |   0.7057 |  10.2468 |   0.0001 |   0.8062 |   0.8403 |   4.3830 |   0.4991 |  36.0116 |   0.4550 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1
| 165,435 | 16 | 588 | 3,137,407,481 |  43.7590 |   0.7050 |  13.2619 |   0.0001 |   0.8185 |   0.8748 |   4.3485 |   0.4815 |  36.1659 |   0.3647 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1
| 165,435 | 8 | 588 | 3,137,407,481 |  68.8225 |   0.7020 |  13.1512 |   0.0000 |   1.2680 |   1.1110 |   8.9441 |   0.6409 |  55.4060 |   0.7505 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1
| 165,435 | 8 | 588 | 3,137,407,481 |  68.9931 |   0.7069 |  12.5508 |   0.0001 |   1.2981 |   1.1355 |   8.8786 |   0.6092 |  55.4899 |   0.8749 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1
| 165,435 | 8 | 588 | 3,137,407,481 |  68.7677 |   0.7030 |  12.4732 |   0.0001 |   1.2964 |   1.0989 |   8.8722 |   0.6220 |  55.4509 |   0.7244 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1
| 165,435 | 8 | 588 | 3,137,407,481 |  68.7314 |   0.7050 |  12.8210 |   0.0001 |   1.2721 |   1.1430 |   8.6569 |   0.6164 |  55.6187 |   0.7192 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1
| 165,435 | 8 | 588 | 3,137,407,481 |  68.8392 |   0.7082 |  13.2934 |   0.0001 |   1.2864 |   1.0739 |   8.9552 |   0.6911 |  55.2639 |   0.8605 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1
| 409,593 | 40 | 77 | 65,941,441 |   1.0801 |   0.7074 |   0.2733 |   0.0001 |   0.0276 |   0.0644 |   0.1375 |   0.0403 |   0.0980 |   0.0049 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1
| 409,593 | 40 | 77 | 65,941,441 |   1.1612 |   0.7271 |   0.2794 |   0.0001 |   0.0281 |   0.0808 |   0.1776 |   0.0407 |   0.1018 |   0.0049 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1
| 409,593 | 40 | 77 | 65,941,441 |   1.0776 |   0.7063 |   0.2698 |   0.0001 |   0.0276 |   0.0649 |   0.1370 |   0.0400 |   0.0969 |   0.0047 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1
| 409,593 | 40 | 77 | 65,941,441 |   1.0765 |   0.7065 |   0.1974 |   0.0001 |   0.0277 |   0.0647 |   0.1350 |   0.0397 |   0.0982 |   0.0047 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1
| 409,593 | 40 | 77 | 65,941,441 |   1.0796 |   0.7066 |   0.2959 |   0.0001 |   0.0276 |   0.0647 |   0.1374 |   0.0400 |   0.0983 |   0.0048 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1
| 409,593 | 32 | 77 | 65,941,441 |   1.1054 |   0.7047 |   0.2503 |   0.0001 |   0.0304 |   0.0684 |   0.1522 |   0.0428 |   0.1011 |   0.0058 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1
| 409,593 | 32 | 77 | 65,941,441 |   1.0951 |   0.7061 |   0.2214 |   0.0001 |   0.0308 |   0.0690 |   0.1395 |   0.0433 |   0.1004 |   0.0059 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1
| 409,593 | 32 | 77 | 65,941,441 |   1.0921 |   0.7065 |   0.1768 |   0.0001 |   0.0306 |   0.0685 |   0.1384 |   0.0425 |   0.1000 |   0.0056 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1
| 409,593 | 32 | 77 | 65,941,441 |   1.1055 |   0.7080 |   0.3088 |   0.0001 |   0.0309 |   0.0690 |   0.1484 |   0.0422 |   0.1013 |   0.0058 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1
| 409,593 | 32 | 77 | 65,941,441 |   1.0919 |   0.7057 |   0.3339 |   0.0001 |   0.0308 |   0.0690 |   0.1367 |   0.0434 |   0.1004 |   0.0058 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1
| 409,593 | 24 | 77 | 65,941,441 |   1.1383 |   0.7059 |   0.2146 |   0.0001 |   0.0356 |   0.0725 |   0.1622 |   0.0469 |   0.1078 |   0.0074 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1
| 409,593 | 24 | 77 | 65,941,441 |   1.1488 |   0.7046 |   0.2243 |   0.0001 |   0.0359 |   0.0740 |   0.1704 |   0.0470 |   0.1095 |   0.0074 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1
| 409,593 | 24 | 77 | 65,941,441 |   1.1479 |   0.7085 |   0.3587 |   0.0001 |   0.0355 |   0.0728 |   0.1669 |   0.0474 |   0.1093 |   0.0074 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1
| 409,593 | 24 | 77 | 65,941,441 |   1.1541 |   0.7088 |   0.2359 |   0.0001 |   0.0360 |   0.0726 |   0.1742 |   0.0474 |   0.1076 |   0.0075 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1
| 409,593 | 24 | 77 | 65,941,441 |   1.1528 |   0.7094 |   0.3020 |   0.0001 |   0.0357 |   0.0733 |   0.1698 |   0.0472 |   0.1100 |   0.0072 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1
| 409,593 | 16 | 77 | 65,941,441 |   1.2141 |   0.7085 |   0.2539 |   0.0001 |   0.0379 |   0.0750 |   0.2172 |   0.0509 |   0.1149 |   0.0097 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1
| 409,593 | 16 | 77 | 65,941,441 |   1.2215 |   0.7097 |   0.1822 |   0.0001 |   0.0369 |   0.0755 |   0.2247 |   0.0512 |   0.1141 |   0.0095 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1
| 409,593 | 16 | 77 | 65,941,441 |   1.2471 |   0.7161 |   0.2340 |   0.0001 |   0.0373 |   0.0762 |   0.2411 |   0.0514 |   0.1151 |   0.0098 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1
| 409,593 | 16 | 77 | 65,941,441 |   1.1981 |   0.7014 |   0.3346 |   0.0001 |   0.0372 |   0.0743 |   0.2102 |   0.0506 |   0.1146 |   0.0098 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1
| 409,593 | 16 | 77 | 65,941,441 |   1.2089 |   0.7083 |   0.3908 |   0.0001 |   0.0371 |   0.0743 |   0.2144 |   0.0512 |   0.1141 |   0.0095 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1
| 409,593 | 8 | 77 | 65,941,441 |   1.4287 |   0.7054 |   0.3558 |   0.0002 |   0.0534 |   0.0887 |   0.3596 |   0.0657 |   0.1376 |   0.0181 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1
| 409,593 | 8 | 77 | 65,941,441 |   1.4193 |   0.7051 |   0.2811 |   0.0002 |   0.0530 |   0.0878 |   0.3512 |   0.0656 |   0.1388 |   0.0177 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1
| 409,593 | 8 | 77 | 65,941,441 |   1.4181 |   0.7059 |   0.4411 |   0.0002 |   0.0533 |   0.0884 |   0.3512 |   0.0633 |   0.1382 |   0.0176 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1
| 409,593 | 8 | 77 | 65,941,441 |   1.4290 |   0.7108 |   0.3110 |   0.0002 |   0.0528 |   0.0880 |   0.3566 |   0.0647 |   0.1382 |   0.0179 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1
| 409,593 | 8 | 77 | 65,941,441 |   1.4470 |   0.7236 |   0.3016 |   0.0002 |   0.0533 |   0.0885 |   0.3673 |   0.0650 |   0.1311 |   0.0178 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 40 | 513 | 864,761,518 |   5.9618 |   0.7052 |   2.2930 |   0.0001 |   0.1890 |   0.3880 |   1.5594 |   0.2493 |   2.8046 |   0.0663 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 40 | 513 | 864,761,518 |   5.9868 |   0.7094 |   1.9186 |   0.0001 |   0.1909 |   0.3895 |   1.5557 |   0.2542 |   2.8324 |   0.0546 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 40 | 513 | 864,761,518 |   5.9751 |   0.7072 |   1.8287 |   0.0001 |   0.1943 |   0.3874 |   1.5339 |   0.2549 |   2.8322 |   0.0651 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 40 | 513 | 864,761,518 |   5.9567 |   0.7051 |   1.8492 |   0.0001 |   0.1913 |   0.3906 |   1.5543 |   0.2537 |   2.8074 |   0.0543 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 40 | 513 | 864,761,518 |   5.9829 |   0.7076 |   1.9107 |   0.0001 |   0.1935 |   0.3943 |   1.6141 |   0.2498 |   2.7586 |   0.0648 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 32 | 513 | 864,761,518 |   6.9351 |   0.7105 |   1.7011 |   0.0001 |   0.2129 |   0.4155 |   1.7680 |   0.2803 |   3.4799 |   0.0678 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 32 | 513 | 864,761,518 |   6.9405 |   0.7122 |   1.9946 |   0.0001 |   0.2101 |   0.4048 |   1.7783 |   0.3148 |   3.4515 |   0.0689 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 32 | 513 | 864,761,518 |   6.9544 |   0.7058 |   1.8698 |   0.0001 |   0.2142 |   0.4062 |   1.7690 |   0.2767 |   3.5011 |   0.0813 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 32 | 513 | 864,761,518 |   6.9184 |   0.7057 |   2.0699 |   0.0001 |   0.2114 |   0.4114 |   1.7436 |   0.2753 |   3.4879 |   0.0831 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 32 | 513 | 864,761,518 |   6.9271 |   0.7052 |   2.2449 |   0.0001 |   0.2101 |   0.4090 |   1.7976 |   0.2702 |   3.4662 |   0.0688 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 24 | 513 | 864,761,518 |   9.8285 |   0.7102 |   2.1831 |   0.0001 |   0.2500 |   0.4528 |   2.2009 |   0.3493 |   5.7859 |   0.0795 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 24 | 513 | 864,761,518 |   9.9013 |   0.7047 |   2.6896 |   0.0001 |   0.2502 |   0.4577 |   2.2578 |   0.3348 |   5.8143 |   0.0816 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 24 | 513 | 864,761,518 |   9.8663 |   0.7028 |   1.9270 |   0.0001 |   0.2525 |   0.4540 |   2.2233 |   0.3131 |   5.8215 |   0.0989 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 24 | 513 | 864,761,518 |   9.9015 |   0.7016 |   2.3884 |   0.0001 |   0.2476 |   0.4662 |   2.2334 |   0.3720 |   5.7996 |   0.0811 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 24 | 513 | 864,761,518 |   9.8936 |   0.7119 |   2.5669 |   0.0001 |   0.2520 |   0.4540 |   2.2083 |   0.3716 |   5.8158 |   0.0799 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 16 | 513 | 864,761,518 |  15.1981 |   0.7038 |   2.1680 |   0.0003 |   0.2909 |   0.5166 |   3.1920 |   0.5939 |   9.7904 |   0.1102 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 16 | 513 | 864,761,518 |  15.1934 |   0.7091 |   3.4352 |   0.0003 |   0.2851 |   0.4988 |   3.1674 |   0.5121 |   9.8883 |   0.1323 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 16 | 513 | 864,761,518 |  15.0964 |   0.7022 |   2.5836 |   0.0003 |   0.2871 |   0.5076 |   3.1743 |   0.4673 |   9.8256 |   0.1320 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 16 | 513 | 864,761,518 |  15.1544 |   0.7094 |   2.8479 |   0.0003 |   0.2909 |   0.5217 |   3.1826 |   0.5164 |   9.8014 |   0.1316 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 16 | 513 | 864,761,518 |  15.1919 |   0.7007 |   3.1446 |   0.0003 |   0.2912 |   0.5115 |   3.2034 |   0.5129 |   9.8391 |   0.1326 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 8 | 513 | 864,761,518 |  26.0517 |   0.6975 |   3.7616 |   0.0003 |   0.4804 |   0.6935 |   6.1493 |   0.6485 |  17.1634 |   0.2188 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 8 | 513 | 864,761,518 |  26.0560 |   0.7091 |   3.6934 |   0.0003 |   0.4966 |   0.7003 |   6.1979 |   0.6525 |  17.0842 |   0.2152 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 8 | 513 | 864,761,518 |  25.9471 |   0.7099 |   3.8183 |   0.0003 |   0.4876 |   0.7080 |   6.1143 |   0.6195 |  17.0900 |   0.2175 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 8 | 513 | 864,761,518 |  25.9616 |   0.7074 |   3.8921 |   0.0003 |   0.4921 |   0.6992 |   6.2284 |   0.6004 |  17.0192 |   0.2146 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 8 | 513 | 864,761,518 |  25.9435 |   0.7071 |   3.8013 |   0.0003 |   0.4973 |   0.6866 |   6.1279 |   0.6295 |  17.0786 |   0.2162 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 0 1
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 0 1
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 0 1
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 0 1
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 0 1
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 0 1
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 0 1
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 0 1
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 0 1
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 0 1
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 0 1
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 0 1
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 0 1
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 0 1
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 0 1
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 0 1
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 0 1
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 0 1
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 0 1
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 0 1
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 0 1
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 0 1
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 0 1
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 0 1
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 0 1
TRADITIONAL MPI - TWO PASS
------------------------------------------------------------------------------------
CC sg.cu -o sg.out -lm
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0
| 147,892 | 40 | 20 | 3,700,737,910 |   6.9739 |   0.7124 |  11.4464 |   0.0001 |   0.0836 |   1.4509 |   4.0184 |   0.2267 |   0.2798 |   0.2021 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0
| 147,892 | 40 | 20 | 3,700,737,910 |   6.9666 |   0.7071 |  10.4606 |   0.0001 |   0.0814 |   1.4538 |   4.0390 |   0.2259 |   0.2680 |   0.1913 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0
| 147,892 | 40 | 20 | 3,700,737,910 |   6.9743 |   0.7070 |  10.9048 |   0.0001 |   0.0813 |   1.4523 |   4.0435 |   0.2261 |   0.2732 |   0.1908 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0
| 147,892 | 40 | 20 | 3,700,737,910 |   6.9573 |   0.7032 |  10.1702 |   0.0001 |   0.0829 |   1.4510 |   4.0355 |   0.2261 |   0.2679 |   0.1907 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0
| 147,892 | 40 | 20 | 3,700,737,910 |   6.9707 |   0.7085 |   9.5060 |   0.0001 |   0.0820 |   1.4524 |   4.0503 |   0.2270 |   0.2591 |   0.1913 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0
| 147,892 | 32 | 20 | 3,700,737,910 |   8.0624 |   0.7063 |  10.4905 |   0.0001 |   0.1038 |   1.5950 |   4.8506 |   0.2701 |   0.2992 |   0.2374 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0
| 147,892 | 32 | 20 | 3,700,737,910 |   8.0578 |   0.7088 |  11.5010 |   0.0001 |   0.1034 |   1.5935 |   4.8527 |   0.2718 |   0.2914 |   0.2361 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0
| 147,892 | 32 | 20 | 3,700,737,910 |   8.0050 |   0.7073 |  10.2351 |   0.0001 |   0.1046 |   1.5927 |   4.8060 |   0.2706 |   0.2896 |   0.2341 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0
| 147,892 | 32 | 20 | 3,700,737,910 |   8.0147 |   0.7067 |  13.0335 |   0.0001 |   0.1023 |   1.5919 |   4.8022 |   0.2700 |   0.2923 |   0.2493 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0
| 147,892 | 32 | 20 | 3,700,737,910 |   8.0476 |   0.7065 |   9.6851 |   0.0001 |   0.1033 |   1.5911 |   4.8455 |   0.2695 |   0.2940 |   0.2378 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0
| 147,892 | 24 | 20 | 3,700,737,910 |  10.3589 |   0.7077 |  10.5031 |   0.0001 |   0.1358 |   2.0255 |   6.3476 |   0.3750 |   0.4580 |   0.3092 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0
| 147,892 | 24 | 20 | 3,700,737,910 |  10.2860 |   0.7045 |  10.3639 |   0.0001 |   0.1304 |   2.0225 |   6.3522 |   0.3747 |   0.3930 |   0.3086 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0
| 147,892 | 24 | 20 | 3,700,737,910 |  10.3684 |   0.7075 |  10.9789 |   0.0001 |   0.1299 |   2.0236 |   6.3813 |   0.3752 |   0.4416 |   0.3093 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0
| 147,892 | 24 | 20 | 3,700,737,910 |  10.3826 |   0.7049 |  10.5062 |   0.0001 |   0.1334 |   2.0230 |   6.3844 |   0.3754 |   0.4427 |   0.3188 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0
| 147,892 | 24 | 20 | 3,700,737,910 |  10.3485 |   0.7016 |   7.1347 |   0.0001 |   0.1334 |   2.0254 |   6.3557 |   0.3736 |   0.4301 |   0.3287 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0
| 147,892 | 16 | 20 | 3,700,737,910 |  15.2746 |   0.7077 |  14.5108 |   0.0001 |   0.1924 |   2.7855 |   9.3860 |   0.5585 |   1.2112 |   0.4333 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0
| 147,892 | 16 | 20 | 3,700,737,910 |  15.2945 |   0.7035 |  15.8453 |   0.0001 |   0.1933 |   2.7812 |   9.3038 |   0.5585 |   1.3035 |   0.4506 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0
| 147,892 | 16 | 20 | 3,700,737,910 |  15.1831 |   0.6999 |  10.7346 |   0.0001 |   0.1884 |   2.7814 |   9.3171 |   0.5635 |   1.1994 |   0.4334 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0
| 147,892 | 16 | 20 | 3,700,737,910 |  15.2086 |   0.6948 |  12.5152 |   0.0001 |   0.1936 |   2.7836 |   9.3771 |   0.5568 |   1.1749 |   0.4279 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0
| 147,892 | 16 | 20 | 3,700,737,910 |  15.2939 |   0.7035 |  11.5878 |   0.0001 |   0.1902 |   2.7840 |   9.3953 |   0.5586 |   1.2374 |   0.4249 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0
| 147,892 | 8 | 20 | 3,700,737,910 |  34.2377 |   0.7123 |  13.1611 |   0.0001 |   0.6086 |   3.8934 |  16.9306 |   2.0810 |   9.0657 |   0.9460 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0
| 147,892 | 8 | 20 | 3,700,737,910 |  33.3574 |   0.6818 |  14.0615 |   0.0001 |   0.5971 |   3.8631 |  16.8970 |   1.9790 |   8.3969 |   0.9425 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0
| 147,892 | 8 | 20 | 3,700,737,910 |  33.6547 |   0.6449 |  14.0304 |   0.0001 |   0.6522 |   3.7636 |  16.9457 |   1.9612 |   8.7479 |   0.9391 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0
| 147,892 | 8 | 20 | 3,700,737,910 |  33.7065 |   0.6765 |  12.8942 |   0.0001 |   0.6301 |   3.7595 |  16.9271 |   1.8357 |   8.9374 |   0.9402 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0
| 147,892 | 8 | 20 | 3,700,737,910 |  33.6830 |   0.6857 |  13.6953 |   0.0001 |   0.6519 |   4.0210 |  16.9097 |   1.9908 |   8.4936 |   0.9304 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0
| 165,435 | 40 | 588 | 3,137,407,481 |  18.0533 |   0.7177 |   9.4772 |   0.0001 |   0.4353 |   1.2793 |   2.1294 |   0.3970 |  12.9351 |   0.1593 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0
| 165,435 | 40 | 588 | 3,137,407,481 |  18.0126 |   0.7102 |   9.8167 |   0.0001 |   0.4286 |   1.2726 |   2.1423 |   0.3770 |  12.9249 |   0.1569 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0
| 165,435 | 40 | 588 | 3,137,407,481 |  17.9859 |   0.7157 |   8.7575 |   0.0001 |   0.4356 |   1.2690 |   2.1386 |   0.3500 |  12.9176 |   0.1594 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0
| 165,435 | 40 | 588 | 3,137,407,481 |  17.9304 |   0.7094 |   7.4560 |   0.0001 |   0.4258 |   1.2798 |   2.1233 |   0.3465 |  12.8891 |   0.1564 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0
| 165,435 | 40 | 588 | 3,137,407,481 |  18.0547 |   0.7083 |   8.9343 |   0.0001 |   0.4279 |   1.2692 |   2.1574 |   0.3707 |  12.9259 |   0.1953 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0
| 165,435 | 32 | 588 | 3,137,407,481 |  22.0096 |   0.7084 |   7.1546 |   0.0001 |   0.5375 |   1.3508 |   2.4389 |   0.3732 |  16.3715 |   0.2294 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0
| 165,435 | 32 | 588 | 3,137,407,481 |  22.0890 |   0.7092 |  10.0385 |   0.0001 |   0.5200 |   1.3693 |   2.4707 |   0.4175 |  16.4098 |   0.1925 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0
| 165,435 | 32 | 588 | 3,137,407,481 |  22.0858 |   0.7096 |   9.2669 |   0.0001 |   0.5147 |   1.3702 |   2.5412 |   0.3990 |  16.3578 |   0.1933 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0
| 165,435 | 32 | 588 | 3,137,407,481 |  21.9880 |   0.7087 |   7.8193 |   0.0001 |   0.5243 |   1.3571 |   2.4857 |   0.3775 |  16.2970 |   0.2378 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0
| 165,435 | 32 | 588 | 3,137,407,481 |  22.0373 |   0.7074 |   8.1958 |   0.0001 |   0.5244 |   1.3696 |   2.4712 |   0.3885 |  16.3452 |   0.2309 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0
| 165,435 | 24 | 588 | 3,137,407,481 |  28.6786 |   0.7647 |  10.7027 |   0.0001 |   0.5936 |   1.4668 |   3.1577 |   0.4033 |  21.9947 |   0.2976 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0
| 165,435 | 24 | 588 | 3,137,407,481 |  28.6062 |   0.7082 |  11.6107 |   0.0001 |   0.5970 |   1.4809 |   3.1691 |   0.4967 |  21.8554 |   0.2988 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0
| 165,435 | 24 | 588 | 3,137,407,481 |  28.6103 |   0.7055 |  10.6974 |   0.0001 |   0.6078 |   1.4765 |   3.1389 |   0.5099 |  21.9205 |   0.2511 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0
| 165,435 | 24 | 588 | 3,137,407,481 |  28.5085 |   0.7056 |  12.4644 |   0.0001 |   0.5994 |   1.4701 |   3.1552 |   0.3897 |  21.9387 |   0.2497 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0
| 165,435 | 24 | 588 | 3,137,407,481 |  28.4476 |   0.7016 |  10.9348 |   0.0001 |   0.6133 |   1.4928 |   3.1410 |   0.3931 |  21.8568 |   0.2490 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0
| 165,435 | 16 | 588 | 3,137,407,481 |  44.3570 |   0.7086 |  10.6276 |   0.0001 |   0.7724 |   1.6072 |   4.3951 |   0.4512 |  35.9549 |   0.4675 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0
| 165,435 | 16 | 588 | 3,137,407,481 |  44.3801 |   0.7057 |  11.4138 |   0.0001 |   0.7763 |   1.6185 |   4.3802 |   0.4475 |  35.9932 |   0.4588 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0
| 165,435 | 16 | 588 | 3,137,407,481 |  44.2292 |   0.7024 |   9.2158 |   0.0001 |   0.7900 |   1.6322 |   4.4250 |   0.4630 |  35.8492 |   0.3672 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0
| 165,435 | 16 | 588 | 3,137,407,481 |  44.2622 |   0.7057 |   9.8933 |   0.0001 |   0.8173 |   1.6018 |   4.3849 |   0.4587 |  35.8422 |   0.4515 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0
| 165,435 | 16 | 588 | 3,137,407,481 |  44.3304 |   0.7073 |  10.7837 |   0.0001 |   0.7642 |   1.6189 |   4.4307 |   0.4514 |  35.9909 |   0.3668 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0
| 165,435 | 8 | 588 | 3,137,407,481 |  70.1280 |   0.7047 |  13.0719 |   0.0001 |   1.2457 |   2.1496 |   9.0784 |   0.6000 |  55.4961 |   0.8534 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0
| 165,435 | 8 | 588 | 3,137,407,481 |  70.1806 |   0.7068 |  12.5934 |   0.0001 |   1.3877 |   2.1397 |   8.8893 |   0.5861 |  55.7489 |   0.7220 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0
| 165,435 | 8 | 588 | 3,137,407,481 |  69.9876 |   0.7061 |  12.6021 |   0.0001 |   1.2676 |   2.0876 |   8.9777 |   0.6227 |  55.4634 |   0.8625 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0
| 165,435 | 8 | 588 | 3,137,407,481 |  70.2946 |   0.7087 |  12.0210 |   0.0001 |   1.2833 |   2.1333 |   9.2601 |   0.5857 |  55.4609 |   0.8626 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0
| 165,435 | 8 | 588 | 3,137,407,481 |  69.1406 |   0.7094 |  11.6539 |   0.0001 |   1.1292 |   2.0968 |   8.4726 |   0.5744 |  55.2940 |   0.8641 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0
| 409,593 | 40 | 77 | 65,941,441 |   1.0819 |   0.7043 |   0.2293 |   0.0001 |   0.0279 |   0.0743 |   0.1330 |   0.0384 |   0.0992 |   0.0047 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0
| 409,593 | 40 | 77 | 65,941,441 |   1.0887 |   0.7109 |   0.2028 |   0.0001 |   0.0278 |   0.0738 |   0.1340 |   0.0380 |   0.0992 |   0.0049 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0
| 409,593 | 40 | 77 | 65,941,441 |   1.0888 |   0.7092 |   0.1610 |   0.0001 |   0.0278 |   0.0745 |   0.1351 |   0.0381 |   0.0992 |   0.0047 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0
| 409,593 | 40 | 77 | 65,941,441 |   1.0878 |   0.7066 |   0.1867 |   0.0001 |   0.0279 |   0.0749 |   0.1350 |   0.0384 |   0.1002 |   0.0048 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0
| 409,593 | 40 | 77 | 65,941,441 |   1.1596 |   0.7442 |   0.2098 |   0.0001 |   0.0278 |   0.0750 |   0.1705 |   0.0386 |   0.0986 |   0.0048 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0
| 409,593 | 32 | 77 | 65,941,441 |   1.1070 |   0.7082 |   0.2216 |   0.0001 |   0.0304 |   0.0794 |   0.1398 |   0.0424 |   0.1009 |   0.0057 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0
| 409,593 | 32 | 77 | 65,941,441 |   1.1215 |   0.7095 |   0.1829 |   0.0001 |   0.0302 |   0.0804 |   0.1509 |   0.0425 |   0.1020 |   0.0058 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0
| 409,593 | 32 | 77 | 65,941,441 |   1.1096 |   0.7059 |   0.1570 |   0.0001 |   0.0303 |   0.0802 |   0.1444 |   0.0421 |   0.1010 |   0.0057 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0
| 409,593 | 32 | 77 | 65,941,441 |   1.1087 |   0.7109 |   0.2001 |   0.0001 |   0.0299 |   0.0796 |   0.1410 |   0.0420 |   0.0996 |   0.0057 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0
| 409,593 | 32 | 77 | 65,941,441 |   1.0998 |   0.7064 |   0.1932 |   0.0001 |   0.0301 |   0.0791 |   0.1367 |   0.0419 |   0.0999 |   0.0057 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0
| 409,593 | 24 | 77 | 65,941,441 |   1.1596 |   0.7066 |   0.2217 |   0.0001 |   0.0350 |   0.0929 |   0.1631 |   0.0462 |   0.1083 |   0.0074 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0
| 409,593 | 24 | 77 | 65,941,441 |   1.1733 |   0.7063 |   0.2102 |   0.0001 |   0.0348 |   0.0904 |   0.1772 |   0.0465 |   0.1086 |   0.0095 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0
| 409,593 | 24 | 77 | 65,941,441 |   1.1618 |   0.7086 |   0.2091 |   0.0001 |   0.0348 |   0.0924 |   0.1618 |   0.0461 |   0.1109 |   0.0073 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0
| 409,593 | 24 | 77 | 65,941,441 |   1.1554 |   0.7070 |   0.1815 |   0.0001 |   0.0356 |   0.0905 |   0.1595 |   0.0472 |   0.1081 |   0.0074 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0
| 409,593 | 24 | 77 | 65,941,441 |   1.1512 |   0.7044 |   0.2009 |   0.0001 |   0.0354 |   0.0923 |   0.1556 |   0.0462 |   0.1097 |   0.0075 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0
| 409,593 | 16 | 77 | 65,941,441 |   1.2426 |   0.7019 |   0.2272 |   0.0001 |   0.0390 |   0.1196 |   0.2025 |   0.0508 |   0.1189 |   0.0099 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0
| 409,593 | 16 | 77 | 65,941,441 |   1.2467 |   0.7045 |   0.1942 |   0.0001 |   0.0385 |   0.1193 |   0.2044 |   0.0510 |   0.1197 |   0.0093 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0
| 409,593 | 16 | 77 | 65,941,441 |   1.2406 |   0.7012 |   0.2397 |   0.0001 |   0.0385 |   0.1172 |   0.2043 |   0.0510 |   0.1188 |   0.0096 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0
| 409,593 | 16 | 77 | 65,941,441 |   1.2618 |   0.7108 |   0.2149 |   0.0001 |   0.0385 |   0.1178 |   0.2138 |   0.0513 |   0.1201 |   0.0095 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0
| 409,593 | 16 | 77 | 65,941,441 |   1.2526 |   0.7038 |   0.2349 |   0.0001 |   0.0387 |   0.1162 |   0.2141 |   0.0511 |   0.1190 |   0.0097 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0
| 409,593 | 8 | 77 | 65,941,441 |   1.4662 |   0.7017 |   0.3612 |   0.0003 |   0.0538 |   0.1520 |   0.3424 |   0.0627 |   0.1351 |   0.0181 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0
| 409,593 | 8 | 77 | 65,941,441 |   1.4797 |   0.7089 |   0.3513 |   0.0003 |   0.0533 |   0.1492 |   0.3490 |   0.0622 |   0.1385 |   0.0182 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0
| 409,593 | 8 | 77 | 65,941,441 |   1.4907 |   0.7098 |   0.2660 |   0.0003 |   0.0529 |   0.1479 |   0.3613 |   0.0621 |   0.1378 |   0.0185 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0
| 409,593 | 8 | 77 | 65,941,441 |   1.4906 |   0.7108 |   0.3144 |   0.0003 |   0.0539 |   0.1482 |   0.3547 |   0.0627 |   0.1416 |   0.0183 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0
| 409,593 | 8 | 77 | 65,941,441 |   1.4731 |   0.6996 |   0.4456 |   0.0003 |   0.0541 |   0.1488 |   0.3524 |   0.0636 |   0.1360 |   0.0182 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 40 | 513 | 864,761,518 |   6.6772 |   0.7051 |   1.6746 |   0.0001 |   0.1939 |   0.9817 |   1.5850 |   0.2485 |   2.9082 |   0.0548 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 40 | 513 | 864,761,518 |   6.6116 |   0.7086 |   1.9242 |   0.0001 |   0.1872 |   0.9802 |   1.5546 |   0.2439 |   2.8829 |   0.0541 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 40 | 513 | 864,761,518 |   6.6124 |   0.7090 |   1.8195 |   0.0001 |   0.1869 |   0.9753 |   1.5393 |   0.2439 |   2.9026 |   0.0554 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 40 | 513 | 864,761,518 |   6.5832 |   0.7083 |   2.0191 |   0.0001 |   0.1847 |   0.9693 |   1.5537 |   0.2385 |   2.8746 |   0.0541 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 40 | 513 | 864,761,518 |   6.6195 |   0.7112 |   1.7710 |   0.0001 |   0.1862 |   0.9767 |   1.5655 |   0.2385 |   2.8831 |   0.0582 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 32 | 513 | 864,761,518 |   7.6226 |   0.7070 |   1.6468 |   0.0001 |   0.2135 |   1.0695 |   1.8418 |   0.2563 |   3.4659 |   0.0685 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 32 | 513 | 864,761,518 |   7.6118 |   0.7093 |   2.5917 |   0.0001 |   0.2152 |   1.0627 |   1.7853 |   0.2571 |   3.5011 |   0.0811 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 32 | 513 | 864,761,518 |   7.6207 |   0.7105 |   1.9886 |   0.0001 |   0.2161 |   1.0520 |   1.7962 |   0.2598 |   3.5171 |   0.0690 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 32 | 513 | 864,761,518 |   7.6580 |   0.7095 |   1.8058 |   0.0001 |   0.2141 |   1.0666 |   1.8011 |   0.2594 |   3.5393 |   0.0680 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 32 | 513 | 864,761,518 |   7.6093 |   0.7031 |   2.4292 |   0.0001 |   0.2133 |   1.0663 |   1.7814 |   0.2584 |   3.5177 |   0.0690 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 24 | 513 | 864,761,518 |  10.6366 |   0.7115 |   2.5829 |   0.0001 |   0.2384 |   1.2065 |   2.2825 |   0.3237 |   5.7755 |   0.0985 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 24 | 513 | 864,761,518 |  10.6300 |   0.7062 |   2.6066 |   0.0001 |   0.2397 |   1.1987 |   2.2595 |   0.3237 |   5.8030 |   0.0991 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 24 | 513 | 864,761,518 |  10.6414 |   0.7059 |   2.2612 |   0.0001 |   0.2445 |   1.2160 |   2.2555 |   0.3026 |   5.8382 |   0.0787 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 24 | 513 | 864,761,518 |  10.6121 |   0.7012 |   2.4445 |   0.0001 |   0.2404 |   1.2051 |   2.2566 |   0.3209 |   5.8065 |   0.0813 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 24 | 513 | 864,761,518 |  10.6427 |   0.7386 |   2.4680 |   0.0001 |   0.2464 |   1.1948 |   2.2556 |   0.2981 |   5.8283 |   0.0808 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 16 | 513 | 864,761,518 |  16.1257 |   0.7017 |   2.7528 |   0.0003 |   0.2850 |   1.4914 |   3.2396 |   0.4743 |   9.8228 |   0.1107 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 16 | 513 | 864,761,518 |  16.1453 |   0.7096 |   3.4457 |   0.0003 |   0.2807 |   1.4617 |   3.2243 |   0.4772 |   9.8605 |   0.1310 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 16 | 513 | 864,761,518 |  16.0939 |   0.7033 |   2.6566 |   0.0003 |   0.2873 |   1.4950 |   3.2556 |   0.4106 |   9.8309 |   0.1109 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 16 | 513 | 864,761,518 |  16.1367 |   0.7056 |   2.8918 |   0.0003 |   0.2879 |   1.4792 |   3.2514 |   0.4848 |   9.8173 |   0.1102 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 16 | 513 | 864,761,518 |  16.1654 |   0.7105 |   3.3977 |   0.0003 |   0.2841 |   1.4793 |   3.2458 |   0.4645 |   9.8704 |   0.1105 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 8 | 513 | 864,761,518 |  27.1451 |   0.7060 |   3.7685 |   0.0003 |   0.4320 |   1.9390 |   6.1905 |   0.5791 |  17.0829 |   0.2154 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 8 | 513 | 864,761,518 |  27.1860 |   0.7079 |   3.7830 |   0.0003 |   0.4436 |   1.9426 |   6.1737 |   0.6138 |  17.0536 |   0.2505 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 8 | 513 | 864,761,518 |  27.1396 |   0.7027 |   3.6219 |   0.0003 |   0.4411 |   1.9456 |   6.1819 |   0.5492 |  17.0602 |   0.2586 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 8 | 513 | 864,761,518 |  27.1374 |   0.7030 |   3.5244 |   0.0003 |   0.4348 |   1.9480 |   6.2375 |   0.5499 |  17.0053 |   0.2586 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 8 | 513 | 864,761,518 |  27.0767 |   0.7068 |   3.7647 |   0.0003 |   0.4292 |   1.9378 |   6.1400 |   0.5864 |  17.0578 |   0.2183 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 0 0
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 0 0
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 0 0
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 0 0
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 0 0
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 0 0
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 0 0
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 0 0
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 0 0
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 0 0
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 0 0
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 0 0
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 0 0
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 0 0
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 0 0
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 0 0
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 0 0
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 0 0
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 0 0
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 0 0
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 0 0
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 0 0
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 0 0
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 0 0
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 0 0

====================================================================================

CUDA AWARE MPI - SORTING
------------------------------------------------------------------------------------
CC sg.cu -o sg.out -lm
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1
| 147,892 | 40 | 20 | 3,700,737,910 |   3.5051 |   0.0179 |  10.8359 |   0.0001 |   0.0881 |   0.0767 |   2.5930 |   0.2522 |   0.2907 |   0.1863 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1
| 147,892 | 40 | 20 | 3,700,737,910 |   3.4847 |   0.0060 |  10.3655 |   0.0001 |   0.0851 |   0.0769 |   2.5754 |   0.2529 |   0.3034 |   0.1849 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1
| 147,892 | 40 | 20 | 3,700,737,910 |   3.5374 |   0.0058 |  10.0242 |   0.0001 |   0.0883 |   0.0777 |   2.6060 |   0.2509 |   0.3225 |   0.1861 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1
| 147,892 | 40 | 20 | 3,700,737,910 |   3.5297 |   0.0059 |  11.0457 |   0.0001 |   0.0895 |   0.0771 |   2.6044 |   0.2548 |   0.3135 |   0.1844 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1
| 147,892 | 40 | 20 | 3,700,737,910 |   3.5579 |   0.0059 |   9.7809 |   0.0001 |   0.0864 |   0.0783 |   2.6009 |   0.2537 |   0.3466 |   0.1861 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1
| 147,892 | 32 | 20 | 3,700,737,910 |   4.0543 |   0.0060 |  11.5791 |   0.0001 |   0.1081 |   0.0967 |   2.9860 |   0.2984 |   0.3287 |   0.2303 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1
| 147,892 | 32 | 20 | 3,700,737,910 |   4.0497 |   0.0058 |  10.8999 |   0.0001 |   0.1056 |   0.0893 |   2.9921 |   0.2962 |   0.3231 |   0.2375 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1
| 147,892 | 32 | 20 | 3,700,737,910 |   4.0404 |   0.0059 |   9.7614 |   0.0001 |   0.1042 |   0.0941 |   2.9704 |   0.2976 |   0.3355 |   0.2328 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1
| 147,892 | 32 | 20 | 3,700,737,910 |   4.0794 |   0.0060 |  10.5837 |   0.0001 |   0.1021 |   0.0898 |   3.0133 |   0.2980 |   0.3458 |   0.2244 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1
| 147,892 | 32 | 20 | 3,700,737,910 |   4.0745 |   0.0059 |  10.4669 |   0.0001 |   0.1027 |   0.0910 |   3.0149 |   0.2984 |   0.3366 |   0.2250 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1
| 147,892 | 24 | 20 | 3,700,737,910 |   5.1750 |   0.0060 |  10.6617 |   0.0001 |   0.1310 |   0.1275 |   3.7366 |   0.4133 |   0.4587 |   0.3018 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1
| 147,892 | 24 | 20 | 3,700,737,910 |   5.1784 |   0.0058 |  11.5824 |   0.0001 |   0.1275 |   0.1122 |   3.7068 |   0.4116 |   0.5102 |   0.3042 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1
| 147,892 | 24 | 20 | 3,700,737,910 |   5.2458 |   0.0059 |   7.9251 |   0.0001 |   0.1305 |   0.1132 |   3.7404 |   0.4116 |   0.5458 |   0.2983 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1
| 147,892 | 24 | 20 | 3,700,737,910 |   5.1214 |   0.0060 |  12.8684 |   0.0001 |   0.1301 |   0.1134 |   3.6003 |   0.4121 |   0.5584 |   0.3009 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1
| 147,892 | 24 | 20 | 3,700,737,910 |   5.2136 |   0.0060 |   7.6882 |   0.0001 |   0.1319 |   0.1130 |   3.7255 |   0.4118 |   0.5265 |   0.2988 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1
| 147,892 | 16 | 20 | 3,700,737,910 |   6.9500 |   0.0060 |  11.3349 |   0.0001 |   0.1885 |   0.1609 |   4.6964 |   0.6130 |   0.8565 |   0.4286 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1
| 147,892 | 16 | 20 | 3,700,737,910 |   7.1662 |   0.0058 |  12.7877 |   0.0001 |   0.1835 |   0.1641 |   4.9192 |   0.6123 |   0.8449 |   0.4363 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1
| 147,892 | 16 | 20 | 3,700,737,910 |   6.7199 |   0.0060 |  12.5641 |   0.0001 |   0.1872 |   0.1569 |   4.2963 |   0.6137 |   1.0269 |   0.4330 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1
| 147,892 | 16 | 20 | 3,700,737,910 |   6.7381 |   0.0059 |  11.0738 |   0.0001 |   0.1788 |   0.1621 |   4.3467 |   0.6148 |   0.9964 |   0.4333 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1
| 147,892 | 16 | 20 | 3,700,737,910 |   6.9640 |   0.0060 |  12.3765 |   0.0001 |   0.1885 |   0.1617 |   4.4280 |   0.6162 |   1.1307 |   0.4330 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1
| 147,892 | 8 | 20 | 3,700,737,910 |  17.9361 |   0.0063 |  13.7928 |   0.0001 |   0.5808 |   0.8986 |   6.4415 |   1.5244 |   7.5264 |   0.9582 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1
| 147,892 | 8 | 20 | 3,700,737,910 |  17.7766 |   0.0061 |  12.9448 |   0.0001 |   0.6296 |   0.8899 |   6.4143 |   1.5112 |   7.3887 |   0.9367 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1
| 147,892 | 8 | 20 | 3,700,737,910 |  17.7920 |   0.0063 |  12.7149 |   0.0001 |   0.6372 |   0.9304 |   6.3704 |   1.5210 |   7.3891 |   0.9375 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1
| 147,892 | 8 | 20 | 3,700,737,910 |  17.3429 |   0.0063 |  13.7952 |   0.0001 |   0.5983 |   0.8128 |   6.4072 |   1.5246 |   7.0448 |   0.9490 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1
| 147,892 | 8 | 20 | 3,700,737,910 |  17.6376 |   0.0063 |  13.5221 |   0.0001 |   0.6412 |   0.8326 |   6.4346 |   1.4967 |   7.2846 |   0.9414 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1
| 165,435 | 40 | 588 | 3,137,407,481 |  21.2501 |   0.0058 |   9.9554 |   0.0001 |   0.6765 |   0.7230 |  11.8066 |   0.5318 |   7.3498 |   0.1565 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1
| 165,435 | 40 | 588 | 3,137,407,481 |  21.2512 |   0.0059 |   8.7637 |   0.0001 |   0.6927 |   0.7335 |  11.7646 |   0.5350 |   7.3326 |   0.1870 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1
| 165,435 | 40 | 588 | 3,137,407,481 |  21.3345 |   0.0060 |   8.6473 |   0.0001 |   0.6488 |   0.7289 |  11.7674 |   0.5429 |   7.4847 |   0.1558 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1
| 165,435 | 40 | 588 | 3,137,407,481 |  21.3205 |   0.0059 |   7.4518 |   0.0001 |   0.6771 |   0.7259 |  11.8033 |   0.5386 |   7.3782 |   0.1914 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1
| 165,435 | 40 | 588 | 3,137,407,481 |  21.3124 |   0.0059 |   9.8143 |   0.0001 |   0.6644 |   0.7350 |  11.7986 |   0.5292 |   7.4228 |   0.1564 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1
| 165,435 | 32 | 588 | 3,137,407,481 |  24.4971 |   0.0061 |   8.8739 |   0.0001 |   0.8043 |   0.7649 |  11.2387 |   0.6452 |  10.7983 |   0.2396 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1
| 165,435 | 32 | 588 | 3,137,407,481 |  24.5424 |   0.0059 |  10.1697 |   0.0001 |   0.8047 |   0.7695 |  11.2858 |   0.6571 |  10.8286 |   0.1908 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1
| 165,435 | 32 | 588 | 3,137,407,481 |  24.5793 |   0.0060 |   8.8629 |   0.0001 |   0.8123 |   0.7735 |  11.3079 |   0.6553 |  10.7889 |   0.2353 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1
| 165,435 | 32 | 588 | 3,137,407,481 |  24.4019 |   0.0058 |   8.3701 |   0.0001 |   0.8106 |   0.7734 |  11.2167 |   0.6358 |  10.7687 |   0.1908 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1
| 165,435 | 32 | 588 | 3,137,407,481 |  24.7394 |   0.0060 |   9.2500 |   0.0001 |   0.8035 |   0.7972 |  11.2864 |   0.6507 |  10.9620 |   0.2335 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1
| 165,435 | 24 | 588 | 3,137,407,481 |  30.4937 |   0.0062 |  11.3209 |   0.0001 |   0.9646 |   0.9023 |  10.9142 |   0.8349 |  16.6162 |   0.2553 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1
| 165,435 | 24 | 588 | 3,137,407,481 |  30.2693 |   0.0061 |  11.2368 |   0.0001 |   1.0128 |   0.8774 |  10.8633 |   0.8060 |  16.4560 |   0.2477 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1
| 165,435 | 24 | 588 | 3,137,407,481 |  30.2986 |   0.0058 |  10.4611 |   0.0001 |   1.0207 |   0.8631 |  10.8650 |   0.8117 |  16.4841 |   0.2480 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1
| 165,435 | 24 | 588 | 3,137,407,481 |  30.2143 |   0.0059 |  11.1953 |   0.0001 |   1.0062 |   0.8816 |  10.8661 |   0.7935 |  16.3671 |   0.2939 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1
| 165,435 | 24 | 588 | 3,137,407,481 |  30.4043 |   0.0067 |  11.3793 |   0.0001 |   1.0012 |   0.8783 |  10.8532 |   0.8185 |  16.5426 |   0.3038 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1
| 165,435 | 16 | 588 | 3,137,407,481 |  45.2197 |   0.0058 |  10.6653 |   0.0001 |   1.1803 |   0.9335 |  11.9683 |   0.6642 |  30.1014 |   0.3662 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1
| 165,435 | 16 | 588 | 3,137,407,481 |  45.2860 |   0.0059 |  11.1858 |   0.0001 |   1.2286 |   0.9475 |  11.0829 |   0.5943 |  30.9758 |   0.4510 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1
| 165,435 | 16 | 588 | 3,137,407,481 |  45.8878 |   0.0058 |  10.9480 |   0.0001 |   1.2368 |   0.9295 |  11.6349 |   0.6754 |  30.9405 |   0.4648 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1
| 165,435 | 16 | 588 | 3,137,407,481 |  45.3232 |   0.0059 |  13.2770 |   0.0001 |   1.2247 |   0.9469 |  11.6696 |   0.6305 |  30.4703 |   0.3752 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1
| 165,435 | 16 | 588 | 3,137,407,481 |  45.2395 |   0.0059 |   9.1264 |   0.0001 |   1.2185 |   0.9490 |  11.0726 |   0.6039 |  31.0184 |   0.3712 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1
| 165,435 | 8 | 588 | 3,137,407,481 |  75.1009 |   0.0060 |  12.4714 |   0.0001 |   2.2852 |   1.4889 |  19.6877 |   1.5139 |  49.3740 |   0.7451 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1
| 165,435 | 8 | 588 | 3,137,407,481 |  70.2780 |   0.0058 |  12.9028 |   0.0001 |   2.2871 |   1.2480 |  12.4467 |   0.8145 |  52.7566 |   0.7193 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1
| 165,435 | 8 | 588 | 3,137,407,481 |  70.6433 |   0.0057 |  12.7973 |   0.0001 |   2.2374 |   1.2530 |  12.6072 |   0.8320 |  52.8543 |   0.8536 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1
| 165,435 | 8 | 588 | 3,137,407,481 |  69.5398 |   0.0059 |  12.8256 |   0.0001 |   1.5509 |   1.1932 |  11.5167 |   0.7682 |  53.7854 |   0.7195 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1
| 165,435 | 8 | 588 | 3,137,407,481 |  70.5128 |   0.0058 |  12.7857 |   0.0001 |   2.1887 |   1.2694 |  12.8171 |   0.8194 |  52.6949 |   0.7173 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1
| 409,593 | 40 | 77 | 65,941,441 |   1.5211 |   0.0061 |   0.2715 |   0.0001 |   0.0371 |   0.0668 |   1.1629 |   0.0501 |   0.1933 |   0.0048 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1
| 409,593 | 40 | 77 | 65,941,441 |   1.5565 |   0.0060 |   0.2242 |   0.0001 |   0.0387 |   0.0654 |   1.1894 |   0.0531 |   0.1988 |   0.0050 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1
| 409,593 | 40 | 77 | 65,941,441 |   1.5295 |   0.0059 |   0.2293 |   0.0001 |   0.0366 |   0.0674 |   1.1740 |   0.0516 |   0.1891 |   0.0049 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1
| 409,593 | 40 | 77 | 65,941,441 |   1.5255 |   0.0060 |   0.2036 |   0.0001 |   0.0391 |   0.0651 |   1.1762 |   0.0511 |   0.1831 |   0.0048 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1
| 409,593 | 40 | 77 | 65,941,441 |   1.5362 |   0.0059 |   0.2142 |   0.0001 |   0.0376 |   0.0650 |   1.1795 |   0.0514 |   0.1918 |   0.0049 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1
| 409,593 | 32 | 77 | 65,941,441 |   1.5075 |   0.0059 |   0.2028 |   0.0001 |   0.0394 |   0.0660 |   1.1439 |   0.0609 |   0.1856 |   0.0058 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1
| 409,593 | 32 | 77 | 65,941,441 |   1.4948 |   0.0058 |   0.1733 |   0.0001 |   0.0411 |   0.0670 |   1.1323 |   0.0590 |   0.1838 |   0.0057 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1
| 409,593 | 32 | 77 | 65,941,441 |   1.5038 |   0.0059 |   0.2532 |   0.0001 |   0.0406 |   0.0657 |   1.1365 |   0.0633 |   0.1858 |   0.0059 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1
| 409,593 | 32 | 77 | 65,941,441 |   1.4743 |   0.0059 |   0.2187 |   0.0001 |   0.0430 |   0.0677 |   1.1182 |   0.0576 |   0.1761 |   0.0057 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1
| 409,593 | 32 | 77 | 65,941,441 |   1.4786 |   0.0059 |   0.1896 |   0.0001 |   0.0425 |   0.0654 |   1.1154 |   0.0663 |   0.1774 |   0.0057 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1
| 409,593 | 24 | 77 | 65,941,441 |   1.4372 |   0.0059 |   0.1945 |   0.0001 |   0.0510 |   0.0798 |   1.0386 |   0.0696 |   0.1856 |   0.0066 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1
| 409,593 | 24 | 77 | 65,941,441 |   1.4244 |   0.0060 |   0.1891 |   0.0001 |   0.0458 |   0.0797 |   1.0327 |   0.0695 |   0.1839 |   0.0068 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1
| 409,593 | 24 | 77 | 65,941,441 |   1.5302 |   0.0060 |   0.2022 |   0.0001 |   0.0514 |   0.0889 |   1.0910 |   0.0803 |   0.2060 |   0.0066 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1
| 409,593 | 24 | 77 | 65,941,441 |   1.4322 |   0.0061 |   0.2038 |   0.0001 |   0.0480 |   0.0788 |   1.0381 |   0.0682 |   0.1862 |   0.0067 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1
| 409,593 | 24 | 77 | 65,941,441 |   1.4373 |   0.0060 |   0.1529 |   0.0001 |   0.0532 |   0.0781 |   1.0395 |   0.0654 |   0.1883 |   0.0067 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1
| 409,593 | 16 | 77 | 65,941,441 |   1.3105 |   0.0059 |   0.3118 |   0.0001 |   0.0403 |   0.0748 |   0.9646 |   0.0562 |   0.1593 |   0.0093 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1
| 409,593 | 16 | 77 | 65,941,441 |   1.3154 |   0.0059 |   0.2543 |   0.0001 |   0.0403 |   0.0750 |   0.9649 |   0.0559 |   0.1639 |   0.0096 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1
| 409,593 | 16 | 77 | 65,941,441 |   1.3486 |   0.0058 |   0.2103 |   0.0001 |   0.0402 |   0.0749 |   0.9756 |   0.0564 |   0.1858 |   0.0099 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1
| 409,593 | 16 | 77 | 65,941,441 |   1.3633 |   0.0131 |   0.2722 |   0.0001 |   0.0439 |   0.0767 |   0.9794 |   0.0577 |   0.1829 |   0.0096 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1
| 409,593 | 16 | 77 | 65,941,441 |   1.3646 |   0.0058 |   0.2140 |   0.0001 |   0.0514 |   0.0753 |   0.9633 |   0.0718 |   0.1869 |   0.0099 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1
| 409,593 | 8 | 77 | 65,941,441 |   1.4412 |   0.0059 |   0.2778 |   0.0002 |   0.0613 |   0.0904 |   1.0322 |   0.0770 |   0.1570 |   0.0171 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1
| 409,593 | 8 | 77 | 65,941,441 |   1.4596 |   0.0058 |   0.3776 |   0.0002 |   0.0613 |   0.0890 |   1.0537 |   0.0760 |   0.1567 |   0.0169 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1
| 409,593 | 8 | 77 | 65,941,441 |   1.4724 |   0.0057 |   0.3070 |   0.0002 |   0.0615 |   0.0910 |   1.0559 |   0.0766 |   0.1637 |   0.0177 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1
| 409,593 | 8 | 77 | 65,941,441 |   1.4540 |   0.0059 |   0.3318 |   0.0002 |   0.0610 |   0.0889 |   1.0487 |   0.0761 |   0.1560 |   0.0171 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1
| 409,593 | 8 | 77 | 65,941,441 |   1.4665 |   0.0058 |   0.3239 |   0.0002 |   0.0606 |   0.0919 |   1.0583 |   0.0759 |   0.1563 |   0.0174 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 40 | 513 | 864,761,518 |  10.1304 |   0.0060 |   1.7514 |   0.0001 |   0.2880 |   0.4484 |   7.2598 |   0.3155 |   1.7526 |   0.0600 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 40 | 513 | 864,761,518 |  10.1281 |   0.0060 |   2.1268 |   0.0001 |   0.2785 |   0.4515 |   7.2796 |   0.3106 |   1.7420 |   0.0599 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 40 | 513 | 864,761,518 |  10.0552 |   0.0060 |   1.4333 |   0.0001 |   0.2764 |   0.4484 |   7.2162 |   0.3175 |   1.7308 |   0.0597 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 40 | 513 | 864,761,518 |  10.1850 |   0.0059 |   1.9943 |   0.0001 |   0.2844 |   0.4565 |   7.3074 |   0.3165 |   1.7533 |   0.0609 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 40 | 513 | 864,761,518 |  10.1212 |   0.0060 |   1.8647 |   0.0001 |   0.2820 |   0.4489 |   7.2768 |   0.3124 |   1.7346 |   0.0604 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 32 | 513 | 864,761,518 |  10.3732 |   0.0060 |   1.7864 |   0.0001 |   0.3184 |   0.4860 |   7.2661 |   0.3610 |   1.8556 |   0.0801 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 32 | 513 | 864,761,518 |  10.2605 |   0.0059 |   1.9985 |   0.0001 |   0.3194 |   0.4942 |   7.1839 |   0.3587 |   1.8196 |   0.0789 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 32 | 513 | 864,761,518 |  10.2568 |   0.0059 |   2.0487 |   0.0001 |   0.3093 |   0.4901 |   7.1754 |   0.3493 |   1.8488 |   0.0780 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 32 | 513 | 864,761,518 |  10.2252 |   0.0059 |   2.3937 |   0.0001 |   0.3145 |   0.4947 |   7.1350 |   0.3559 |   1.8407 |   0.0784 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 32 | 513 | 864,761,518 |  10.2503 |   0.0059 |   1.8286 |   0.0001 |   0.3167 |   0.4831 |   7.1786 |   0.3620 |   1.8255 |   0.0784 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 24 | 513 | 864,761,518 |  11.2607 |   0.0072 |   2.1903 |   0.0001 |   0.4282 |   0.5422 |   7.3214 |   0.5048 |   2.3539 |   0.1028 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 24 | 513 | 864,761,518 |  11.3556 |   0.0063 |   2.0521 |   0.0001 |   0.4254 |   0.5338 |   7.3481 |   0.5119 |   2.4118 |   0.1183 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 24 | 513 | 864,761,518 |  11.1710 |   0.0061 |   2.1678 |   0.0001 |   0.4295 |   0.5373 |   7.2453 |   0.5155 |   2.3351 |   0.1021 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 24 | 513 | 864,761,518 |  11.2783 |   0.0062 |   2.2313 |   0.0001 |   0.4318 |   0.5382 |   7.2942 |   0.5166 |   2.3900 |   0.1013 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 24 | 513 | 864,761,518 |  11.2458 |   0.0066 |   2.8163 |   0.0001 |   0.4342 |   0.5424 |   7.2831 |   0.5107 |   2.3525 |   0.1164 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 16 | 513 | 864,761,518 |  14.4672 |   0.0066 |   2.6449 |   0.0012 |   0.3835 |   0.5734 |   7.8066 |   0.5255 |   5.0606 |   0.1098 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 16 | 513 | 864,761,518 |  14.6499 |   0.0061 |   3.4274 |   0.0012 |   0.3848 |   0.5768 |   7.8585 |   0.5307 |   5.1589 |   0.1327 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 16 | 513 | 864,761,518 |  14.5502 |   0.0064 |   3.1257 |   0.0013 |   0.3852 |   0.5734 |   7.7935 |   0.5291 |   5.1303 |   0.1311 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 16 | 513 | 864,761,518 |  14.4289 |   0.0066 |   2.8558 |   0.0012 |   0.3841 |   0.5650 |   7.7818 |   0.5238 |   5.0547 |   0.1116 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 16 | 513 | 864,761,518 |  14.4351 |   0.0062 |   2.9999 |   0.0008 |   0.3934 |   0.5742 |   7.8525 |   0.5340 |   4.9428 |   0.1313 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 8 | 513 | 864,761,518 |  23.6193 |   0.0067 |   3.9466 |   0.0003 |   0.6987 |   0.7648 |   8.7312 |   0.7484 |  12.4136 |   0.2556 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 8 | 513 | 864,761,518 |  23.7282 |   0.0066 |   3.9316 |   0.0003 |   0.6948 |   0.7922 |   8.7523 |   0.7343 |  12.5345 |   0.2133 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 8 | 513 | 864,761,518 |  23.7480 |   0.0065 |   3.7080 |   0.0003 |   0.7102 |   0.7883 |   8.7167 |   0.7366 |  12.5427 |   0.2467 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 8 | 513 | 864,761,518 |  23.6124 |   0.0066 |   3.8426 |   0.0003 |   0.6789 |   0.7883 |   8.7164 |   0.7516 |  12.4538 |   0.2167 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 8 | 513 | 864,761,518 |  26.4783 |   0.0067 |   3.7262 |   0.0003 |   0.6880 |   0.8192 |  11.3273 |   1.0525 |  12.3320 |   0.2525 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 1 1
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 1 1
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 1 1
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 1 1
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 1 1
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 1 1
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 1 1
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 1 1
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 1 1
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 1 1
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 1 1
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 1 1
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 1 1
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 1 1
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 1 1
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 1 1
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 1 1
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 1 1
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 1 1
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 1 1
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 1 1
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 1 1
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 1 1
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 1 1
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/com-dblpungraph.bin 1 1
CUDA AWARE MPI - TWO PASS
------------------------------------------------------------------------------------
CC sg.cu -o sg.out -lm
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0
Job ended at: 2024-08-11 03:18:56

```
