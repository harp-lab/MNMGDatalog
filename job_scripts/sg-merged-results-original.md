```
cat sg-merged.output
Polaris job started at: 2024-08-15 07:47:26
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> JOB STARTED >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
CC sg.cu -o sg.out -lm -O3
TRADITIONAL MPI - SORTING
------------------------------------------------------------------------------------
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 1
| 163,734 | 40 | 125 | 408,443,204 |   2.4551 |   0.7362 |   0.0482 |   0.0001 |   0.0901 |   0.1607 |   1.0207 |   0.1305 |   0.2945 |   0.0223 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 1
| 163,734 | 40 | 125 | 408,443,204 |   2.2927 |   0.7056 |   0.0048 |   0.0001 |   0.0808 |   0.1457 |   0.9485 |   0.1222 |   0.2677 |   0.0220 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 1
| 163,734 | 40 | 125 | 408,443,204 |   2.3005 |   0.7060 |   0.0032 |   0.0001 |   0.0822 |   0.1470 |   0.9471 |   0.1229 |   0.2734 |   0.0218 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 1
| 163,734 | 40 | 125 | 408,443,204 |   2.3082 |   0.7084 |   0.0033 |   0.0001 |   0.0814 |   0.1476 |   0.9569 |   0.1229 |   0.2686 |   0.0224 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 1
| 163,734 | 40 | 125 | 408,443,204 |   2.2901 |   0.7000 |   0.0033 |   0.0001 |   0.0805 |   0.1454 |   0.9468 |   0.1233 |   0.2721 |   0.0218 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 1
| 163,734 | 32 | 125 | 408,443,204 |   2.4563 |   0.7077 |   0.0051 |   0.0001 |   0.1005 |   0.1586 |   1.0623 |   0.1313 |   0.2690 |   0.0269 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 1
| 163,734 | 32 | 125 | 408,443,204 |   2.5329 |   0.7025 |   0.0032 |   0.0001 |   0.1098 |   0.1756 |   1.0879 |   0.1428 |   0.2876 |   0.0266 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 1
| 163,734 | 32 | 125 | 408,443,204 |   2.4581 |   0.7005 |   0.0030 |   0.0001 |   0.1017 |   0.1579 |   1.0646 |   0.1320 |   0.2750 |   0.0264 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 1
| 163,734 | 32 | 125 | 408,443,204 |   2.4523 |   0.6988 |   0.0032 |   0.0001 |   0.1006 |   0.1570 |   1.0642 |   0.1332 |   0.2715 |   0.0268 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 1
| 163,734 | 32 | 125 | 408,443,204 |   2.4546 |   0.7005 |   0.0031 |   0.0001 |   0.1016 |   0.1580 |   1.0609 |   0.1321 |   0.2749 |   0.0266 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 1
| 163,734 | 24 | 125 | 408,443,204 |   2.8230 |   0.7025 |   0.0049 |   0.0001 |   0.1126 |   0.1668 |   1.3200 |   0.1505 |   0.3355 |   0.0351 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 1
| 163,734 | 24 | 125 | 408,443,204 |   2.8195 |   0.7056 |   0.0032 |   0.0001 |   0.1134 |   0.1695 |   1.3182 |   0.1507 |   0.3272 |   0.0348 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 1
| 163,734 | 24 | 125 | 408,443,204 |   2.8250 |   0.7043 |   0.0031 |   0.0001 |   0.1137 |   0.1680 |   1.3261 |   0.1485 |   0.3295 |   0.0348 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 1
| 163,734 | 24 | 125 | 408,443,204 |   2.9284 |   0.7559 |   0.0032 |   0.0001 |   0.1133 |   0.1675 |   1.3720 |   0.1506 |   0.3344 |   0.0346 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 1
| 163,734 | 24 | 125 | 408,443,204 |   2.9110 |   0.7454 |   0.0032 |   0.0001 |   0.1146 |   0.1677 |   1.3669 |   0.1492 |   0.3323 |   0.0348 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 1
| 163,734 | 16 | 125 | 408,443,204 |   3.5572 |   0.7002 |   0.0053 |   0.0001 |   0.1220 |   0.1749 |   1.9119 |   0.1881 |   0.4104 |   0.0498 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 1
| 163,734 | 16 | 125 | 408,443,204 |   3.5804 |   0.6988 |   0.0030 |   0.0001 |   0.1204 |   0.1758 |   1.9320 |   0.1882 |   0.4149 |   0.0503 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 1
| 163,734 | 16 | 125 | 408,443,204 |   3.6620 |   0.7198 |   0.0028 |   0.0001 |   0.1257 |   0.1827 |   1.9644 |   0.1914 |   0.4280 |   0.0499 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 1
| 163,734 | 16 | 125 | 408,443,204 |   3.5621 |   0.6994 |   0.0027 |   0.0001 |   0.1227 |   0.1747 |   1.9217 |   0.1875 |   0.4055 |   0.0507 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 1
| 163,734 | 16 | 125 | 408,443,204 |   3.5608 |   0.6974 |   0.0028 |   0.0001 |   0.1221 |   0.1752 |   1.9203 |   0.1880 |   0.4060 |   0.0517 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 1
| 163,734 | 8 | 125 | 408,443,204 |   6.0117 |   0.6830 |   0.0054 |   0.0001 |   0.1602 |   0.2148 |   3.8890 |   0.3037 |   0.6644 |   0.0966 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 1
| 163,734 | 8 | 125 | 408,443,204 |   6.0419 |   0.6834 |   0.0028 |   0.0001 |   0.1602 |   0.2146 |   3.9229 |   0.3058 |   0.6572 |   0.0978 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 1
| 163,734 | 8 | 125 | 408,443,204 |   5.9621 |   0.6671 |   0.0029 |   0.0001 |   0.1582 |   0.2133 |   3.8865 |   0.3069 |   0.6329 |   0.0972 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 1
| 163,734 | 8 | 125 | 408,443,204 |   6.0500 |   0.6733 |   0.0031 |   0.0000 |   0.1607 |   0.2150 |   3.9346 |   0.3034 |   0.6646 |   0.0985 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 1
| 163,734 | 8 | 125 | 408,443,204 |   6.0571 |   0.6796 |   0.0028 |   0.0001 |   0.1594 |   0.2116 |   3.9315 |   0.3030 |   0.6732 |   0.0987 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 1
| 147,892 | 40 | 20 | 3,700,737,910 |   5.2416 |   0.7022 |   0.0089 |   0.0001 |   0.0833 |   0.0755 |   3.6733 |   0.2266 |   0.2990 |   0.1817 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 1
| 147,892 | 40 | 20 | 3,700,737,910 |   5.2769 |   0.6890 |   0.0049 |   0.0001 |   0.0845 |   0.0766 |   3.7155 |   0.2239 |   0.3067 |   0.1806 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 1
| 147,892 | 40 | 20 | 3,700,737,910 |   5.2767 |   0.6945 |   0.0030 |   0.0001 |   0.0833 |   0.0782 |   3.7184 |   0.2271 |   0.2949 |   0.1803 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 1
| 147,892 | 40 | 20 | 3,700,737,910 |   5.2375 |   0.6912 |   0.0032 |   0.0001 |   0.0836 |   0.0752 |   3.6770 |   0.2262 |   0.3036 |   0.1807 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 1
| 147,892 | 40 | 20 | 3,700,737,910 |   5.2632 |   0.6887 |   0.0047 |   0.0001 |   0.0837 |   0.0763 |   3.7081 |   0.2241 |   0.3013 |   0.1810 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 1
| 147,892 | 32 | 20 | 3,700,737,910 |   6.2963 |   0.6837 |   0.0055 |   0.0001 |   0.1003 |   0.0910 |   4.5732 |   0.2641 |   0.3596 |   0.2244 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 1
| 147,892 | 32 | 20 | 3,700,737,910 |   6.2695 |   0.6896 |   0.0032 |   0.0001 |   0.0993 |   0.0893 |   4.5677 |   0.2661 |   0.3303 |   0.2273 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 1
| 147,892 | 32 | 20 | 3,700,737,910 |   6.2592 |   0.6954 |   0.0033 |   0.0001 |   0.1020 |   0.0885 |   4.5506 |   0.2790 |   0.3210 |   0.2226 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 1
| 147,892 | 32 | 20 | 3,700,737,910 |   6.2311 |   0.6832 |   0.0035 |   0.0001 |   0.0991 |   0.0891 |   4.5526 |   0.2643 |   0.3197 |   0.2230 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 1
| 147,892 | 32 | 20 | 3,700,737,910 |   6.2526 |   0.6924 |   0.0028 |   0.0001 |   0.1000 |   0.0889 |   4.5557 |   0.2678 |   0.3240 |   0.2238 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 1
| 147,892 | 24 | 20 | 3,700,737,910 |   8.0784 |   0.6895 |   0.0047 |   0.0001 |   0.1348 |   0.1222 |   6.0278 |   0.3588 |   0.4514 |   0.2938 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 1
| 147,892 | 24 | 20 | 3,700,737,910 |   8.0044 |   0.6904 |   0.0028 |   0.0001 |   0.1324 |   0.1130 |   5.9550 |   0.3548 |   0.4596 |   0.2991 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 1
| 147,892 | 24 | 20 | 3,700,737,910 |   8.0183 |   0.6795 |   0.0033 |   0.0001 |   0.1282 |   0.1096 |   5.9716 |   0.3553 |   0.4746 |   0.2995 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 1
| 147,892 | 24 | 20 | 3,700,737,910 |   8.0616 |   0.6747 |   0.0032 |   0.0001 |   0.1313 |   0.1214 |   6.0028 |   0.3567 |   0.4795 |   0.2950 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 1
| 147,892 | 24 | 20 | 3,700,737,910 |   7.9980 |   0.6718 |   0.0028 |   0.0001 |   0.1266 |   0.1127 |   5.9840 |   0.3522 |   0.4567 |   0.2940 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 1
| 147,892 | 16 | 20 | 3,700,737,910 |  12.0048 |   0.6921 |   0.0048 |   0.0001 |   0.1773 |   0.1570 |   8.9069 |   0.5136 |   1.0440 |   0.5139 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 1
| 147,892 | 16 | 20 | 3,700,737,910 |  12.0290 |   0.7270 |   0.0027 |   0.0001 |   0.1766 |   0.1604 |   8.8806 |   0.5176 |   1.0695 |   0.4972 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 1
| 147,892 | 16 | 20 | 3,700,737,910 |  11.8836 |   0.6565 |   0.0028 |   0.0001 |   0.1779 |   0.1548 |   8.8735 |   0.5177 |   1.0660 |   0.4372 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 1
| 147,892 | 16 | 20 | 3,700,737,910 |  11.9004 |   0.6628 |   0.0027 |   0.0001 |   0.1916 |   0.1679 |   8.8395 |   0.5152 |   1.0381 |   0.4851 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 1
| 147,892 | 16 | 20 | 3,700,737,910 |  11.8763 |   0.6462 |   0.0029 |   0.0001 |   0.1838 |   0.1572 |   8.8506 |   0.5118 |   1.0172 |   0.5095 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 1
| 147,892 | 8 | 20 | 3,700,737,910 |  30.1305 |   0.6331 |   0.0048 |   0.0001 |   0.5678 |   0.7758 |  16.8837 |   1.5920 |   8.7494 |   0.9286 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 1
| 147,892 | 8 | 20 | 3,700,737,910 |  29.7203 |   0.5958 |   0.0028 |   0.0000 |   0.5545 |   0.8264 |  16.9293 |   1.5975 |   8.2668 |   0.9499 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 1
| 147,892 | 8 | 20 | 3,700,737,910 |  29.7613 |   0.6014 |   0.0029 |   0.0000 |   0.5499 |   0.8327 |  16.8336 |   1.4985 |   8.4947 |   0.9505 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 1
| 147,892 | 8 | 20 | 3,700,737,910 |  30.1620 |   0.6528 |   0.0028 |   0.0001 |   0.5429 |   0.8526 |  16.7255 |   1.5532 |   8.8755 |   0.9596 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 1
| 147,892 | 8 | 20 | 3,700,737,910 |  30.1290 |   0.6104 |   0.0028 |   0.0001 |   0.5333 |   0.8492 |  16.8009 |   1.5504 |   8.8437 |   0.9410 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 1
| 165,435 | 40 | 588 | 3,137,407,481 |  14.4930 |   0.7021 |   0.0096 |   0.0001 |   0.4412 |   0.6475 |   2.1970 |   0.3548 |   9.9988 |   0.1514 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 1
| 165,435 | 40 | 588 | 3,137,407,481 |  14.4782 |   0.6976 |   0.0046 |   0.0001 |   0.4414 |   0.6564 |   2.2203 |   0.3528 |   9.9229 |   0.1866 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 1
| 165,435 | 40 | 588 | 3,137,407,481 |  14.4368 |   0.7010 |   0.0031 |   0.0001 |   0.4472 |   0.6416 |   2.1436 |   0.3411 |   9.9769 |   0.1854 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 1
| 165,435 | 40 | 588 | 3,137,407,481 |  14.5047 |   0.6999 |   0.0032 |   0.0001 |   0.4430 |   0.6647 |   2.2197 |   0.3619 |   9.9631 |   0.1521 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 1
| 165,435 | 40 | 588 | 3,137,407,481 |  14.4408 |   0.7007 |   0.0034 |   0.0001 |   0.4423 |   0.6456 |   2.1579 |   0.3508 |   9.9605 |   0.1830 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 1
| 165,435 | 32 | 588 | 3,137,407,481 |  17.6382 |   0.7790 |   0.0051 |   0.0001 |   0.5282 |   0.6891 |   2.4807 |   0.4106 |  12.5349 |   0.2156 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 1
| 165,435 | 32 | 588 | 3,137,407,481 |  17.4670 |   0.7082 |   0.0032 |   0.0001 |   0.5305 |   0.6783 |   2.5051 |   0.3944 |  12.4614 |   0.1889 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 1
| 165,435 | 32 | 588 | 3,137,407,481 |  17.4180 |   0.7004 |   0.0031 |   0.0001 |   0.5335 |   0.6933 |   2.4292 |   0.3711 |  12.4721 |   0.2183 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 1
| 165,435 | 32 | 588 | 3,137,407,481 |  17.4223 |   0.6991 |   0.0031 |   0.0001 |   0.5264 |   0.6907 |   2.4343 |   0.3705 |  12.5092 |   0.1920 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 1
| 165,435 | 32 | 588 | 3,137,407,481 |  17.4562 |   0.6936 |   0.0033 |   0.0001 |   0.5410 |   0.6893 |   2.4914 |   0.3727 |  12.4785 |   0.1896 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 1
| 165,435 | 24 | 588 | 3,137,407,481 |  23.0440 |   0.7008 |   0.0048 |   0.0001 |   0.6461 |   0.7477 |   3.1262 |   0.4117 |  17.1211 |   0.2902 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 1
| 165,435 | 24 | 588 | 3,137,407,481 |  22.8924 |   0.6950 |   0.0032 |   0.0001 |   0.6314 |   0.7418 |   3.0733 |   0.4118 |  17.0829 |   0.2561 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 1
| 165,435 | 24 | 588 | 3,137,407,481 |  22.8327 |   0.6991 |   0.0031 |   0.0001 |   0.6292 |   0.7699 |   3.0076 |   0.4048 |  17.0712 |   0.2508 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 1
| 165,435 | 24 | 588 | 3,137,407,481 |  22.9405 |   0.6961 |   0.0033 |   0.0001 |   0.6525 |   0.7648 |   3.0233 |   0.4229 |  17.1289 |   0.2518 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 1
| 165,435 | 24 | 588 | 3,137,407,481 |  22.8093 |   0.6940 |   0.0032 |   0.0001 |   0.6385 |   0.7472 |   3.0470 |   0.4089 |  17.0253 |   0.2483 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 1
| 165,435 | 16 | 588 | 3,137,407,481 |  34.2262 |   0.6983 |   0.0198 |   0.0001 |   0.7855 |   0.8302 |   4.3253 |   0.4635 |  26.7522 |   0.3712 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 1
| 165,435 | 16 | 588 | 3,137,407,481 |  34.1598 |   0.6886 |   0.0030 |   0.0001 |   0.8413 |   0.8388 |   4.3324 |   0.4695 |  26.6136 |   0.3755 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 1
| 165,435 | 16 | 588 | 3,137,407,481 |  34.2028 |   0.6976 |   0.0030 |   0.0001 |   0.8188 |   0.8633 |   4.3441 |   0.4843 |  26.6215 |   0.3731 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 1
| 165,435 | 16 | 588 | 3,137,407,481 |  34.1175 |   0.6874 |   0.0031 |   0.0001 |   0.8118 |   0.8206 |   4.3431 |   0.4650 |  26.5409 |   0.4484 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 1
| 165,435 | 16 | 588 | 3,137,407,481 |  34.2412 |   0.6962 |   0.0028 |   0.0001 |   0.8325 |   0.8447 |   4.4432 |   0.4770 |  26.5085 |   0.4392 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 1
| 165,435 | 8 | 588 | 3,137,407,481 |  68.8500 |   0.6954 |   0.0046 |   0.0001 |   1.3012 |   1.0839 |   8.7041 |   0.6002 |  55.7453 |   0.7198 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 1
| 165,435 | 8 | 588 | 3,137,407,481 |  69.2419 |   0.6773 |   0.0028 |   0.0001 |   1.3222 |   1.1559 |   9.0021 |   0.5950 |  55.6281 |   0.8612 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 1
| 165,435 | 8 | 588 | 3,137,407,481 |  72.7558 |   0.6647 |   0.0031 |   0.0001 |   1.2597 |   1.0743 |   9.1958 |   0.6479 |  59.0591 |   0.8543 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 1
| 165,435 | 8 | 588 | 3,137,407,481 |  69.2079 |   0.6880 |   0.0029 |   0.0001 |   1.3115 |   1.1069 |   9.1033 |   0.6157 |  55.5296 |   0.8529 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 1
| 165,435 | 8 | 588 | 3,137,407,481 |  69.2951 |   0.6621 |   0.0028 |   0.0001 |   1.3685 |   1.1210 |   8.9931 |   0.6044 |  55.6835 |   0.8625 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 1
| 409,593 | 40 | 77 | 65,941,441 |   1.0729 |   0.7065 |   0.0094 |   0.0001 |   0.0267 |   0.0614 |   0.1375 |   0.0393 |   0.0969 |   0.0045 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 1
| 409,593 | 40 | 77 | 65,941,441 |   1.0691 |   0.7034 |   0.0048 |   0.0001 |   0.0268 |   0.0613 |   0.1353 |   0.0396 |   0.0980 |   0.0046 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 1
| 409,593 | 40 | 77 | 65,941,441 |   1.0741 |   0.7030 |   0.0032 |   0.0001 |   0.0271 |   0.0614 |   0.1415 |   0.0395 |   0.0968 |   0.0047 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 1
| 409,593 | 40 | 77 | 65,941,441 |   1.0648 |   0.7013 |   0.0032 |   0.0001 |   0.0270 |   0.0617 |   0.1334 |   0.0394 |   0.0972 |   0.0047 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 1
| 409,593 | 40 | 77 | 65,941,441 |   1.0716 |   0.7015 |   0.0032 |   0.0001 |   0.0269 |   0.0613 |   0.1399 |   0.0398 |   0.0976 |   0.0046 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 1
| 409,593 | 32 | 77 | 65,941,441 |   1.0918 |   0.7072 |   0.0059 |   0.0001 |   0.0298 |   0.0648 |   0.1417 |   0.0416 |   0.1011 |   0.0055 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 1
| 409,593 | 32 | 77 | 65,941,441 |   1.0881 |   0.7028 |   0.0032 |   0.0001 |   0.0301 |   0.0644 |   0.1445 |   0.0412 |   0.0998 |   0.0054 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 1
| 409,593 | 32 | 77 | 65,941,441 |   1.0903 |   0.7031 |   0.0033 |   0.0001 |   0.0301 |   0.0639 |   0.1453 |   0.0413 |   0.1010 |   0.0055 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 1
| 409,593 | 32 | 77 | 65,941,441 |   1.0946 |   0.7038 |   0.0032 |   0.0001 |   0.0303 |   0.0646 |   0.1485 |   0.0420 |   0.0999 |   0.0054 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 1
| 409,593 | 32 | 77 | 65,941,441 |   1.0858 |   0.7034 |   0.0032 |   0.0001 |   0.0301 |   0.0644 |   0.1407 |   0.0416 |   0.1001 |   0.0054 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 1
| 409,593 | 24 | 77 | 65,941,441 |   1.1186 |   0.6989 |   0.0058 |   0.0001 |   0.0346 |   0.0694 |   0.1565 |   0.0456 |   0.1062 |   0.0073 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 1
| 409,593 | 24 | 77 | 65,941,441 |   1.1281 |   0.7026 |   0.0030 |   0.0001 |   0.0347 |   0.0692 |   0.1620 |   0.0455 |   0.1067 |   0.0073 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 1
| 409,593 | 24 | 77 | 65,941,441 |   1.1364 |   0.7020 |   0.0033 |   0.0001 |   0.0352 |   0.0694 |   0.1683 |   0.0464 |   0.1078 |   0.0072 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 1
| 409,593 | 24 | 77 | 65,941,441 |   1.1309 |   0.7024 |   0.0031 |   0.0001 |   0.0353 |   0.0686 |   0.1628 |   0.0467 |   0.1078 |   0.0072 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 1
| 409,593 | 24 | 77 | 65,941,441 |   1.1306 |   0.7011 |   0.0031 |   0.0001 |   0.0345 |   0.0693 |   0.1666 |   0.0458 |   0.1061 |   0.0071 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 1
| 409,593 | 16 | 77 | 65,941,441 |   1.1938 |   0.7045 |   0.0054 |   0.0001 |   0.0371 |   0.0716 |   0.2076 |   0.0514 |   0.1122 |   0.0092 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 1
| 409,593 | 16 | 77 | 65,941,441 |   1.1961 |   0.7055 |   0.0029 |   0.0001 |   0.0366 |   0.0725 |   0.2071 |   0.0513 |   0.1132 |   0.0098 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 1
| 409,593 | 16 | 77 | 65,941,441 |   1.1946 |   0.7019 |   0.0032 |   0.0001 |   0.0364 |   0.0716 |   0.2095 |   0.0515 |   0.1140 |   0.0096 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 1
| 409,593 | 16 | 77 | 65,941,441 |   1.1940 |   0.7035 |   0.0031 |   0.0001 |   0.0370 |   0.0726 |   0.2074 |   0.0506 |   0.1136 |   0.0093 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 1
| 409,593 | 16 | 77 | 65,941,441 |   1.1822 |   0.7019 |   0.0029 |   0.0001 |   0.0368 |   0.0712 |   0.1991 |   0.0505 |   0.1133 |   0.0094 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 1
| 409,593 | 8 | 77 | 65,941,441 |   1.4047 |   0.6994 |   0.0060 |   0.0002 |   0.0520 |   0.0855 |   0.3482 |   0.0653 |   0.1372 |   0.0169 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 1
| 409,593 | 8 | 77 | 65,941,441 |   1.4096 |   0.6967 |   0.0030 |   0.0002 |   0.0522 |   0.0851 |   0.3541 |   0.0642 |   0.1402 |   0.0169 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 1
| 409,593 | 8 | 77 | 65,941,441 |   1.4040 |   0.6913 |   0.0030 |   0.0002 |   0.0520 |   0.0845 |   0.3546 |   0.0646 |   0.1394 |   0.0173 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 1
| 409,593 | 8 | 77 | 65,941,441 |   1.3912 |   0.6888 |   0.0031 |   0.0002 |   0.0519 |   0.0857 |   0.3449 |   0.0644 |   0.1384 |   0.0170 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 1
| 409,593 | 8 | 77 | 65,941,441 |   1.3921 |   0.6907 |   0.0031 |   0.0002 |   0.0518 |   0.0852 |   0.3473 |   0.0642 |   0.1353 |   0.0173 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 40 | 513 | 864,761,518 |   5.2341 |   0.7053 |   0.0099 |   0.0001 |   0.1849 |   0.3674 |   1.5553 |   0.2491 |   2.1121 |   0.0599 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 40 | 513 | 864,761,518 |   5.2052 |   0.7006 |   0.0049 |   0.0001 |   0.1840 |   0.3581 |   1.5070 |   0.2325 |   2.1796 |   0.0433 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 40 | 513 | 864,761,518 |   5.2225 |   0.7010 |   0.0034 |   0.0001 |   0.1820 |   0.3598 |   1.5062 |   0.2352 |   2.1784 |   0.0598 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 40 | 513 | 864,761,518 |   5.2160 |   0.7029 |   0.0032 |   0.0001 |   0.1806 |   0.3553 |   1.5314 |   0.2344 |   2.1515 |   0.0599 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 40 | 513 | 864,761,518 |   5.2331 |   0.7026 |   0.0032 |   0.0001 |   0.1878 |   0.3649 |   1.5384 |   0.2376 |   2.1575 |   0.0441 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 32 | 513 | 864,761,518 |   6.3122 |   0.7012 |   0.0049 |   0.0001 |   0.2079 |   0.3797 |   1.7284 |   0.2603 |   2.9815 |   0.0531 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 32 | 513 | 864,761,518 |   6.3592 |   0.6992 |   0.0032 |   0.0001 |   0.2078 |   0.3857 |   1.7267 |   0.2657 |   3.0191 |   0.0549 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 32 | 513 | 864,761,518 |   6.3797 |   0.7037 |   0.0033 |   0.0001 |   0.2105 |   0.3923 |   1.7844 |   0.2654 |   2.9695 |   0.0539 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 32 | 513 | 864,761,518 |   6.3571 |   0.7006 |   0.0032 |   0.0001 |   0.2062 |   0.3871 |   1.7287 |   0.2642 |   2.9993 |   0.0709 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 32 | 513 | 864,761,518 |   6.3340 |   0.7002 |   0.0032 |   0.0001 |   0.2099 |   0.3818 |   1.7624 |   0.2602 |   2.9657 |   0.0538 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 24 | 513 | 864,761,518 |   8.5866 |   0.7009 |   0.0053 |   0.0001 |   0.2466 |   0.4395 |   2.2869 |   0.3400 |   4.5007 |   0.0721 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 24 | 513 | 864,761,518 |   8.5462 |   0.6948 |   0.0033 |   0.0001 |   0.2445 |   0.4325 |   2.2337 |   0.3009 |   4.5682 |   0.0715 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 24 | 513 | 864,761,518 |   8.4996 |   0.7000 |   0.0032 |   0.0001 |   0.2425 |   0.4323 |   2.2073 |   0.2973 |   4.5491 |   0.0710 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 24 | 513 | 864,761,518 |   8.5906 |   0.6937 |   0.0032 |   0.0001 |   0.2491 |   0.4438 |   2.2771 |   0.2981 |   4.5566 |   0.0721 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 24 | 513 | 864,761,518 |   8.4973 |   0.7004 |   0.0032 |   0.0001 |   0.2405 |   0.4335 |   2.1918 |   0.3160 |   4.5438 |   0.0713 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 16 | 513 | 864,761,518 |  12.8710 |   0.6995 |   0.0055 |   0.0003 |   0.2828 |   0.5002 |   3.1673 |   0.4468 |   7.6431 |   0.1310 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 16 | 513 | 864,761,518 |  12.9390 |   0.6939 |   0.0032 |   0.0003 |   0.2857 |   0.4829 |   3.1628 |   0.4211 |   7.7719 |   0.1205 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 16 | 513 | 864,761,518 |  12.8948 |   0.6821 |   0.0031 |   0.0003 |   0.2924 |   0.4941 |   3.1392 |   0.3882 |   7.7683 |   0.1301 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 16 | 513 | 864,761,518 |  12.8463 |   0.6951 |   0.0032 |   0.0003 |   0.2898 |   0.4929 |   3.1584 |   0.4053 |   7.6858 |   0.1187 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 16 | 513 | 864,761,518 |  12.9877 |   0.6917 |   0.0029 |   0.0003 |   0.2891 |   0.4988 |   3.2210 |   0.3868 |   7.7711 |   0.1291 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 8 | 513 | 864,761,518 |  25.8959 |   0.6856 |   0.0062 |   0.0003 |   0.4719 |   0.6974 |   6.1410 |   0.5437 |  17.1547 |   0.2013 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 8 | 513 | 864,761,518 |  25.9107 |   0.6833 |   0.0031 |   0.0003 |   0.4802 |   0.6833 |   6.1689 |   0.6072 |  17.0852 |   0.2023 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 8 | 513 | 864,761,518 |  25.9143 |   0.6760 |   0.0031 |   0.0003 |   0.4812 |   0.6595 |   6.0842 |   0.5682 |  17.2089 |   0.2361 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 8 | 513 | 864,761,518 |  25.8732 |   0.6615 |   0.0030 |   0.0003 |   0.4865 |   0.6593 |   6.0984 |   0.5688 |  17.1570 |   0.2414 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 8 | 513 | 864,761,518 |  26.0173 |   0.6791 |   0.0032 |   0.0003 |   0.4808 |   0.6717 |   6.1720 |   0.5524 |  17.2278 |   0.2331 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
TRADITIONAL MPI - TWO PASS
------------------------------------------------------------------------------------
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 1
| 163,734 | 40 | 125 | 408,443,204 |   2.5572 |   0.7019 |   0.0072 |   0.0001 |   0.0808 |   0.3929 |   0.9707 |   0.1142 |   0.2746 |   0.0220 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 1
| 163,734 | 40 | 125 | 408,443,204 |   2.5597 |   0.7072 |   0.0049 |   0.0001 |   0.0790 |   0.3885 |   0.9779 |   0.1139 |   0.2712 |   0.0219 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 1
| 163,734 | 40 | 125 | 408,443,204 |   2.5521 |   0.7047 |   0.0042 |   0.0001 |   0.0779 |   0.3868 |   0.9739 |   0.1145 |   0.2724 |   0.0220 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 1
| 163,734 | 40 | 125 | 408,443,204 |   2.5444 |   0.7022 |   0.0033 |   0.0001 |   0.0789 |   0.3856 |   0.9729 |   0.1154 |   0.2672 |   0.0220 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 1
| 163,734 | 40 | 125 | 408,443,204 |   2.5502 |   0.7030 |   0.0032 |   0.0001 |   0.0784 |   0.3908 |   0.9667 |   0.1146 |   0.2747 |   0.0220 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 1
| 163,734 | 32 | 125 | 408,443,204 |   2.7847 |   0.7028 |   0.0051 |   0.0001 |   0.0981 |   0.4117 |   1.0899 |   0.1233 |   0.3316 |   0.0272 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 1
| 163,734 | 32 | 125 | 408,443,204 |   2.7293 |   0.7036 |   0.0031 |   0.0000 |   0.0982 |   0.4151 |   1.0934 |   0.1232 |   0.2690 |   0.0267 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 1
| 163,734 | 32 | 125 | 408,443,204 |   2.7312 |   0.7010 |   0.0035 |   0.0001 |   0.0977 |   0.4185 |   1.0915 |   0.1245 |   0.2714 |   0.0266 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 1
| 163,734 | 32 | 125 | 408,443,204 |   2.7130 |   0.7011 |   0.0031 |   0.0000 |   0.0984 |   0.4163 |   1.0821 |   0.1234 |   0.2645 |   0.0272 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 1
| 163,734 | 32 | 125 | 408,443,204 |   2.7006 |   0.6993 |   0.0032 |   0.0001 |   0.0981 |   0.4182 |   1.0658 |   0.1234 |   0.2690 |   0.0267 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 1
| 163,734 | 24 | 125 | 408,443,204 |   3.0995 |   0.7006 |   0.0045 |   0.0001 |   0.1096 |   0.4585 |   1.3346 |   0.1401 |   0.3212 |   0.0349 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 1
| 163,734 | 24 | 125 | 408,443,204 |   3.2022 |   0.7739 |   0.0033 |   0.0001 |   0.1096 |   0.4651 |   1.3570 |   0.1393 |   0.3224 |   0.0348 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 1
| 163,734 | 24 | 125 | 408,443,204 |   3.1049 |   0.7037 |   0.0032 |   0.0001 |   0.1088 |   0.4553 |   1.3441 |   0.1391 |   0.3187 |   0.0352 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 1
| 163,734 | 24 | 125 | 408,443,204 |   3.1091 |   0.7021 |   0.0030 |   0.0001 |   0.1090 |   0.4606 |   1.3453 |   0.1391 |   0.3181 |   0.0347 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 1
| 163,734 | 24 | 125 | 408,443,204 |   3.0977 |   0.7007 |   0.0031 |   0.0000 |   0.1076 |   0.4594 |   1.3371 |   0.1395 |   0.3173 |   0.0360 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 1
| 163,734 | 16 | 125 | 408,443,204 |   3.9323 |   0.7000 |   0.0046 |   0.0001 |   0.1208 |   0.5632 |   1.9305 |   0.1718 |   0.3947 |   0.0511 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 1
| 163,734 | 16 | 125 | 408,443,204 |   4.0075 |   0.6972 |   0.0030 |   0.0001 |   0.1263 |   0.5741 |   1.9498 |   0.1875 |   0.4225 |   0.0501 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 1
| 163,734 | 16 | 125 | 408,443,204 |   3.9068 |   0.6852 |   0.0028 |   0.0001 |   0.1190 |   0.5563 |   1.9303 |   0.1723 |   0.3930 |   0.0506 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 1
| 163,734 | 16 | 125 | 408,443,204 |   3.8998 |   0.6952 |   0.0030 |   0.0000 |   0.1197 |   0.5592 |   1.9101 |   0.1730 |   0.3923 |   0.0502 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 1
| 163,734 | 16 | 125 | 408,443,204 |   3.9234 |   0.6883 |   0.0028 |   0.0001 |   0.1204 |   0.5686 |   1.9191 |   0.1724 |   0.4032 |   0.0512 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 1
| 163,734 | 8 | 125 | 408,443,204 |   6.5481 |   0.6929 |   0.0050 |   0.0001 |   0.1660 |   0.8253 |   3.8422 |   0.2872 |   0.6371 |   0.0973 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 1
| 163,734 | 8 | 125 | 408,443,204 |   6.5878 |   0.6797 |   0.0030 |   0.0001 |   0.1691 |   0.8236 |   3.8779 |   0.2820 |   0.6565 |   0.0989 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 1
| 163,734 | 8 | 125 | 408,443,204 |   6.5701 |   0.6773 |   0.0028 |   0.0001 |   0.1655 |   0.8167 |   3.8740 |   0.2792 |   0.6615 |   0.0959 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 1
| 163,734 | 8 | 125 | 408,443,204 |   6.5514 |   0.6685 |   0.0030 |   0.0000 |   0.1652 |   0.8206 |   3.8594 |   0.2808 |   0.6576 |   0.0992 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 1
| 163,734 | 8 | 125 | 408,443,204 |   6.5349 |   0.6713 |   0.0028 |   0.0000 |   0.1645 |   0.8189 |   3.8571 |   0.2787 |   0.6486 |   0.0959 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 1
| 147,892 | 40 | 20 | 3,700,737,910 |   6.5724 |   0.7007 |   0.0075 |   0.0001 |   0.0824 |   1.2777 |   3.8307 |   0.2094 |   0.2903 |   0.1811 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 1
| 147,892 | 40 | 20 | 3,700,737,910 |   6.6060 |   0.6976 |   0.0048 |   0.0001 |   0.0807 |   1.2829 |   3.8646 |   0.2100 |   0.2889 |   0.1813 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 1
| 147,892 | 40 | 20 | 3,700,737,910 |   6.6218 |   0.6912 |   0.0032 |   0.0001 |   0.0826 |   1.2814 |   3.8639 |   0.2089 |   0.3112 |   0.1824 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 1
| 147,892 | 40 | 20 | 3,700,737,910 |   6.6019 |   0.6911 |   0.0032 |   0.0001 |   0.0828 |   1.2806 |   3.8569 |   0.2086 |   0.3015 |   0.1804 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 1
| 147,892 | 40 | 20 | 3,700,737,910 |   6.5978 |   0.6868 |   0.0031 |   0.0001 |   0.0821 |   1.2789 |   3.8543 |   0.2089 |   0.3040 |   0.1828 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 1
| 147,892 | 32 | 20 | 3,700,737,910 |   7.7575 |   0.6892 |   0.0046 |   0.0001 |   0.1041 |   1.4441 |   4.7329 |   0.2469 |   0.3192 |   0.2211 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 1
| 147,892 | 32 | 20 | 3,700,737,910 |   7.7112 |   0.6950 |   0.0032 |   0.0001 |   0.1041 |   1.4335 |   4.6999 |   0.2475 |   0.3066 |   0.2246 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 1
| 147,892 | 32 | 20 | 3,700,737,910 |   7.7597 |   0.6812 |   0.0033 |   0.0001 |   0.1036 |   1.4514 |   4.7210 |   0.2471 |   0.3276 |   0.2278 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 1
| 147,892 | 32 | 20 | 3,700,737,910 |   7.7517 |   0.6911 |   0.0031 |   0.0001 |   0.1031 |   1.4461 |   4.7203 |   0.2470 |   0.3198 |   0.2243 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 1
| 147,892 | 32 | 20 | 3,700,737,910 |   7.7681 |   0.6986 |   0.0032 |   0.0001 |   0.1023 |   1.4503 |   4.7127 |   0.2464 |   0.3266 |   0.2311 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 1
| 147,892 | 24 | 20 | 3,700,737,910 |   9.8170 |   0.6949 |   0.0045 |   0.0001 |   0.1334 |   1.7524 |   6.1680 |   0.3336 |   0.4397 |   0.2948 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 1
| 147,892 | 24 | 20 | 3,700,737,910 |   9.8198 |   0.6786 |   0.0032 |   0.0001 |   0.1317 |   1.7554 |   6.1671 |   0.3348 |   0.4553 |   0.2968 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 1
| 147,892 | 24 | 20 | 3,700,737,910 |   9.8133 |   0.6838 |   0.0031 |   0.0001 |   0.1371 |   1.7655 |   6.1552 |   0.3348 |   0.4414 |   0.2955 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 1
| 147,892 | 24 | 20 | 3,700,737,910 |   9.8178 |   0.6818 |   0.0031 |   0.0001 |   0.1326 |   1.7567 |   6.1579 |   0.3332 |   0.4554 |   0.3003 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 1
| 147,892 | 24 | 20 | 3,700,737,910 |   9.8034 |   0.6916 |   0.0031 |   0.0001 |   0.1310 |   1.7659 |   6.1594 |   0.3340 |   0.4293 |   0.2921 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 1
| 147,892 | 16 | 20 | 3,700,737,910 |  14.3392 |   0.6851 |   0.0050 |   0.0001 |   0.1908 |   2.3974 |   9.0141 |   0.4944 |   1.1222 |   0.4351 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 1
| 147,892 | 16 | 20 | 3,700,737,910 |  14.2396 |   0.6632 |   0.0030 |   0.0001 |   0.1834 |   2.3991 |   8.9956 |   0.4957 |   0.9949 |   0.5077 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 1
| 147,892 | 16 | 20 | 3,700,737,910 |  14.2346 |   0.6520 |   0.0028 |   0.0001 |   0.1949 |   2.4051 |   8.9789 |   0.4909 |   1.0470 |   0.4657 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 1
| 147,892 | 16 | 20 | 3,700,737,910 |  14.3312 |   0.6717 |   0.0027 |   0.0001 |   0.1949 |   2.3988 |   9.0285 |   0.4920 |   1.0431 |   0.5021 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 1
| 147,892 | 16 | 20 | 3,700,737,910 |  14.2825 |   0.6575 |   0.0032 |   0.0001 |   0.1839 |   2.4018 |   9.0549 |   0.4930 |   1.0570 |   0.4342 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 1
| 147,892 | 8 | 20 | 3,700,737,910 |  33.2900 |   0.6389 |   0.0044 |   0.0000 |   0.5926 |   3.9029 |  16.8237 |   1.9623 |   8.4333 |   0.9362 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 1
| 147,892 | 8 | 20 | 3,700,737,910 |  33.4911 |   0.6017 |   0.0028 |   0.0000 |   0.6184 |   3.7422 |  16.8880 |   1.9018 |   8.7894 |   0.9496 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 1
| 147,892 | 8 | 20 | 3,700,737,910 |  33.3019 |   0.6217 |   0.0028 |   0.0000 |   0.5527 |   3.8406 |  16.9265 |   1.8717 |   8.5520 |   0.9367 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 1
| 147,892 | 8 | 20 | 3,700,737,910 |  33.3823 |   0.5965 |   0.0028 |   0.0000 |   0.6404 |   3.8928 |  16.8569 |   1.9893 |   8.4655 |   0.9408 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 1
| 147,892 | 8 | 20 | 3,700,737,910 |  33.6130 |   0.5969 |   0.0028 |   0.0000 |   0.5539 |   3.9311 |  16.8598 |   1.9366 |   8.7816 |   0.9531 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 1
| 165,435 | 40 | 588 | 3,137,407,481 |  15.1593 |   0.7654 |   0.0031 |   0.0001 |   0.4361 |   1.2386 |   2.2040 |   0.3576 |   9.9728 |   0.1847 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 1
| 165,435 | 40 | 588 | 3,137,407,481 |  15.0744 |   0.7010 |   0.0032 |   0.0001 |   0.4214 |   1.2381 |   2.1768 |   0.3549 |  10.0048 |   0.1773 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 1
| 165,435 | 40 | 588 | 3,137,407,481 |  15.0415 |   0.6987 |   0.0032 |   0.0001 |   0.4322 |   1.2339 |   2.1769 |   0.3456 |   9.9644 |   0.1898 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 1
| 165,435 | 40 | 588 | 3,137,407,481 |  15.0201 |   0.7057 |   0.0032 |   0.0001 |   0.4308 |   1.2363 |   2.1844 |   0.3432 |   9.9466 |   0.1731 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 1
| 165,435 | 40 | 588 | 3,137,407,481 |  15.0145 |   0.7040 |   0.0032 |   0.0001 |   0.4391 |   1.2489 |   2.1384 |   0.3420 |   9.9916 |   0.1504 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 1
| 165,435 | 32 | 588 | 3,137,407,481 |  17.9710 |   0.7030 |   0.0031 |   0.0001 |   0.5201 |   1.3380 |   2.4539 |   0.3622 |  12.4057 |   0.1880 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 1
| 165,435 | 32 | 588 | 3,137,407,481 |  17.9979 |   0.6953 |   0.0030 |   0.0001 |   0.5106 |   1.3096 |   2.4445 |   0.3564 |  12.4917 |   0.1897 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 1
| 165,435 | 32 | 588 | 3,137,407,481 |  18.1505 |   0.7031 |   0.0031 |   0.0001 |   0.5095 |   1.3226 |   2.4598 |   0.3500 |  12.6170 |   0.1884 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 1
| 165,435 | 32 | 588 | 3,137,407,481 |  18.2069 |   0.7017 |   0.0027 |   0.0001 |   0.5214 |   1.3235 |   2.5088 |   0.4027 |  12.5575 |   0.1913 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 1
| 165,435 | 32 | 588 | 3,137,407,481 |  18.0096 |   0.6999 |   0.0031 |   0.0001 |   0.5140 |   1.3162 |   2.4473 |   0.3800 |  12.4626 |   0.1895 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 1
| 165,435 | 24 | 588 | 3,137,407,481 |  23.5610 |   0.6991 |   0.0031 |   0.0001 |   0.5878 |   1.4306 |   3.0556 |   0.3866 |  17.1208 |   0.2803 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 1
| 165,435 | 24 | 588 | 3,137,407,481 |  23.4685 |   0.7018 |   0.0033 |   0.0000 |   0.5965 |   1.4290 |   3.0314 |   0.4255 |  17.0362 |   0.2482 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 1
| 165,435 | 24 | 588 | 3,137,407,481 |  23.5204 |   0.6967 |   0.0031 |   0.0001 |   0.5861 |   1.4460 |   2.9927 |   0.3960 |  17.1190 |   0.2839 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 1
| 165,435 | 24 | 588 | 3,137,407,481 |  23.4451 |   0.6970 |   0.0030 |   0.0001 |   0.5872 |   1.4454 |   3.0445 |   0.3923 |  16.9912 |   0.2875 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 1
| 165,435 | 24 | 588 | 3,137,407,481 |  23.4797 |   0.6961 |   0.0032 |   0.0001 |   0.5959 |   1.4485 |   3.0793 |   0.3972 |  16.9782 |   0.2843 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 1
| 165,435 | 16 | 588 | 3,137,407,481 |  34.8274 |   0.7047 |   0.0030 |   0.0001 |   0.7923 |   1.6937 |   4.2847 |   0.4347 |  26.4743 |   0.4429 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 1
| 165,435 | 16 | 588 | 3,137,407,481 |  34.8500 |   0.6941 |   0.0029 |   0.0001 |   0.7625 |   1.6640 |   4.2618 |   0.4508 |  26.6444 |   0.3723 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 1
| 165,435 | 16 | 588 | 3,137,407,481 |  34.9178 |   0.7009 |   0.0034 |   0.0001 |   0.7540 |   1.6665 |   4.3570 |   0.4411 |  26.5601 |   0.4381 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 1
| 165,435 | 16 | 588 | 3,137,407,481 |  34.9911 |   0.6903 |   0.0027 |   0.0001 |   0.7610 |   1.6536 |   4.3458 |   0.4452 |  26.6597 |   0.4355 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 1
| 165,435 | 16 | 588 | 3,137,407,481 |  35.0501 |   0.6989 |   0.0027 |   0.0001 |   0.7964 |   1.6900 |   4.3810 |   0.4390 |  26.6748 |   0.3701 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 1
| 165,435 | 8 | 588 | 3,137,407,481 |  69.6922 |   0.6910 |   0.0028 |   0.0000 |   1.2597 |   2.0797 |   8.9121 |   0.5691 |  55.4503 |   0.7303 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 1
| 165,435 | 8 | 588 | 3,137,407,481 |  69.8915 |   0.6928 |   0.0032 |   0.0000 |   1.2799 |   2.0952 |   8.9791 |   0.5799 |  55.4072 |   0.8573 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 1
| 165,435 | 8 | 588 | 3,137,407,481 |  69.8259 |   0.6617 |   0.0027 |   0.0001 |   1.2009 |   2.1405 |   9.0996 |   0.6730 |  55.1980 |   0.8521 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 1
| 165,435 | 8 | 588 | 3,137,407,481 |  69.9553 |   0.6742 |   0.0028 |   0.0000 |   1.1992 |   2.0936 |   9.0645 |   0.5873 |  55.4857 |   0.8508 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 1
| 165,435 | 8 | 588 | 3,137,407,481 |  69.9122 |   0.6624 |   0.0028 |   0.0000 |   1.2642 |   2.1242 |   9.0172 |   0.5809 |  55.5365 |   0.7268 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 1
| 409,593 | 40 | 77 | 65,941,441 |   1.0777 |   0.7043 |   0.0032 |   0.0001 |   0.0269 |   0.0741 |   0.1321 |   0.0377 |   0.0979 |   0.0047 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 1
| 409,593 | 40 | 77 | 65,941,441 |   1.0726 |   0.7013 |   0.0033 |   0.0001 |   0.0271 |   0.0741 |   0.1282 |   0.0377 |   0.0994 |   0.0047 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 1
| 409,593 | 40 | 77 | 65,941,441 |   1.0751 |   0.7012 |   0.0032 |   0.0000 |   0.0271 |   0.0742 |   0.1324 |   0.0378 |   0.0977 |   0.0047 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 1
| 409,593 | 40 | 77 | 65,941,441 |   1.0752 |   0.6997 |   0.0032 |   0.0001 |   0.0272 |   0.0740 |   0.1332 |   0.0378 |   0.0986 |   0.0046 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 1
| 409,593 | 40 | 77 | 65,941,441 |   1.2053 |   0.7055 |   0.0033 |   0.0001 |   0.0356 |   0.0856 |   0.2065 |   0.0393 |   0.1278 |   0.0049 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 1
| 409,593 | 32 | 77 | 65,941,441 |   1.1041 |   0.7051 |   0.0031 |   0.0001 |   0.0294 |   0.0783 |   0.1436 |   0.0417 |   0.1006 |   0.0053 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 1
| 409,593 | 32 | 77 | 65,941,441 |   1.1005 |   0.7014 |   0.0032 |   0.0001 |   0.0295 |   0.0780 |   0.1439 |   0.0412 |   0.1011 |   0.0053 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 1
| 409,593 | 32 | 77 | 65,941,441 |   1.0904 |   0.6995 |   0.0032 |   0.0001 |   0.0296 |   0.0791 |   0.1364 |   0.0411 |   0.0993 |   0.0054 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 1
| 409,593 | 32 | 77 | 65,941,441 |   1.0987 |   0.7004 |   0.0032 |   0.0001 |   0.0294 |   0.0791 |   0.1422 |   0.0414 |   0.1007 |   0.0054 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 1
| 409,593 | 32 | 77 | 65,941,441 |   1.0938 |   0.7002 |   0.0033 |   0.0001 |   0.0293 |   0.0798 |   0.1362 |   0.0420 |   0.1009 |   0.0053 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 1
| 409,593 | 24 | 77 | 65,941,441 |   1.1559 |   0.7014 |   0.0033 |   0.0001 |   0.0347 |   0.0923 |   0.1660 |   0.0449 |   0.1091 |   0.0074 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 1
| 409,593 | 24 | 77 | 65,941,441 |   1.1467 |   0.7002 |   0.0032 |   0.0001 |   0.0342 |   0.0907 |   0.1597 |   0.0456 |   0.1091 |   0.0072 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 1
| 409,593 | 24 | 77 | 65,941,441 |   1.2298 |   0.7554 |   0.0033 |   0.0001 |   0.0359 |   0.0930 |   0.1745 |   0.0484 |   0.1151 |   0.0074 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 1
| 409,593 | 24 | 77 | 65,941,441 |   1.1763 |   0.7046 |   0.0032 |   0.0001 |   0.0343 |   0.0919 |   0.1831 |   0.0462 |   0.1090 |   0.0071 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 1
| 409,593 | 24 | 77 | 65,941,441 |   1.1515 |   0.7028 |   0.0031 |   0.0001 |   0.0343 |   0.0908 |   0.1627 |   0.0461 |   0.1073 |   0.0073 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 1
| 409,593 | 16 | 77 | 65,941,441 |   1.2456 |   0.7063 |   0.0029 |   0.0001 |   0.0386 |   0.1093 |   0.2148 |   0.0505 |   0.1167 |   0.0093 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 1
| 409,593 | 16 | 77 | 65,941,441 |   1.2347 |   0.7050 |   0.0030 |   0.0001 |   0.0378 |   0.1086 |   0.2060 |   0.0499 |   0.1179 |   0.0094 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 1
| 409,593 | 16 | 77 | 65,941,441 |   1.2268 |   0.7012 |   0.0030 |   0.0001 |   0.0381 |   0.1078 |   0.2030 |   0.0496 |   0.1174 |   0.0097 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 1
| 409,593 | 16 | 77 | 65,941,441 |   1.2285 |   0.7025 |   0.0029 |   0.0001 |   0.0385 |   0.1063 |   0.2047 |   0.0516 |   0.1154 |   0.0093 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 1
| 409,593 | 16 | 77 | 65,941,441 |   1.2305 |   0.7007 |   0.0028 |   0.0001 |   0.0383 |   0.1076 |   0.2064 |   0.0514 |   0.1166 |   0.0094 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 1
| 409,593 | 8 | 77 | 65,941,441 |   1.5119 |   0.7284 |   0.0032 |   0.0003 |   0.0532 |   0.1489 |   0.3631 |   0.0618 |   0.1388 |   0.0174 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 1
| 409,593 | 8 | 77 | 65,941,441 |   1.4642 |   0.6932 |   0.0033 |   0.0003 |   0.0526 |   0.1483 |   0.3525 |   0.0614 |   0.1386 |   0.0173 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 1
| 409,593 | 8 | 77 | 65,941,441 |   1.4731 |   0.6967 |   0.0035 |   0.0003 |   0.0537 |   0.1478 |   0.3538 |   0.0634 |   0.1401 |   0.0172 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 1
| 409,593 | 8 | 77 | 65,941,441 |   1.4705 |   0.6968 |   0.0031 |   0.0003 |   0.0529 |   0.1495 |   0.3524 |   0.0619 |   0.1392 |   0.0174 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 1
| 409,593 | 8 | 77 | 65,941,441 |   1.4806 |   0.7032 |   0.0029 |   0.0003 |   0.0533 |   0.1459 |   0.3608 |   0.0618 |   0.1382 |   0.0171 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 40 | 513 | 864,761,518 |   5.8416 |   0.7024 |   0.0033 |   0.0001 |   0.1787 |   0.9381 |   1.5408 |   0.2283 |   2.2099 |   0.0434 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 40 | 513 | 864,761,518 |   5.8927 |   0.7037 |   0.0033 |   0.0001 |   0.1933 |   0.9496 |   1.5588 |   0.2337 |   2.2092 |   0.0443 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 40 | 513 | 864,761,518 |   5.8728 |   0.7009 |   0.0033 |   0.0001 |   0.1790 |   0.9819 |   1.5396 |   0.2250 |   2.1868 |   0.0596 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 40 | 513 | 864,761,518 |   5.8297 |   0.7017 |   0.0033 |   0.0001 |   0.1786 |   0.9411 |   1.5292 |   0.2295 |   2.2053 |   0.0443 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 40 | 513 | 864,761,518 |   5.8708 |   0.7027 |   0.0033 |   0.0001 |   0.1825 |   0.9540 |   1.5439 |   0.2269 |   2.2160 |   0.0448 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 32 | 513 | 864,761,518 |   7.0141 |   0.7017 |   0.0032 |   0.0001 |   0.2100 |   1.0233 |   1.7578 |   0.2520 |   3.0157 |   0.0535 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 32 | 513 | 864,761,518 |   7.0336 |   0.7047 |   0.0031 |   0.0001 |   0.2081 |   1.0313 |   1.7513 |   0.2452 |   3.0259 |   0.0671 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 32 | 513 | 864,761,518 |   7.0127 |   0.7007 |   0.0032 |   0.0001 |   0.2091 |   1.0275 |   1.7377 |   0.2565 |   3.0276 |   0.0536 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 32 | 513 | 864,761,518 |   7.0466 |   0.7007 |   0.0033 |   0.0001 |   0.2110 |   1.0245 |   1.7655 |   0.2501 |   3.0412 |   0.0536 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 32 | 513 | 864,761,518 |   6.9980 |   0.7026 |   0.0032 |   0.0001 |   0.2126 |   1.0217 |   1.7368 |   0.2492 |   3.0085 |   0.0665 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 24 | 513 | 864,761,518 |   9.1770 |   0.6988 |   0.0033 |   0.0001 |   0.2327 |   1.1613 |   2.2287 |   0.2775 |   4.5058 |   0.0722 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 24 | 513 | 864,761,518 |   9.1658 |   0.7018 |   0.0032 |   0.0001 |   0.2348 |   1.1753 |   2.1791 |   0.2795 |   4.5221 |   0.0732 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 24 | 513 | 864,761,518 |   9.1798 |   0.6962 |   0.0032 |   0.0001 |   0.2317 |   1.1681 |   2.1905 |   0.2858 |   4.5250 |   0.0823 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 24 | 513 | 864,761,518 |   9.1969 |   0.6974 |   0.0031 |   0.0001 |   0.2349 |   1.2109 |   2.2040 |   0.2882 |   4.4891 |   0.0724 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 24 | 513 | 864,761,518 |   9.1860 |   0.6948 |   0.0031 |   0.0001 |   0.2321 |   1.1828 |   2.1934 |   0.2829 |   4.5145 |   0.0853 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 16 | 513 | 864,761,518 |  13.6834 |   0.6941 |   0.0033 |   0.0003 |   0.2787 |   1.4161 |   3.1856 |   0.3512 |   7.6278 |   0.1296 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 16 | 513 | 864,761,518 |  13.7066 |   0.6940 |   0.0031 |   0.0003 |   0.2811 |   1.4147 |   3.1661 |   0.4010 |   7.6459 |   0.1035 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 16 | 513 | 864,761,518 |  13.7294 |   0.6995 |   0.0030 |   0.0003 |   0.2829 |   1.4301 |   3.1566 |   0.3778 |   7.6780 |   0.1042 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 16 | 513 | 864,761,518 |  13.7389 |   0.7005 |   0.0032 |   0.0003 |   0.2791 |   1.4152 |   3.1746 |   0.3540 |   7.7112 |   0.1040 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 16 | 513 | 864,761,518 |  13.7223 |   0.6992 |   0.0029 |   0.0004 |   0.2902 |   1.4436 |   3.1953 |   0.3764 |   7.5974 |   0.1198 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 8 | 513 | 864,761,518 |  27.0998 |   0.6928 |   0.0031 |   0.0003 |   0.4323 |   1.9404 |   6.1351 |   0.5245 |  17.1373 |   0.2371 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 8 | 513 | 864,761,518 |  27.0204 |   0.6727 |   0.0031 |   0.0003 |   0.4089 |   1.9446 |   6.1599 |   0.5062 |  17.0926 |   0.2352 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 8 | 513 | 864,761,518 |  26.9864 |   0.6795 |   0.0031 |   0.0003 |   0.4304 |   1.9466 |   6.1818 |   0.5170 |  17.0259 |   0.2048 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 8 | 513 | 864,761,518 |  26.9343 |   0.6749 |   0.0031 |   0.0003 |   0.4217 |   1.9195 |   6.0884 |   0.5143 |  17.0689 |   0.2463 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 8 | 513 | 864,761,518 |  27.1452 |   0.6815 |   0.0031 |   0.0003 |   0.4163 |   1.9401 |   6.1912 |   0.5176 |  17.1933 |   0.2049 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |

====================================================================================

CC sg.cu -o sg.out -lm -O3
CUDA AWARE MPI - SORTING
------------------------------------------------------------------------------------
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 1
| 163,734 | 40 | 125 | 408,443,204 |   3.5220 |   0.0160 |   0.0038 |   0.0001 |   0.1206 |   0.1569 |   2.6037 |   0.1383 |   0.4647 |   0.0218 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 1
| 163,734 | 40 | 125 | 408,443,204 |   3.5118 |   0.0053 |   0.0037 |   0.0001 |   0.1206 |   0.1574 |   2.6078 |   0.1379 |   0.4610 |   0.0217 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 1
| 163,734 | 40 | 125 | 408,443,204 |   3.4970 |   0.0053 |   0.0035 |   0.0001 |   0.1273 |   0.1596 |   2.5825 |   0.1405 |   0.4593 |   0.0223 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 1
| 163,734 | 40 | 125 | 408,443,204 |   3.5462 |   0.0057 |   0.0043 |   0.0001 |   0.1267 |   0.1603 |   2.6268 |   0.1406 |   0.4638 |   0.0224 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 1
| 163,734 | 40 | 125 | 408,443,204 |   3.5187 |   0.0052 |   0.0036 |   0.0001 |   0.1256 |   0.1566 |   2.6012 |   0.1388 |   0.4692 |   0.0220 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 1
| 163,734 | 32 | 125 | 408,443,204 |   3.4686 |   0.0053 |   0.0037 |   0.0001 |   0.1572 |   0.1660 |   2.5145 |   0.1456 |   0.4532 |   0.0266 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 1
| 163,734 | 32 | 125 | 408,443,204 |   3.4521 |   0.0053 |   0.0036 |   0.0001 |   0.1546 |   0.1653 |   2.5097 |   0.1476 |   0.4434 |   0.0262 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 1
| 163,734 | 32 | 125 | 408,443,204 |   3.4365 |   0.0053 |   0.0034 |   0.0001 |   0.1571 |   0.1683 |   2.5023 |   0.1498 |   0.4265 |   0.0272 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 1
| 163,734 | 32 | 125 | 408,443,204 |   3.4679 |   0.0053 |   0.0035 |   0.0001 |   0.1543 |   0.1686 |   2.5189 |   0.1496 |   0.4440 |   0.0272 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 1
| 163,734 | 32 | 125 | 408,443,204 |   3.4639 |   0.0052 |   0.0037 |   0.0001 |   0.1527 |   0.1666 |   2.5067 |   0.1459 |   0.4605 |   0.0262 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 1
| 163,734 | 24 | 125 | 408,443,204 |   3.3692 |   0.0053 |   0.0037 |   0.0001 |   0.1604 |   0.1816 |   2.3446 |   0.1836 |   0.4585 |   0.0351 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 1
| 163,734 | 24 | 125 | 408,443,204 |   3.4112 |   0.0053 |   0.0037 |   0.0001 |   0.1596 |   0.1842 |   2.3589 |   0.1843 |   0.4837 |   0.0352 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 1
| 163,734 | 24 | 125 | 408,443,204 |   3.4460 |   0.0053 |   0.0036 |   0.0001 |   0.1639 |   0.1942 |   2.3837 |   0.1925 |   0.4714 |   0.0349 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 1
| 163,734 | 24 | 125 | 408,443,204 |   3.3415 |   0.0053 |   0.0035 |   0.0001 |   0.1537 |   0.1860 |   2.3297 |   0.1828 |   0.4486 |   0.0352 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 1
| 163,734 | 24 | 125 | 408,443,204 |   3.3732 |   0.0053 |   0.0036 |   0.0001 |   0.1562 |   0.1826 |   2.3383 |   0.1837 |   0.4718 |   0.0352 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 1
| 163,734 | 16 | 125 | 408,443,204 |   3.3191 |   0.0053 |   0.0034 |   0.0001 |   0.1525 |   0.1885 |   2.2569 |   0.2094 |   0.4557 |   0.0508 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 1
| 163,734 | 16 | 125 | 408,443,204 |   3.3348 |   0.0052 |   0.0031 |   0.0001 |   0.1536 |   0.1895 |   2.3110 |   0.2110 |   0.4138 |   0.0506 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 1
| 163,734 | 16 | 125 | 408,443,204 |   3.3327 |   0.0053 |   0.0032 |   0.0001 |   0.1538 |   0.1871 |   2.3137 |   0.2103 |   0.4120 |   0.0505 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 1
| 163,734 | 16 | 125 | 408,443,204 |   3.3887 |   0.0053 |   0.0035 |   0.0001 |   0.1539 |   0.1869 |   2.3041 |   0.2101 |   0.4776 |   0.0507 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 1
| 163,734 | 16 | 125 | 408,443,204 |   3.3306 |   0.0053 |   0.0038 |   0.0001 |   0.1532 |   0.1879 |   2.3169 |   0.2104 |   0.4068 |   0.0502 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 1
| 163,734 | 8 | 125 | 408,443,204 |   4.4055 |   0.0053 |   0.0031 |   0.0001 |   0.2001 |   0.2385 |   2.9695 |   0.3391 |   0.5563 |   0.0966 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 1
| 163,734 | 8 | 125 | 408,443,204 |   4.2120 |   0.0094 |   0.0055 |   0.0001 |   0.1973 |   0.2291 |   2.7797 |   0.3414 |   0.5580 |   0.0969 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 1
| 163,734 | 8 | 125 | 408,443,204 |   4.1726 |   0.0053 |   0.0032 |   0.0001 |   0.1976 |   0.2258 |   2.7428 |   0.3406 |   0.5621 |   0.0984 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 1
| 163,734 | 8 | 125 | 408,443,204 |   4.5557 |   0.0052 |   0.0034 |   0.0001 |   0.1936 |   0.2343 |   3.0198 |   0.3525 |   0.6502 |   0.1002 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 1
| 163,734 | 8 | 125 | 408,443,204 |   4.1751 |   0.0051 |   0.0031 |   0.0001 |   0.1982 |   0.2282 |   2.7382 |   0.3422 |   0.5663 |   0.0970 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 1
| 147,892 | 40 | 20 | 3,700,737,910 |   3.4628 |   0.0054 |   0.0080 |   0.0001 |   0.0876 |   0.0765 |   2.6032 |   0.2380 |   0.2681 |   0.1839 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 1
| 147,892 | 40 | 20 | 3,700,737,910 |   3.5276 |   0.0053 |   0.0051 |   0.0001 |   0.0869 |   0.0793 |   2.6271 |   0.2383 |   0.3083 |   0.1823 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 1
| 147,892 | 40 | 20 | 3,700,737,910 |   3.4494 |   0.0054 |   0.0048 |   0.0001 |   0.0866 |   0.0781 |   2.5816 |   0.2360 |   0.2795 |   0.1821 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 1
| 147,892 | 40 | 20 | 3,700,737,910 |   3.5195 |   0.0053 |   0.0037 |   0.0001 |   0.0867 |   0.0775 |   2.6276 |   0.2417 |   0.2988 |   0.1818 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 1
| 147,892 | 40 | 20 | 3,700,737,910 |   3.4915 |   0.0053 |   0.0036 |   0.0001 |   0.0898 |   0.0778 |   2.5891 |   0.2392 |   0.3042 |   0.1860 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 1
| 147,892 | 32 | 20 | 3,700,737,910 |   4.1596 |   0.0053 |   0.0046 |   0.0001 |   0.1035 |   0.0903 |   3.1110 |   0.2751 |   0.3494 |   0.2250 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 1
| 147,892 | 32 | 20 | 3,700,737,910 |   4.3021 |   0.0053 |   0.0037 |   0.0001 |   0.1043 |   0.0911 |   3.2096 |   0.2872 |   0.3757 |   0.2289 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 1
| 147,892 | 32 | 20 | 3,700,737,910 |   4.1502 |   0.0053 |   0.0036 |   0.0001 |   0.1096 |   0.0961 |   3.1054 |   0.2828 |   0.3269 |   0.2241 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 1
| 147,892 | 32 | 20 | 3,700,737,910 |   4.2271 |   0.0052 |   0.0034 |   0.0001 |   0.1097 |   0.0940 |   3.1506 |   0.2848 |   0.3559 |   0.2268 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 1
| 147,892 | 32 | 20 | 3,700,737,910 |   4.1079 |   0.0053 |   0.0036 |   0.0001 |   0.1047 |   0.0942 |   3.0854 |   0.2756 |   0.3125 |   0.2301 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 1
| 147,892 | 24 | 20 | 3,700,737,910 |   5.4461 |   0.0056 |   0.0049 |   0.0001 |   0.1329 |   0.1145 |   3.9853 |   0.3672 |   0.5401 |   0.3004 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 1
| 147,892 | 24 | 20 | 3,700,737,910 |   5.5013 |   0.0053 |   0.0035 |   0.0001 |   0.1307 |   0.1137 |   4.0832 |   0.3621 |   0.5100 |   0.2963 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 1
| 147,892 | 24 | 20 | 3,700,737,910 |   5.1231 |   0.0053 |   0.0035 |   0.0001 |   0.1357 |   0.1288 |   3.6591 |   0.3636 |   0.5356 |   0.2951 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 1
| 147,892 | 24 | 20 | 3,700,737,910 |   5.1899 |   0.0052 |   0.0035 |   0.0001 |   0.1298 |   0.1128 |   3.7279 |   0.3647 |   0.5551 |   0.2943 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 1
| 147,892 | 24 | 20 | 3,700,737,910 |   5.3130 |   0.0053 |   0.0035 |   0.0001 |   0.1294 |   0.1158 |   3.7630 |   0.3653 |   0.6350 |   0.2992 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 1
| 147,892 | 16 | 20 | 3,700,737,910 |   6.7028 |   0.0053 |   0.0046 |   0.0001 |   0.1804 |   0.1700 |   4.6072 |   0.5156 |   0.6846 |   0.5395 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 1
| 147,892 | 16 | 20 | 3,700,737,910 |   6.4796 |   0.0054 |   0.0035 |   0.0001 |   0.1836 |   0.1612 |   4.3521 |   0.5221 |   0.8181 |   0.4370 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 1
| 147,892 | 16 | 20 | 3,700,737,910 |   6.4272 |   0.0054 |   0.0031 |   0.0001 |   0.1793 |   0.1667 |   4.3386 |   0.5260 |   0.7610 |   0.4501 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 1
| 147,892 | 16 | 20 | 3,700,737,910 |   6.4808 |   0.0053 |   0.0032 |   0.0001 |   0.1819 |   0.1618 |   4.3072 |   0.5242 |   0.8561 |   0.4441 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 1
| 147,892 | 16 | 20 | 3,700,737,910 |   6.2975 |   0.0053 |   0.0032 |   0.0001 |   0.1821 |   0.1631 |   4.2620 |   0.5206 |   0.7282 |   0.4362 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 1
| 147,892 | 8 | 20 | 3,700,737,910 |  18.0953 |   0.0055 |   0.0047 |   0.0001 |   0.6606 |   0.8201 |   6.4042 |   1.5594 |   7.7084 |   0.9370 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 1
| 147,892 | 8 | 20 | 3,700,737,910 |  18.0136 |   0.0054 |   0.0035 |   0.0001 |   0.6398 |   0.8239 |   6.5285 |   1.5674 |   7.5191 |   0.9295 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 1
| 147,892 | 8 | 20 | 3,700,737,910 |  17.6121 |   0.0055 |   0.0031 |   0.0000 |   0.6450 |   0.8294 |   6.4495 |   1.5774 |   7.1642 |   0.9410 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 1
| 147,892 | 8 | 20 | 3,700,737,910 |  18.0881 |   0.0055 |   0.0031 |   0.0001 |   0.6051 |   0.9057 |   6.3835 |   1.5099 |   7.7305 |   0.9478 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 1
| 147,892 | 8 | 20 | 3,700,737,910 |  19.1898 |   0.0068 |   0.0093 |   0.0001 |   0.6440 |   0.8105 |   7.4508 |   1.5835 |   7.7594 |   0.9348 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 1
| 165,435 | 40 | 588 | 3,137,407,481 |  19.3576 |   0.0053 |   0.0061 |   0.0001 |   0.6871 |   0.7281 |  11.7740 |   0.5442 |   5.4652 |   0.1537 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 1
| 165,435 | 40 | 588 | 3,137,407,481 |  19.2152 |   0.0052 |   0.0050 |   0.0001 |   0.6763 |   0.7367 |  11.7287 |   0.5347 |   5.3562 |   0.1772 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 1
| 165,435 | 40 | 588 | 3,137,407,481 |  19.2460 |   0.0053 |   0.0036 |   0.0001 |   0.6657 |   0.7251 |  11.7344 |   0.5420 |   5.4217 |   0.1518 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 1
| 165,435 | 40 | 588 | 3,137,407,481 |  19.3439 |   0.0053 |   0.0037 |   0.0001 |   0.6726 |   0.7334 |  11.7751 |   0.5416 |   5.4363 |   0.1795 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 1
| 165,435 | 40 | 588 | 3,137,407,481 |  19.2880 |   0.0052 |   0.0036 |   0.0001 |   0.6594 |   0.7281 |  11.7620 |   0.5431 |   5.4082 |   0.1820 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 1
| 165,435 | 32 | 588 | 3,137,407,481 |  21.3988 |   0.0053 |   0.0035 |   0.0001 |   0.7830 |   0.7857 |  11.3179 |   0.6588 |   7.6551 |   0.1929 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 1
| 165,435 | 32 | 588 | 3,137,407,481 |  21.3203 |   0.0053 |   0.0039 |   0.0001 |   0.7547 |   0.7914 |  11.1976 |   0.6502 |   7.7288 |   0.1923 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 1
| 165,435 | 32 | 588 | 3,137,407,481 |  21.3971 |   0.0053 |   0.0035 |   0.0001 |   0.7867 |   0.8045 |  11.2759 |   0.6484 |   7.6866 |   0.1897 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 1
| 165,435 | 32 | 588 | 3,137,407,481 |  21.4534 |   0.0053 |   0.0036 |   0.0001 |   0.7788 |   0.7988 |  11.2739 |   0.6355 |   7.7716 |   0.1894 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 1
| 165,435 | 32 | 588 | 3,137,407,481 |  21.4644 |   0.0053 |   0.0036 |   0.0001 |   0.7621 |   0.7910 |  11.3091 |   0.6516 |   7.7535 |   0.1918 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 1
| 165,435 | 24 | 588 | 3,137,407,481 |  25.6362 |   0.0057 |   0.0066 |   0.0001 |   1.0214 |   0.8571 |  10.7348 |   0.7113 |  12.0173 |   0.2884 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 1
| 165,435 | 24 | 588 | 3,137,407,481 |  25.8402 |   0.0053 |   0.0036 |   0.0001 |   1.0182 |   0.8804 |  10.7903 |   0.7262 |  12.1663 |   0.2534 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 1
| 165,435 | 24 | 588 | 3,137,407,481 |  25.7880 |   0.0053 |   0.0037 |   0.0001 |   1.0052 |   0.8732 |  10.7344 |   0.7191 |  12.1658 |   0.2850 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 1
| 165,435 | 24 | 588 | 3,137,407,481 |  25.8493 |   0.0053 |   0.0037 |   0.0001 |   1.0220 |   0.8773 |  10.7303 |   0.7292 |  12.2041 |   0.2810 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 1
| 165,435 | 24 | 588 | 3,137,407,481 |  26.0123 |   0.0053 |   0.0037 |   0.0001 |   1.0124 |   0.8650 |  10.7433 |   0.7066 |  12.3907 |   0.2890 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 1
| 165,435 | 16 | 588 | 3,137,407,481 |  35.9109 |   0.0055 |   0.0053 |   0.0001 |   1.1750 |   0.9767 |  10.6458 |   0.6372 |  22.0392 |   0.4316 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 1
| 165,435 | 16 | 588 | 3,137,407,481 |  36.4617 |   0.0053 |   0.0032 |   0.0001 |   1.1357 |   0.9367 |  11.9323 |   0.6140 |  21.4691 |   0.3686 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 1
| 165,435 | 16 | 588 | 3,137,407,481 |  35.7250 |   0.0052 |   0.0032 |   0.0001 |   1.2168 |   0.9593 |  10.6715 |   0.6504 |  21.8523 |   0.3694 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 1
| 165,435 | 16 | 588 | 3,137,407,481 |  35.8525 |   0.0053 |   0.0032 |   0.0001 |   1.2290 |   0.9438 |  10.7025 |   0.6604 |  21.8743 |   0.4372 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 1
| 165,435 | 16 | 588 | 3,137,407,481 |  35.8417 |   0.0053 |   0.0034 |   0.0001 |   1.2058 |   0.9859 |  10.5686 |   0.6606 |  21.9790 |   0.4364 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 1
| 165,435 | 8 | 588 | 3,137,407,481 |  69.7059 |   0.0054 |   0.0058 |   0.0001 |   2.2134 |   1.1269 |  12.1650 |   0.8303 |  52.6466 |   0.7183 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 1
| 165,435 | 8 | 588 | 3,137,407,481 |  69.0356 |   0.0052 |   0.0031 |   0.0001 |   1.7660 |   1.1734 |  12.0032 |   0.8001 |  52.5746 |   0.7130 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 1
| 165,435 | 8 | 588 | 3,137,407,481 |  70.4205 |   0.0052 |   0.0031 |   0.0001 |   1.9814 |   1.3186 |  12.6079 |   0.8009 |  52.9952 |   0.7112 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 1
| 165,435 | 8 | 588 | 3,137,407,481 |  70.0148 |   0.0052 |   0.0032 |   0.0001 |   2.1526 |   1.2474 |  12.3473 |   0.7866 |  52.7638 |   0.7118 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 1
| 165,435 | 8 | 588 | 3,137,407,481 |  70.4379 |   0.0052 |   0.0031 |   0.0001 |   2.1739 |   1.1963 |  12.6196 |   0.8112 |  52.7948 |   0.8368 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 1
| 409,593 | 40 | 77 | 65,941,441 |   1.5381 |   0.0053 |   0.0065 |   0.0001 |   0.0360 |   0.0675 |   1.1893 |   0.0504 |   0.1846 |   0.0050 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 1
| 409,593 | 40 | 77 | 65,941,441 |   1.5516 |   0.0053 |   0.0054 |   0.0001 |   0.0366 |   0.0651 |   1.2020 |   0.0507 |   0.1872 |   0.0048 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 1
| 409,593 | 40 | 77 | 65,941,441 |   1.5472 |   0.0052 |   0.0049 |   0.0001 |   0.0390 |   0.0674 |   1.1868 |   0.0525 |   0.1912 |   0.0049 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 1
| 409,593 | 40 | 77 | 65,941,441 |   1.5426 |   0.0053 |   0.0036 |   0.0001 |   0.0367 |   0.0668 |   1.1818 |   0.0526 |   0.1944 |   0.0049 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 1
| 409,593 | 40 | 77 | 65,941,441 |   1.5332 |   0.0052 |   0.0039 |   0.0001 |   0.0382 |   0.0664 |   1.1762 |   0.0498 |   0.1925 |   0.0049 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 1
| 409,593 | 32 | 77 | 65,941,441 |   1.5171 |   0.0053 |   0.0036 |   0.0001 |   0.0408 |   0.0676 |   1.1501 |   0.0614 |   0.1864 |   0.0056 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 1
| 409,593 | 32 | 77 | 65,941,441 |   1.4962 |   0.0053 |   0.0036 |   0.0001 |   0.0403 |   0.0696 |   1.1299 |   0.0620 |   0.1833 |   0.0057 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 1
| 409,593 | 32 | 77 | 65,941,441 |   1.5192 |   0.0053 |   0.0037 |   0.0001 |   0.0393 |   0.0677 |   1.1507 |   0.0625 |   0.1880 |   0.0057 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 1
| 409,593 | 32 | 77 | 65,941,441 |   1.5123 |   0.0053 |   0.0033 |   0.0001 |   0.0418 |   0.0672 |   1.1435 |   0.0604 |   0.1883 |   0.0058 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 1
| 409,593 | 32 | 77 | 65,941,441 |   1.4971 |   0.0053 |   0.0036 |   0.0001 |   0.0393 |   0.0692 |   1.1411 |   0.0602 |   0.1764 |   0.0056 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 1
| 409,593 | 24 | 77 | 65,941,441 |   1.4333 |   0.0053 |   0.0038 |   0.0001 |   0.0492 |   0.0806 |   1.0369 |   0.0666 |   0.1881 |   0.0065 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 1
| 409,593 | 24 | 77 | 65,941,441 |   1.4329 |   0.0054 |   0.0036 |   0.0001 |   0.0472 |   0.0791 |   1.0452 |   0.0675 |   0.1820 |   0.0064 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 1
| 409,593 | 24 | 77 | 65,941,441 |   1.4378 |   0.0054 |   0.0035 |   0.0001 |   0.0473 |   0.0798 |   1.0417 |   0.0681 |   0.1888 |   0.0066 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 1
| 409,593 | 24 | 77 | 65,941,441 |   1.4388 |   0.0054 |   0.0037 |   0.0001 |   0.0494 |   0.0823 |   1.0370 |   0.0688 |   0.1893 |   0.0065 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 1
| 409,593 | 24 | 77 | 65,941,441 |   1.4413 |   0.0054 |   0.0035 |   0.0001 |   0.0484 |   0.0821 |   1.0437 |   0.0670 |   0.1881 |   0.0065 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 1
| 409,593 | 16 | 77 | 65,941,441 |   1.3015 |   0.0053 |   0.0033 |   0.0001 |   0.0401 |   0.0758 |   0.9566 |   0.0558 |   0.1586 |   0.0090 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 1
| 409,593 | 16 | 77 | 65,941,441 |   1.2971 |   0.0052 |   0.0035 |   0.0001 |   0.0406 |   0.0760 |   0.9558 |   0.0557 |   0.1545 |   0.0092 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 1
| 409,593 | 16 | 77 | 65,941,441 |   1.3018 |   0.0053 |   0.0032 |   0.0001 |   0.0396 |   0.0785 |   0.9596 |   0.0557 |   0.1538 |   0.0091 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 1
| 409,593 | 16 | 77 | 65,941,441 |   1.3185 |   0.0054 |   0.0035 |   0.0001 |   0.0403 |   0.0754 |   0.9541 |   0.0564 |   0.1776 |   0.0092 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 1
| 409,593 | 16 | 77 | 65,941,441 |   1.2970 |   0.0054 |   0.0032 |   0.0001 |   0.0397 |   0.0757 |   0.9532 |   0.0556 |   0.1580 |   0.0093 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 1
| 409,593 | 8 | 77 | 65,941,441 |   1.4619 |   0.0055 |   0.0035 |   0.0002 |   0.0620 |   0.0904 |   1.0521 |   0.0768 |   0.1583 |   0.0166 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 1
| 409,593 | 8 | 77 | 65,941,441 |   1.4635 |   0.0053 |   0.0035 |   0.0002 |   0.0609 |   0.0899 |   1.0547 |   0.0764 |   0.1590 |   0.0170 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 1
| 409,593 | 8 | 77 | 65,941,441 |   1.4679 |   0.0052 |   0.0035 |   0.0002 |   0.0613 |   0.0917 |   1.0518 |   0.0764 |   0.1644 |   0.0169 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 1
| 409,593 | 8 | 77 | 65,941,441 |   1.4649 |   0.0053 |   0.0032 |   0.0002 |   0.0613 |   0.0898 |   1.0524 |   0.0760 |   0.1632 |   0.0168 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 1
| 409,593 | 8 | 77 | 65,941,441 |   1.4536 |   0.0052 |   0.0033 |   0.0002 |   0.0619 |   0.0905 |   1.0311 |   0.0768 |   0.1712 |   0.0166 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 40 | 513 | 864,761,518 |  10.1764 |   0.0055 |   0.0090 |   0.0001 |   0.2876 |   0.4634 |   7.2010 |   0.3259 |   1.8485 |   0.0445 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 40 | 513 | 864,761,518 |  10.1728 |   0.0055 |   0.0054 |   0.0001 |   0.2917 |   0.4561 |   7.2478 |   0.3263 |   1.8015 |   0.0438 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 40 | 513 | 864,761,518 |  10.2578 |   0.0054 |   0.0048 |   0.0001 |   0.2919 |   0.4547 |   7.2743 |   0.3204 |   1.8668 |   0.0443 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 40 | 513 | 864,761,518 |  10.1507 |   0.0054 |   0.0043 |   0.0001 |   0.2835 |   0.4514 |   7.2419 |   0.3151 |   1.8092 |   0.0442 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 40 | 513 | 864,761,518 |  10.1132 |   0.0059 |   0.0036 |   0.0001 |   0.2784 |   0.4586 |   7.2123 |   0.3090 |   1.8048 |   0.0441 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 32 | 513 | 864,761,518 |  10.2057 |   0.0055 |   0.0057 |   0.0001 |   0.3182 |   0.4868 |   7.0839 |   0.3520 |   1.9050 |   0.0542 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 32 | 513 | 864,761,518 |  10.2578 |   0.0053 |   0.0037 |   0.0001 |   0.3071 |   0.4864 |   7.1223 |   0.3613 |   1.9209 |   0.0543 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 32 | 513 | 864,761,518 |  10.1220 |   0.0052 |   0.0036 |   0.0001 |   0.3064 |   0.4975 |   7.0358 |   0.3557 |   1.8665 |   0.0548 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 32 | 513 | 864,761,518 |  10.2652 |   0.0053 |   0.0036 |   0.0001 |   0.3146 |   0.4808 |   7.1467 |   0.3518 |   1.9121 |   0.0538 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 32 | 513 | 864,761,518 |  10.3423 |   0.0053 |   0.0036 |   0.0001 |   0.3135 |   0.4979 |   7.1838 |   0.3610 |   1.9264 |   0.0544 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 24 | 513 | 864,761,518 |  11.0349 |   0.0071 |   0.0053 |   0.0001 |   0.4006 |   0.5290 |   7.2596 |   0.4557 |   2.3104 |   0.0725 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 24 | 513 | 864,761,518 |  10.9552 |   0.0061 |   0.0067 |   0.0001 |   0.3980 |   0.5293 |   7.2072 |   0.4511 |   2.2903 |   0.0731 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 24 | 513 | 864,761,518 |  11.0520 |   0.0058 |   0.0037 |   0.0001 |   0.4101 |   0.5241 |   7.2641 |   0.4580 |   2.3166 |   0.0733 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 24 | 513 | 864,761,518 |  10.9967 |   0.0057 |   0.0035 |   0.0001 |   0.3766 |   0.5409 |   7.2309 |   0.4304 |   2.3391 |   0.0730 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 24 | 513 | 864,761,518 |  10.9994 |   0.0061 |   0.0037 |   0.0001 |   0.3919 |   0.5236 |   7.2444 |   0.4563 |   2.3057 |   0.0715 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 16 | 513 | 864,761,518 |  12.8997 |   0.0055 |   0.0060 |   0.0016 |   0.3756 |   0.5660 |   7.6371 |   0.5176 |   3.6649 |   0.1314 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 16 | 513 | 864,761,518 |  12.6780 |   0.0059 |   0.0033 |   0.0003 |   0.3800 |   0.5707 |   7.6472 |   0.5126 |   3.4568 |   0.1045 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 16 | 513 | 864,761,518 |  12.7032 |   0.0055 |   0.0033 |   0.0012 |   0.3871 |   0.5619 |   7.6558 |   0.5131 |   3.4733 |   0.1054 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 16 | 513 | 864,761,518 |  12.7115 |   0.0060 |   0.0033 |   0.0016 |   0.3811 |   0.5606 |   7.6884 |   0.5096 |   3.4331 |   0.1311 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 16 | 513 | 864,761,518 |  12.7302 |   0.0058 |   0.0033 |   0.0016 |   0.3783 |   0.5670 |   7.7298 |   0.5104 |   3.4334 |   0.1038 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 8 | 513 | 864,761,518 |  23.7095 |   0.0060 |   0.0067 |   0.0003 |   0.6948 |   0.7666 |   8.6591 |   0.7344 |  12.6038 |   0.2444 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 8 | 513 | 864,761,518 |  23.6344 |   0.0060 |   0.0035 |   0.0003 |   0.7104 |   0.7928 |   8.6773 |   0.7391 |  12.4637 |   0.2449 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 8 | 513 | 864,761,518 |  23.6975 |   0.0060 |   0.0034 |   0.0003 |   0.6924 |   0.7975 |   8.6901 |   0.7351 |  12.5419 |   0.2341 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 8 | 513 | 864,761,518 |  23.6764 |   0.0060 |   0.0034 |   0.0003 |   0.6992 |   0.7832 |   8.7578 |   0.7503 |  12.4725 |   0.2072 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 8 | 513 | 864,761,518 |  23.5769 |   0.0060 |   0.0034 |   0.0003 |   0.7045 |   0.7786 |   8.7006 |   0.7394 |  12.4429 |   0.2046 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
CUDA AWARE MPI - TWO PASS
------------------------------------------------------------------------------------
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 1
| 163,734 | 40 | 125 | 408,443,204 |   5.0927 |   0.0053 |   0.0080 |   0.0001 |   0.0990 |   0.4178 |   3.8542 |   0.1240 |   0.5711 |   0.0213 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 1
| 163,734 | 40 | 125 | 408,443,204 |   5.1314 |   0.0053 |   0.0053 |   0.0001 |   0.1013 |   0.4205 |   3.8743 |   0.1251 |   0.5832 |   0.0216 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 1
| 163,734 | 40 | 125 | 408,443,204 |   5.0882 |   0.0053 |   0.0046 |   0.0001 |   0.0999 |   0.4205 |   3.8416 |   0.1279 |   0.5714 |   0.0217 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 1
| 163,734 | 40 | 125 | 408,443,204 |   5.0769 |   0.0053 |   0.0036 |   0.0001 |   0.1034 |   0.4187 |   3.8271 |   0.1255 |   0.5746 |   0.0222 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 1
| 163,734 | 40 | 125 | 408,443,204 |   5.0899 |   0.0053 |   0.0037 |   0.0001 |   0.1003 |   0.4226 |   3.8392 |   0.1254 |   0.5753 |   0.0218 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 1
| 163,734 | 32 | 125 | 408,443,204 |   4.9618 |   0.0054 |   0.0055 |   0.0001 |   0.1351 |   0.4381 |   3.6375 |   0.1424 |   0.5765 |   0.0267 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 1
| 163,734 | 32 | 125 | 408,443,204 |   4.8833 |   0.0053 |   0.0036 |   0.0001 |   0.1403 |   0.4410 |   3.5764 |   0.1402 |   0.5536 |   0.0264 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 1
| 163,734 | 32 | 125 | 408,443,204 |   4.8394 |   0.0054 |   0.0037 |   0.0001 |   0.1371 |   0.4408 |   3.5320 |   0.1402 |   0.5579 |   0.0260 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 1
| 163,734 | 32 | 125 | 408,443,204 |   4.8459 |   0.0053 |   0.0037 |   0.0001 |   0.1330 |   0.4379 |   3.5517 |   0.1384 |   0.5527 |   0.0269 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 1
| 163,734 | 32 | 125 | 408,443,204 |   4.8813 |   0.0055 |   0.0037 |   0.0001 |   0.1356 |   0.4420 |   3.5775 |   0.1410 |   0.5533 |   0.0264 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 1
| 163,734 | 24 | 125 | 408,443,204 |   4.2987 |   0.0054 |   0.0055 |   0.0001 |   0.1540 |   0.4692 |   2.9276 |   0.1625 |   0.5445 |   0.0354 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 1
| 163,734 | 24 | 125 | 408,443,204 |   4.2965 |   0.0053 |   0.0036 |   0.0001 |   0.1606 |   0.4755 |   2.8946 |   0.1624 |   0.5630 |   0.0350 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 1
| 163,734 | 24 | 125 | 408,443,204 |   4.3020 |   0.0052 |   0.0036 |   0.0001 |   0.1537 |   0.4696 |   2.9358 |   0.1614 |   0.5416 |   0.0346 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 1
| 163,734 | 24 | 125 | 408,443,204 |   4.2735 |   0.0054 |   0.0035 |   0.0001 |   0.1584 |   0.4759 |   2.9003 |   0.1615 |   0.5375 |   0.0345 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 1
| 163,734 | 24 | 125 | 408,443,204 |   4.3137 |   0.0054 |   0.0035 |   0.0001 |   0.1591 |   0.4750 |   2.9233 |   0.1597 |   0.5559 |   0.0353 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 1
| 163,734 | 16 | 125 | 408,443,204 |   4.1404 |   0.0053 |   0.0051 |   0.0001 |   0.1517 |   0.5260 |   2.7268 |   0.1880 |   0.4915 |   0.0510 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 1
| 163,734 | 16 | 125 | 408,443,204 |   4.2106 |   0.0052 |   0.0032 |   0.0001 |   0.1503 |   0.5240 |   2.7092 |   0.1881 |   0.5829 |   0.0509 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 1
| 163,734 | 16 | 125 | 408,443,204 |   4.1338 |   0.0055 |   0.0036 |   0.0001 |   0.1500 |   0.5247 |   2.7258 |   0.1897 |   0.4877 |   0.0503 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 1
| 163,734 | 16 | 125 | 408,443,204 |   4.1808 |   0.0053 |   0.0033 |   0.0001 |   0.1501 |   0.5280 |   2.7542 |   0.1899 |   0.5022 |   0.0510 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 1
| 163,734 | 16 | 125 | 408,443,204 |   4.1695 |   0.0053 |   0.0034 |   0.0001 |   0.1513 |   0.5262 |   2.7346 |   0.1872 |   0.5145 |   0.0503 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 1
| 163,734 | 8 | 125 | 408,443,204 |   5.0951 |   0.0053 |   0.0049 |   0.0001 |   0.2069 |   0.7478 |   3.1353 |   0.3077 |   0.5939 |   0.0980 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 1
| 163,734 | 8 | 125 | 408,443,204 |   5.1059 |   0.0055 |   0.0033 |   0.0001 |   0.2062 |   0.7503 |   3.1439 |   0.3074 |   0.5949 |   0.0978 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 1
| 163,734 | 8 | 125 | 408,443,204 |   5.1298 |   0.0052 |   0.0031 |   0.0001 |   0.2063 |   0.7475 |   3.1510 |   0.3061 |   0.6156 |   0.0981 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 1
| 163,734 | 8 | 125 | 408,443,204 |   5.0863 |   0.0053 |   0.0031 |   0.0001 |   0.2039 |   0.7480 |   3.1286 |   0.3080 |   0.5960 |   0.0964 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 1
| 163,734 | 8 | 125 | 408,443,204 |   5.3974 |   0.0053 |   0.0032 |   0.0001 |   0.2064 |   0.7503 |   3.3685 |   0.3063 |   0.6623 |   0.0984 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 1
| 147,892 | 40 | 20 | 3,700,737,910 |   5.4238 |   0.0053 |   0.0079 |   0.0001 |   0.0848 |   1.2662 |   3.2956 |   0.2089 |   0.3826 |   0.1804 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 1
| 147,892 | 40 | 20 | 3,700,737,910 |   5.3966 |   0.0053 |   0.0046 |   0.0001 |   0.0841 |   1.2662 |   3.2831 |   0.2099 |   0.3638 |   0.1841 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 1
| 147,892 | 40 | 20 | 3,700,737,910 |   5.3722 |   0.0053 |   0.0036 |   0.0001 |   0.0834 |   1.2677 |   3.2631 |   0.2117 |   0.3555 |   0.1855 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 1
| 147,892 | 40 | 20 | 3,700,737,910 |   5.4495 |   0.0054 |   0.0035 |   0.0001 |   0.0843 |   1.2670 |   3.2699 |   0.2113 |   0.4308 |   0.1808 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 1
| 147,892 | 40 | 20 | 3,700,737,910 |   5.4291 |   0.0053 |   0.0037 |   0.0001 |   0.0869 |   1.2665 |   3.2844 |   0.2099 |   0.3944 |   0.1816 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 1
| 147,892 | 32 | 20 | 3,700,737,910 |   5.9033 |   0.0054 |   0.0050 |   0.0001 |   0.1090 |   1.4402 |   3.4916 |   0.2482 |   0.3771 |   0.2316 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 1
| 147,892 | 32 | 20 | 3,700,737,910 |   5.9122 |   0.0053 |   0.0036 |   0.0001 |   0.1078 |   1.4429 |   3.4594 |   0.2475 |   0.4185 |   0.2308 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 1
| 147,892 | 32 | 20 | 3,700,737,910 |   5.8608 |   0.0053 |   0.0035 |   0.0001 |   0.1053 |   1.4442 |   3.4917 |   0.2464 |   0.3444 |   0.2235 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 1
| 147,892 | 32 | 20 | 3,700,737,910 |   5.8496 |   0.0053 |   0.0036 |   0.0001 |   0.1057 |   1.4321 |   3.4789 |   0.2473 |   0.3556 |   0.2247 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 1
| 147,892 | 32 | 20 | 3,700,737,910 |   5.8710 |   0.0054 |   0.0036 |   0.0001 |   0.1052 |   1.4401 |   3.4738 |   0.2479 |   0.3745 |   0.2241 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 1
| 147,892 | 24 | 20 | 3,700,737,910 |   7.4962 |   0.0055 |   0.0051 |   0.0001 |   0.1332 |   1.7661 |   4.2658 |   0.3337 |   0.6998 |   0.2920 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 1
| 147,892 | 24 | 20 | 3,700,737,910 |   7.3704 |   0.0055 |   0.0036 |   0.0001 |   0.1288 |   1.7509 |   4.2252 |   0.3358 |   0.6254 |   0.2989 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 1
| 147,892 | 24 | 20 | 3,700,737,910 |   7.4097 |   0.0055 |   0.0036 |   0.0001 |   0.1328 |   1.7580 |   4.1945 |   0.3325 |   0.6905 |   0.2958 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 1
| 147,892 | 24 | 20 | 3,700,737,910 |   7.5657 |   0.0053 |   0.0033 |   0.0001 |   0.1333 |   1.7639 |   4.4273 |   0.3339 |   0.6095 |   0.2924 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 1
| 147,892 | 24 | 20 | 3,700,737,910 |   7.4324 |   0.0055 |   0.0036 |   0.0001 |   0.1311 |   1.7655 |   4.2688 |   0.3334 |   0.6344 |   0.2937 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 1
| 147,892 | 16 | 20 | 3,700,737,910 |   9.7538 |   0.0053 |   0.0057 |   0.0001 |   0.1930 |   2.3802 |   4.8956 |   0.5400 |   1.3062 |   0.4334 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 1
| 147,892 | 16 | 20 | 3,700,737,910 |   9.3120 |   0.0052 |   0.0032 |   0.0001 |   0.1892 |   2.4000 |   4.7877 |   0.4821 |   1.0123 |   0.4354 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 1
| 147,892 | 16 | 20 | 3,700,737,910 |   9.9107 |   0.0053 |   0.0034 |   0.0001 |   0.1915 |   2.3886 |   4.9280 |   0.5085 |   1.3846 |   0.5042 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 1
| 147,892 | 16 | 20 | 3,700,737,910 |  10.0182 |   0.0052 |   0.0032 |   0.0001 |   0.1889 |   2.3998 |   4.8881 |   0.6544 |   1.3928 |   0.4889 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 1
| 147,892 | 16 | 20 | 3,700,737,910 |   9.8528 |   0.0053 |   0.0032 |   0.0001 |   0.1895 |   2.3788 |   4.8390 |   0.6035 |   1.3243 |   0.5125 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 1
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 1
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 1
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 1
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 1
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 1
| 165,435 | 40 | 588 | 3,137,407,481 |  20.6808 |   0.0054 |   0.0074 |   0.0001 |   0.5480 |   0.9623 |  13.6875 |   0.4237 |   4.8760 |   0.1779 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 1
| 165,435 | 40 | 588 | 3,137,407,481 |  20.6922 |   0.0052 |   0.0049 |   0.0001 |   0.5558 |   0.9674 |  13.7300 |   0.4295 |   4.8295 |   0.1747 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 1
| 165,435 | 40 | 588 | 3,137,407,481 |  20.7131 |   0.0052 |   0.0036 |   0.0001 |   0.5609 |   0.9677 |  13.7323 |   0.4280 |   4.8386 |   0.1802 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 1
| 165,435 | 40 | 588 | 3,137,407,481 |  20.5886 |   0.0053 |   0.0036 |   0.0001 |   0.5435 |   0.9631 |  13.7346 |   0.4213 |   4.7444 |   0.1765 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 1
| 165,435 | 40 | 588 | 3,137,407,481 |  20.6394 |   0.0053 |   0.0034 |   0.0001 |   0.5563 |   0.9635 |  13.6858 |   0.4279 |   4.8476 |   0.1527 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 1
| 165,435 | 32 | 588 | 3,137,407,481 |  22.4153 |   0.0054 |   0.0051 |   0.0001 |   0.6570 |   1.0962 |  13.3313 |   0.5099 |   6.6263 |   0.1892 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 1
| 165,435 | 32 | 588 | 3,137,407,481 |  22.4787 |   0.0053 |   0.0036 |   0.0001 |   0.6679 |   1.1107 |  13.4481 |   0.5063 |   6.5241 |   0.2163 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 1
| 165,435 | 32 | 588 | 3,137,407,481 |  22.4471 |   0.0054 |   0.0036 |   0.0001 |   0.6659 |   1.0874 |  13.4854 |   0.5186 |   6.4935 |   0.1909 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 1
| 165,435 | 32 | 588 | 3,137,407,481 |  22.1631 |   0.0053 |   0.0037 |   0.0001 |   0.6327 |   1.0560 |  13.1558 |   0.5017 |   6.6192 |   0.1924 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 1
| 165,435 | 32 | 588 | 3,137,407,481 |  22.4614 |   0.0053 |   0.0036 |   0.0001 |   0.6722 |   1.0834 |  13.4060 |   0.5060 |   6.5966 |   0.1920 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 1
| 165,435 | 24 | 588 | 3,137,407,481 |  26.5498 |   0.0052 |   0.0036 |   0.0001 |   0.8531 |   1.0994 |  12.8048 |   0.6436 |  10.8494 |   0.2943 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 1
| 165,435 | 24 | 588 | 3,137,407,481 |  26.6176 |   0.0102 |   0.0146 |   0.0001 |   0.8384 |   1.0799 |  12.7329 |   0.6554 |  11.0515 |   0.2493 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 1
| 165,435 | 24 | 588 | 3,137,407,481 |  26.9350 |   0.0053 |   0.0044 |   0.0001 |   0.9097 |   1.1163 |  12.8345 |   0.7079 |  11.1056 |   0.2558 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 1
| 165,435 | 24 | 588 | 3,137,407,481 |  26.6923 |   0.0053 |   0.0037 |   0.0001 |   0.8731 |   1.0955 |  12.7763 |   0.6550 |  10.9994 |   0.2877 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 1
| 165,435 | 24 | 588 | 3,137,407,481 |  26.6311 |   0.0053 |   0.0036 |   0.0001 |   0.8547 |   1.1012 |  12.8829 |   0.6422 |  10.8917 |   0.2530 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 1
| 165,435 | 16 | 588 | 3,137,407,481 |  37.1644 |   0.0053 |   0.0032 |   0.0001 |   1.1691 |   1.0496 |  12.5657 |   0.6423 |  21.2984 |   0.4339 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 1
| 165,435 | 16 | 588 | 3,137,407,481 |  36.6810 |   0.0053 |   0.0032 |   0.0001 |   1.2090 |   1.0270 |  12.3238 |   0.6285 |  21.1179 |   0.3694 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 1
| 165,435 | 16 | 588 | 3,137,407,481 |  36.5502 |   0.0053 |   0.0034 |   0.0001 |   1.1869 |   1.0365 |  12.2523 |   0.6398 |  20.9941 |   0.4353 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 1
| 165,435 | 16 | 588 | 3,137,407,481 |  36.6296 |   0.0053 |   0.0034 |   0.0001 |   1.1211 |   1.0430 |  12.3725 |   0.7008 |  20.9462 |   0.4406 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 1
| 165,435 | 16 | 588 | 3,137,407,481 |  37.2584 |   0.0053 |   0.0031 |   0.0001 |   1.1400 |   1.0176 |  13.4981 |   0.6448 |  20.5828 |   0.3698 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 1
| 165,435 | 8 | 588 | 3,137,407,481 |  82.2824 |   0.0052 |   0.0032 |   0.0001 |   1.7643 |   1.3337 |  12.9901 |   0.7399 |  64.6525 |   0.7967 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 1
| 165,435 | 8 | 588 | 3,137,407,481 |  83.3841 |   0.0052 |   0.0031 |   0.0000 |   1.5475 |   1.3048 |  12.7553 |   0.7497 |  66.1718 |   0.8497 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 1
| 165,435 | 8 | 588 | 3,137,407,481 |  79.8064 |   0.0052 |   0.0034 |   0.0001 |   2.0693 |   1.3029 |  13.2817 |   0.7254 |  61.5743 |   0.8475 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 1
| 165,435 | 8 | 588 | 3,137,407,481 |  85.1394 |   0.0053 |   0.0034 |   0.0001 |   2.3502 |   1.3160 |  14.1432 |   0.7242 |  65.8215 |   0.7790 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 1
| 165,435 | 8 | 588 | 3,137,407,481 |  80.9634 |   0.0052 |   0.0034 |   0.0000 |   1.9582 |   1.3263 |  13.1646 |   0.7636 |  62.8908 |   0.8546 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 1
| 409,593 | 40 | 77 | 65,941,441 |   2.3280 |   0.0053 |   0.0080 |   0.0001 |   0.0374 |   0.0950 |   1.8715 |   0.0417 |   0.2722 |   0.0048 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 1
| 409,593 | 40 | 77 | 65,941,441 |   2.3341 |   0.0053 |   0.0050 |   0.0001 |   0.0373 |   0.0999 |   1.8730 |   0.0380 |   0.2758 |   0.0049 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 1
| 409,593 | 40 | 77 | 65,941,441 |   2.3122 |   0.0053 |   0.0037 |   0.0001 |   0.0357 |   0.0992 |   1.8621 |   0.0384 |   0.2666 |   0.0048 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 1
| 409,593 | 40 | 77 | 65,941,441 |   2.3341 |   0.0052 |   0.0037 |   0.0001 |   0.0338 |   0.0964 |   1.8839 |   0.0377 |   0.2723 |   0.0048 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 1
| 409,593 | 40 | 77 | 65,941,441 |   2.3239 |   0.0053 |   0.0037 |   0.0001 |   0.0388 |   0.0942 |   1.8735 |   0.0382 |   0.2692 |   0.0047 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 1
| 409,593 | 32 | 77 | 65,941,441 |   2.3774 |   0.0053 |   0.0051 |   0.0001 |   0.0401 |   0.1002 |   1.8886 |   0.0447 |   0.2927 |   0.0057 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 1
| 409,593 | 32 | 77 | 65,941,441 |   2.3803 |   0.0053 |   0.0037 |   0.0001 |   0.0419 |   0.0953 |   1.9092 |   0.0420 |   0.2814 |   0.0052 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 1
| 409,593 | 32 | 77 | 65,941,441 |   2.3317 |   0.0053 |   0.0036 |   0.0001 |   0.0343 |   0.0830 |   1.8906 |   0.0406 |   0.2722 |   0.0058 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 1
| 409,593 | 32 | 77 | 65,941,441 |   2.3265 |   0.0054 |   0.0035 |   0.0001 |   0.0409 |   0.0946 |   1.8837 |   0.0410 |   0.2552 |   0.0055 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 1
| 409,593 | 32 | 77 | 65,941,441 |   2.3436 |   0.0053 |   0.0037 |   0.0001 |   0.0394 |   0.0977 |   1.8689 |   0.0465 |   0.2799 |   0.0058 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 1
| 409,593 | 24 | 77 | 65,941,441 |   2.0043 |   0.0056 |   0.0054 |   0.0001 |   0.0421 |   0.1083 |   1.5359 |   0.0552 |   0.2506 |   0.0065 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 1
| 409,593 | 24 | 77 | 65,941,441 |   2.0103 |   0.0054 |   0.0035 |   0.0001 |   0.0479 |   0.1056 |   1.5405 |   0.0570 |   0.2473 |   0.0066 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 1
| 409,593 | 24 | 77 | 65,941,441 |   2.0083 |   0.0054 |   0.0037 |   0.0001 |   0.0472 |   0.1093 |   1.5362 |   0.0568 |   0.2467 |   0.0066 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 1
| 409,593 | 24 | 77 | 65,941,441 |   2.0714 |   0.0054 |   0.0036 |   0.0001 |   0.0468 |   0.1106 |   1.5923 |   0.0523 |   0.2568 |   0.0070 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 1
| 409,593 | 24 | 77 | 65,941,441 |   2.0034 |   0.0055 |   0.0037 |   0.0001 |   0.0488 |   0.1100 |   1.5307 |   0.0521 |   0.2496 |   0.0065 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 1
| 409,593 | 16 | 77 | 65,941,441 |   1.9935 |   0.0053 |   0.0051 |   0.0001 |   0.0422 |   0.1027 |   1.4866 |   0.0625 |   0.2849 |   0.0093 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 1
| 409,593 | 16 | 77 | 65,941,441 |   1.9412 |   0.0052 |   0.0035 |   0.0001 |   0.0409 |   0.1052 |   1.4769 |   0.0596 |   0.2443 |   0.0091 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 1
| 409,593 | 16 | 77 | 65,941,441 |   1.9238 |   0.0054 |   0.0032 |   0.0001 |   0.0409 |   0.1016 |   1.4663 |   0.0568 |   0.2436 |   0.0091 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 1
| 409,593 | 16 | 77 | 65,941,441 |   1.9216 |   0.0052 |   0.0036 |   0.0001 |   0.0413 |   0.1023 |   1.4679 |   0.0587 |   0.2368 |   0.0091 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 1
| 409,593 | 16 | 77 | 65,941,441 |   1.9477 |   0.0054 |   0.0035 |   0.0001 |   0.0414 |   0.1035 |   1.4774 |   0.0573 |   0.2535 |   0.0090 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 1
| 409,593 | 8 | 77 | 65,941,441 |   1.9934 |   0.0053 |   0.0060 |   0.0003 |   0.0636 |   0.1436 |   1.4378 |   0.0740 |   0.2519 |   0.0167 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 1
| 409,593 | 8 | 77 | 65,941,441 |   1.9838 |   0.0052 |   0.0033 |   0.0003 |   0.0614 |   0.1332 |   1.4789 |   0.0731 |   0.2149 |   0.0168 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 1
| 409,593 | 8 | 77 | 65,941,441 |   1.9958 |   0.0053 |   0.0033 |   0.0003 |   0.0619 |   0.1340 |   1.4783 |   0.0733 |   0.2257 |   0.0170 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 1
| 409,593 | 8 | 77 | 65,941,441 |   1.9661 |   0.0052 |   0.0036 |   0.0003 |   0.0620 |   0.1336 |   1.4769 |   0.0728 |   0.1985 |   0.0168 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 1
| 409,593 | 8 | 77 | 65,941,441 |   1.9933 |   0.0052 |   0.0032 |   0.0003 |   0.0620 |   0.1332 |   1.4956 |   0.0732 |   0.2071 |   0.0166 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 40 | 513 | 864,761,518 |  15.6047 |   0.0053 |   0.0056 |   0.0001 |   0.2860 |   0.7284 |  11.9104 |   0.3002 |   2.3305 |   0.0438 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 40 | 513 | 864,761,518 |  15.8549 |   0.0052 |   0.0038 |   0.0001 |   0.2929 |   0.7427 |  12.1098 |   0.2997 |   2.3601 |   0.0445 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 40 | 513 | 864,761,518 |  15.6996 |   0.0053 |   0.0037 |   0.0001 |   0.2931 |   0.7343 |  11.9601 |   0.3007 |   2.3616 |   0.0445 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 40 | 513 | 864,761,518 |  15.7254 |   0.0053 |   0.0039 |   0.0001 |   0.2888 |   0.7126 |  11.9962 |   0.3009 |   2.3776 |   0.0439 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 40 | 513 | 864,761,518 |  15.8029 |   0.0053 |   0.0036 |   0.0001 |   0.2919 |   0.7245 |  12.0422 |   0.3082 |   2.3867 |   0.0441 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 32 | 513 | 864,761,518 |  13.9662 |   0.0068 |   0.0054 |   0.0001 |   0.3481 |   0.7976 |  10.2049 |   0.2942 |   2.2608 |   0.0537 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 32 | 513 | 864,761,518 |  14.1887 |   0.0059 |   0.0036 |   0.0001 |   0.3493 |   0.8103 |  10.3719 |   0.2921 |   2.3044 |   0.0548 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 32 | 513 | 864,761,518 |  14.1748 |   0.0055 |   0.0038 |   0.0001 |   0.3446 |   0.8118 |  10.3651 |   0.2964 |   2.2980 |   0.0535 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 32 | 513 | 864,761,518 |  14.2158 |   0.0067 |   0.0037 |   0.0001 |   0.3520 |   0.8236 |  10.3963 |   0.2878 |   2.2957 |   0.0537 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 32 | 513 | 864,761,518 |  13.9076 |   0.0067 |   0.0037 |   0.0001 |   0.3523 |   0.8063 |  10.1238 |   0.2942 |   2.2699 |   0.0544 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 24 | 513 | 864,761,518 |  14.5151 |   0.0053 |   0.0037 |   0.0001 |   0.3836 |   0.9229 |  10.1283 |   0.3710 |   2.6313 |   0.0726 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 24 | 513 | 864,761,518 |  14.5693 |   0.0056 |   0.0037 |   0.0001 |   0.3815 |   0.9222 |  10.1707 |   0.3726 |   2.6452 |   0.0714 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 24 | 513 | 864,761,518 |  14.5168 |   0.0054 |   0.0036 |   0.0001 |   0.3817 |   0.9251 |  10.1054 |   0.3762 |   2.6510 |   0.0719 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 24 | 513 | 864,761,518 |  14.5052 |   0.0055 |   0.0037 |   0.0001 |   0.3785 |   0.9185 |  10.1484 |   0.3642 |   2.6181 |   0.0720 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 24 | 513 | 864,761,518 |  14.4749 |   0.0054 |   0.0037 |   0.0001 |   0.3745 |   0.9236 |  10.0994 |   0.3681 |   2.6308 |   0.0729 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 16 | 513 | 864,761,518 |  15.3151 |   0.0055 |   0.0037 |   0.0016 |   0.4219 |   1.0052 |  10.2021 |   0.4971 |   3.0762 |   0.1055 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 16 | 513 | 864,761,518 |  15.3226 |   0.0056 |   0.0036 |   0.0017 |   0.4240 |   1.0108 |  10.1984 |   0.4882 |   3.0894 |   0.1044 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 16 | 513 | 864,761,518 |  15.2654 |   0.0055 |   0.0035 |   0.0016 |   0.4161 |   1.0165 |  10.1180 |   0.4856 |   3.1168 |   0.1052 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 16 | 513 | 864,761,518 |  15.2252 |   0.0056 |   0.0037 |   0.0007 |   0.4238 |   1.0035 |  10.1460 |   0.4885 |   3.0536 |   0.1035 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 16 | 513 | 864,761,518 |  15.2268 |   0.0056 |   0.0034 |   0.0016 |   0.4235 |   0.9946 |  10.1567 |   0.4808 |   3.0599 |   0.1042 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 8 | 513 | 864,761,518 |  24.3730 |   0.0056 |   0.0034 |   0.0003 |   0.6419 |   1.4664 |  10.6298 |   0.7236 |  10.6653 |   0.2400 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 8 | 513 | 864,761,518 |  24.2783 |   0.0056 |   0.0033 |   0.0003 |   0.6466 |   1.4618 |  10.6216 |   0.7126 |  10.6298 |   0.2001 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 8 | 513 | 864,761,518 |  24.2747 |   0.0054 |   0.0034 |   0.0003 |   0.6501 |   1.4594 |  10.6617 |   0.7214 |  10.5352 |   0.2411 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 8 | 513 | 864,761,518 |  24.3291 |   0.0055 |   0.0038 |   0.0003 |   0.6633 |   1.4578 |  10.6638 |   0.7187 |  10.5830 |   0.2367 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 8 | 513 | 864,761,518 |  24.1640 |   0.0056 |   0.0034 |   0.0003 |   0.6398 |   1.4436 |  10.6109 |   0.7197 |  10.5425 |   0.2016 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
Polaris job ended at: 2024-08-15 09:56:43
Total time taken: 2 hour(s), 9 minute(s), 17 second(s)
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> JOB ENDED >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

```
