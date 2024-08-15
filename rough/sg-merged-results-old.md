```shell
cat sg-merged.output
Polaris job started at: 2024-08-11 22:25:23
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> JOB STARTED >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
TRADITIONAL MPI - SORTING
------------------------------------------------------------------------------------
CC sg.cu -o sg.out -lm
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1
| 163,734 | 40 | 125 | 408,443,204 |   2.3238 |   0.7150 |   0.0096 |   0.0001 |   0.0847 |   0.1533 |   0.9594 |   0.1244 |   0.2650 |   0.0219 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1
| 163,734 | 40 | 125 | 408,443,204 |   2.3026 |   0.7054 |   0.0049 |   0.0001 |   0.0855 |   0.1533 |   0.9462 |   0.1255 |   0.2652 |   0.0215 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1
| 163,734 | 40 | 125 | 408,443,204 |   2.3174 |   0.7111 |   0.0034 |   0.0001 |   0.0853 |   0.1531 |   0.9556 |   0.1244 |   0.2653 |   0.0226 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1
| 163,734 | 40 | 125 | 408,443,204 |   2.3207 |   0.7113 |   0.0031 |   0.0001 |   0.0857 |   0.1530 |   0.9578 |   0.1264 |   0.2640 |   0.0225 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1
| 163,734 | 40 | 125 | 408,443,204 |   2.3154 |   0.7128 |   0.0032 |   0.0001 |   0.0849 |   0.1525 |   0.9560 |   0.1235 |   0.2637 |   0.0219 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1
| 163,734 | 32 | 125 | 408,443,204 |   2.4561 |   0.7065 |   0.0052 |   0.0001 |   0.1050 |   0.1644 |   1.0511 |   0.1340 |   0.2674 |   0.0277 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1
| 163,734 | 32 | 125 | 408,443,204 |   2.4574 |   0.7030 |   0.0031 |   0.0001 |   0.1046 |   0.1645 |   1.0617 |   0.1339 |   0.2628 |   0.0267 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1
| 163,734 | 32 | 125 | 408,443,204 |   2.4575 |   0.7025 |   0.0034 |   0.0001 |   0.1041 |   0.1636 |   1.0580 |   0.1352 |   0.2670 |   0.0269 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1
| 163,734 | 32 | 125 | 408,443,204 |   2.4655 |   0.7033 |   0.0033 |   0.0001 |   0.1045 |   0.1666 |   1.0585 |   0.1348 |   0.2711 |   0.0267 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1
| 163,734 | 32 | 125 | 408,443,204 |   2.5497 |   0.7044 |   0.0033 |   0.0001 |   0.1058 |   0.1846 |   1.0873 |   0.1443 |   0.2960 |   0.0271 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1
| 163,734 | 24 | 125 | 408,443,204 |   2.8321 |   0.7037 |   0.0050 |   0.0001 |   0.1151 |   0.1756 |   1.3349 |   0.1529 |   0.3142 |   0.0356 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1
| 163,734 | 24 | 125 | 408,443,204 |   2.8464 |   0.7054 |   0.0031 |   0.0001 |   0.1158 |   0.1762 |   1.3341 |   0.1531 |   0.3256 |   0.0361 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1
| 163,734 | 24 | 125 | 408,443,204 |   2.8445 |   0.7041 |   0.0032 |   0.0001 |   0.1166 |   0.1744 |   1.3362 |   0.1534 |   0.3245 |   0.0351 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1
| 163,734 | 24 | 125 | 408,443,204 |   2.8326 |   0.7033 |   0.0029 |   0.0001 |   0.1161 |   0.1747 |   1.3240 |   0.1521 |   0.3270 |   0.0353 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1
| 163,734 | 24 | 125 | 408,443,204 |   2.8237 |   0.7062 |   0.0032 |   0.0001 |   0.1154 |   0.1750 |   1.3211 |   0.1522 |   0.3188 |   0.0349 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1
| 163,734 | 16 | 125 | 408,443,204 |   3.5550 |   0.7083 |   0.0053 |   0.0001 |   0.1237 |   0.1825 |   1.9091 |   0.1902 |   0.3901 |   0.0510 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1
| 163,734 | 16 | 125 | 408,443,204 |   3.5647 |   0.6997 |   0.0030 |   0.0000 |   0.1231 |   0.1828 |   1.9260 |   0.1913 |   0.3901 |   0.0516 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1
| 163,734 | 16 | 125 | 408,443,204 |   3.5687 |   0.6910 |   0.0030 |   0.0001 |   0.1225 |   0.1824 |   1.9321 |   0.1931 |   0.3959 |   0.0517 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1
| 163,734 | 16 | 125 | 408,443,204 |   3.5760 |   0.6990 |   0.0027 |   0.0001 |   0.1251 |   0.1819 |   1.9299 |   0.1929 |   0.3964 |   0.0508 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1
| 163,734 | 16 | 125 | 408,443,204 |   3.5758 |   0.7007 |   0.0030 |   0.0001 |   0.1235 |   0.1837 |   1.9357 |   0.1906 |   0.3913 |   0.0502 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1
| 163,734 | 8 | 125 | 408,443,204 |   6.0008 |   0.6826 |   0.0046 |   0.0001 |   0.1622 |   0.2229 |   3.8956 |   0.3076 |   0.6314 |   0.0984 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1
| 163,734 | 8 | 125 | 408,443,204 |   5.9746 |   0.6707 |   0.0028 |   0.0001 |   0.1646 |   0.2196 |   3.9093 |   0.3062 |   0.6066 |   0.0976 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1
| 163,734 | 8 | 125 | 408,443,204 |   5.9951 |   0.6701 |   0.0028 |   0.0001 |   0.1643 |   0.2206 |   3.9234 |   0.3064 |   0.6122 |   0.0980 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1
| 163,734 | 8 | 125 | 408,443,204 |   6.0042 |   0.6592 |   0.0029 |   0.0001 |   0.1682 |   0.2294 |   3.9178 |   0.3096 |   0.6222 |   0.0978 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1
| 163,734 | 8 | 125 | 408,443,204 |   5.9684 |   0.6641 |   0.0027 |   0.0001 |   0.1611 |   0.2193 |   3.9031 |   0.3040 |   0.6198 |   0.0970 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1
| 147,892 | 40 | 20 | 3,700,737,910 |   5.2691 |   0.7082 |   0.0088 |   0.0001 |   0.0835 |   0.0773 |   3.7012 |   0.2251 |   0.2928 |   0.1810 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1
| 147,892 | 40 | 20 | 3,700,737,910 |   5.2536 |   0.7019 |   0.0050 |   0.0001 |   0.0866 |   0.0774 |   3.6858 |   0.2271 |   0.2929 |   0.1817 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1
| 147,892 | 40 | 20 | 3,700,737,910 |   5.2635 |   0.6947 |   0.0033 |   0.0001 |   0.0830 |   0.0774 |   3.7131 |   0.2273 |   0.2838 |   0.1841 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1
| 147,892 | 40 | 20 | 3,700,737,910 |   5.2104 |   0.6923 |   0.0032 |   0.0001 |   0.0845 |   0.0772 |   3.6706 |   0.2252 |   0.2748 |   0.1857 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1
| 147,892 | 40 | 20 | 3,700,737,910 |   5.2414 |   0.6936 |   0.0033 |   0.0001 |   0.0837 |   0.0772 |   3.7003 |   0.2259 |   0.2780 |   0.1827 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1
| 147,892 | 32 | 20 | 3,700,737,910 |   6.2000 |   0.6923 |   0.0051 |   0.0001 |   0.1009 |   0.0923 |   4.5320 |   0.2668 |   0.2896 |   0.2260 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1
| 147,892 | 32 | 20 | 3,700,737,910 |   6.2266 |   0.7087 |   0.0032 |   0.0001 |   0.1012 |   0.0891 |   4.5522 |   0.2638 |   0.2872 |   0.2243 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1
| 147,892 | 32 | 20 | 3,700,737,910 |   6.2276 |   0.6924 |   0.0032 |   0.0001 |   0.1038 |   0.0909 |   4.5452 |   0.2634 |   0.3073 |   0.2246 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1
| 147,892 | 32 | 20 | 3,700,737,910 |   6.2527 |   0.6965 |   0.0031 |   0.0001 |   0.1009 |   0.0910 |   4.5730 |   0.2659 |   0.3000 |   0.2252 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1
| 147,892 | 32 | 20 | 3,700,737,910 |   6.2626 |   0.6874 |   0.0032 |   0.0001 |   0.1010 |   0.0899 |   4.5770 |   0.2666 |   0.3152 |   0.2254 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1
| 147,892 | 24 | 20 | 3,700,737,910 |   8.0048 |   0.6893 |   0.0051 |   0.0001 |   0.1306 |   0.1136 |   5.9682 |   0.3506 |   0.4561 |   0.2964 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1
| 147,892 | 24 | 20 | 3,700,737,910 |   8.0105 |   0.6754 |   0.0030 |   0.0001 |   0.1296 |   0.1151 |   5.9894 |   0.3530 |   0.4526 |   0.2954 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1
| 147,892 | 24 | 20 | 3,700,737,910 |   8.0769 |   0.6795 |   0.0028 |   0.0001 |   0.1298 |   0.1180 |   6.0215 |   0.3503 |   0.4803 |   0.2973 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1
| 147,892 | 24 | 20 | 3,700,737,910 |   8.0256 |   0.6895 |   0.0032 |   0.0001 |   0.1272 |   0.1146 |   6.0017 |   0.3538 |   0.4447 |   0.2942 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1
| 147,892 | 24 | 20 | 3,700,737,910 |   8.0538 |   0.6811 |   0.0032 |   0.0001 |   0.1317 |   0.1148 |   5.9994 |   0.3529 |   0.4782 |   0.2955 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1
| 147,892 | 16 | 20 | 3,700,737,910 |  11.9590 |   0.6802 |   0.0046 |   0.0001 |   0.1833 |   0.1540 |   8.9137 |   0.5150 |   1.0019 |   0.5109 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1
| 147,892 | 16 | 20 | 3,700,737,910 |  11.9239 |   0.6312 |   0.0029 |   0.0000 |   0.1753 |   0.1581 |   8.9260 |   0.5145 |   1.0226 |   0.4962 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1
| 147,892 | 16 | 20 | 3,700,737,910 |  11.8649 |   0.6410 |   0.0027 |   0.0001 |   0.1857 |   0.1559 |   8.8800 |   0.5154 |   0.9704 |   0.5165 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1
| 147,892 | 16 | 20 | 3,700,737,910 |  11.9357 |   0.6519 |   0.0031 |   0.0000 |   0.1780 |   0.1560 |   8.9374 |   0.5110 |   0.9884 |   0.5129 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1
| 147,892 | 16 | 20 | 3,700,737,910 |  12.0225 |   0.6515 |   0.0030 |   0.0001 |   0.1897 |   0.1629 |   8.9259 |   0.5183 |   1.0642 |   0.5100 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1
| 147,892 | 8 | 20 | 3,700,737,910 |  29.9890 |   0.6422 |   0.0044 |   0.0001 |   0.5398 |   0.8531 |  16.8374 |   1.5730 |   8.5988 |   0.9446 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1
| 147,892 | 8 | 20 | 3,700,737,910 |  29.1323 |   0.5959 |   0.0030 |   0.0001 |   0.5548 |   0.8939 |  16.7768 |   1.4888 |   7.8911 |   0.9310 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1
| 147,892 | 8 | 20 | 3,700,737,910 |  30.3865 |   0.6053 |   0.0032 |   0.0000 |   0.5559 |   0.8882 |  16.8384 |   1.5314 |   9.0367 |   0.9305 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1
| 147,892 | 8 | 20 | 3,700,737,910 |  29.8914 |   0.5988 |   0.0027 |   0.0001 |   0.5562 |   0.8940 |  16.8960 |   1.4924 |   8.5152 |   0.9388 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1
| 147,892 | 8 | 20 | 3,700,737,910 |  30.1760 |   0.6116 |   0.0028 |   0.0001 |   0.5446 |   0.8745 |  16.8515 |   1.5199 |   8.8328 |   0.9411 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1
| 165,435 | 40 | 588 | 3,137,407,481 |  14.4633 |   0.7051 |   0.0093 |   0.0001 |   0.4486 |   0.6773 |   2.2085 |   0.3580 |   9.9117 |   0.1542 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1
| 165,435 | 40 | 588 | 3,137,407,481 |  14.4235 |   0.7047 |   0.0049 |   0.0001 |   0.4503 |   0.6842 |   2.2217 |   0.3551 |   9.8541 |   0.1533 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1
| 165,435 | 40 | 588 | 3,137,407,481 |  14.4573 |   0.7079 |   0.0032 |   0.0001 |   0.4479 |   0.6761 |   2.1750 |   0.3916 |   9.9049 |   0.1539 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1
| 165,435 | 40 | 588 | 3,137,407,481 |  14.4664 |   0.7051 |   0.0033 |   0.0001 |   0.4446 |   0.6878 |   2.2164 |   0.3946 |   9.8656 |   0.1522 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1
| 165,435 | 40 | 588 | 3,137,407,481 |  14.4043 |   0.7107 |   0.0031 |   0.0001 |   0.4453 |   0.6775 |   2.1437 |   0.3630 |   9.9096 |   0.1546 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1
| 165,435 | 32 | 588 | 3,137,407,481 |  17.4809 |   0.7064 |   0.0049 |   0.0001 |   0.5466 |   0.7218 |   2.4425 |   0.4152 |  12.4583 |   0.1901 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1
| 165,435 | 32 | 588 | 3,137,407,481 |  17.6504 |   0.7029 |   0.0029 |   0.0001 |   0.5565 |   0.7132 |   2.5347 |   0.4027 |  12.5236 |   0.2168 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1
| 165,435 | 32 | 588 | 3,137,407,481 |  17.6222 |   0.7025 |   0.0030 |   0.0001 |   0.5505 |   0.7188 |   2.5033 |   0.4621 |  12.4727 |   0.2122 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1
| 165,435 | 32 | 588 | 3,137,407,481 |  17.5146 |   0.7021 |   0.0032 |   0.0001 |   0.5457 |   0.7195 |   2.5461 |   0.4001 |  12.4146 |   0.1864 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1
| 165,435 | 32 | 588 | 3,137,407,481 |  17.4934 |   0.7017 |   0.0029 |   0.0001 |   0.5463 |   0.7124 |   2.4622 |   0.4468 |  12.4354 |   0.1885 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1
| 165,435 | 24 | 588 | 3,137,407,481 |  22.8988 |   0.7043 |   0.0049 |   0.0001 |   0.6399 |   0.7692 |   3.0077 |   0.4518 |  17.0734 |   0.2523 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1
| 165,435 | 24 | 588 | 3,137,407,481 |  22.8492 |   0.7035 |   0.0032 |   0.0001 |   0.6318 |   0.7672 |   3.0450 |   0.4494 |  16.9591 |   0.2932 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1
| 165,435 | 24 | 588 | 3,137,407,481 |  23.0024 |   0.7017 |   0.0032 |   0.0001 |   0.6592 |   0.7875 |   3.0970 |   0.4379 |  17.0312 |   0.2879 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1
| 165,435 | 24 | 588 | 3,137,407,481 |  22.9224 |   0.6965 |   0.0032 |   0.0001 |   0.6475 |   0.7873 |   3.1098 |   0.4507 |  16.9427 |   0.2879 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1
| 165,435 | 24 | 588 | 3,137,407,481 |  22.8400 |   0.7026 |   0.0031 |   0.0001 |   0.6279 |   0.7838 |   3.0221 |   0.4538 |  16.9972 |   0.2525 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1
| 165,435 | 16 | 588 | 3,137,407,481 |  34.2044 |   0.6976 |   0.0045 |   0.0001 |   0.8446 |   0.8730 |   4.3778 |   0.4733 |  26.5031 |   0.4349 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1
| 165,435 | 16 | 588 | 3,137,407,481 |  34.2042 |   0.6870 |   0.0028 |   0.0000 |   0.8365 |   0.8620 |   4.3330 |   0.5075 |  26.5389 |   0.4392 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1
| 165,435 | 16 | 588 | 3,137,407,481 |  34.1977 |   0.6793 |   0.0030 |   0.0001 |   0.8736 |   0.8632 |   4.3430 |   0.4933 |  26.5125 |   0.4328 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1
| 165,435 | 16 | 588 | 3,137,407,481 |  34.1304 |   0.6925 |   0.0028 |   0.0001 |   0.8443 |   0.8581 |   4.3462 |   0.4805 |  26.4786 |   0.4302 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1
| 165,435 | 16 | 588 | 3,137,407,481 |  34.3113 |   0.6842 |   0.0033 |   0.0001 |   0.8381 |   0.8739 |   4.3693 |   0.4825 |  26.6336 |   0.4295 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1
| 165,435 | 8 | 588 | 3,137,407,481 |  68.5076 |   0.6892 |   0.0046 |   0.0001 |   1.2152 |   1.0792 |   8.6525 |   0.7749 |  55.3777 |   0.7189 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1
| 165,435 | 8 | 588 | 3,137,407,481 |  68.9504 |   0.6546 |   0.0027 |   0.0001 |   1.2444 |   1.0869 |   8.9968 |   0.6241 |  55.4840 |   0.8596 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1
| 165,435 | 8 | 588 | 3,137,407,481 |  68.9979 |   0.6612 |   0.0028 |   0.0001 |   1.2943 |   1.1294 |   8.9377 |   0.6124 |  55.5274 |   0.8355 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1
| 165,435 | 8 | 588 | 3,137,407,481 |  68.9986 |   0.6632 |   0.0028 |   0.0000 |   1.2941 |   1.1165 |   9.0594 |   0.6671 |  55.3502 |   0.8481 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1
| 165,435 | 8 | 588 | 3,137,407,481 |  69.0636 |   0.6699 |   0.0028 |   0.0001 |   1.3247 |   1.1351 |   8.8330 |   0.7761 |  55.6085 |   0.7162 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1
| 409,593 | 40 | 77 | 65,941,441 |   1.0759 |   0.7041 |   0.0097 |   0.0001 |   0.0277 |   0.0657 |   0.1353 |   0.0399 |   0.0981 |   0.0050 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1
| 409,593 | 40 | 77 | 65,941,441 |   1.0880 |   0.7065 |   0.0052 |   0.0001 |   0.0278 |   0.0653 |   0.1448 |   0.0402 |   0.0986 |   0.0046 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1
| 409,593 | 40 | 77 | 65,941,441 |   1.0925 |   0.7084 |   0.0044 |   0.0001 |   0.0276 |   0.0650 |   0.1475 |   0.0406 |   0.0987 |   0.0047 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1
| 409,593 | 40 | 77 | 65,941,441 |   1.0916 |   0.7099 |   0.0032 |   0.0001 |   0.0278 |   0.0656 |   0.1446 |   0.0397 |   0.0992 |   0.0048 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1
| 409,593 | 40 | 77 | 65,941,441 |   1.0848 |   0.7087 |   0.0032 |   0.0001 |   0.0277 |   0.0655 |   0.1396 |   0.0405 |   0.0979 |   0.0047 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1
| 409,593 | 32 | 77 | 65,941,441 |   1.2146 |   0.7056 |   0.0053 |   0.0001 |   0.0401 |   0.0836 |   0.1855 |   0.0596 |   0.1345 |   0.0056 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1
| 409,593 | 32 | 77 | 65,941,441 |   1.1048 |   0.7098 |   0.0031 |   0.0001 |   0.0308 |   0.0695 |   0.1449 |   0.0427 |   0.1015 |   0.0054 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1
| 409,593 | 32 | 77 | 65,941,441 |   1.1046 |   0.7046 |   0.0031 |   0.0001 |   0.0310 |   0.0688 |   0.1491 |   0.0423 |   0.1033 |   0.0054 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1
| 409,593 | 32 | 77 | 65,941,441 |   1.1969 |   0.7546 |   0.0032 |   0.0001 |   0.0310 |   0.0698 |   0.1912 |   0.0423 |   0.1024 |   0.0056 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1
| 409,593 | 32 | 77 | 65,941,441 |   1.0936 |   0.7064 |   0.0030 |   0.0001 |   0.0309 |   0.0690 |   0.1381 |   0.0422 |   0.1016 |   0.0055 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1
| 409,593 | 24 | 77 | 65,941,441 |   1.1489 |   0.7042 |   0.0051 |   0.0001 |   0.0359 |   0.0735 |   0.1716 |   0.0465 |   0.1098 |   0.0072 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1
| 409,593 | 24 | 77 | 65,941,441 |   1.1428 |   0.7051 |   0.0031 |   0.0001 |   0.0363 |   0.0729 |   0.1646 |   0.0468 |   0.1097 |   0.0073 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1
| 409,593 | 24 | 77 | 65,941,441 |   1.1473 |   0.7033 |   0.0032 |   0.0001 |   0.0361 |   0.0733 |   0.1707 |   0.0470 |   0.1096 |   0.0073 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1
| 409,593 | 24 | 77 | 65,941,441 |   1.2294 |   0.7709 |   0.0029 |   0.0001 |   0.0375 |   0.0755 |   0.1774 |   0.0484 |   0.1123 |   0.0073 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1
| 409,593 | 24 | 77 | 65,941,441 |   1.1362 |   0.7031 |   0.0030 |   0.0001 |   0.0358 |   0.0725 |   0.1622 |   0.0474 |   0.1080 |   0.0072 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1
| 409,593 | 16 | 77 | 65,941,441 |   1.2032 |   0.7056 |   0.0091 |   0.0001 |   0.0372 |   0.0757 |   0.2057 |   0.0512 |   0.1180 |   0.0097 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1
| 409,593 | 16 | 77 | 65,941,441 |   1.2064 |   0.7020 |   0.0029 |   0.0001 |   0.0373 |   0.0760 |   0.2144 |   0.0511 |   0.1162 |   0.0093 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1
| 409,593 | 16 | 77 | 65,941,441 |   1.1922 |   0.7041 |   0.0031 |   0.0001 |   0.0371 |   0.0746 |   0.1985 |   0.0512 |   0.1170 |   0.0096 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1
| 409,593 | 16 | 77 | 65,941,441 |   1.2083 |   0.7063 |   0.0031 |   0.0001 |   0.0370 |   0.0761 |   0.2118 |   0.0521 |   0.1159 |   0.0092 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1
| 409,593 | 16 | 77 | 65,941,441 |   1.2013 |   0.7053 |   0.0031 |   0.0001 |   0.0377 |   0.0754 |   0.2070 |   0.0517 |   0.1145 |   0.0096 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1
| 409,593 | 8 | 77 | 65,941,441 |   1.4238 |   0.7047 |   0.0057 |   0.0002 |   0.0532 |   0.0890 |   0.3497 |   0.0654 |   0.1445 |   0.0172 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1
| 409,593 | 8 | 77 | 65,941,441 |   1.5043 |   0.7706 |   0.0030 |   0.0002 |   0.0532 |   0.0900 |   0.3626 |   0.0649 |   0.1455 |   0.0171 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1
| 409,593 | 8 | 77 | 65,941,441 |   1.4135 |   0.7021 |   0.0031 |   0.0002 |   0.0529 |   0.0884 |   0.3498 |   0.0648 |   0.1378 |   0.0174 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1
| 409,593 | 8 | 77 | 65,941,441 |   1.4121 |   0.6985 |   0.0029 |   0.0002 |   0.0530 |   0.0895 |   0.3527 |   0.0639 |   0.1368 |   0.0175 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1
| 409,593 | 8 | 77 | 65,941,441 |   1.4205 |   0.7026 |   0.0030 |   0.0002 |   0.0534 |   0.0889 |   0.3473 |   0.0658 |   0.1450 |   0.0173 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 40 | 513 | 864,761,518 |   5.1985 |   0.7131 |   0.0089 |   0.0001 |   0.1876 |   0.3834 |   1.5077 |   0.2455 |   2.1014 |   0.0598 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 40 | 513 | 864,761,518 |   5.1916 |   0.7065 |   0.0052 |   0.0001 |   0.1889 |   0.3791 |   1.5373 |   0.2444 |   2.0915 |   0.0438 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 40 | 513 | 864,761,518 |   5.2224 |   0.7099 |   0.0044 |   0.0001 |   0.1905 |   0.3836 |   1.5324 |   0.2429 |   2.1030 |   0.0601 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 40 | 513 | 864,761,518 |   5.2449 |   0.7124 |   0.0032 |   0.0001 |   0.1851 |   0.3816 |   1.5406 |   0.2387 |   2.1284 |   0.0579 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 40 | 513 | 864,761,518 |   5.1958 |   0.7138 |   0.0033 |   0.0001 |   0.1880 |   0.3834 |   1.5142 |   0.2443 |   2.1082 |   0.0439 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 32 | 513 | 864,761,518 |   6.4093 |   0.7054 |   0.0055 |   0.0001 |   0.2186 |   0.4196 |   1.8247 |   0.2733 |   2.9133 |   0.0542 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 32 | 513 | 864,761,518 |   6.3549 |   0.7050 |   0.0032 |   0.0001 |   0.2141 |   0.4038 |   1.7466 |   0.2709 |   2.9511 |   0.0633 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 32 | 513 | 864,761,518 |   6.3682 |   0.7038 |   0.0030 |   0.0001 |   0.2123 |   0.4033 |   1.7474 |   0.2722 |   2.9751 |   0.0541 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 32 | 513 | 864,761,518 |   6.3738 |   0.7031 |   0.0034 |   0.0001 |   0.2124 |   0.4185 |   1.7977 |   0.2739 |   2.9142 |   0.0540 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 32 | 513 | 864,761,518 |   6.3789 |   0.7071 |   0.0033 |   0.0001 |   0.2121 |   0.4142 |   1.7566 |   0.2686 |   2.9665 |   0.0537 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 24 | 513 | 864,761,518 |   8.5388 |   0.7064 |   0.0054 |   0.0001 |   0.2536 |   0.4561 |   2.2206 |   0.3067 |   4.5243 |   0.0710 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 24 | 513 | 864,761,518 |   8.5512 |   0.7035 |   0.0033 |   0.0001 |   0.2506 |   0.4642 |   2.2510 |   0.3447 |   4.4545 |   0.0827 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 24 | 513 | 864,761,518 |   8.5269 |   0.7009 |   0.0032 |   0.0001 |   0.2528 |   0.4545 |   2.2277 |   0.3264 |   4.4924 |   0.0721 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 24 | 513 | 864,761,518 |   8.5224 |   0.7028 |   0.0030 |   0.0001 |   0.2515 |   0.4498 |   2.2254 |   0.3037 |   4.5168 |   0.0722 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 24 | 513 | 864,761,518 |   8.5626 |   0.6975 |   0.0032 |   0.0001 |   0.2528 |   0.4579 |   2.2145 |   0.3194 |   4.5326 |   0.0878 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 16 | 513 | 864,761,518 |  13.2173 |   0.7034 |   0.0052 |   0.0003 |   0.2957 |   0.5094 |   3.1966 |   0.6929 |   7.7166 |   0.1023 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 16 | 513 | 864,761,518 |  13.0244 |   0.6899 |   0.0029 |   0.0003 |   0.3016 |   0.5266 |   3.2024 |   0.4888 |   7.6944 |   0.1202 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 16 | 513 | 864,761,518 |  12.9349 |   0.6895 |   0.0032 |   0.0003 |   0.2946 |   0.5188 |   3.1922 |   0.4616 |   7.6730 |   0.1049 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 16 | 513 | 864,761,518 |  13.0900 |   0.6868 |   0.0031 |   0.0003 |   0.3014 |   0.5124 |   3.1938 |   0.5806 |   7.6934 |   0.1212 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 16 | 513 | 864,761,518 |  13.0062 |   0.7012 |   0.0029 |   0.0003 |   0.2942 |   0.5124 |   3.2181 |   0.4395 |   7.7121 |   0.1284 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 8 | 513 | 864,761,518 |  25.9394 |   0.6875 |   0.0070 |   0.0003 |   0.4817 |   0.6940 |   6.1902 |   0.6175 |  17.0633 |   0.2048 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 8 | 513 | 864,761,518 |  25.9328 |   0.6573 |   0.0032 |   0.0003 |   0.4958 |   0.7119 |   6.1121 |   0.6367 |  17.0787 |   0.2401 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 8 | 513 | 864,761,518 |  25.8949 |   0.6753 |   0.0031 |   0.0003 |   0.4860 |   0.7059 |   6.1051 |   0.6487 |  17.0207 |   0.2530 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 8 | 513 | 864,761,518 |  25.9129 |   0.6701 |   0.0031 |   0.0003 |   0.5016 |   0.6919 |   6.1546 |   0.6390 |  17.0505 |   0.2049 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| 552,020 | 8 | 513 | 864,761,518 |  25.8691 |   0.6535 |   0.0031 |   0.0003 |   0.4903 |   0.6926 |   6.0800 |   0.6165 |  17.1347 |   0.2012 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
TRADITIONAL MPI - TWO PASS
------------------------------------------------------------------------------------
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0
| 163,734 | 40 | 125 | 408,443,204 |   2.5622 |   0.7109 |   0.0071 |   0.0001 |   0.0813 |   0.3988 |   0.9701 |   0.1163 |   0.2623 |   0.0225 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0
| 163,734 | 40 | 125 | 408,443,204 |   2.5358 |   0.7075 |   0.0046 |   0.0001 |   0.0812 |   0.3871 |   0.9643 |   0.1150 |   0.2590 |   0.0216 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0
| 163,734 | 40 | 125 | 408,443,204 |   2.6329 |   0.7693 |   0.0033 |   0.0001 |   0.0829 |   0.4001 |   0.9824 |   0.1161 |   0.2595 |   0.0225 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0
| 163,734 | 40 | 125 | 408,443,204 |   2.5619 |   0.7105 |   0.0032 |   0.0001 |   0.0820 |   0.3971 |   0.9708 |   0.1160 |   0.2636 |   0.0218 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0
| 163,734 | 40 | 125 | 408,443,204 |   2.5449 |   0.7083 |   0.0032 |   0.0001 |   0.0816 |   0.3890 |   0.9665 |   0.1151 |   0.2615 |   0.0227 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0
| 163,734 | 32 | 125 | 408,443,204 |   2.7267 |   0.7076 |   0.0045 |   0.0001 |   0.1004 |   0.4221 |   1.0824 |   0.1268 |   0.2611 |   0.0261 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0
| 163,734 | 32 | 125 | 408,443,204 |   2.7194 |   0.7052 |   0.0032 |   0.0001 |   0.0995 |   0.4209 |   1.0736 |   0.1265 |   0.2672 |   0.0264 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0
| 163,734 | 32 | 125 | 408,443,204 |   2.7224 |   0.7047 |   0.0032 |   0.0001 |   0.1009 |   0.4217 |   1.0785 |   0.1261 |   0.2634 |   0.0269 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0
| 163,734 | 32 | 125 | 408,443,204 |   2.7117 |   0.7038 |   0.0033 |   0.0001 |   0.1002 |   0.4154 |   1.0710 |   0.1256 |   0.2691 |   0.0265 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0
| 163,734 | 32 | 125 | 408,443,204 |   2.7135 |   0.7031 |   0.0032 |   0.0001 |   0.1015 |   0.4233 |   1.0698 |   0.1274 |   0.2618 |   0.0265 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0
| 163,734 | 24 | 125 | 408,443,204 |   3.1091 |   0.7084 |   0.0044 |   0.0001 |   0.1102 |   0.4625 |   1.3367 |   0.1423 |   0.3126 |   0.0363 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0
| 163,734 | 24 | 125 | 408,443,204 |   3.1050 |   0.7057 |   0.0033 |   0.0001 |   0.1107 |   0.4593 |   1.3366 |   0.1429 |   0.3132 |   0.0366 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0
| 163,734 | 24 | 125 | 408,443,204 |   3.1042 |   0.7052 |   0.0042 |   0.0001 |   0.1104 |   0.4592 |   1.3351 |   0.1433 |   0.3160 |   0.0350 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0
| 163,734 | 24 | 125 | 408,443,204 |   3.1594 |   0.7043 |   0.0033 |   0.0001 |   0.1191 |   0.4691 |   1.3593 |   0.1487 |   0.3230 |   0.0357 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0
| 163,734 | 24 | 125 | 408,443,204 |   3.1079 |   0.6998 |   0.0030 |   0.0001 |   0.1127 |   0.4636 |   1.3456 |   0.1427 |   0.3078 |   0.0356 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0
| 163,734 | 16 | 125 | 408,443,204 |   3.9235 |   0.7055 |   0.0042 |   0.0001 |   0.1221 |   0.5637 |   1.9278 |   0.1747 |   0.3799 |   0.0497 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0
| 163,734 | 16 | 125 | 408,443,204 |   3.8983 |   0.6853 |   0.0029 |   0.0001 |   0.1228 |   0.5648 |   1.9233 |   0.1736 |   0.3784 |   0.0501 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0
| 163,734 | 16 | 125 | 408,443,204 |   3.9445 |   0.7049 |   0.0028 |   0.0001 |   0.1222 |   0.5688 |   1.9434 |   0.1719 |   0.3821 |   0.0511 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0
| 163,734 | 16 | 125 | 408,443,204 |   3.9518 |   0.6851 |   0.0028 |   0.0001 |   0.1237 |   0.5702 |   1.9481 |   0.1847 |   0.3890 |   0.0509 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0
| 163,734 | 16 | 125 | 408,443,204 |   3.9090 |   0.6934 |   0.0028 |   0.0001 |   0.1217 |   0.5664 |   1.9216 |   0.1753 |   0.3798 |   0.0508 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0
| 163,734 | 8 | 125 | 408,443,204 |   6.5371 |   0.6907 |   0.0042 |   0.0001 |   0.1657 |   0.8202 |   3.8733 |   0.2804 |   0.6073 |   0.0995 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0
| 163,734 | 8 | 125 | 408,443,204 |   6.5315 |   0.6781 |   0.0029 |   0.0001 |   0.1652 |   0.8190 |   3.8841 |   0.2816 |   0.6046 |   0.0988 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0
| 163,734 | 8 | 125 | 408,443,204 |   6.5570 |   0.6719 |   0.0027 |   0.0001 |   0.1819 |   0.8265 |   3.9000 |   0.2838 |   0.5940 |   0.0989 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0
| 163,734 | 8 | 125 | 408,443,204 |   6.5343 |   0.6675 |   0.0028 |   0.0001 |   0.1668 |   0.8198 |   3.8971 |   0.2825 |   0.6030 |   0.0975 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0
| 163,734 | 8 | 125 | 408,443,204 |   6.4756 |   0.6629 |   0.0028 |   0.0001 |   0.1685 |   0.8173 |   3.8528 |   0.2821 |   0.5950 |   0.0969 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0
| 147,892 | 40 | 20 | 3,700,737,910 |   6.6198 |   0.7065 |   0.0064 |   0.0001 |   0.0824 |   1.2771 |   3.8704 |   0.2083 |   0.2890 |   0.1861 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0
| 147,892 | 40 | 20 | 3,700,737,910 |   6.5923 |   0.6965 |   0.0045 |   0.0001 |   0.0830 |   1.2731 |   3.8523 |   0.2088 |   0.2937 |   0.1849 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0
| 147,892 | 40 | 20 | 3,700,737,910 |   6.5623 |   0.7019 |   0.0035 |   0.0001 |   0.0814 |   1.2656 |   3.8373 |   0.2089 |   0.2852 |   0.1819 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0
| 147,892 | 40 | 20 | 3,700,737,910 |   6.6077 |   0.7041 |   0.0033 |   0.0001 |   0.0808 |   1.2760 |   3.8588 |   0.2083 |   0.2944 |   0.1853 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0
| 147,892 | 40 | 20 | 3,700,737,910 |   6.6008 |   0.7002 |   0.0032 |   0.0001 |   0.0809 |   1.2773 |   3.8728 |   0.2078 |   0.2795 |   0.1822 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0
| 147,892 | 32 | 20 | 3,700,737,910 |   7.7466 |   0.6920 |   0.0127 |   0.0001 |   0.1040 |   1.4423 |   4.7493 |   0.2505 |   0.2850 |   0.2233 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0
| 147,892 | 32 | 20 | 3,700,737,910 |   7.7647 |   0.6861 |   0.0032 |   0.0001 |   0.1052 |   1.4352 |   4.7572 |   0.2482 |   0.3081 |   0.2246 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0
| 147,892 | 32 | 20 | 3,700,737,910 |   7.7231 |   0.6961 |   0.0032 |   0.0001 |   0.1022 |   1.4387 |   4.7188 |   0.2487 |   0.2916 |   0.2269 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0
| 147,892 | 32 | 20 | 3,700,737,910 |   7.7705 |   0.6842 |   0.0030 |   0.0001 |   0.1063 |   1.4497 |   4.7533 |   0.2476 |   0.3073 |   0.2221 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0
| 147,892 | 32 | 20 | 3,700,737,910 |   7.7475 |   0.6874 |   0.0030 |   0.0001 |   0.1050 |   1.4444 |   4.7410 |   0.2464 |   0.2961 |   0.2271 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0
| 147,892 | 24 | 20 | 3,700,737,910 |   9.8544 |   0.6849 |   0.0052 |   0.0001 |   0.1333 |   1.7544 |   6.2196 |   0.3325 |   0.4318 |   0.2980 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0
| 147,892 | 24 | 20 | 3,700,737,910 |   9.7607 |   0.6791 |   0.0034 |   0.0001 |   0.1355 |   1.7487 |   6.1634 |   0.3309 |   0.4079 |   0.2952 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0
| 147,892 | 24 | 20 | 3,700,737,910 |   9.7855 |   0.6763 |   0.0030 |   0.0001 |   0.1341 |   1.7505 |   6.1837 |   0.3321 |   0.4130 |   0.2958 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0
| 147,892 | 24 | 20 | 3,700,737,910 |   9.8138 |   0.6802 |   0.0031 |   0.0001 |   0.1304 |   1.7575 |   6.1728 |   0.3305 |   0.4457 |   0.2967 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0
| 147,892 | 24 | 20 | 3,700,737,910 |   9.8262 |   0.6802 |   0.0034 |   0.0001 |   0.1362 |   1.7537 |   6.2006 |   0.3322 |   0.4182 |   0.3050 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0
| 147,892 | 16 | 20 | 3,700,737,910 |  14.2602 |   0.6784 |   0.0043 |   0.0001 |   0.1978 |   2.3979 |   9.0719 |   0.4892 |   0.9874 |   0.4375 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0
| 147,892 | 16 | 20 | 3,700,737,910 |  14.2452 |   0.6375 |   0.0028 |   0.0001 |   0.1839 |   2.4048 |   9.0451 |   0.4874 |   1.0461 |   0.4403 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0
| 147,892 | 16 | 20 | 3,700,737,910 |  14.2074 |   0.6340 |   0.0031 |   0.0001 |   0.1853 |   2.4042 |   9.0418 |   0.4877 |   0.9616 |   0.4927 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0
| 147,892 | 16 | 20 | 3,700,737,910 |  14.3117 |   0.6566 |   0.0028 |   0.0001 |   0.1855 |   2.4077 |   9.0416 |   0.4869 |   1.0195 |   0.5137 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0
| 147,892 | 16 | 20 | 3,700,737,910 |  14.2308 |   0.6400 |   0.0030 |   0.0001 |   0.1906 |   2.3986 |   9.0177 |   0.4881 |   1.0626 |   0.4331 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0
| 147,892 | 8 | 20 | 3,700,737,910 |  33.5703 |   0.6323 |   0.0039 |   0.0001 |   0.5974 |   3.8762 |  16.8826 |   1.9681 |   8.6793 |   0.9344 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0
| 147,892 | 8 | 20 | 3,700,737,910 |  33.5099 |   0.6053 |   0.0028 |   0.0001 |   0.6159 |   3.8980 |  16.9097 |   1.9739 |   8.5600 |   0.9471 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0
| 147,892 | 8 | 20 | 3,700,737,910 |  33.3722 |   0.6029 |   0.0028 |   0.0001 |   0.6262 |   3.8150 |  16.9128 |   1.9128 |   8.5536 |   0.9489 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0
| 147,892 | 8 | 20 | 3,700,737,910 |  33.3636 |   0.6044 |   0.0028 |   0.0001 |   0.6509 |   3.7891 |  16.7857 |   1.9554 |   8.6426 |   0.9354 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0
| 147,892 | 8 | 20 | 3,700,737,910 |  33.6377 |   0.6059 |   0.0028 |   0.0001 |   0.6092 |   3.8331 |  16.8429 |   1.9602 |   8.8487 |   0.9376 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0
| 165,435 | 40 | 588 | 3,137,407,481 |  15.0989 |   0.7092 |   0.0029 |   0.0001 |   0.4328 |   1.2442 |   2.1859 |   0.4117 |   9.9361 |   0.1789 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0
| 165,435 | 40 | 588 | 3,137,407,481 |  15.0312 |   0.7055 |   0.0033 |   0.0001 |   0.4307 |   1.2589 |   2.1261 |   0.4097 |   9.9143 |   0.1860 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0
| 165,435 | 40 | 588 | 3,137,407,481 |  15.0099 |   0.7094 |   0.0032 |   0.0001 |   0.4314 |   1.2418 |   2.1661 |   0.3665 |   9.9411 |   0.1535 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0
| 165,435 | 40 | 588 | 3,137,407,481 |  15.0027 |   0.7158 |   0.0032 |   0.0001 |   0.4275 |   1.2440 |   2.1621 |   0.3514 |   9.9481 |   0.1536 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0
| 165,435 | 40 | 588 | 3,137,407,481 |  15.0511 |   0.7083 |   0.0032 |   0.0001 |   0.4368 |   1.2605 |   2.1850 |   0.3556 |   9.9515 |   0.1534 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0
| 165,435 | 32 | 588 | 3,137,407,481 |  18.1838 |   0.7061 |   0.0031 |   0.0001 |   0.5249 |   1.3406 |   2.4653 |   0.4090 |  12.5509 |   0.1870 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0
| 165,435 | 32 | 588 | 3,137,407,481 |  17.9897 |   0.7058 |   0.0030 |   0.0001 |   0.5214 |   1.3170 |   2.4433 |   0.4090 |  12.4027 |   0.1904 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0
| 165,435 | 32 | 588 | 3,137,407,481 |  18.2114 |   0.6973 |   0.0032 |   0.0001 |   0.5217 |   1.3250 |   2.5838 |   0.3596 |  12.5250 |   0.1991 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0
| 165,435 | 32 | 588 | 3,137,407,481 |  18.0285 |   0.6977 |   0.0031 |   0.0001 |   0.5195 |   1.3222 |   2.4360 |   0.3614 |  12.4987 |   0.1930 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0
| 165,435 | 32 | 588 | 3,137,407,481 |  18.1259 |   0.6995 |   0.0030 |   0.0001 |   0.5201 |   1.3298 |   2.4469 |   0.4428 |  12.4997 |   0.1871 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0
| 165,435 | 24 | 588 | 3,137,407,481 |  23.5196 |   0.7004 |   0.0032 |   0.0001 |   0.6354 |   1.4545 |   3.0372 |   0.4306 |  17.0107 |   0.2507 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0
| 165,435 | 24 | 588 | 3,137,407,481 |  23.6173 |   0.6995 |   0.0032 |   0.0001 |   0.6116 |   1.4672 |   3.0706 |   0.5001 |  17.0146 |   0.2536 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0
| 165,435 | 24 | 588 | 3,137,407,481 |  23.4700 |   0.7025 |   0.0032 |   0.0001 |   0.5961 |   1.4283 |   3.0576 |   0.4256 |  17.0110 |   0.2489 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0
| 165,435 | 24 | 588 | 3,137,407,481 |  23.5031 |   0.7030 |   0.0030 |   0.0001 |   0.6069 |   1.4233 |   3.0606 |   0.4292 |  17.0324 |   0.2478 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0
| 165,435 | 24 | 588 | 3,137,407,481 |  23.5073 |   0.6984 |   0.0029 |   0.0001 |   0.6068 |   1.4361 |   3.0117 |   0.4236 |  17.0753 |   0.2554 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0
| 165,435 | 16 | 588 | 3,137,407,481 |  35.1361 |   0.7081 |   0.0032 |   0.0001 |   0.8139 |   1.6571 |   4.4564 |   0.5105 |  26.5506 |   0.4394 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0
| 165,435 | 16 | 588 | 3,137,407,481 |  34.9413 |   0.6763 |   0.0028 |   0.0001 |   0.8151 |   1.6657 |   4.3579 |   0.4852 |  26.5691 |   0.3720 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0
| 165,435 | 16 | 588 | 3,137,407,481 |  34.9076 |   0.6855 |   0.0030 |   0.0001 |   0.7766 |   1.6697 |   4.4039 |   0.4710 |  26.5235 |   0.3775 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0
| 165,435 | 16 | 588 | 3,137,407,481 |  34.8770 |   0.6784 |   0.0031 |   0.0001 |   0.7885 |   1.6737 |   4.4636 |   0.4556 |  26.4423 |   0.3748 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0
| 165,435 | 16 | 588 | 3,137,407,481 |  35.0216 |   0.6829 |   0.0031 |   0.0001 |   0.8145 |   1.6963 |   4.4219 |   0.4460 |  26.5785 |   0.3814 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0
| 165,435 | 8 | 588 | 3,137,407,481 |  69.9338 |   0.6800 |   0.0028 |   0.0001 |   1.2471 |   2.1551 |   8.7932 |   0.5996 |  55.7374 |   0.7213 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0
| 165,435 | 8 | 588 | 3,137,407,481 |  70.5683 |   0.6633 |   0.0028 |   0.0001 |   1.3089 |   2.1049 |   9.1830 |   0.6782 |  55.7625 |   0.8674 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0
| 165,435 | 8 | 588 | 3,137,407,481 |  70.0049 |   0.6708 |   0.0035 |   0.0001 |   1.2231 |   2.0957 |   8.7178 |   0.7005 |  55.7455 |   0.8515 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0
| 165,435 | 8 | 588 | 3,137,407,481 |  70.2515 |   0.6678 |   0.0030 |   0.0001 |   1.2638 |   2.1183 |   8.9185 |   0.8941 |  55.6756 |   0.7134 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0
| 165,435 | 8 | 588 | 3,137,407,481 |  69.9915 |   0.6607 |   0.0028 |   0.0001 |   1.2659 |   2.1139 |   8.8691 |   0.6005 |  55.7642 |   0.7172 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0
| 409,593 | 40 | 77 | 65,941,441 |   1.0789 |   0.7033 |   0.0033 |   0.0001 |   0.0278 |   0.0746 |   0.1293 |   0.0384 |   0.1007 |   0.0047 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0
| 409,593 | 40 | 77 | 65,941,441 |   1.1686 |   0.7747 |   0.0036 |   0.0001 |   0.0286 |   0.0758 |   0.1436 |   0.0387 |   0.1024 |   0.0048 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0
| 409,593 | 40 | 77 | 65,941,441 |   1.0810 |   0.7076 |   0.0032 |   0.0001 |   0.0277 |   0.0748 |   0.1286 |   0.0379 |   0.0995 |   0.0048 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0
| 409,593 | 40 | 77 | 65,941,441 |   1.0885 |   0.7051 |   0.0031 |   0.0001 |   0.0280 |   0.0751 |   0.1362 |   0.0383 |   0.1008 |   0.0049 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0
| 409,593 | 40 | 77 | 65,941,441 |   1.0774 |   0.7019 |   0.0033 |   0.0001 |   0.0282 |   0.0746 |   0.1295 |   0.0381 |   0.1005 |   0.0047 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0
| 409,593 | 32 | 77 | 65,941,441 |   1.1169 |   0.7060 |   0.0033 |   0.0001 |   0.0298 |   0.0802 |   0.1526 |   0.0430 |   0.1002 |   0.0051 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0
| 409,593 | 32 | 77 | 65,941,441 |   1.1219 |   0.7078 |   0.0034 |   0.0001 |   0.0302 |   0.0808 |   0.1534 |   0.0427 |   0.1017 |   0.0051 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0
| 409,593 | 32 | 77 | 65,941,441 |   1.0948 |   0.7040 |   0.0031 |   0.0001 |   0.0303 |   0.0788 |   0.1331 |   0.0423 |   0.1010 |   0.0051 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0
| 409,593 | 32 | 77 | 65,941,441 |   1.1190 |   0.7140 |   0.0033 |   0.0001 |   0.0304 |   0.0791 |   0.1461 |   0.0426 |   0.1016 |   0.0052 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0
| 409,593 | 32 | 77 | 65,941,441 |   1.1121 |   0.7111 |   0.0038 |   0.0001 |   0.0299 |   0.0792 |   0.1439 |   0.0424 |   0.1004 |   0.0051 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0
| 409,593 | 24 | 77 | 65,941,441 |   1.1638 |   0.7062 |   0.0032 |   0.0001 |   0.0349 |   0.0907 |   0.1691 |   0.0471 |   0.1085 |   0.0073 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0
| 409,593 | 24 | 77 | 65,941,441 |   1.1663 |   0.7059 |   0.0030 |   0.0001 |   0.0349 |   0.0923 |   0.1718 |   0.0465 |   0.1076 |   0.0072 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0
| 409,593 | 24 | 77 | 65,941,441 |   1.1654 |   0.7036 |   0.0033 |   0.0001 |   0.0353 |   0.0922 |   0.1689 |   0.0473 |   0.1107 |   0.0073 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0
| 409,593 | 24 | 77 | 65,941,441 |   1.1646 |   0.7032 |   0.0033 |   0.0001 |   0.0352 |   0.0908 |   0.1685 |   0.0480 |   0.1115 |   0.0073 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0
| 409,593 | 24 | 77 | 65,941,441 |   1.1576 |   0.7054 |   0.0033 |   0.0001 |   0.0349 |   0.0912 |   0.1639 |   0.0462 |   0.1086 |   0.0074 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0
| 409,593 | 16 | 77 | 65,941,441 |   1.2541 |   0.7121 |   0.0031 |   0.0001 |   0.0393 |   0.1091 |   0.2148 |   0.0514 |   0.1176 |   0.0098 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0
| 409,593 | 16 | 77 | 65,941,441 |   1.2427 |   0.7077 |   0.0029 |   0.0001 |   0.0389 |   0.1108 |   0.2063 |   0.0513 |   0.1180 |   0.0096 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0
| 409,593 | 16 | 77 | 65,941,441 |   1.2730 |   0.7232 |   0.0033 |   0.0001 |   0.0394 |   0.1100 |   0.2198 |   0.0512 |   0.1196 |   0.0098 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0
| 409,593 | 16 | 77 | 65,941,441 |   1.2364 |   0.7022 |   0.0029 |   0.0001 |   0.0390 |   0.1086 |   0.2045 |   0.0523 |   0.1202 |   0.0095 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0
| 409,593 | 16 | 77 | 65,941,441 |   1.2373 |   0.7046 |   0.0030 |   0.0001 |   0.0391 |   0.1094 |   0.2050 |   0.0514 |   0.1178 |   0.0099 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0
| 409,593 | 8 | 77 | 65,941,441 |   1.4738 |   0.7057 |   0.0030 |   0.0003 |   0.0541 |   0.1463 |   0.3460 |   0.0630 |   0.1410 |   0.0173 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0
| 409,593 | 8 | 77 | 65,941,441 |   1.4783 |   0.7049 |   0.0031 |   0.0003 |   0.0538 |   0.1488 |   0.3504 |   0.0630 |   0.1401 |   0.0171 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0
| 409,593 | 8 | 77 | 65,941,441 |   1.4784 |   0.7035 |   0.0030 |   0.0003 |   0.0533 |   0.1501 |   0.3512 |   0.0627 |   0.1398 |   0.0174 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0
| 409,593 | 8 | 77 | 65,941,441 |   1.4821 |   0.7005 |   0.0030 |   0.0003 |   0.0537 |   0.1484 |   0.3545 |   0.0632 |   0.1444 |   0.0170 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0
| 409,593 | 8 | 77 | 65,941,441 |   1.4724 |   0.7003 |   0.0033 |   0.0003 |   0.0536 |   0.1464 |   0.3499 |   0.0621 |   0.1423 |   0.0173 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 40 | 513 | 864,761,518 |   5.8654 |   0.7086 |   0.0047 |   0.0001 |   0.1842 |   0.9710 |   1.5385 |   0.2330 |   2.1863 |   0.0438 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 40 | 513 | 864,761,518 |   5.8600 |   0.7085 |   0.0033 |   0.0001 |   0.1834 |   0.9476 |   1.5645 |   0.2321 |   2.1797 |   0.0441 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 40 | 513 | 864,761,518 |   5.8554 |   0.7069 |   0.0033 |   0.0001 |   0.1844 |   0.9480 |   1.5370 |   0.2360 |   2.1989 |   0.0441 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 40 | 513 | 864,761,518 |   5.8544 |   0.7078 |   0.0033 |   0.0001 |   0.1879 |   0.9576 |   1.5692 |   0.2414 |   2.1464 |   0.0439 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 40 | 513 | 864,761,518 |   5.8259 |   0.7075 |   0.0034 |   0.0001 |   0.1828 |   0.9482 |   1.5277 |   0.2321 |   2.1839 |   0.0435 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 32 | 513 | 864,761,518 |   7.0393 |   0.7029 |   0.0044 |   0.0001 |   0.2126 |   1.0201 |   1.7649 |   0.2540 |   3.0298 |   0.0549 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 32 | 513 | 864,761,518 |   7.0559 |   0.7026 |   0.0032 |   0.0001 |   0.2126 |   1.0273 |   1.7499 |   0.2549 |   3.0408 |   0.0677 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 32 | 513 | 864,761,518 |   7.0200 |   0.7017 |   0.0030 |   0.0001 |   0.2101 |   1.0322 |   1.7640 |   0.2581 |   2.9995 |   0.0543 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 32 | 513 | 864,761,518 |   6.9891 |   0.7054 |   0.0033 |   0.0001 |   0.2118 |   1.0312 |   1.7515 |   0.2535 |   2.9821 |   0.0535 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 32 | 513 | 864,761,518 |   7.0536 |   0.7042 |   0.0032 |   0.0001 |   0.2159 |   1.0443 |   1.7552 |   0.2579 |   3.0095 |   0.0665 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 24 | 513 | 864,761,518 |   9.2487 |   0.7027 |   0.0046 |   0.0001 |   0.2381 |   1.1800 |   2.2041 |   0.3252 |   4.5148 |   0.0838 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 24 | 513 | 864,761,518 |   9.1874 |   0.6968 |   0.0029 |   0.0001 |   0.2399 |   1.1837 |   2.1769 |   0.2956 |   4.5081 |   0.0864 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 24 | 513 | 864,761,518 |   9.2138 |   0.7011 |   0.0031 |   0.0001 |   0.2429 |   1.1878 |   2.2682 |   0.2933 |   4.4255 |   0.0948 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 24 | 513 | 864,761,518 |   9.2285 |   0.7050 |   0.0032 |   0.0001 |   0.2374 |   1.1753 |   2.2396 |   0.2943 |   4.5056 |   0.0712 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 24 | 513 | 864,761,518 |   9.1916 |   0.7028 |   0.0033 |   0.0001 |   0.2366 |   1.1873 |   2.1918 |   0.2886 |   4.5117 |   0.0727 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 16 | 513 | 864,761,518 |  13.7828 |   0.6979 |   0.0051 |   0.0003 |   0.2939 |   1.4562 |   3.1621 |   0.4613 |   7.5892 |   0.1218 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 16 | 513 | 864,761,518 |  13.6380 |   0.7030 |   0.0029 |   0.0003 |   0.2902 |   1.4398 |   3.1602 |   0.3524 |   7.5718 |   0.1203 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 16 | 513 | 864,761,518 |  13.8555 |   0.6798 |   0.0035 |   0.0003 |   0.2885 |   1.4254 |   3.1847 |   0.5466 |   7.6249 |   0.1053 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 16 | 513 | 864,761,518 |  13.6852 |   0.6945 |   0.0029 |   0.0003 |   0.2869 |   1.4379 |   3.1698 |   0.3462 |   7.6293 |   0.1203 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 16 | 513 | 864,761,518 |  13.9086 |   0.6910 |   0.0033 |   0.0003 |   0.2917 |   1.4476 |   3.2000 |   0.5376 |   7.6362 |   0.1042 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 8 | 513 | 864,761,518 |  26.9968 |   0.6892 |   0.0032 |   0.0003 |   0.4301 |   1.9606 |   6.1125 |   0.5397 |  17.0589 |   0.2055 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 8 | 513 | 864,761,518 |  26.9102 |   0.6660 |   0.0031 |   0.0003 |   0.4253 |   1.9739 |   6.0776 |   0.5574 |  17.0022 |   0.2075 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 8 | 513 | 864,761,518 |  27.2020 |   0.6561 |   0.0031 |   0.0003 |   0.4326 |   1.9619 |   6.1777 |   0.6434 |  17.0946 |   0.2355 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 8 | 513 | 864,761,518 |  27.0048 |   0.6599 |   0.0031 |   0.0003 |   0.4421 |   1.9676 |   6.1508 |   0.6243 |  16.9517 |   0.2080 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| 552,020 | 8 | 513 | 864,761,518 |  27.0010 |   0.6649 |   0.0032 |   0.0003 |   0.4394 |   1.9621 |   6.1859 |   0.5475 |  16.9981 |   0.2028 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |

====================================================================================

CUDA AWARE MPI - SORTING
------------------------------------------------------------------------------------
CC sg.cu -o sg.out -lm
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1
| 163,734 | 40 | 125 | 408,443,204 |   3.5196 |   0.0171 |   0.0069 |   0.0001 |   0.1262 |   0.1618 |   2.5963 |   0.1403 |   0.4556 |   0.0223 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1
| 163,734 | 40 | 125 | 408,443,204 |   3.5255 |   0.0059 |   0.0049 |   0.0001 |   0.1228 |   0.1601 |   2.6065 |   0.1383 |   0.4701 |   0.0218 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1
| 163,734 | 40 | 125 | 408,443,204 |   3.5095 |   0.0059 |   0.0037 |   0.0001 |   0.1279 |   0.1607 |   2.5970 |   0.1391 |   0.4565 |   0.0223 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1
| 163,734 | 40 | 125 | 408,443,204 |   3.5253 |   0.0058 |   0.0036 |   0.0001 |   0.1260 |   0.1596 |   2.6041 |   0.1384 |   0.4693 |   0.0220 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1
| 163,734 | 40 | 125 | 408,443,204 |   3.5087 |   0.0060 |   0.0037 |   0.0001 |   0.1253 |   0.1599 |   2.5894 |   0.1368 |   0.4693 |   0.0220 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1
| 163,734 | 32 | 125 | 408,443,204 |   3.4793 |   0.0058 |   0.0045 |   0.0001 |   0.1539 |   0.1656 |   2.5300 |   0.1506 |   0.4468 |   0.0266 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1
| 163,734 | 32 | 125 | 408,443,204 |   3.4845 |   0.0058 |   0.0036 |   0.0001 |   0.1553 |   0.1662 |   2.5393 |   0.1479 |   0.4433 |   0.0266 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1
| 163,734 | 32 | 125 | 408,443,204 |   3.5642 |   0.0059 |   0.0033 |   0.0001 |   0.1511 |   0.1750 |   2.5687 |   0.1629 |   0.4735 |   0.0270 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1
| 163,734 | 32 | 125 | 408,443,204 |   3.4526 |   0.0058 |   0.0036 |   0.0001 |   0.1508 |   0.1679 |   2.5236 |   0.1477 |   0.4299 |   0.0268 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1
| 163,734 | 32 | 125 | 408,443,204 |   3.4472 |   0.0058 |   0.0037 |   0.0001 |   0.1555 |   0.1687 |   2.5089 |   0.1471 |   0.4345 |   0.0267 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1
| 163,734 | 24 | 125 | 408,443,204 |   3.3666 |   0.0058 |   0.0047 |   0.0001 |   0.1630 |   0.1816 |   2.3444 |   0.1829 |   0.4537 |   0.0351 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1
| 163,734 | 24 | 125 | 408,443,204 |   3.3690 |   0.0058 |   0.0034 |   0.0001 |   0.1569 |   0.1816 |   2.3577 |   0.1854 |   0.4463 |   0.0353 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1
| 163,734 | 24 | 125 | 408,443,204 |   3.3953 |   0.0061 |   0.0038 |   0.0001 |   0.1569 |   0.1833 |   2.3781 |   0.1863 |   0.4486 |   0.0359 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1
| 163,734 | 24 | 125 | 408,443,204 |   3.3732 |   0.0058 |   0.0037 |   0.0001 |   0.1559 |   0.1819 |   2.3655 |   0.1858 |   0.4429 |   0.0354 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1
| 163,734 | 24 | 125 | 408,443,204 |   3.3775 |   0.0059 |   0.0036 |   0.0001 |   0.1567 |   0.1851 |   2.3620 |   0.1853 |   0.4463 |   0.0362 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1
| 163,734 | 16 | 125 | 408,443,204 |   3.3741 |   0.0059 |   0.0048 |   0.0001 |   0.1541 |   0.1880 |   2.3143 |   0.2111 |   0.4501 |   0.0505 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1
| 163,734 | 16 | 125 | 408,443,204 |   3.3793 |   0.0058 |   0.0031 |   0.0000 |   0.1562 |   0.1902 |   2.3618 |   0.2110 |   0.4026 |   0.0517 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1
| 163,734 | 16 | 125 | 408,443,204 |   3.3396 |   0.0059 |   0.0034 |   0.0001 |   0.1544 |   0.1886 |   2.3241 |   0.2111 |   0.4046 |   0.0509 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1
| 163,734 | 16 | 125 | 408,443,204 |   3.3187 |   0.0059 |   0.0034 |   0.0001 |   0.1545 |   0.1874 |   2.2796 |   0.2122 |   0.4284 |   0.0507 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1
| 163,734 | 16 | 125 | 408,443,204 |   3.3241 |   0.0058 |   0.0037 |   0.0001 |   0.1545 |   0.1882 |   2.3292 |   0.2098 |   0.3863 |   0.0501 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1
| 163,734 | 8 | 125 | 408,443,204 |   4.1211 |   0.0059 |   0.0031 |   0.0001 |   0.1972 |   0.2230 |   2.7384 |   0.3430 |   0.5166 |   0.0969 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1
| 163,734 | 8 | 125 | 408,443,204 |   4.1888 |   0.0058 |   0.0033 |   0.0001 |   0.2164 |   0.2358 |   2.7778 |   0.3452 |   0.5098 |   0.0980 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1
| 163,734 | 8 | 125 | 408,443,204 |   4.1203 |   0.0058 |   0.0032 |   0.0001 |   0.1968 |   0.2233 |   2.7469 |   0.3407 |   0.5085 |   0.0983 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1
| 163,734 | 8 | 125 | 408,443,204 |   4.1263 |   0.0059 |   0.0031 |   0.0001 |   0.1948 |   0.2239 |   2.7514 |   0.3409 |   0.5120 |   0.0974 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1
| 163,734 | 8 | 125 | 408,443,204 |   4.1181 |   0.0058 |   0.0034 |   0.0001 |   0.1965 |   0.2255 |   2.7425 |   0.3416 |   0.5080 |   0.0982 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1
| 147,892 | 40 | 20 | 3,700,737,910 |   3.6402 |   0.0062 |   0.0089 |   0.0001 |   0.0904 |   0.0827 |   2.6948 |   0.2399 |   0.3403 |   0.1859 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1
| 147,892 | 40 | 20 | 3,700,737,910 |   3.4527 |   0.0059 |   0.0050 |   0.0001 |   0.0866 |   0.0771 |   2.5790 |   0.2352 |   0.2829 |   0.1859 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1
| 147,892 | 40 | 20 | 3,700,737,910 |   3.4827 |   0.0058 |   0.0045 |   0.0001 |   0.0855 |   0.0750 |   2.6036 |   0.2372 |   0.2905 |   0.1850 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1
| 147,892 | 40 | 20 | 3,700,737,910 |   3.4551 |   0.0059 |   0.0038 |   0.0001 |   0.0882 |   0.0760 |   2.5924 |   0.2364 |   0.2701 |   0.1860 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1
| 147,892 | 40 | 20 | 3,700,737,910 |   3.6637 |   0.0058 |   0.0037 |   0.0001 |   0.0890 |   0.0762 |   2.7579 |   0.2364 |   0.3167 |   0.1816 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1
| 147,892 | 32 | 20 | 3,700,737,910 |   4.0495 |   0.0059 |   0.0050 |   0.0001 |   0.1023 |   0.0928 |   2.9920 |   0.2781 |   0.3521 |   0.2262 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1
| 147,892 | 32 | 20 | 3,700,737,910 |   4.2347 |   0.0058 |   0.0035 |   0.0001 |   0.1071 |   0.0903 |   3.0710 |   0.2859 |   0.4493 |   0.2252 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1
| 147,892 | 32 | 20 | 3,700,737,910 |   4.1793 |   0.0058 |   0.0037 |   0.0001 |   0.1097 |   0.0886 |   3.0465 |   0.2821 |   0.4226 |   0.2238 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1
| 147,892 | 32 | 20 | 3,700,737,910 |   4.0533 |   0.0059 |   0.0036 |   0.0001 |   0.1099 |   0.0907 |   2.9945 |   0.2867 |   0.3415 |   0.2240 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1
| 147,892 | 32 | 20 | 3,700,737,910 |   4.1161 |   0.0060 |   0.0036 |   0.0001 |   0.1007 |   0.0938 |   3.0107 |   0.2825 |   0.3919 |   0.2305 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1
| 147,892 | 24 | 20 | 3,700,737,910 |   5.0343 |   0.0059 |   0.0047 |   0.0001 |   0.1319 |   0.1127 |   3.6653 |   0.3620 |   0.4571 |   0.2994 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1
| 147,892 | 24 | 20 | 3,700,737,910 |   5.0677 |   0.0058 |   0.0036 |   0.0001 |   0.1304 |   0.1135 |   3.6872 |   0.3610 |   0.4709 |   0.2988 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1
| 147,892 | 24 | 20 | 3,700,737,910 |   5.2250 |   0.0059 |   0.0035 |   0.0001 |   0.1309 |   0.1149 |   3.8537 |   0.3638 |   0.4553 |   0.3005 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1
| 147,892 | 24 | 20 | 3,700,737,910 |   5.1527 |   0.0059 |   0.0035 |   0.0001 |   0.1299 |   0.1193 |   3.7810 |   0.3614 |   0.4567 |   0.2985 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1
| 147,892 | 24 | 20 | 3,700,737,910 |   5.1459 |   0.0059 |   0.0034 |   0.0001 |   0.1276 |   0.1120 |   3.7439 |   0.3625 |   0.4975 |   0.2965 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1
| 147,892 | 16 | 20 | 3,700,737,910 |   6.1954 |   0.0059 |   0.0046 |   0.0001 |   0.1779 |   0.1646 |   4.1805 |   0.5182 |   0.7148 |   0.4335 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1
| 147,892 | 16 | 20 | 3,700,737,910 |   6.2934 |   0.0058 |   0.0032 |   0.0001 |   0.1714 |   0.1561 |   4.2146 |   0.5230 |   0.7882 |   0.4343 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1
| 147,892 | 16 | 20 | 3,700,737,910 |   6.3681 |   0.0058 |   0.0032 |   0.0001 |   0.1825 |   0.1567 |   4.2775 |   0.5226 |   0.7801 |   0.4427 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1
| 147,892 | 16 | 20 | 3,700,737,910 |   6.4845 |   0.0058 |   0.0031 |   0.0001 |   0.1741 |   0.1570 |   4.2909 |   0.5208 |   0.8169 |   0.5189 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1
| 147,892 | 16 | 20 | 3,700,737,910 |   6.6457 |   0.0058 |   0.0031 |   0.0001 |   0.1808 |   0.1683 |   4.4480 |   0.5212 |   0.8117 |   0.5099 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1
| 147,892 | 8 | 20 | 3,700,737,910 |  18.1418 |   0.0061 |   0.0047 |   0.0001 |   0.6180 |   1.0027 |   6.3503 |   1.5434 |   7.6828 |   0.9383 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1
| 147,892 | 8 | 20 | 3,700,737,910 |  17.9229 |   0.0061 |   0.0031 |   0.0001 |   0.6539 |   0.8333 |   6.3807 |   1.6363 |   7.4748 |   0.9378 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1
| 147,892 | 8 | 20 | 3,700,737,910 |  18.1056 |   0.0061 |   0.0031 |   0.0001 |   0.6324 |   0.8529 |   6.4035 |   1.5695 |   7.6917 |   0.9494 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1
| 147,892 | 8 | 20 | 3,700,737,910 |  18.9096 |   0.0057 |   0.0032 |   0.0001 |   0.6385 |   0.8346 |   7.5346 |   1.5821 |   7.3803 |   0.9338 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1
| 147,892 | 8 | 20 | 3,700,737,910 |  22.4375 |   0.0060 |   0.0032 |   0.0001 |   0.4432 |   0.9372 |   9.4728 |   1.5517 |   9.0889 |   0.9376 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1
| 165,435 | 40 | 588 | 3,137,407,481 |  19.1984 |   0.0059 |   0.0063 |   0.0001 |   0.6918 |   0.7174 |  11.7736 |   0.5431 |   5.3148 |   0.1517 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1
| 165,435 | 40 | 588 | 3,137,407,481 |  19.2163 |   0.0059 |   0.0058 |   0.0001 |   0.6936 |   0.7168 |  11.7200 |   0.5396 |   5.3571 |   0.1833 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1
| 165,435 | 40 | 588 | 3,137,407,481 |  19.1992 |   0.0060 |   0.0037 |   0.0001 |   0.6913 |   0.7323 |  11.7329 |   0.5333 |   5.3158 |   0.1876 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1
| 165,435 | 40 | 588 | 3,137,407,481 |  19.2987 |   0.0058 |   0.0037 |   0.0001 |   0.7119 |   0.7320 |  11.8159 |   0.5434 |   5.3039 |   0.1856 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1
| 165,435 | 40 | 588 | 3,137,407,481 |  19.1691 |   0.0059 |   0.0037 |   0.0001 |   0.6806 |   0.7197 |  11.7915 |   0.5471 |   5.2718 |   0.1524 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1
| 165,435 | 32 | 588 | 3,137,407,481 |  21.0859 |   0.0059 |   0.0035 |   0.0001 |   0.7780 |   0.7854 |  11.1237 |   0.6178 |   7.5866 |   0.1885 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1
| 165,435 | 32 | 588 | 3,137,407,481 |  21.3759 |   0.0058 |   0.0035 |   0.0001 |   0.7958 |   0.7940 |  11.2891 |   0.6583 |   7.6435 |   0.1893 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1
| 165,435 | 32 | 588 | 3,137,407,481 |  21.3594 |   0.0059 |   0.0037 |   0.0001 |   0.8374 |   0.8035 |  11.0612 |   0.6867 |   7.7752 |   0.1894 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1
| 165,435 | 32 | 588 | 3,137,407,481 |  21.3269 |   0.0059 |   0.0035 |   0.0001 |   0.8077 |   0.7819 |  11.3042 |   0.6528 |   7.5877 |   0.1865 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1
| 165,435 | 32 | 588 | 3,137,407,481 |  21.3172 |   0.0059 |   0.0036 |   0.0001 |   0.7848 |   0.7880 |  11.3266 |   0.6436 |   7.5452 |   0.2232 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1
| 165,435 | 24 | 588 | 3,137,407,481 |  25.7099 |   0.0059 |   0.0036 |   0.0001 |   1.0182 |   0.8696 |  10.6786 |   0.7156 |  12.1715 |   0.2504 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1
| 165,435 | 24 | 588 | 3,137,407,481 |  25.7377 |   0.0059 |   0.0063 |   0.0001 |   1.0240 |   0.8766 |  10.7756 |   0.7210 |  12.0831 |   0.2515 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1
| 165,435 | 24 | 588 | 3,137,407,481 |  25.7295 |   0.0059 |   0.0035 |   0.0001 |   1.0195 |   0.8725 |  10.7249 |   0.7091 |  12.1137 |   0.2839 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1
| 165,435 | 24 | 588 | 3,137,407,481 |  25.7148 |   0.0059 |   0.0036 |   0.0001 |   1.0335 |   0.8820 |  10.7914 |   0.7156 |  12.0364 |   0.2500 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1
| 165,435 | 24 | 588 | 3,137,407,481 |  25.6501 |   0.0058 |   0.0035 |   0.0001 |   1.0185 |   0.8566 |  10.7635 |   0.7161 |  12.0399 |   0.2496 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1
| 165,435 | 16 | 588 | 3,137,407,481 |  36.8447 |   0.0059 |   0.0049 |   0.0001 |   1.2153 |   1.0107 |  11.6436 |   0.6362 |  21.9621 |   0.3709 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1
| 165,435 | 16 | 588 | 3,137,407,481 |  35.9024 |   0.0058 |   0.0035 |   0.0001 |   1.1725 |   0.9776 |  10.6179 |   0.6355 |  22.0661 |   0.4270 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1
| 165,435 | 16 | 588 | 3,137,407,481 |  35.6372 |   0.0060 |   0.0032 |   0.0001 |   1.1531 |   0.9507 |  10.6232 |   0.6534 |  21.8195 |   0.4313 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1
| 165,435 | 16 | 588 | 3,137,407,481 |  35.8858 |   0.0058 |   0.0032 |   0.0001 |   1.2552 |   0.9851 |  10.7497 |   0.6486 |  21.8657 |   0.3758 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1
| 165,435 | 16 | 588 | 3,137,407,481 |  35.9793 |   0.0058 |   0.0034 |   0.0001 |   1.2629 |   0.9617 |  10.7498 |   0.6394 |  21.9879 |   0.3718 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1
| 165,435 | 8 | 588 | 3,137,407,481 |  77.9306 |   0.0062 |   0.0050 |   0.0001 |   2.2517 |   1.4513 |  20.1215 |   3.5934 |  49.6609 |   0.8456 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1
| 165,435 | 8 | 588 | 3,137,407,481 |  70.0962 |   0.0058 |   0.0031 |   0.0001 |   1.9437 |   1.3206 |  12.6230 |   0.8191 |  52.5325 |   0.8515 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1
| 165,435 | 8 | 588 | 3,137,407,481 |  70.8337 |   0.0058 |   0.0031 |   0.0001 |   2.4262 |   1.2950 |  12.6963 |   0.7804 |  52.9181 |   0.7119 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1
| 165,435 | 8 | 588 | 3,137,407,481 |  70.8754 |   0.0059 |   0.0032 |   0.0001 |   2.2524 |   1.2914 |  12.7174 |   0.7845 |  52.9570 |   0.8668 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1
| 165,435 | 8 | 588 | 3,137,407,481 |  70.7376 |   0.0058 |   0.0032 |   0.0001 |   2.2654 |   1.3225 |  12.7160 |   0.7895 |  52.9112 |   0.7270 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1
| 409,593 | 40 | 77 | 65,941,441 |   1.5426 |   0.0059 |   0.0065 |   0.0001 |   0.0375 |   0.0662 |   1.1907 |   0.0508 |   0.1867 |   0.0048 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1
| 409,593 | 40 | 77 | 65,941,441 |   1.5355 |   0.0060 |   0.0051 |   0.0001 |   0.0351 |   0.0646 |   1.1783 |   0.0516 |   0.1950 |   0.0048 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1
| 409,593 | 40 | 77 | 65,941,441 |   1.5483 |   0.0060 |   0.0045 |   0.0001 |   0.0362 |   0.0646 |   1.1922 |   0.0542 |   0.1902 |   0.0048 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1
| 409,593 | 40 | 77 | 65,941,441 |   1.5376 |   0.0059 |   0.0035 |   0.0001 |   0.0356 |   0.0652 |   1.1819 |   0.0515 |   0.1927 |   0.0048 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1
| 409,593 | 40 | 77 | 65,941,441 |   1.5321 |   0.0060 |   0.0037 |   0.0001 |   0.0381 |   0.0657 |   1.1758 |   0.0503 |   0.1911 |   0.0049 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1
| 409,593 | 32 | 77 | 65,941,441 |   1.5022 |   0.0059 |   0.0037 |   0.0001 |   0.0403 |   0.0670 |   1.1379 |   0.0614 |   0.1837 |   0.0059 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1
| 409,593 | 32 | 77 | 65,941,441 |   1.4983 |   0.0058 |   0.0035 |   0.0001 |   0.0422 |   0.0669 |   1.1311 |   0.0629 |   0.1839 |   0.0053 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1
| 409,593 | 32 | 77 | 65,941,441 |   1.4876 |   0.0058 |   0.0037 |   0.0001 |   0.0383 |   0.0662 |   1.1312 |   0.0554 |   0.1852 |   0.0055 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1
| 409,593 | 32 | 77 | 65,941,441 |   1.4766 |   0.0059 |   0.0036 |   0.0001 |   0.0416 |   0.0690 |   1.1051 |   0.0665 |   0.1827 |   0.0058 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1
| 409,593 | 32 | 77 | 65,941,441 |   1.5013 |   0.0059 |   0.0036 |   0.0001 |   0.0420 |   0.0667 |   1.1320 |   0.0617 |   0.1870 |   0.0059 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1
| 409,593 | 24 | 77 | 65,941,441 |   1.4304 |   0.0061 |   0.0034 |   0.0001 |   0.0513 |   0.0813 |   1.0335 |   0.0650 |   0.1863 |   0.0067 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1
| 409,593 | 24 | 77 | 65,941,441 |   1.4314 |   0.0058 |   0.0033 |   0.0001 |   0.0504 |   0.0788 |   1.0402 |   0.0655 |   0.1841 |   0.0066 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1
| 409,593 | 24 | 77 | 65,941,441 |   1.4309 |   0.0061 |   0.0035 |   0.0001 |   0.0489 |   0.0822 |   1.0367 |   0.0650 |   0.1855 |   0.0066 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1
| 409,593 | 24 | 77 | 65,941,441 |   1.4213 |   0.0060 |   0.0037 |   0.0001 |   0.0484 |   0.0808 |   1.0292 |   0.0643 |   0.1859 |   0.0066 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1
| 409,593 | 24 | 77 | 65,941,441 |   1.4333 |   0.0061 |   0.0033 |   0.0001 |   0.0497 |   0.0778 |   1.0396 |   0.0673 |   0.1862 |   0.0066 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1
| 409,593 | 16 | 77 | 65,941,441 |   1.2998 |   0.0059 |   0.0032 |   0.0001 |   0.0403 |   0.0758 |   0.9579 |   0.0562 |   0.1544 |   0.0091 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1
| 409,593 | 16 | 77 | 65,941,441 |   1.2957 |   0.0058 |   0.0034 |   0.0001 |   0.0401 |   0.0754 |   0.9555 |   0.0557 |   0.1539 |   0.0092 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1
| 409,593 | 16 | 77 | 65,941,441 |   1.2996 |   0.0058 |   0.0036 |   0.0001 |   0.0404 |   0.0757 |   0.9610 |   0.0564 |   0.1510 |   0.0092 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1
| 409,593 | 16 | 77 | 65,941,441 |   1.3223 |   0.0090 |   0.0059 |   0.0001 |   0.0411 |   0.0767 |   0.9651 |   0.0568 |   0.1644 |   0.0092 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1
| 409,593 | 16 | 77 | 65,941,441 |   1.3000 |   0.0059 |   0.0033 |   0.0001 |   0.0406 |   0.0761 |   0.9531 |   0.0558 |   0.1594 |   0.0090 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1
| 409,593 | 8 | 77 | 65,941,441 |   1.4619 |   0.0060 |   0.0033 |   0.0002 |   0.0614 |   0.0893 |   1.0550 |   0.0762 |   0.1570 |   0.0169 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1
| 409,593 | 8 | 77 | 65,941,441 |   1.4692 |   0.0059 |   0.0035 |   0.0002 |   0.0613 |   0.0902 |   1.0571 |   0.0765 |   0.1613 |   0.0167 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1
| 409,593 | 8 | 77 | 65,941,441 |   1.4638 |   0.0059 |   0.0036 |   0.0002 |   0.0612 |   0.0896 |   1.0537 |   0.0761 |   0.1601 |   0.0170 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1
| 409,593 | 8 | 77 | 65,941,441 |   1.4614 |   0.0059 |   0.0033 |   0.0002 |   0.0616 |   0.0895 |   1.0570 |   0.0763 |   0.1538 |   0.0171 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1
| 409,593 | 8 | 77 | 65,941,441 |   1.5231 |   0.0059 |   0.0033 |   0.0002 |   0.0615 |   0.0901 |   1.0837 |   0.0766 |   0.1882 |   0.0170 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 40 | 513 | 864,761,518 |  10.0680 |   0.0059 |   0.0090 |   0.0001 |   0.2828 |   0.4497 |   7.2379 |   0.3189 |   1.7282 |   0.0447 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 40 | 513 | 864,761,518 |  10.0888 |   0.0060 |   0.0051 |   0.0001 |   0.2871 |   0.4504 |   7.2357 |   0.3121 |   1.7532 |   0.0442 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 40 | 513 | 864,761,518 |  10.2056 |   0.0059 |   0.0034 |   0.0001 |   0.2934 |   0.4576 |   7.3115 |   0.3172 |   1.7756 |   0.0442 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 40 | 513 | 864,761,518 |  10.1410 |   0.0059 |   0.0037 |   0.0001 |   0.2854 |   0.4597 |   7.2834 |   0.3208 |   1.7416 |   0.0442 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 40 | 513 | 864,761,518 |  10.1966 |   0.0059 |   0.0037 |   0.0001 |   0.2809 |   0.4551 |   7.3238 |   0.3129 |   1.7733 |   0.0447 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 32 | 513 | 864,761,518 |  10.1621 |   0.0059 |   0.0055 |   0.0001 |   0.3205 |   0.4948 |   7.1166 |   0.3542 |   1.8159 |   0.0541 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 32 | 513 | 864,761,518 |  10.2698 |   0.0159 |   0.0036 |   0.0001 |   0.3137 |   0.4868 |   7.1863 |   0.3627 |   1.8499 |   0.0544 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 32 | 513 | 864,761,518 |  10.1709 |   0.0058 |   0.0035 |   0.0001 |   0.3153 |   0.4884 |   7.1456 |   0.3494 |   1.8125 |   0.0539 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 32 | 513 | 864,761,518 |  10.1714 |   0.0058 |   0.0036 |   0.0001 |   0.3122 |   0.4927 |   7.1457 |   0.3483 |   1.8128 |   0.0539 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 32 | 513 | 864,761,518 |  10.1427 |   0.0059 |   0.0037 |   0.0001 |   0.3096 |   0.4864 |   7.1214 |   0.3563 |   1.8092 |   0.0538 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 24 | 513 | 864,761,518 |  10.8914 |   0.0067 |   0.0056 |   0.0001 |   0.3975 |   0.5237 |   7.2775 |   0.4562 |   2.1570 |   0.0728 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 24 | 513 | 864,761,518 |  10.9063 |   0.0064 |   0.0037 |   0.0001 |   0.4082 |   0.5316 |   7.2716 |   0.4584 |   2.1572 |   0.0729 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 24 | 513 | 864,761,518 |  10.8313 |   0.0071 |   0.0035 |   0.0001 |   0.4082 |   0.5224 |   7.2491 |   0.4548 |   2.1174 |   0.0723 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 24 | 513 | 864,761,518 |  10.9182 |   0.0069 |   0.0073 |   0.0001 |   0.4006 |   0.5266 |   7.3025 |   0.4535 |   2.1568 |   0.0713 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 24 | 513 | 864,761,518 |  10.8242 |   0.0064 |   0.0037 |   0.0001 |   0.4066 |   0.5216 |   7.2555 |   0.4465 |   2.1155 |   0.0721 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 16 | 513 | 864,761,518 |  12.7418 |   0.0064 |   0.0056 |   0.0012 |   0.3925 |   0.5519 |   7.6607 |   0.5157 |   3.4819 |   0.1316 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 16 | 513 | 864,761,518 |  12.6172 |   0.0060 |   0.0035 |   0.0012 |   0.3902 |   0.5599 |   7.7079 |   0.5109 |   3.3356 |   0.1055 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 16 | 513 | 864,761,518 |  12.6276 |   0.0064 |   0.0035 |   0.0012 |   0.3934 |   0.5721 |   7.6708 |   0.5185 |   3.3424 |   0.1228 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 16 | 513 | 864,761,518 |  12.6515 |   0.0061 |   0.0033 |   0.0013 |   0.3900 |   0.5625 |   7.6914 |   0.5211 |   3.3735 |   0.1056 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 16 | 513 | 864,761,518 |  12.6852 |   0.0060 |   0.0038 |   0.0013 |   0.3928 |   0.5710 |   7.7574 |   0.5326 |   3.3197 |   0.1044 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 8 | 513 | 864,761,518 |  23.6616 |   0.0067 |   0.0076 |   0.0003 |   0.7090 |   0.7816 |   8.7216 |   0.7268 |  12.4692 |   0.2464 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 8 | 513 | 864,761,518 |  23.6102 |   0.0065 |   0.0033 |   0.0003 |   0.6843 |   0.7813 |   8.6782 |   0.7340 |  12.4771 |   0.2484 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 8 | 513 | 864,761,518 |  23.6704 |   0.0065 |   0.0037 |   0.0003 |   0.7116 |   0.7849 |   8.7064 |   0.7408 |  12.5142 |   0.2056 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 8 | 513 | 864,761,518 |  23.6850 |   0.0113 |   0.0036 |   0.0003 |   0.6930 |   0.7774 |   8.6602 |   0.7559 |  12.5819 |   0.2050 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 8 | 513 | 864,761,518 |  23.6793 |   0.0066 |   0.0034 |   0.0003 |   0.6938 |   0.7951 |   8.7023 |   0.7410 |  12.5372 |   0.2030 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
CUDA AWARE MPI - TWO PASS
------------------------------------------------------------------------------------
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0
| 163,734 | 40 | 125 | 408,443,204 |   5.0958 |   0.0066 |   0.0081 |   0.0001 |   0.1024 |   0.4238 |   3.8510 |   0.1251 |   0.5650 |   0.0220 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0
| 163,734 | 40 | 125 | 408,443,204 |   5.0769 |   0.0060 |   0.0048 |   0.0001 |   0.1013 |   0.4234 |   3.8322 |   0.1254 |   0.5667 |   0.0218 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0
| 163,734 | 40 | 125 | 408,443,204 |   5.0781 |   0.0059 |   0.0039 |   0.0001 |   0.1014 |   0.4179 |   3.8426 |   0.1247 |   0.5633 |   0.0222 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0
| 163,734 | 40 | 125 | 408,443,204 |   5.0839 |   0.0059 |   0.0036 |   0.0001 |   0.0983 |   0.4233 |   3.8465 |   0.1249 |   0.5630 |   0.0221 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0
| 163,734 | 40 | 125 | 408,443,204 |   5.1615 |   0.0059 |   0.0036 |   0.0001 |   0.1062 |   0.4268 |   3.9034 |   0.1274 |   0.5703 |   0.0214 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0
| 163,734 | 32 | 125 | 408,443,204 |   4.7978 |   0.0059 |   0.0054 |   0.0001 |   0.1325 |   0.4304 |   3.5108 |   0.1410 |   0.5507 |   0.0264 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0
| 163,734 | 32 | 125 | 408,443,204 |   4.7474 |   0.0060 |   0.0035 |   0.0001 |   0.1360 |   0.4361 |   3.4821 |   0.1412 |   0.5191 |   0.0268 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0
| 163,734 | 32 | 125 | 408,443,204 |   4.8452 |   0.0060 |   0.0047 |   0.0001 |   0.1367 |   0.4350 |   3.5556 |   0.1396 |   0.5461 |   0.0263 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0
| 163,734 | 32 | 125 | 408,443,204 |   4.9705 |   0.0061 |   0.0036 |   0.0001 |   0.1412 |   0.4463 |   3.6522 |   0.1427 |   0.5551 |   0.0268 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0
| 163,734 | 32 | 125 | 408,443,204 |   4.8695 |   0.0059 |   0.0037 |   0.0001 |   0.1423 |   0.4364 |   3.5739 |   0.1407 |   0.5438 |   0.0264 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0
| 163,734 | 24 | 125 | 408,443,204 |   4.2716 |   0.0060 |   0.0055 |   0.0001 |   0.1487 |   0.4677 |   2.9285 |   0.1623 |   0.5226 |   0.0357 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0
| 163,734 | 24 | 125 | 408,443,204 |   4.3095 |   0.0060 |   0.0036 |   0.0001 |   0.1484 |   0.4711 |   2.9382 |   0.1640 |   0.5460 |   0.0358 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0
| 163,734 | 24 | 125 | 408,443,204 |   4.2661 |   0.0059 |   0.0036 |   0.0001 |   0.1509 |   0.4745 |   2.9010 |   0.1588 |   0.5398 |   0.0351 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0
| 163,734 | 24 | 125 | 408,443,204 |   4.3033 |   0.0058 |   0.0035 |   0.0001 |   0.1532 |   0.4666 |   2.9318 |   0.1628 |   0.5481 |   0.0351 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0
| 163,734 | 24 | 125 | 408,443,204 |   4.2647 |   0.0059 |   0.0034 |   0.0001 |   0.1493 |   0.4598 |   2.9157 |   0.1606 |   0.5377 |   0.0356 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0
| 163,734 | 16 | 125 | 408,443,204 |   4.1302 |   0.0057 |   0.0046 |   0.0001 |   0.1499 |   0.5283 |   2.7237 |   0.1878 |   0.4848 |   0.0499 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0
| 163,734 | 16 | 125 | 408,443,204 |   4.1555 |   0.0059 |   0.0031 |   0.0001 |   0.1498 |   0.5289 |   2.7449 |   0.1916 |   0.4837 |   0.0508 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0
| 163,734 | 16 | 125 | 408,443,204 |   4.1637 |   0.0059 |   0.0034 |   0.0001 |   0.1513 |   0.5296 |   2.7485 |   0.1880 |   0.4897 |   0.0508 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0
| 163,734 | 16 | 125 | 408,443,204 |   4.1592 |   0.0059 |   0.0032 |   0.0001 |   0.1518 |   0.5288 |   2.7404 |   0.1886 |   0.4930 |   0.0507 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0
| 163,734 | 16 | 125 | 408,443,204 |   4.1829 |   0.0059 |   0.0031 |   0.0001 |   0.1511 |   0.5335 |   2.7162 |   0.1875 |   0.5373 |   0.0514 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0
| 163,734 | 8 | 125 | 408,443,204 |   5.1172 |   0.0057 |   0.0051 |   0.0001 |   0.2092 |   0.7681 |   3.1633 |   0.3082 |   0.5638 |   0.0988 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0
| 163,734 | 8 | 125 | 408,443,204 |   5.0691 |   0.0059 |   0.0032 |   0.0001 |   0.2079 |   0.7500 |   3.1364 |   0.3070 |   0.5646 |   0.0972 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0
| 163,734 | 8 | 125 | 408,443,204 |   5.0729 |   0.0058 |   0.0032 |   0.0001 |   0.2094 |   0.7488 |   3.1415 |   0.3072 |   0.5603 |   0.0997 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0
| 163,734 | 8 | 125 | 408,443,204 |   5.0627 |   0.0056 |   0.0031 |   0.0001 |   0.2067 |   0.7508 |   3.1289 |   0.3084 |   0.5654 |   0.0969 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0
| 163,734 | 8 | 125 | 408,443,204 |   5.0663 |   0.0058 |   0.0031 |   0.0001 |   0.2089 |   0.7489 |   3.1387 |   0.3078 |   0.5575 |   0.0986 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0
| 147,892 | 40 | 20 | 3,700,737,910 |   5.3796 |   0.0058 |   0.0069 |   0.0001 |   0.0874 |   1.2669 |   3.2714 |   0.2081 |   0.3569 |   0.1830 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0
| 147,892 | 40 | 20 | 3,700,737,910 |   5.3572 |   0.0058 |   0.0052 |   0.0001 |   0.0826 |   1.2582 |   3.2896 |   0.2082 |   0.3310 |   0.1818 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0
| 147,892 | 40 | 20 | 3,700,737,910 |   5.3554 |   0.0059 |   0.0036 |   0.0001 |   0.0842 |   1.2629 |   3.2593 |   0.2086 |   0.3505 |   0.1841 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0
| 147,892 | 40 | 20 | 3,700,737,910 |   5.2914 |   0.0059 |   0.0036 |   0.0001 |   0.0829 |   1.2547 |   3.2115 |   0.2100 |   0.3416 |   0.1847 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0
| 147,892 | 40 | 20 | 3,700,737,910 |   5.3138 |   0.0058 |   0.0037 |   0.0001 |   0.0849 |   1.2655 |   3.2170 |   0.2084 |   0.3497 |   0.1823 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0
| 147,892 | 32 | 20 | 3,700,737,910 |   5.8520 |   0.0059 |   0.0059 |   0.0001 |   0.1083 |   1.4486 |   3.4271 |   0.2451 |   0.3892 |   0.2278 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0
| 147,892 | 32 | 20 | 3,700,737,910 |   5.9083 |   0.0058 |   0.0033 |   0.0001 |   0.1099 |   1.4396 |   3.4882 |   0.2460 |   0.3904 |   0.2283 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0
| 147,892 | 32 | 20 | 3,700,737,910 |   5.8355 |   0.0060 |   0.0035 |   0.0001 |   0.1050 |   1.4394 |   3.4140 |   0.2473 |   0.3989 |   0.2249 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0
| 147,892 | 32 | 20 | 3,700,737,910 |   5.8405 |   0.0058 |   0.0033 |   0.0001 |   0.1027 |   1.4399 |   3.4536 |   0.2479 |   0.3675 |   0.2231 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0
| 147,892 | 32 | 20 | 3,700,737,910 |   5.8231 |   0.0059 |   0.0034 |   0.0001 |   0.1133 |   1.4313 |   3.4372 |   0.2468 |   0.3573 |   0.2313 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0
| 147,892 | 24 | 20 | 3,700,737,910 |   7.2655 |   0.0060 |   0.0054 |   0.0001 |   0.1317 |   1.7499 |   4.2085 |   0.3294 |   0.5412 |   0.2988 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0
| 147,892 | 24 | 20 | 3,700,737,910 |   7.3522 |   0.0061 |   0.0033 |   0.0001 |   0.1320 |   1.7477 |   4.2991 |   0.3331 |   0.5388 |   0.2955 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0
| 147,892 | 24 | 20 | 3,700,737,910 |   7.1856 |   0.0061 |   0.0032 |   0.0001 |   0.1422 |   1.7381 |   4.1771 |   0.3314 |   0.4897 |   0.3011 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0
| 147,892 | 24 | 20 | 3,700,737,910 |   7.3762 |   0.0060 |   0.0033 |   0.0001 |   0.1339 |   1.7545 |   4.3010 |   0.3315 |   0.5567 |   0.2925 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0
| 147,892 | 24 | 20 | 3,700,737,910 |   7.2011 |   0.0061 |   0.0035 |   0.0001 |   0.1295 |   1.7438 |   4.2116 |   0.3317 |   0.4787 |   0.2996 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0
| 147,892 | 16 | 20 | 3,700,737,910 |   9.9206 |   0.0059 |   0.0048 |   0.0001 |   0.1912 |   2.3973 |   5.0293 |   0.5164 |   1.2828 |   0.4976 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0
| 147,892 | 16 | 20 | 3,700,737,910 |   9.5489 |   0.0058 |   0.0032 |   0.0001 |   0.1876 |   2.3989 |   4.8752 |   0.5613 |   1.0255 |   0.4944 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0
| 147,892 | 16 | 20 | 3,700,737,910 |   9.4197 |   0.0058 |   0.0031 |   0.0001 |   0.1845 |   2.3836 |   4.8982 |   0.4826 |   0.9820 |   0.4829 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0
| 147,892 | 16 | 20 | 3,700,737,910 |   9.9259 |   0.0058 |   0.0031 |   0.0001 |   0.1872 |   2.3936 |   4.9592 |   0.6455 |   1.2312 |   0.5033 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0
| 147,892 | 16 | 20 | 3,700,737,910 |   9.7812 |   0.0057 |   0.0040 |   0.0001 |   0.1967 |   2.3860 |   4.9262 |   0.5753 |   1.1814 |   0.5097 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0
| 165,435 | 40 | 588 | 3,137,407,481 |  20.4895 |   0.0058 |   0.0071 |   0.0001 |   0.5529 |   0.9637 |  13.7112 |   0.4281 |   4.6487 |   0.1789 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0
| 165,435 | 40 | 588 | 3,137,407,481 |  20.5136 |   0.0059 |   0.0050 |   0.0001 |   0.5590 |   0.9563 |  13.7046 |   0.4362 |   4.6744 |   0.1772 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0
| 165,435 | 40 | 588 | 3,137,407,481 |  20.5283 |   0.0059 |   0.0036 |   0.0001 |   0.5511 |   0.9450 |  13.7915 |   0.4300 |   4.6261 |   0.1787 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0
| 165,435 | 40 | 588 | 3,137,407,481 |  20.6071 |   0.0058 |   0.0035 |   0.0001 |   0.5540 |   0.9574 |  13.8079 |   0.4357 |   4.6611 |   0.1851 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0
| 165,435 | 40 | 588 | 3,137,407,481 |  20.4787 |   0.0059 |   0.0035 |   0.0001 |   0.5589 |   0.9542 |  13.7603 |   0.4303 |   4.6101 |   0.1590 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0
| 165,435 | 32 | 588 | 3,137,407,481 |  22.2973 |   0.0060 |   0.0051 |   0.0001 |   0.6790 |   1.0915 |  13.2893 |   0.5069 |   6.5079 |   0.2166 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0
| 165,435 | 32 | 588 | 3,137,407,481 |  22.3330 |   0.0058 |   0.0034 |   0.0001 |   0.6728 |   1.0774 |  13.3259 |   0.5063 |   6.5564 |   0.1883 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0
| 165,435 | 32 | 588 | 3,137,407,481 |  22.3426 |   0.0058 |   0.0037 |   0.0001 |   0.6672 |   1.1028 |  13.3136 |   0.5351 |   6.5268 |   0.1912 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0
| 165,435 | 32 | 588 | 3,137,407,481 |  22.2294 |   0.0059 |   0.0036 |   0.0001 |   0.6701 |   1.0647 |  13.4087 |   0.5077 |   6.3547 |   0.2174 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0
| 165,435 | 32 | 588 | 3,137,407,481 |  22.2590 |   0.0060 |   0.0036 |   0.0001 |   0.6777 |   1.0854 |  13.4499 |   0.4992 |   6.3527 |   0.1880 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0
| 165,435 | 24 | 588 | 3,137,407,481 |  26.4160 |   0.0059 |   0.0035 |   0.0001 |   0.8776 |   1.0904 |  12.8182 |   0.6232 |  10.7529 |   0.2479 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0
| 165,435 | 24 | 588 | 3,137,407,481 |  26.4007 |   0.0059 |   0.0036 |   0.0001 |   0.8767 |   1.0822 |  12.7920 |   0.6309 |  10.7618 |   0.2511 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0
| 165,435 | 24 | 588 | 3,137,407,481 |  26.4950 |   0.0059 |   0.0035 |   0.0001 |   0.8463 |   1.0797 |  12.8739 |   0.6232 |  10.7887 |   0.2774 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0
| 165,435 | 24 | 588 | 3,137,407,481 |  26.5664 |   0.0060 |   0.0036 |   0.0001 |   0.8780 |   1.1018 |  12.7552 |   0.6446 |  10.9285 |   0.2523 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0
| 165,435 | 24 | 588 | 3,137,407,481 |  26.4954 |   0.0061 |   0.0034 |   0.0001 |   0.8952 |   1.0800 |  12.8455 |   0.6273 |  10.7913 |   0.2499 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0
| 165,435 | 16 | 588 | 3,137,407,481 |  36.5456 |   0.0059 |   0.0030 |   0.0001 |   1.1269 |   1.0391 |  12.4222 |   0.6641 |  20.8555 |   0.4319 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0
| 165,435 | 16 | 588 | 3,137,407,481 |  36.4257 |   0.0058 |   0.0034 |   0.0001 |   1.2096 |   1.0270 |  12.3381 |   0.6344 |  20.8315 |   0.3793 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0
| 165,435 | 16 | 588 | 3,137,407,481 |  36.2562 |   0.0059 |   0.0031 |   0.0001 |   1.1305 |   1.0375 |  12.3271 |   0.6548 |  20.7302 |   0.3702 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0
| 165,435 | 16 | 588 | 3,137,407,481 |  36.3790 |   0.0058 |   0.0035 |   0.0001 |   1.1552 |   1.0618 |  12.3702 |   0.5995 |  20.7583 |   0.4280 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0
| 165,435 | 16 | 588 | 3,137,407,481 |  37.1723 |   0.0058 |   0.0031 |   0.0001 |   1.1885 |   1.0213 |  13.2399 |   0.6443 |  20.7010 |   0.3713 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0
| 165,435 | 8 | 588 | 3,137,407,481 |  90.2244 |   0.0058 |   0.0031 |   0.0001 |   1.7387 |   1.3214 |  12.7185 |   0.7210 |  72.8805 |   0.8385 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0
| 165,435 | 8 | 588 | 3,137,407,481 |  76.0832 |   0.0058 |   0.0031 |   0.0001 |   1.6948 |   1.3021 |  12.8995 |   0.7412 |  58.5831 |   0.8567 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0
| 165,435 | 8 | 588 | 3,137,407,481 |  73.0302 |   0.0057 |   0.0031 |   0.0001 |   1.6874 |   1.3083 |  12.6528 |   0.7655 |  55.8916 |   0.7187 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0
| 165,435 | 8 | 588 | 3,137,407,481 |  79.2399 |   0.0058 |   0.0032 |   0.0001 |   2.0710 |   1.2933 |  13.4950 |   0.8324 |  60.6799 |   0.8623 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0
| 165,435 | 8 | 588 | 3,137,407,481 |  86.6989 |   0.0059 |   0.0031 |   0.0001 |   1.9249 |   1.3575 |  13.8690 |   0.7537 |  67.9945 |   0.7934 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0
| 409,593 | 40 | 77 | 65,941,441 |   2.3189 |   0.0061 |   0.0072 |   0.0001 |   0.0365 |   0.0951 |   1.8652 |   0.0399 |   0.2712 |   0.0048 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0
| 409,593 | 40 | 77 | 65,941,441 |   2.3368 |   0.0059 |   0.0035 |   0.0001 |   0.0362 |   0.0955 |   1.8867 |   0.0406 |   0.2670 |   0.0049 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0
| 409,593 | 40 | 77 | 65,941,441 |   2.3231 |   0.0058 |   0.0038 |   0.0001 |   0.0353 |   0.0989 |   1.8691 |   0.0391 |   0.2701 |   0.0048 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0
| 409,593 | 40 | 77 | 65,941,441 |   2.3491 |   0.0059 |   0.0036 |   0.0001 |   0.0333 |   0.0950 |   1.8860 |   0.0414 |   0.2829 |   0.0047 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0
| 409,593 | 40 | 77 | 65,941,441 |   2.3870 |   0.0059 |   0.0037 |   0.0001 |   0.0387 |   0.0933 |   1.9295 |   0.0440 |   0.2708 |   0.0048 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0
| 409,593 | 32 | 77 | 65,941,441 |   2.3721 |   0.0059 |   0.0062 |   0.0001 |   0.0380 |   0.0978 |   1.9078 |   0.0416 |   0.2754 |   0.0056 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0
| 409,593 | 32 | 77 | 65,941,441 |   2.3834 |   0.0059 |   0.0037 |   0.0001 |   0.0387 |   0.1002 |   1.9127 |   0.0425 |   0.2776 |   0.0057 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0
| 409,593 | 32 | 77 | 65,941,441 |   2.3750 |   0.0059 |   0.0037 |   0.0001 |   0.0404 |   0.0946 |   1.8917 |   0.0455 |   0.2911 |   0.0057 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0
| 409,593 | 32 | 77 | 65,941,441 |   2.3737 |   0.0058 |   0.0037 |   0.0001 |   0.0387 |   0.0972 |   1.9071 |   0.0437 |   0.2756 |   0.0056 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0
| 409,593 | 32 | 77 | 65,941,441 |   2.4219 |   0.0058 |   0.0037 |   0.0001 |   0.0386 |   0.0965 |   1.9399 |   0.0451 |   0.2902 |   0.0057 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0
| 409,593 | 24 | 77 | 65,941,441 |   2.0026 |   0.0061 |   0.0072 |   0.0001 |   0.0411 |   0.1063 |   1.5355 |   0.0541 |   0.2531 |   0.0064 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0
| 409,593 | 24 | 77 | 65,941,441 |   1.9629 |   0.0059 |   0.0038 |   0.0001 |   0.0437 |   0.1058 |   1.5108 |   0.0561 |   0.2340 |   0.0065 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0
| 409,593 | 24 | 77 | 65,941,441 |   2.0062 |   0.0058 |   0.0036 |   0.0001 |   0.0446 |   0.1066 |   1.5411 |   0.0537 |   0.2478 |   0.0064 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0
| 409,593 | 24 | 77 | 65,941,441 |   2.0098 |   0.0060 |   0.0037 |   0.0001 |   0.0455 |   0.1088 |   1.5423 |   0.0547 |   0.2457 |   0.0067 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0
| 409,593 | 24 | 77 | 65,941,441 |   2.0044 |   0.0059 |   0.0037 |   0.0001 |   0.0453 |   0.1058 |   1.5431 |   0.0512 |   0.2466 |   0.0065 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0
| 409,593 | 16 | 77 | 65,941,441 |   1.9759 |   0.0062 |   0.0056 |   0.0001 |   0.0408 |   0.1020 |   1.4719 |   0.0620 |   0.2837 |   0.0092 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0
| 409,593 | 16 | 77 | 65,941,441 |   1.9364 |   0.0058 |   0.0031 |   0.0001 |   0.0409 |   0.1054 |   1.4536 |   0.0568 |   0.2644 |   0.0093 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0
| 409,593 | 16 | 77 | 65,941,441 |   1.9682 |   0.0058 |   0.0033 |   0.0001 |   0.0413 |   0.1054 |   1.4721 |   0.0630 |   0.2717 |   0.0090 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0
| 409,593 | 16 | 77 | 65,941,441 |   1.9626 |   0.0058 |   0.0033 |   0.0001 |   0.0409 |   0.1032 |   1.4727 |   0.0602 |   0.2706 |   0.0092 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0
| 409,593 | 16 | 77 | 65,941,441 |   1.9817 |   0.0057 |   0.0035 |   0.0001 |   0.0414 |   0.1053 |   1.5067 |   0.0569 |   0.2567 |   0.0090 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0
| 409,593 | 8 | 77 | 65,941,441 |   2.0186 |   0.0059 |   0.0059 |   0.0003 |   0.0620 |   0.1335 |   1.5304 |   0.0736 |   0.1958 |   0.0170 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0
| 409,593 | 8 | 77 | 65,941,441 |   1.9988 |   0.0058 |   0.0033 |   0.0003 |   0.0622 |   0.1337 |   1.4801 |   0.0733 |   0.2269 |   0.0165 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0
| 409,593 | 8 | 77 | 65,941,441 |   1.9950 |   0.0058 |   0.0033 |   0.0003 |   0.0628 |   0.1338 |   1.4782 |   0.0735 |   0.2239 |   0.0166 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0
| 409,593 | 8 | 77 | 65,941,441 |   1.9575 |   0.0059 |   0.0032 |   0.0003 |   0.0623 |   0.1356 |   1.4702 |   0.0733 |   0.1932 |   0.0167 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0
| 409,593 | 8 | 77 | 65,941,441 |   1.9850 |   0.0059 |   0.0033 |   0.0003 |   0.0615 |   0.1345 |   1.4775 |   0.0734 |   0.2151 |   0.0169 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 40 | 513 | 864,761,518 |  15.7805 |   0.0061 |   0.0056 |   0.0001 |   0.2896 |   0.7274 |  12.1245 |   0.3059 |   2.2829 |   0.0441 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 40 | 513 | 864,761,518 |  15.6544 |   0.0059 |   0.0038 |   0.0001 |   0.2881 |   0.7323 |  11.9984 |   0.3083 |   2.2770 |   0.0443 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 40 | 513 | 864,761,518 |  15.6879 |   0.0059 |   0.0037 |   0.0001 |   0.2911 |   0.7322 |  12.0411 |   0.3057 |   2.2687 |   0.0433 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 40 | 513 | 864,761,518 |  15.7217 |   0.0060 |   0.0036 |   0.0001 |   0.2927 |   0.7227 |  12.0671 |   0.2977 |   2.2906 |   0.0449 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 40 | 513 | 864,761,518 |  15.7574 |   0.0060 |   0.0059 |   0.0001 |   0.2949 |   0.7346 |  12.1263 |   0.2991 |   2.2530 |   0.0437 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 32 | 513 | 864,761,518 |  13.6824 |   0.0074 |   0.0052 |   0.0001 |   0.3459 |   0.8042 |  10.0624 |   0.2833 |   2.1251 |   0.0539 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 32 | 513 | 864,761,518 |  14.0046 |   0.0067 |   0.0035 |   0.0001 |   0.3432 |   0.8005 |  10.3509 |   0.2885 |   2.1606 |   0.0542 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 32 | 513 | 864,761,518 |  14.1552 |   0.0089 |   0.0036 |   0.0001 |   0.3555 |   0.8095 |  10.4119 |   0.2942 |   2.2201 |   0.0550 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 32 | 513 | 864,761,518 |  13.9892 |   0.0064 |   0.0037 |   0.0001 |   0.3422 |   0.8094 |  10.2812 |   0.2903 |   2.2048 |   0.0548 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 32 | 513 | 864,761,518 |  14.0153 |   0.0065 |   0.0038 |   0.0001 |   0.3355 |   0.8025 |  10.3370 |   0.2911 |   2.1887 |   0.0538 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 24 | 513 | 864,761,518 |  14.4003 |   0.0058 |   0.0056 |   0.0001 |   0.3776 |   0.9179 |  10.1680 |   0.3632 |   2.4961 |   0.0716 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 24 | 513 | 864,761,518 |  14.3447 |   0.0059 |   0.0037 |   0.0001 |   0.3819 |   0.9329 |  10.1006 |   0.3715 |   2.4781 |   0.0737 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 24 | 513 | 864,761,518 |  14.3959 |   0.0058 |   0.0036 |   0.0001 |   0.3774 |   0.9179 |  10.1575 |   0.3712 |   2.4928 |   0.0733 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 24 | 513 | 864,761,518 |  14.3236 |   0.0059 |   0.0035 |   0.0001 |   0.3744 |   0.9205 |  10.1101 |   0.3621 |   2.4787 |   0.0718 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 24 | 513 | 864,761,518 |  14.4156 |   0.0062 |   0.0035 |   0.0001 |   0.3803 |   0.9232 |  10.1935 |   0.3629 |   2.4783 |   0.0711 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 16 | 513 | 864,761,518 |  15.0642 |   0.0061 |   0.0060 |   0.0012 |   0.4279 |   0.9993 |  10.1815 |   0.4938 |   2.8489 |   0.1056 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 16 | 513 | 864,761,518 |  15.1031 |   0.0061 |   0.0033 |   0.0012 |   0.4347 |   1.0035 |  10.2167 |   0.4933 |   2.8412 |   0.1063 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 16 | 513 | 864,761,518 |  15.1159 |   0.0061 |   0.0035 |   0.0008 |   0.4328 |   1.0068 |  10.2281 |   0.4855 |   2.8500 |   0.1058 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 16 | 513 | 864,761,518 |  15.0272 |   0.0061 |   0.0036 |   0.0012 |   0.4337 |   0.9966 |  10.1757 |   0.4865 |   2.8233 |   0.1041 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 16 | 513 | 864,761,518 |  15.0823 |   0.0062 |   0.0036 |   0.0012 |   0.4230 |   1.0147 |  10.1961 |   0.4912 |   2.8445 |   0.1054 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 8 | 513 | 864,761,518 |  24.2896 |   0.0059 |   0.0034 |   0.0003 |   0.6425 |   1.4543 |  10.5918 |   0.7199 |  10.6253 |   0.2495 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 8 | 513 | 864,761,518 |  24.2602 |   0.0059 |   0.0035 |   0.0003 |   0.6374 |   1.4490 |  10.6400 |   0.7081 |  10.6164 |   0.2030 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 8 | 513 | 864,761,518 |  24.1959 |   0.0061 |   0.0033 |   0.0003 |   0.6589 |   1.4330 |  10.5986 |   0.7158 |  10.5827 |   0.2005 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 8 | 513 | 864,761,518 |  24.2001 |   0.0061 |   0.0033 |   0.0003 |   0.6503 |   1.4421 |  10.6307 |   0.7025 |  10.5659 |   0.2023 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 8 | 513 | 864,761,518 |  24.0725 |   0.0060 |   0.0034 |   0.0003 |   0.6302 |   1.4372 |  10.5027 |   0.7102 |  10.5489 |   0.2370 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
Polaris job ended at: 2024-08-12 00:33:21
Total time taken: 2 hour(s), 7 minute(s), 58 second(s)
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> JOB ENDED >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
```