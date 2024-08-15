```
cat sg-merged.output
Polaris job started at: 2024-08-15 10:31:42
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> JOB STARTED >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
CC sg.cu -o sg.out -lm -O3
TRADITIONAL MPI - SORTING
------------------------------------------------------------------------------------
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 1
| 163,734 | 40 | 125 | 408,443,204 |   1.9293 |   0.7033 |   0.0095 |   0.0001 |   0.0775 |   0.1376 |   0.5908 |   0.1445 |   0.2534 |   0.0222 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 1
| 163,734 | 40 | 125 | 408,443,204 |   1.9400 |   0.7035 |   0.0052 |   0.0001 |   0.0770 |   0.1376 |   0.6008 |   0.1444 |   0.2543 |   0.0223 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 1
| 163,734 | 40 | 125 | 408,443,204 |   2.0449 |   0.7458 |   0.0032 |   0.0001 |   0.0868 |   0.1393 |   0.6446 |   0.1479 |   0.2583 |   0.0221 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 1
| 163,734 | 40 | 125 | 408,443,204 |   1.9265 |   0.7018 |   0.0033 |   0.0001 |   0.0780 |   0.1375 |   0.5890 |   0.1443 |   0.2538 |   0.0220 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 1
| 163,734 | 40 | 125 | 408,443,204 |   1.9392 |   0.7039 |   0.0033 |   0.0001 |   0.0767 |   0.1382 |   0.5977 |   0.1447 |   0.2555 |   0.0224 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 1
| 163,734 | 32 | 125 | 408,443,204 |   2.0394 |   0.6982 |   0.0053 |   0.0001 |   0.0882 |   0.1455 |   0.6577 |   0.1595 |   0.2634 |   0.0267 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 1
| 163,734 | 32 | 125 | 408,443,204 |   2.0501 |   0.7095 |   0.0033 |   0.0001 |   0.0885 |   0.1456 |   0.6578 |   0.1587 |   0.2628 |   0.0272 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 1
| 163,734 | 32 | 125 | 408,443,204 |   2.0484 |   0.7016 |   0.0034 |   0.0001 |   0.0886 |   0.1459 |   0.6595 |   0.1610 |   0.2650 |   0.0266 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 1
| 163,734 | 32 | 125 | 408,443,204 |   2.0428 |   0.7011 |   0.0033 |   0.0001 |   0.0888 |   0.1455 |   0.6568 |   0.1584 |   0.2654 |   0.0268 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 1
| 163,734 | 32 | 125 | 408,443,204 |   2.0655 |   0.7095 |   0.0036 |   0.0001 |   0.0883 |   0.1463 |   0.6726 |   0.1568 |   0.2648 |   0.0270 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 1
| 163,734 | 24 | 125 | 408,443,204 |   2.3650 |   0.7027 |   0.0062 |   0.0001 |   0.1019 |   0.1614 |   0.8755 |   0.1731 |   0.3154 |   0.0350 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 1
| 163,734 | 24 | 125 | 408,443,204 |   2.3546 |   0.7045 |   0.0033 |   0.0001 |   0.1018 |   0.1619 |   0.8648 |   0.1722 |   0.3144 |   0.0350 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 1
| 163,734 | 24 | 125 | 408,443,204 |   2.3389 |   0.7019 |   0.0033 |   0.0001 |   0.1020 |   0.1605 |   0.8610 |   0.1719 |   0.3069 |   0.0347 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 1
| 163,734 | 24 | 125 | 408,443,204 |   2.3669 |   0.7088 |   0.0033 |   0.0001 |   0.1017 |   0.1604 |   0.8816 |   0.1743 |   0.3053 |   0.0347 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 1
| 163,734 | 24 | 125 | 408,443,204 |   2.3470 |   0.7062 |   0.0031 |   0.0001 |   0.1010 |   0.1610 |   0.8652 |   0.1740 |   0.3042 |   0.0353 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 1
| 163,734 | 16 | 125 | 408,443,204 |   2.7858 |   0.7344 |   0.0049 |   0.0001 |   0.1066 |   0.1660 |   1.1569 |   0.2035 |   0.3665 |   0.0519 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 1
| 163,734 | 16 | 125 | 408,443,204 |   2.7573 |   0.7027 |   0.0029 |   0.0001 |   0.1072 |   0.1674 |   1.1584 |   0.1998 |   0.3708 |   0.0508 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 1
| 163,734 | 16 | 125 | 408,443,204 |   2.7498 |   0.7025 |   0.0031 |   0.0001 |   0.1083 |   0.1656 |   1.1522 |   0.2007 |   0.3691 |   0.0513 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 1
| 163,734 | 16 | 125 | 408,443,204 |   2.7419 |   0.6985 |   0.0029 |   0.0001 |   0.1067 |   0.1674 |   1.1469 |   0.2030 |   0.3683 |   0.0510 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 1
| 163,734 | 16 | 125 | 408,443,204 |   2.7353 |   0.6984 |   0.0029 |   0.0001 |   0.1081 |   0.1675 |   1.1335 |   0.2036 |   0.3731 |   0.0509 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 1
| 163,734 | 8 | 125 | 408,443,204 |   4.3025 |   0.6967 |   0.0047 |   0.0001 |   0.1367 |   0.2005 |   2.2754 |   0.3081 |   0.5881 |   0.0969 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 1
| 163,734 | 8 | 125 | 408,443,204 |   4.2420 |   0.6620 |   0.0029 |   0.0001 |   0.1333 |   0.1947 |   2.2853 |   0.3022 |   0.5669 |   0.0976 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 1
| 163,734 | 8 | 125 | 408,443,204 |   4.4492 |   0.6813 |   0.0029 |   0.0001 |   0.1322 |   0.1962 |   2.3800 |   0.3006 |   0.6617 |   0.0970 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 1
| 163,734 | 8 | 125 | 408,443,204 |   4.2515 |   0.6654 |   0.0029 |   0.0001 |   0.1312 |   0.1947 |   2.2900 |   0.2968 |   0.5729 |   0.1004 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 1
| 163,734 | 8 | 125 | 408,443,204 |   4.2808 |   0.6695 |   0.0028 |   0.0001 |   0.1304 |   0.1945 |   2.3059 |   0.2987 |   0.5826 |   0.0991 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 1
| 147,892 | 40 | 20 | 3,700,737,910 |   4.3181 |   0.7029 |   0.0063 |   0.0001 |   0.0655 |   0.0635 |   2.8364 |   0.2523 |   0.2142 |   0.1832 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 1
| 147,892 | 40 | 20 | 3,700,737,910 |   4.3386 |   0.6979 |   0.0033 |   0.0001 |   0.0658 |   0.0676 |   2.8598 |   0.2513 |   0.2091 |   0.1870 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 1
| 147,892 | 40 | 20 | 3,700,737,910 |   4.3341 |   0.6995 |   0.0036 |   0.0001 |   0.0664 |   0.0636 |   2.8448 |   0.2524 |   0.2206 |   0.1868 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 1
| 147,892 | 40 | 20 | 3,700,737,910 |   4.2921 |   0.6915 |   0.0034 |   0.0001 |   0.0658 |   0.0649 |   2.8217 |   0.2519 |   0.2162 |   0.1801 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 1
| 147,892 | 40 | 20 | 3,700,737,910 |   4.2807 |   0.6831 |   0.0031 |   0.0001 |   0.0666 |   0.0636 |   2.8169 |   0.2530 |   0.2157 |   0.1818 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 1
| 147,892 | 32 | 20 | 3,700,737,910 |   5.0924 |   0.6816 |   0.0056 |   0.0001 |   0.0789 |   0.0747 |   3.4930 |   0.3007 |   0.2398 |   0.2236 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 1
| 147,892 | 32 | 20 | 3,700,737,910 |   5.1023 |   0.6757 |   0.0033 |   0.0001 |   0.0815 |   0.0741 |   3.5022 |   0.3019 |   0.2448 |   0.2220 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 1
| 147,892 | 32 | 20 | 3,700,737,910 |   5.1160 |   0.6739 |   0.0033 |   0.0001 |   0.0841 |   0.0737 |   3.5061 |   0.3027 |   0.2482 |   0.2271 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 1
| 147,892 | 32 | 20 | 3,700,737,910 |   5.1210 |   0.6851 |   0.0033 |   0.0001 |   0.0812 |   0.0759 |   3.5017 |   0.3021 |   0.2499 |   0.2249 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 1
| 147,892 | 32 | 20 | 3,700,737,910 |   5.1051 |   0.6776 |   0.0033 |   0.0001 |   0.0823 |   0.0743 |   3.5015 |   0.3028 |   0.2417 |   0.2249 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 1
| 147,892 | 24 | 20 | 3,700,737,910 |   6.4794 |   0.6786 |   0.0050 |   0.0001 |   0.1011 |   0.0914 |   4.6012 |   0.3910 |   0.3221 |   0.2938 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 1
| 147,892 | 24 | 20 | 3,700,737,910 |   6.4984 |   0.6724 |   0.0029 |   0.0001 |   0.1007 |   0.0926 |   4.6065 |   0.3900 |   0.3409 |   0.2952 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 1
| 147,892 | 24 | 20 | 3,700,737,910 |   6.5104 |   0.6696 |   0.0032 |   0.0001 |   0.1002 |   0.0910 |   4.6363 |   0.3906 |   0.3269 |   0.2958 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 1
| 147,892 | 24 | 20 | 3,700,737,910 |   6.4812 |   0.6715 |   0.0031 |   0.0001 |   0.1008 |   0.0922 |   4.6089 |   0.3923 |   0.3231 |   0.2923 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 1
| 147,892 | 24 | 20 | 3,700,737,910 |   6.4951 |   0.6655 |   0.0034 |   0.0001 |   0.0988 |   0.0912 |   4.6243 |   0.3975 |   0.3235 |   0.2942 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 1
| 147,892 | 16 | 20 | 3,700,737,910 |   9.7230 |   0.6614 |   0.0051 |   0.0001 |   0.1384 |   0.1259 |   6.8422 |   0.5820 |   0.9322 |   0.4408 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 1
| 147,892 | 16 | 20 | 3,700,737,910 |   9.8210 |   0.6494 |   0.0029 |   0.0001 |   0.1446 |   0.1255 |   6.8921 |   0.5856 |   0.9767 |   0.4470 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 1
| 147,892 | 16 | 20 | 3,700,737,910 |   9.7326 |   0.6578 |   0.0032 |   0.0001 |   0.1413 |   0.1294 |   6.8885 |   0.5816 |   0.8992 |   0.4348 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 1
| 147,892 | 16 | 20 | 3,700,737,910 |   9.7917 |   0.6609 |   0.0030 |   0.0001 |   0.1430 |   0.1317 |   6.8743 |   0.5877 |   0.9577 |   0.4363 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 1
| 147,892 | 16 | 20 | 3,700,737,910 |   9.7810 |   0.6437 |   0.0031 |   0.0001 |   0.1377 |   0.1307 |   6.8792 |   0.5774 |   0.9239 |   0.4882 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 1
| 147,892 | 8 | 20 | 3,700,737,910 |  21.4023 |   0.6447 |   0.0046 |   0.0001 |   0.2580 |   0.4074 |  12.9547 |   1.3228 |   4.8093 |   1.0053 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 1
| 147,892 | 8 | 20 | 3,700,737,910 |  21.1158 |   0.6137 |   0.0030 |   0.0001 |   0.2743 |   0.3458 |  12.9635 |   1.3796 |   4.6111 |   0.9277 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 1
| 147,892 | 8 | 20 | 3,700,737,910 |  21.0358 |   0.6054 |   0.0029 |   0.0001 |   0.2872 |   0.3532 |  12.9368 |   1.3172 |   4.6126 |   0.9232 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 1
| 147,892 | 8 | 20 | 3,700,737,910 |  21.1144 |   0.6016 |   0.0031 |   0.0001 |   0.2707 |   0.3561 |  12.9681 |   1.3124 |   4.6644 |   0.9410 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 1
| 147,892 | 8 | 20 | 3,700,737,910 |  21.0876 |   0.6017 |   0.0029 |   0.0001 |   0.2714 |   0.3487 |  12.9286 |   1.4374 |   4.5634 |   0.9364 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 1
| 165,435 | 40 | 588 | 3,137,407,481 |  17.2297 |   0.7037 |   0.0061 |   0.0001 |   0.4264 |   0.6502 |   2.2589 |   0.5632 |  12.4534 |   0.1737 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 1
| 165,435 | 40 | 588 | 3,137,407,481 |  17.1068 |   0.7009 |   0.0033 |   0.0001 |   0.4259 |   0.6355 |   2.2049 |   0.5626 |  12.4286 |   0.1483 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 1
| 165,435 | 40 | 588 | 3,137,407,481 |  17.1841 |   0.7019 |   0.0035 |   0.0001 |   0.4174 |   0.6435 |   2.2507 |   0.5577 |  12.4674 |   0.1454 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 1
| 165,435 | 40 | 588 | 3,137,407,481 |  17.1884 |   0.7033 |   0.0032 |   0.0001 |   0.4225 |   0.6562 |   2.2820 |   0.5653 |  12.3851 |   0.1740 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 1
| 165,435 | 40 | 588 | 3,137,407,481 |  17.1687 |   0.7063 |   0.0033 |   0.0001 |   0.4455 |   0.6379 |   2.2593 |   0.5590 |  12.4158 |   0.1449 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 1
| 165,435 | 32 | 588 | 3,137,407,481 |  17.6986 |   0.7043 |   0.0050 |   0.0001 |   0.4915 |   0.7065 |   2.5203 |   0.5889 |  12.4968 |   0.1902 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 1
| 165,435 | 32 | 588 | 3,137,407,481 |  17.7111 |   0.7007 |   0.0030 |   0.0001 |   0.4945 |   0.7331 |   2.5840 |   0.6201 |  12.3643 |   0.2144 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 1
| 165,435 | 32 | 588 | 3,137,407,481 |  17.6941 |   0.6992 |   0.0032 |   0.0001 |   0.4979 |   0.7143 |   2.5208 |   0.5939 |  12.4773 |   0.1907 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 1
| 165,435 | 32 | 588 | 3,137,407,481 |  17.6584 |   0.7017 |   0.0033 |   0.0001 |   0.4926 |   0.7186 |   2.5161 |   0.5998 |  12.4431 |   0.1865 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 1
| 165,435 | 32 | 588 | 3,137,407,481 |  17.6574 |   0.6950 |   0.0033 |   0.0001 |   0.4905 |   0.7127 |   2.5709 |   0.6105 |  12.3868 |   0.1909 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 1
| 165,435 | 24 | 588 | 3,137,407,481 |  23.0786 |   0.7024 |   0.0049 |   0.0001 |   0.5940 |   0.7402 |   3.0478 |   0.6746 |  17.0703 |   0.2492 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 1
| 165,435 | 24 | 588 | 3,137,407,481 |  23.0295 |   0.6942 |   0.0033 |   0.0001 |   0.5910 |   0.7495 |   3.0223 |   0.6918 |  17.0287 |   0.2519 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 1
| 165,435 | 24 | 588 | 3,137,407,481 |  23.0486 |   0.6879 |   0.0033 |   0.0001 |   0.5933 |   0.7272 |   3.0322 |   0.6630 |  17.0946 |   0.2503 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 1
| 165,435 | 24 | 588 | 3,137,407,481 |  23.0089 |   0.7013 |   0.0030 |   0.0001 |   0.6061 |   0.7260 |   2.9895 |   0.6854 |  17.0121 |   0.2884 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 1
| 165,435 | 24 | 588 | 3,137,407,481 |  23.0161 |   0.6973 |   0.0034 |   0.0001 |   0.5933 |   0.7499 |   2.9999 |   0.6810 |  17.0451 |   0.2495 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 1
| 165,435 | 16 | 588 | 3,137,407,481 |  34.2748 |   0.6844 |   0.0046 |   0.0001 |   0.7454 |   0.8260 |   4.2119 |   0.7916 |  26.6009 |   0.4146 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 1
| 165,435 | 16 | 588 | 3,137,407,481 |  34.2829 |   0.7333 |   0.0030 |   0.0001 |   0.7471 |   0.8422 |   4.1874 |   0.8320 |  26.5576 |   0.3834 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 1
| 165,435 | 16 | 588 | 3,137,407,481 |  34.1810 |   0.6771 |   0.0029 |   0.0001 |   0.7614 |   0.8483 |   4.2268 |   0.8158 |  26.4771 |   0.3745 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 1
| 165,435 | 16 | 588 | 3,137,407,481 |  34.2352 |   0.6778 |   0.0031 |   0.0001 |   0.7560 |   0.8558 |   4.1461 |   0.7919 |  26.5697 |   0.4379 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 1
| 165,435 | 16 | 588 | 3,137,407,481 |  34.1205 |   0.6979 |   0.0031 |   0.0001 |   0.7510 |   0.8475 |   4.2391 |   0.7897 |  26.4231 |   0.3722 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 1
| 165,435 | 8 | 588 | 3,137,407,481 |  69.1737 |   0.6893 |   0.0029 |   0.0001 |   1.2650 |   1.0548 |   8.6663 |   0.9910 |  55.7863 |   0.7208 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 1
| 165,435 | 8 | 588 | 3,137,407,481 |  69.0729 |   0.6493 |   0.0029 |   0.0001 |   1.2603 |   1.0436 |   8.5929 |   0.9893 |  55.6758 |   0.8616 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 1
| 165,435 | 8 | 588 | 3,137,407,481 |  69.0495 |   0.6522 |   0.0029 |   0.0001 |   1.2451 |   1.0465 |   8.6617 |   0.9855 |  55.7271 |   0.7313 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 1
| 165,435 | 8 | 588 | 3,137,407,481 |  68.9315 |   0.6475 |   0.0029 |   0.0001 |   1.1869 |   1.0297 |   8.7069 |   0.9575 |  55.6818 |   0.7213 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 1
| 165,435 | 8 | 588 | 3,137,407,481 |  68.9243 |   0.6573 |   0.0029 |   0.0001 |   1.1906 |   1.0561 |   8.5649 |   0.9796 |  55.7496 |   0.7262 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 1
| 409,593 | 40 | 77 | 65,941,441 |   1.0818 |   0.7038 |   0.0069 |   0.0001 |   0.0235 |   0.0621 |   0.1358 |   0.0525 |   0.0993 |   0.0047 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 1
| 409,593 | 40 | 77 | 65,941,441 |   1.1023 |   0.7073 |   0.0034 |   0.0001 |   0.0238 |   0.0614 |   0.1517 |   0.0523 |   0.1009 |   0.0048 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 1
| 409,593 | 40 | 77 | 65,941,441 |   1.0966 |   0.7051 |   0.0033 |   0.0001 |   0.0237 |   0.0616 |   0.1482 |   0.0526 |   0.1005 |   0.0049 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 1
| 409,593 | 40 | 77 | 65,941,441 |   1.1656 |   0.7614 |   0.0033 |   0.0001 |   0.0241 |   0.0631 |   0.1561 |   0.0532 |   0.1027 |   0.0049 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 1
| 409,593 | 40 | 77 | 65,941,441 |   1.0914 |   0.7035 |   0.0032 |   0.0001 |   0.0237 |   0.0619 |   0.1449 |   0.0522 |   0.1003 |   0.0049 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 1
| 409,593 | 32 | 77 | 65,941,441 |   1.0921 |   0.7000 |   0.0049 |   0.0001 |   0.0265 |   0.0620 |   0.1383 |   0.0578 |   0.1019 |   0.0055 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 1
| 409,593 | 32 | 77 | 65,941,441 |   1.0918 |   0.7011 |   0.0033 |   0.0001 |   0.0261 |   0.0614 |   0.1355 |   0.0585 |   0.1036 |   0.0056 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 1
| 409,593 | 32 | 77 | 65,941,441 |   1.0912 |   0.6991 |   0.0033 |   0.0001 |   0.0264 |   0.0620 |   0.1379 |   0.0578 |   0.1023 |   0.0056 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 1
| 409,593 | 32 | 77 | 65,941,441 |   1.1020 |   0.7056 |   0.0034 |   0.0001 |   0.0262 |   0.0621 |   0.1424 |   0.0582 |   0.1019 |   0.0054 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 1
| 409,593 | 32 | 77 | 65,941,441 |   1.0867 |   0.6991 |   0.0034 |   0.0001 |   0.0262 |   0.0615 |   0.1338 |   0.0583 |   0.1023 |   0.0054 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 1
| 409,593 | 24 | 77 | 65,941,441 |   1.1563 |   0.7112 |   0.0051 |   0.0001 |   0.0294 |   0.0658 |   0.1640 |   0.0672 |   0.1115 |   0.0072 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 1
| 409,593 | 24 | 77 | 65,941,441 |   1.2259 |   0.7652 |   0.0030 |   0.0001 |   0.0291 |   0.0671 |   0.1764 |   0.0673 |   0.1135 |   0.0073 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 1
| 409,593 | 24 | 77 | 65,941,441 |   1.1248 |   0.6986 |   0.0032 |   0.0001 |   0.0289 |   0.0649 |   0.1496 |   0.0654 |   0.1099 |   0.0073 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 1
| 409,593 | 24 | 77 | 65,941,441 |   1.2676 |   0.7638 |   0.0030 |   0.0001 |   0.0290 |   0.0658 |   0.2260 |   0.0660 |   0.1097 |   0.0072 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 1
| 409,593 | 24 | 77 | 65,941,441 |   1.1357 |   0.7032 |   0.0034 |   0.0001 |   0.0287 |   0.0658 |   0.1548 |   0.0659 |   0.1099 |   0.0074 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 1
| 409,593 | 16 | 77 | 65,941,441 |   1.1826 |   0.6980 |   0.0052 |   0.0001 |   0.0295 |   0.0699 |   0.1863 |   0.0744 |   0.1152 |   0.0092 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 1
| 409,593 | 16 | 77 | 65,941,441 |   1.1763 |   0.7029 |   0.0033 |   0.0001 |   0.0292 |   0.0702 |   0.1755 |   0.0743 |   0.1145 |   0.0096 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 1
| 409,593 | 16 | 77 | 65,941,441 |   1.1674 |   0.6961 |   0.0033 |   0.0001 |   0.0294 |   0.0696 |   0.1768 |   0.0729 |   0.1128 |   0.0097 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 1
| 409,593 | 16 | 77 | 65,941,441 |   1.1813 |   0.7015 |   0.0033 |   0.0001 |   0.0295 |   0.0706 |   0.1802 |   0.0745 |   0.1156 |   0.0095 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 1
| 409,593 | 16 | 77 | 65,941,441 |   1.2635 |   0.6989 |   0.0030 |   0.0001 |   0.0388 |   0.0858 |   0.2038 |   0.0884 |   0.1381 |   0.0097 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 1
| 409,593 | 8 | 77 | 65,941,441 |   1.3633 |   0.7046 |   0.0031 |   0.0002 |   0.0473 |   0.0853 |   0.2889 |   0.0864 |   0.1336 |   0.0170 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 1
| 409,593 | 8 | 77 | 65,941,441 |   1.3411 |   0.6966 |   0.0031 |   0.0002 |   0.0479 |   0.0855 |   0.2740 |   0.0872 |   0.1329 |   0.0168 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 1
| 409,593 | 8 | 77 | 65,941,441 |   1.3516 |   0.7002 |   0.0031 |   0.0002 |   0.0476 |   0.0858 |   0.2818 |   0.0863 |   0.1330 |   0.0168 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 1
| 409,593 | 8 | 77 | 65,941,441 |   1.3445 |   0.6996 |   0.0031 |   0.0002 |   0.0472 |   0.0852 |   0.2769 |   0.0870 |   0.1317 |   0.0167 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 1
| 409,593 | 8 | 77 | 65,941,441 |   1.3672 |   0.7073 |   0.0031 |   0.0002 |   0.0477 |   0.0862 |   0.2886 |   0.0862 |   0.1335 |   0.0175 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 40 | 513 | 864,761,518 |   5.2791 |   0.7019 |   0.0055 |   0.0001 |   0.1834 |   0.3540 |   1.3570 |   0.3251 |   2.3024 |   0.0553 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 40 | 513 | 864,761,518 |   5.2861 |   0.7055 |   0.0033 |   0.0001 |   0.1820 |   0.3521 |   1.3689 |   0.3271 |   2.3066 |   0.0439 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 40 | 513 | 864,761,518 |   5.2550 |   0.7035 |   0.0033 |   0.0001 |   0.1809 |   0.3477 |   1.3544 |   0.3273 |   2.2967 |   0.0443 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 40 | 513 | 864,761,518 |   5.3083 |   0.7049 |   0.0034 |   0.0001 |   0.1862 |   0.3539 |   1.3663 |   0.3314 |   2.3220 |   0.0436 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 40 | 513 | 864,761,518 |   5.3046 |   0.7058 |   0.0035 |   0.0001 |   0.1800 |   0.3496 |   1.3989 |   0.3299 |   2.2813 |   0.0591 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 32 | 513 | 864,761,518 |   6.1797 |   0.7057 |   0.0034 |   0.0001 |   0.1972 |   0.3776 |   1.5592 |   0.3549 |   2.9321 |   0.0529 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 32 | 513 | 864,761,518 |   6.1694 |   0.7031 |   0.0033 |   0.0001 |   0.1990 |   0.3795 |   1.5526 |   0.3575 |   2.9225 |   0.0551 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 32 | 513 | 864,761,518 |   6.2025 |   0.7042 |   0.0033 |   0.0001 |   0.1953 |   0.3812 |   1.5717 |   0.3578 |   2.9376 |   0.0547 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 32 | 513 | 864,761,518 |   6.2438 |   0.7592 |   0.0034 |   0.0001 |   0.1979 |   0.3802 |   1.5585 |   0.3594 |   2.9339 |   0.0545 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 32 | 513 | 864,761,518 |   6.2046 |   0.7054 |   0.0033 |   0.0001 |   0.1976 |   0.3785 |   1.5733 |   0.3582 |   2.9239 |   0.0676 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 24 | 513 | 864,761,518 |   8.2518 |   0.6984 |   0.0035 |   0.0001 |   0.2350 |   0.4275 |   1.9375 |   0.4029 |   4.4680 |   0.0823 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 24 | 513 | 864,761,518 |   8.2934 |   0.6998 |   0.0034 |   0.0001 |   0.2355 |   0.4318 |   1.9984 |   0.4082 |   4.4475 |   0.0722 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 24 | 513 | 864,761,518 |   8.2425 |   0.6916 |   0.0035 |   0.0001 |   0.2341 |   0.4253 |   1.9332 |   0.4104 |   4.4757 |   0.0721 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 24 | 513 | 864,761,518 |   8.2203 |   0.7014 |   0.0033 |   0.0001 |   0.2362 |   0.4273 |   1.9292 |   0.4243 |   4.4303 |   0.0715 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 24 | 513 | 864,761,518 |   8.2064 |   0.6968 |   0.0035 |   0.0001 |   0.2355 |   0.4253 |   1.8960 |   0.4147 |   4.4486 |   0.0894 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 16 | 513 | 864,761,518 |  12.4804 |   0.7016 |   0.0033 |   0.0003 |   0.2734 |   0.4907 |   2.7206 |   0.5466 |   7.6283 |   0.1190 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 16 | 513 | 864,761,518 |  12.4693 |   0.6904 |   0.0033 |   0.0003 |   0.2714 |   0.4957 |   2.7110 |   0.5748 |   7.6048 |   0.1209 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 16 | 513 | 864,761,518 |  12.4550 |   0.6844 |   0.0033 |   0.0003 |   0.2730 |   0.4886 |   2.7019 |   0.5021 |   7.6765 |   0.1282 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 16 | 513 | 864,761,518 |  12.4658 |   0.7003 |   0.0036 |   0.0003 |   0.2837 |   0.4947 |   2.7227 |   0.5112 |   7.6326 |   0.1203 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 16 | 513 | 864,761,518 |  12.3822 |   0.6740 |   0.0030 |   0.0003 |   0.2689 |   0.4937 |   2.7093 |   0.5115 |   7.6219 |   0.1026 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 8 | 513 | 864,761,518 |  25.1210 |   0.6883 |   0.0032 |   0.0003 |   0.4672 |   0.6537 |   5.1648 |   0.7276 |  17.2161 |   0.2029 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 8 | 513 | 864,761,518 |  24.9578 |   0.6554 |   0.0033 |   0.0003 |   0.4558 |   0.6670 |   5.0990 |   0.7274 |  17.1073 |   0.2457 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 8 | 513 | 864,761,518 |  24.9559 |   0.6511 |   0.0033 |   0.0003 |   0.4731 |   0.6672 |   5.1616 |   0.7285 |  17.0697 |   0.2044 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 8 | 513 | 864,761,518 |  25.1769 |   0.6697 |   0.0032 |   0.0003 |   0.4724 |   0.6961 |   5.2163 |   0.7251 |  17.1607 |   0.2362 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
| 552,020 | 8 | 513 | 864,761,518 |  25.0275 |   0.6573 |   0.0032 |   0.0003 |   0.4588 |   0.6855 |   5.1559 |   0.7388 |  17.0878 |   0.2431 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
TRADITIONAL MPI - TWO PASS
------------------------------------------------------------------------------------
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 1
| 163,734 | 40 | 125 | 408,443,204 |   2.0650 |   0.7009 |   0.0033 |   0.0001 |   0.0700 |   0.2929 |   0.5842 |   0.1414 |   0.2533 |   0.0222 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 1
| 163,734 | 40 | 125 | 408,443,204 |   2.0920 |   0.7050 |   0.0035 |   0.0001 |   0.0709 |   0.2980 |   0.6002 |   0.1411 |   0.2543 |   0.0222 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 1
| 163,734 | 40 | 125 | 408,443,204 |   2.0880 |   0.7079 |   0.0033 |   0.0001 |   0.0704 |   0.2979 |   0.5971 |   0.1434 |   0.2487 |   0.0225 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 1
| 163,734 | 40 | 125 | 408,443,204 |   2.0784 |   0.7052 |   0.0032 |   0.0001 |   0.0711 |   0.2909 |   0.5929 |   0.1402 |   0.2557 |   0.0223 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 1
| 163,734 | 40 | 125 | 408,443,204 |   2.0930 |   0.7037 |   0.0033 |   0.0001 |   0.0703 |   0.3045 |   0.5999 |   0.1424 |   0.2499 |   0.0222 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 1
| 163,734 | 32 | 125 | 408,443,204 |   2.1971 |   0.7031 |   0.0033 |   0.0001 |   0.0889 |   0.3185 |   0.6463 |   0.1527 |   0.2606 |   0.0270 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 1
| 163,734 | 32 | 125 | 408,443,204 |   2.1869 |   0.6993 |   0.0031 |   0.0001 |   0.0896 |   0.3118 |   0.6437 |   0.1522 |   0.2638 |   0.0265 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 1
| 163,734 | 32 | 125 | 408,443,204 |   2.1911 |   0.7005 |   0.0033 |   0.0001 |   0.0892 |   0.3138 |   0.6446 |   0.1534 |   0.2633 |   0.0264 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 1
| 163,734 | 32 | 125 | 408,443,204 |   2.2027 |   0.7025 |   0.0031 |   0.0001 |   0.0887 |   0.3157 |   0.6566 |   0.1500 |   0.2626 |   0.0265 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 1
| 163,734 | 32 | 125 | 408,443,204 |   2.2795 |   0.7000 |   0.0033 |   0.0001 |   0.0916 |   0.3413 |   0.6695 |   0.1717 |   0.2787 |   0.0266 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 1
| 163,734 | 24 | 125 | 408,443,204 |   2.5408 |   0.7085 |   0.0032 |   0.0001 |   0.0939 |   0.3442 |   0.8881 |   0.1669 |   0.3038 |   0.0355 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 1
| 163,734 | 24 | 125 | 408,443,204 |   2.5442 |   0.7066 |   0.0034 |   0.0001 |   0.0937 |   0.3485 |   0.8840 |   0.1660 |   0.3102 |   0.0351 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 1
| 163,734 | 24 | 125 | 408,443,204 |   2.5271 |   0.7045 |   0.0032 |   0.0001 |   0.0940 |   0.3517 |   0.8758 |   0.1658 |   0.3007 |   0.0346 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 1
| 163,734 | 24 | 125 | 408,443,204 |   2.5213 |   0.7027 |   0.0034 |   0.0001 |   0.0935 |   0.3504 |   0.8672 |   0.1673 |   0.3043 |   0.0359 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 1
| 163,734 | 24 | 125 | 408,443,204 |   2.5357 |   0.7038 |   0.0034 |   0.0001 |   0.0940 |   0.3488 |   0.8837 |   0.1670 |   0.3031 |   0.0352 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 1
| 163,734 | 16 | 125 | 408,443,204 |   3.0423 |   0.7019 |   0.0029 |   0.0001 |   0.1138 |   0.4264 |   1.1757 |   0.1980 |   0.3752 |   0.0513 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 1
| 163,734 | 16 | 125 | 408,443,204 |   2.9753 |   0.7021 |   0.0031 |   0.0001 |   0.1015 |   0.4135 |   1.1482 |   0.1906 |   0.3689 |   0.0505 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 1
| 163,734 | 16 | 125 | 408,443,204 |   2.9791 |   0.7027 |   0.0032 |   0.0001 |   0.1026 |   0.4142 |   1.1545 |   0.1908 |   0.3640 |   0.0503 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 1
| 163,734 | 16 | 125 | 408,443,204 |   2.9845 |   0.7031 |   0.0029 |   0.0001 |   0.1024 |   0.4163 |   1.1557 |   0.1907 |   0.3656 |   0.0506 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 1
| 163,734 | 16 | 125 | 408,443,204 |   3.0002 |   0.7047 |   0.0031 |   0.0001 |   0.1023 |   0.4193 |   1.1605 |   0.1916 |   0.3706 |   0.0511 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 1
| 163,734 | 8 | 125 | 408,443,204 |   4.5970 |   0.6982 |   0.0029 |   0.0001 |   0.1357 |   0.5777 |   2.2392 |   0.2807 |   0.5563 |   0.1092 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 1
| 163,734 | 8 | 125 | 408,443,204 |   4.5620 |   0.6699 |   0.0029 |   0.0001 |   0.1389 |   0.5770 |   2.2291 |   0.2802 |   0.5657 |   0.1013 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 1
| 163,734 | 8 | 125 | 408,443,204 |   4.6017 |   0.6815 |   0.0028 |   0.0001 |   0.1368 |   0.5787 |   2.2664 |   0.2789 |   0.5608 |   0.0985 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 1
| 163,734 | 8 | 125 | 408,443,204 |   4.5609 |   0.6605 |   0.0030 |   0.0001 |   0.1366 |   0.5798 |   2.2516 |   0.2804 |   0.5556 |   0.0963 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 1
| 163,734 | 8 | 125 | 408,443,204 |   4.5751 |   0.6697 |   0.0033 |   0.0001 |   0.1374 |   0.5752 |   2.2475 |   0.2829 |   0.5640 |   0.0984 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 1
| 147,892 | 40 | 20 | 3,700,737,910 |   5.4777 |   0.7062 |   0.0033 |   0.0001 |   0.0686 |   1.0625 |   3.0187 |   0.2254 |   0.2131 |   0.1830 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 1
| 147,892 | 40 | 20 | 3,700,737,910 |   5.5043 |   0.7001 |   0.0032 |   0.0001 |   0.0660 |   1.0629 |   3.0485 |   0.2241 |   0.2191 |   0.1835 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 1
| 147,892 | 40 | 20 | 3,700,737,910 |   5.5018 |   0.7033 |   0.0032 |   0.0001 |   0.0658 |   1.0639 |   3.0416 |   0.2257 |   0.2200 |   0.1814 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 1
| 147,892 | 40 | 20 | 3,700,737,910 |   5.4820 |   0.6939 |   0.0033 |   0.0001 |   0.0662 |   1.0643 |   3.0405 |   0.2257 |   0.2106 |   0.1807 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 1
| 147,892 | 40 | 20 | 3,700,737,910 |   5.4921 |   0.6989 |   0.0033 |   0.0001 |   0.0650 |   1.0630 |   3.0402 |   0.2244 |   0.2133 |   0.1872 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 1
| 147,892 | 32 | 20 | 3,700,737,910 |   6.2668 |   0.6926 |   0.0033 |   0.0001 |   0.0804 |   1.1132 |   3.6328 |   0.2700 |   0.2520 |   0.2257 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 1
| 147,892 | 32 | 20 | 3,700,737,910 |   6.2501 |   0.6760 |   0.0032 |   0.0001 |   0.0799 |   1.1091 |   3.6394 |   0.2726 |   0.2496 |   0.2235 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 1
| 147,892 | 32 | 20 | 3,700,737,910 |   6.2322 |   0.6767 |   0.0033 |   0.0001 |   0.0775 |   1.1119 |   3.6282 |   0.2722 |   0.2434 |   0.2223 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 1
| 147,892 | 32 | 20 | 3,700,737,910 |   6.2891 |   0.6749 |   0.0033 |   0.0001 |   0.0786 |   1.1160 |   3.6578 |   0.2717 |   0.2635 |   0.2266 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 1
| 147,892 | 32 | 20 | 3,700,737,910 |   6.2815 |   0.6940 |   0.0033 |   0.0001 |   0.0799 |   1.1212 |   3.6455 |   0.2720 |   0.2474 |   0.2215 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 1
| 147,892 | 24 | 20 | 3,700,737,910 |   7.8171 |   0.6675 |   0.0032 |   0.0001 |   0.0974 |   1.3559 |   4.7500 |   0.3550 |   0.2984 |   0.2929 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 1
| 147,892 | 24 | 20 | 3,700,737,910 |   7.8253 |   0.6682 |   0.0033 |   0.0001 |   0.0973 |   1.3545 |   4.7531 |   0.3553 |   0.3017 |   0.2951 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 1
| 147,892 | 24 | 20 | 3,700,737,910 |   7.8660 |   0.6632 |   0.0030 |   0.0001 |   0.0980 |   1.3582 |   4.7606 |   0.3516 |   0.3383 |   0.2960 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 1
| 147,892 | 24 | 20 | 3,700,737,910 |   7.8331 |   0.6653 |   0.0032 |   0.0001 |   0.0967 |   1.3615 |   4.7437 |   0.3504 |   0.3192 |   0.2961 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 1
| 147,892 | 24 | 20 | 3,700,737,910 |   7.8526 |   0.6718 |   0.0033 |   0.0001 |   0.0988 |   1.3606 |   4.7581 |   0.3510 |   0.3183 |   0.2940 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 1
| 147,892 | 16 | 20 | 3,700,737,910 |  11.5073 |   0.6579 |   0.0032 |   0.0001 |   0.1396 |   1.8506 |   7.0060 |   0.5289 |   0.8025 |   0.5217 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 1
| 147,892 | 16 | 20 | 3,700,737,910 |  11.5855 |   0.6572 |   0.0033 |   0.0001 |   0.1397 |   1.8513 |   7.0282 |   0.5271 |   0.8797 |   0.5022 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 1
| 147,892 | 16 | 20 | 3,700,737,910 |  11.5740 |   0.6583 |   0.0033 |   0.0001 |   0.1400 |   1.8466 |   7.0247 |   0.5273 |   0.9358 |   0.4413 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 1
| 147,892 | 16 | 20 | 3,700,737,910 |  11.5803 |   0.6405 |   0.0029 |   0.0001 |   0.1446 |   1.8459 |   7.0361 |   0.5318 |   0.9471 |   0.4343 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 1
| 147,892 | 16 | 20 | 3,700,737,910 |  11.6034 |   0.6604 |   0.0029 |   0.0001 |   0.1415 |   1.8453 |   7.0463 |   0.5275 |   0.9437 |   0.4386 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 1
| 147,892 | 8 | 20 | 3,700,737,910 |  24.8056 |   0.6394 |   0.0032 |   0.0001 |   0.2827 |   2.9075 |  13.0491 |   1.3976 |   5.5146 |   1.0145 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 1
| 147,892 | 8 | 20 | 3,700,737,910 |  25.0993 |   0.6064 |   0.0030 |   0.0001 |   0.2741 |   2.8239 |  13.0311 |   1.5169 |   5.8218 |   1.0251 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 1
| 147,892 | 8 | 20 | 3,700,737,910 |  26.4264 |   0.6166 |   0.0029 |   0.0001 |   0.2873 |   2.8812 |  12.9717 |   1.4804 |   7.2590 |   0.9302 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 1
| 147,892 | 8 | 20 | 3,700,737,910 |  25.0335 |   0.5916 |   0.0029 |   0.0001 |   0.2802 |   2.7631 |  13.0433 |   1.5463 |   5.7683 |   1.0406 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 1
| 147,892 | 8 | 20 | 3,700,737,910 |  26.1851 |   0.6035 |   0.0028 |   0.0001 |   0.2765 |   2.7795 |  13.0295 |   1.5578 |   6.9140 |   1.0242 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 1
| 165,435 | 40 | 588 | 3,137,407,481 |  17.7589 |   0.7024 |   0.0033 |   0.0001 |   0.4025 |   1.2216 |   2.2573 |   0.5619 |  12.4691 |   0.1440 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 1
| 165,435 | 40 | 588 | 3,137,407,481 |  17.7491 |   0.7050 |   0.0031 |   0.0001 |   0.4238 |   1.2571 |   2.2229 |   0.5645 |  12.4272 |   0.1485 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 1
| 165,435 | 40 | 588 | 3,137,407,481 |  17.7260 |   0.7080 |   0.0033 |   0.0001 |   0.4078 |   1.2067 |   2.2575 |   0.5516 |  12.4454 |   0.1490 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 1
| 165,435 | 40 | 588 | 3,137,407,481 |  17.7641 |   0.7074 |   0.0034 |   0.0001 |   0.4042 |   1.2150 |   2.2453 |   0.5515 |  12.4606 |   0.1801 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 1
| 165,435 | 40 | 588 | 3,137,407,481 |  17.7180 |   0.7044 |   0.0033 |   0.0001 |   0.4166 |   1.2312 |   2.2727 |   0.5594 |  12.3869 |   0.1467 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 1
| 165,435 | 32 | 588 | 3,137,407,481 |  18.2413 |   0.6960 |   0.0033 |   0.0001 |   0.4823 |   1.2834 |   2.5333 |   0.5768 |  12.4785 |   0.1910 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 1
| 165,435 | 32 | 588 | 3,137,407,481 |  18.3008 |   0.6987 |   0.0034 |   0.0001 |   0.4997 |   1.2642 |   2.5642 |   0.5797 |  12.4726 |   0.2216 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 1
| 165,435 | 32 | 588 | 3,137,407,481 |  18.2482 |   0.6987 |   0.0033 |   0.0001 |   0.4941 |   1.2846 |   2.5686 |   0.5989 |  12.3734 |   0.2299 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 1
| 165,435 | 32 | 588 | 3,137,407,481 |  18.2919 |   0.7037 |   0.0033 |   0.0001 |   0.4952 |   1.2951 |   2.5803 |   0.5715 |  12.4550 |   0.1910 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 1
| 165,435 | 32 | 588 | 3,137,407,481 |  18.3987 |   0.7016 |   0.0034 |   0.0001 |   0.4926 |   1.2687 |   2.5420 |   0.5675 |  12.6042 |   0.2221 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 1
| 165,435 | 24 | 588 | 3,137,407,481 |  23.7493 |   0.7054 |   0.0031 |   0.0001 |   0.5708 |   1.4367 |   3.0380 |   0.6509 |  17.0979 |   0.2496 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 1
| 165,435 | 24 | 588 | 3,137,407,481 |  23.7898 |   0.6977 |   0.0033 |   0.0001 |   0.5918 |   1.4487 |   3.0529 |   0.6316 |  17.0726 |   0.2944 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 1
| 165,435 | 24 | 588 | 3,137,407,481 |  23.7878 |   0.7117 |   0.0034 |   0.0001 |   0.5763 |   1.4515 |   3.1731 |   0.6451 |  16.9813 |   0.2487 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 1
| 165,435 | 24 | 588 | 3,137,407,481 |  23.7224 |   0.6947 |   0.0033 |   0.0001 |   0.5971 |   1.4232 |   3.0676 |   0.6575 |  17.0313 |   0.2508 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 1
| 165,435 | 24 | 588 | 3,137,407,481 |  23.7445 |   0.6920 |   0.0033 |   0.0001 |   0.5812 |   1.4130 |   3.1062 |   0.6327 |  17.0240 |   0.2954 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 1
| 165,435 | 16 | 588 | 3,137,407,481 |  35.0300 |   0.6926 |   0.0029 |   0.0001 |   0.7415 |   1.6128 |   4.3351 |   0.7180 |  26.5433 |   0.3866 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 1
| 165,435 | 16 | 588 | 3,137,407,481 |  34.9043 |   0.6667 |   0.0033 |   0.0001 |   0.7300 |   1.6039 |   4.2907 |   0.7241 |  26.5179 |   0.3709 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 1
| 165,435 | 16 | 588 | 3,137,407,481 |  34.8596 |   0.6882 |   0.0030 |   0.0001 |   0.7418 |   1.6019 |   4.2961 |   0.7323 |  26.4284 |   0.3710 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 1
| 165,435 | 16 | 588 | 3,137,407,481 |  35.1829 |   0.6902 |   0.0029 |   0.0001 |   0.7760 |   1.6590 |   4.2859 |   0.7151 |  26.6509 |   0.4057 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 1
| 165,435 | 16 | 588 | 3,137,407,481 |  34.9676 |   0.6813 |   0.0032 |   0.0001 |   0.7383 |   1.5925 |   4.3960 |   0.7107 |  26.4808 |   0.3680 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 1
| 165,435 | 8 | 588 | 3,137,407,481 |  69.9181 |   0.6877 |   0.0030 |   0.0001 |   1.2005 |   2.0504 |   8.4989 |   0.9217 |  55.6973 |   0.8615 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 1
| 165,435 | 8 | 588 | 3,137,407,481 |  70.0760 |   0.6539 |   0.0029 |   0.0001 |   1.2648 |   2.0677 |   8.8875 |   0.9346 |  55.5392 |   0.7283 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 1
| 165,435 | 8 | 588 | 3,137,407,481 |  69.6597 |   0.6668 |   0.0035 |   0.0001 |   1.2435 |   2.0676 |   8.6116 |   0.9509 |  55.3980 |   0.7213 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 1
| 165,435 | 8 | 588 | 3,137,407,481 |  69.6017 |   0.6485 |   0.0029 |   0.0001 |   1.1942 |   2.0866 |   8.5687 |   0.9357 |  55.3171 |   0.8509 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 1
| 165,435 | 8 | 588 | 3,137,407,481 |  69.9607 |   0.6467 |   0.0056 |   0.0001 |   1.2009 |   2.0791 |   8.6010 |   0.9513 |  55.7567 |   0.7250 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 1
| 409,593 | 40 | 77 | 65,941,441 |   1.0860 |   0.7026 |   0.0061 |   0.0001 |   0.0235 |   0.0640 |   0.1355 |   0.0521 |   0.1036 |   0.0046 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 1
| 409,593 | 40 | 77 | 65,941,441 |   1.0937 |   0.7076 |   0.0052 |   0.0001 |   0.0236 |   0.0643 |   0.1401 |   0.0518 |   0.1015 |   0.0048 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 1
| 409,593 | 40 | 77 | 65,941,441 |   1.0809 |   0.7044 |   0.0044 |   0.0001 |   0.0236 |   0.0644 |   0.1288 |   0.0525 |   0.1025 |   0.0047 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 1
| 409,593 | 40 | 77 | 65,941,441 |   1.0844 |   0.7041 |   0.0034 |   0.0001 |   0.0238 |   0.0644 |   0.1328 |   0.0517 |   0.1028 |   0.0047 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 1
| 409,593 | 40 | 77 | 65,941,441 |   1.0813 |   0.7067 |   0.0034 |   0.0001 |   0.0234 |   0.0637 |   0.1305 |   0.0522 |   0.1002 |   0.0046 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 1
| 409,593 | 32 | 77 | 65,941,441 |   1.1029 |   0.7032 |   0.0034 |   0.0001 |   0.0256 |   0.0710 |   0.1334 |   0.0579 |   0.1062 |   0.0056 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 1
| 409,593 | 32 | 77 | 65,941,441 |   1.1200 |   0.7119 |   0.0033 |   0.0001 |   0.0253 |   0.0702 |   0.1438 |   0.0580 |   0.1053 |   0.0055 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 1
| 409,593 | 32 | 77 | 65,941,441 |   1.1267 |   0.7105 |   0.0033 |   0.0001 |   0.0259 |   0.0702 |   0.1497 |   0.0586 |   0.1061 |   0.0055 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 1
| 409,593 | 32 | 77 | 65,941,441 |   1.1020 |   0.7039 |   0.0034 |   0.0001 |   0.0251 |   0.0697 |   0.1347 |   0.0579 |   0.1053 |   0.0054 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 1
| 409,593 | 32 | 77 | 65,941,441 |   1.1147 |   0.7050 |   0.0034 |   0.0001 |   0.0257 |   0.0706 |   0.1442 |   0.0578 |   0.1060 |   0.0055 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 1
| 409,593 | 24 | 77 | 65,941,441 |   1.1565 |   0.7062 |   0.0034 |   0.0001 |   0.0291 |   0.0794 |   0.1588 |   0.0647 |   0.1111 |   0.0072 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 1
| 409,593 | 24 | 77 | 65,941,441 |   1.1474 |   0.7039 |   0.0032 |   0.0001 |   0.0292 |   0.0797 |   0.1522 |   0.0647 |   0.1104 |   0.0072 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 1
| 409,593 | 24 | 77 | 65,941,441 |   1.1476 |   0.7028 |   0.0033 |   0.0001 |   0.0292 |   0.0795 |   0.1498 |   0.0642 |   0.1148 |   0.0073 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 1
| 409,593 | 24 | 77 | 65,941,441 |   1.1548 |   0.7042 |   0.0031 |   0.0001 |   0.0290 |   0.0797 |   0.1583 |   0.0644 |   0.1119 |   0.0071 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 1
| 409,593 | 24 | 77 | 65,941,441 |   1.1673 |   0.7123 |   0.0032 |   0.0001 |   0.0291 |   0.0805 |   0.1614 |   0.0650 |   0.1117 |   0.0073 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 1
| 409,593 | 16 | 77 | 65,941,441 |   1.2123 |   0.7010 |   0.0031 |   0.0001 |   0.0317 |   0.0987 |   0.1829 |   0.0723 |   0.1159 |   0.0097 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 1
| 409,593 | 16 | 77 | 65,941,441 |   1.2206 |   0.7057 |   0.0032 |   0.0001 |   0.0317 |   0.0998 |   0.1863 |   0.0715 |   0.1159 |   0.0095 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 1
| 409,593 | 16 | 77 | 65,941,441 |   1.2226 |   0.7063 |   0.0030 |   0.0001 |   0.0321 |   0.1007 |   0.1868 |   0.0724 |   0.1149 |   0.0094 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 1
| 409,593 | 16 | 77 | 65,941,441 |   1.2084 |   0.6981 |   0.0030 |   0.0001 |   0.0315 |   0.1020 |   0.1783 |   0.0722 |   0.1166 |   0.0097 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 1
| 409,593 | 16 | 77 | 65,941,441 |   1.2092 |   0.7019 |   0.0030 |   0.0001 |   0.0317 |   0.0994 |   0.1774 |   0.0726 |   0.1171 |   0.0089 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 1
| 409,593 | 8 | 77 | 65,941,441 |   1.4051 |   0.7052 |   0.0031 |   0.0003 |   0.0459 |   0.1319 |   0.2830 |   0.0862 |   0.1351 |   0.0174 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 1
| 409,593 | 8 | 77 | 65,941,441 |   1.4010 |   0.7028 |   0.0033 |   0.0003 |   0.0465 |   0.1320 |   0.2780 |   0.0887 |   0.1353 |   0.0173 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 1
| 409,593 | 8 | 77 | 65,941,441 |   1.3910 |   0.6987 |   0.0031 |   0.0003 |   0.0460 |   0.1328 |   0.2757 |   0.0873 |   0.1330 |   0.0171 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 1
| 409,593 | 8 | 77 | 65,941,441 |   1.4094 |   0.7108 |   0.0031 |   0.0003 |   0.0460 |   0.1301 |   0.2831 |   0.0877 |   0.1343 |   0.0170 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 1
| 409,593 | 8 | 77 | 65,941,441 |   1.3886 |   0.7016 |   0.0031 |   0.0003 |   0.0462 |   0.1311 |   0.2712 |   0.0864 |   0.1349 |   0.0169 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 40 | 513 | 864,761,518 |   5.8779 |   0.7015 |   0.0039 |   0.0001 |   0.1808 |   0.8676 |   1.4156 |   0.3144 |   2.3533 |   0.0447 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 40 | 513 | 864,761,518 |   5.8524 |   0.7011 |   0.0034 |   0.0001 |   0.1803 |   0.8522 |   1.4165 |   0.3120 |   2.3466 |   0.0436 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 40 | 513 | 864,761,518 |   5.8524 |   0.7046 |   0.0034 |   0.0001 |   0.1816 |   0.8649 |   1.3926 |   0.3135 |   2.3513 |   0.0440 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 40 | 513 | 864,761,518 |   5.8308 |   0.7052 |   0.0045 |   0.0001 |   0.1799 |   0.8729 |   1.3661 |   0.3132 |   2.3503 |   0.0432 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 40 | 513 | 864,761,518 |   5.8313 |   0.7050 |   0.0034 |   0.0001 |   0.1776 |   0.8674 |   1.3702 |   0.3102 |   2.3570 |   0.0439 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 32 | 513 | 864,761,518 |   6.7749 |   0.7068 |   0.0033 |   0.0001 |   0.1999 |   0.9347 |   1.5403 |   0.3470 |   2.9917 |   0.0543 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 32 | 513 | 864,761,518 |   6.8394 |   0.6975 |   0.0034 |   0.0001 |   0.2136 |   0.9601 |   1.5766 |   0.3560 |   2.9818 |   0.0538 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 32 | 513 | 864,761,518 |   6.7719 |   0.6952 |   0.0034 |   0.0001 |   0.2012 |   0.9362 |   1.5380 |   0.3514 |   2.9960 |   0.0539 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 32 | 513 | 864,761,518 |   6.7765 |   0.6987 |   0.0034 |   0.0001 |   0.2010 |   0.9423 |   1.5340 |   0.3435 |   3.0033 |   0.0537 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 32 | 513 | 864,761,518 |   6.7801 |   0.7048 |   0.0034 |   0.0001 |   0.1990 |   0.9346 |   1.5853 |   0.3453 |   2.9569 |   0.0542 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 24 | 513 | 864,761,518 |   8.8466 |   0.6966 |   0.0034 |   0.0001 |   0.2257 |   1.0532 |   1.8941 |   0.3885 |   4.5170 |   0.0715 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 24 | 513 | 864,761,518 |   8.8230 |   0.6984 |   0.0034 |   0.0001 |   0.2251 |   1.0516 |   1.8901 |   0.3937 |   4.4941 |   0.0700 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 24 | 513 | 864,761,518 |   8.8751 |   0.6926 |   0.0033 |   0.0001 |   0.2265 |   1.0631 |   1.9536 |   0.4261 |   4.4400 |   0.0732 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 24 | 513 | 864,761,518 |   8.8720 |   0.7005 |   0.0035 |   0.0001 |   0.2228 |   1.0459 |   1.9172 |   0.4086 |   4.4913 |   0.0856 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 24 | 513 | 864,761,518 |   8.8574 |   0.6999 |   0.0034 |   0.0001 |   0.2274 |   1.0502 |   1.9022 |   0.3989 |   4.5075 |   0.0713 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 16 | 513 | 864,761,518 |  13.2740 |   0.7540 |   0.0031 |   0.0004 |   0.2658 |   1.2776 |   2.6860 |   0.5655 |   7.5953 |   0.1294 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 16 | 513 | 864,761,518 |  13.1617 |   0.6871 |   0.0064 |   0.0003 |   0.2654 |   1.2872 |   2.6919 |   0.4862 |   7.6400 |   0.1035 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 16 | 513 | 864,761,518 |  13.1518 |   0.6855 |   0.0031 |   0.0003 |   0.2681 |   1.2855 |   2.7291 |   0.4678 |   7.6129 |   0.1026 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 16 | 513 | 864,761,518 |  13.1765 |   0.6826 |   0.0031 |   0.0003 |   0.2708 |   1.2843 |   2.7146 |   0.4773 |   7.6436 |   0.1028 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 16 | 513 | 864,761,518 |  13.1838 |   0.6859 |   0.0034 |   0.0003 |   0.2633 |   1.2794 |   2.6774 |   0.5484 |   7.6235 |   0.1056 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 8 | 513 | 864,761,518 |  26.0944 |   0.6963 |   0.0065 |   0.0003 |   0.4196 |   1.7464 |   5.1630 |   0.6833 |  17.1805 |   0.2051 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 8 | 513 | 864,761,518 |  26.0328 |   0.6617 |   0.0031 |   0.0003 |   0.4083 |   1.7514 |   5.1495 |   0.6970 |  17.1597 |   0.2050 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 8 | 513 | 864,761,518 |  26.0467 |   0.6685 |   0.0035 |   0.0003 |   0.4025 |   1.7328 |   5.1438 |   0.6872 |  17.1679 |   0.2438 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 8 | 513 | 864,761,518 |  25.9653 |   0.6625 |   0.0031 |   0.0003 |   0.3904 |   1.7263 |   5.1365 |   0.6991 |  17.1458 |   0.2042 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 1
| 552,020 | 8 | 513 | 864,761,518 |  26.0451 |   0.6645 |   0.0032 |   0.0003 |   0.3922 |   1.7348 |   5.2204 |   0.6765 |  17.1499 |   0.2065 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |

====================================================================================

CC sg.cu -o sg.out -lm -O3
CUDA AWARE MPI - SORTING
------------------------------------------------------------------------------------
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 1
| 163,734 | 40 | 125 | 408,443,204 |   3.3854 |   0.0153 |   0.0067 |   0.0001 |   0.0806 |   0.1425 |   2.4724 |   0.2026 |   0.4501 |   0.0219 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 1
| 163,734 | 40 | 125 | 408,443,204 |   3.3497 |   0.0073 |   0.0036 |   0.0001 |   0.0806 |   0.1439 |   2.4438 |   0.2009 |   0.4510 |   0.0221 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 1
| 163,734 | 40 | 125 | 408,443,204 |   3.3768 |   0.0073 |   0.0037 |   0.0001 |   0.0806 |   0.1441 |   2.4751 |   0.2011 |   0.4463 |   0.0223 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 1
| 163,734 | 40 | 125 | 408,443,204 |   3.3711 |   0.0074 |   0.0036 |   0.0001 |   0.0813 |   0.1425 |   2.4657 |   0.2029 |   0.4490 |   0.0222 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 1
| 163,734 | 40 | 125 | 408,443,204 |   3.3860 |   0.0074 |   0.0038 |   0.0001 |   0.0816 |   0.1434 |   2.4739 |   0.1988 |   0.4581 |   0.0227 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 1
| 163,734 | 32 | 125 | 408,443,204 |   3.3218 |   0.0073 |   0.0063 |   0.0001 |   0.0924 |   0.1486 |   2.3997 |   0.1991 |   0.4483 |   0.0263 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 1
| 163,734 | 32 | 125 | 408,443,204 |   3.3159 |   0.0073 |   0.0038 |   0.0001 |   0.0918 |   0.1483 |   2.3942 |   0.2029 |   0.4448 |   0.0266 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 1
| 163,734 | 32 | 125 | 408,443,204 |   3.4099 |   0.0074 |   0.0038 |   0.0001 |   0.0917 |   0.1497 |   2.4784 |   0.2051 |   0.4511 |   0.0264 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 1
| 163,734 | 32 | 125 | 408,443,204 |   3.2976 |   0.0074 |   0.0037 |   0.0001 |   0.0919 |   0.1498 |   2.3833 |   0.2039 |   0.4343 |   0.0270 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 1
| 163,734 | 32 | 125 | 408,443,204 |   3.3088 |   0.0073 |   0.0050 |   0.0001 |   0.0914 |   0.1514 |   2.3895 |   0.1996 |   0.4430 |   0.0266 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 1
| 163,734 | 24 | 125 | 408,443,204 |   3.1750 |   0.0075 |   0.0056 |   0.0001 |   0.1048 |   0.1642 |   2.1980 |   0.2228 |   0.4423 |   0.0353 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 1
| 163,734 | 24 | 125 | 408,443,204 |   3.1681 |   0.0074 |   0.0034 |   0.0001 |   0.1092 |   0.1658 |   2.1937 |   0.2198 |   0.4363 |   0.0358 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 1
| 163,734 | 24 | 125 | 408,443,204 |   3.2790 |   0.0073 |   0.0036 |   0.0001 |   0.1133 |   0.1777 |   2.2597 |   0.2276 |   0.4581 |   0.0351 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 1
| 163,734 | 24 | 125 | 408,443,204 |   3.1893 |   0.0074 |   0.0036 |   0.0001 |   0.1061 |   0.1653 |   2.1950 |   0.2261 |   0.4534 |   0.0358 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 1
| 163,734 | 24 | 125 | 408,443,204 |   3.1700 |   0.0074 |   0.0037 |   0.0001 |   0.1069 |   0.1638 |   2.1860 |   0.2317 |   0.4391 |   0.0350 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 1
| 163,734 | 16 | 125 | 408,443,204 |   2.9783 |   0.0075 |   0.0053 |   0.0001 |   0.1125 |   0.1709 |   1.9913 |   0.2537 |   0.3915 |   0.0508 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 1
| 163,734 | 16 | 125 | 408,443,204 |   2.9786 |   0.0074 |   0.0033 |   0.0001 |   0.1111 |   0.1722 |   2.0053 |   0.2529 |   0.3788 |   0.0510 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 1
| 163,734 | 16 | 125 | 408,443,204 |   2.9906 |   0.0076 |   0.0036 |   0.0001 |   0.1115 |   0.1719 |   2.0151 |   0.2529 |   0.3814 |   0.0502 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 1
| 163,734 | 16 | 125 | 408,443,204 |   2.9771 |   0.0075 |   0.0033 |   0.0001 |   0.1138 |   0.1701 |   1.9891 |   0.2537 |   0.3922 |   0.0507 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 1
| 163,734 | 16 | 125 | 408,443,204 |   2.9752 |   0.0073 |   0.0033 |   0.0001 |   0.1114 |   0.1707 |   1.9959 |   0.2544 |   0.3845 |   0.0509 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 1
| 163,734 | 8 | 125 | 408,443,204 |   3.6322 |   0.0074 |   0.0053 |   0.0001 |   0.1359 |   0.2009 |   2.2739 |   0.3704 |   0.5456 |   0.0979 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 1
| 163,734 | 8 | 125 | 408,443,204 |   3.6464 |   0.0073 |   0.0033 |   0.0001 |   0.1349 |   0.1991 |   2.2812 |   0.3751 |   0.5517 |   0.0970 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 1
| 163,734 | 8 | 125 | 408,443,204 |   3.6460 |   0.0074 |   0.0033 |   0.0001 |   0.1374 |   0.2014 |   2.2810 |   0.3744 |   0.5455 |   0.0989 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 1
| 163,734 | 8 | 125 | 408,443,204 |   3.6272 |   0.0074 |   0.0033 |   0.0001 |   0.1362 |   0.2001 |   2.2701 |   0.3738 |   0.5429 |   0.0968 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 1
| 163,734 | 8 | 125 | 408,443,204 |   3.6160 |   0.0074 |   0.0033 |   0.0001 |   0.1362 |   0.1968 |   2.2644 |   0.3709 |   0.5438 |   0.0964 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 1
| 147,892 | 40 | 20 | 3,700,737,910 |   2.9495 |   0.0073 |   0.0069 |   0.0001 |   0.0689 |   0.0655 |   2.0920 |   0.2617 |   0.2675 |   0.1865 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 1
| 147,892 | 40 | 20 | 3,700,737,910 |   2.9964 |   0.0074 |   0.0037 |   0.0001 |   0.0692 |   0.0658 |   2.1383 |   0.2607 |   0.2699 |   0.1851 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 1
| 147,892 | 40 | 20 | 3,700,737,910 |   2.9177 |   0.0075 |   0.0036 |   0.0001 |   0.0692 |   0.0658 |   2.0958 |   0.2592 |   0.2362 |   0.1839 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 1
| 147,892 | 40 | 20 | 3,700,737,910 |   2.9276 |   0.0074 |   0.0048 |   0.0001 |   0.0689 |   0.0664 |   2.1018 |   0.2599 |   0.2391 |   0.1842 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 1
| 147,892 | 40 | 20 | 3,700,737,910 |   2.9479 |   0.0074 |   0.0038 |   0.0001 |   0.0686 |   0.0647 |   2.0926 |   0.2589 |   0.2684 |   0.1874 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 1
| 147,892 | 32 | 20 | 3,700,737,910 |   3.5256 |   0.0074 |   0.0062 |   0.0001 |   0.0827 |   0.0771 |   2.5159 |   0.3184 |   0.2973 |   0.2268 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 1
| 147,892 | 32 | 20 | 3,700,737,910 |   3.5987 |   0.0073 |   0.0038 |   0.0001 |   0.0906 |   0.0856 |   2.5674 |   0.3275 |   0.2929 |   0.2273 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 1
| 147,892 | 32 | 20 | 3,700,737,910 |   3.4068 |   0.0074 |   0.0038 |   0.0001 |   0.0840 |   0.0759 |   2.4059 |   0.3093 |   0.2947 |   0.2296 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 1
| 147,892 | 32 | 20 | 3,700,737,910 |   3.4036 |   0.0074 |   0.0037 |   0.0001 |   0.0841 |   0.0761 |   2.4134 |   0.3176 |   0.2799 |   0.2251 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 1
| 147,892 | 32 | 20 | 3,700,737,910 |   3.3649 |   0.0075 |   0.0038 |   0.0001 |   0.0854 |   0.0788 |   2.3867 |   0.3105 |   0.2662 |   0.2297 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 1
| 147,892 | 24 | 20 | 3,700,737,910 |   4.2019 |   0.0074 |   0.0055 |   0.0001 |   0.1033 |   0.0967 |   2.9079 |   0.4031 |   0.3856 |   0.2978 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 1
| 147,892 | 24 | 20 | 3,700,737,910 |   4.2210 |   0.0073 |   0.0034 |   0.0001 |   0.1051 |   0.0965 |   2.9059 |   0.4127 |   0.3950 |   0.2985 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 1
| 147,892 | 24 | 20 | 3,700,737,910 |   4.2272 |   0.0074 |   0.0037 |   0.0001 |   0.1060 |   0.0946 |   2.8641 |   0.4108 |   0.4456 |   0.2986 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 1
| 147,892 | 24 | 20 | 3,700,737,910 |   4.1975 |   0.0073 |   0.0036 |   0.0001 |   0.1071 |   0.0986 |   2.8756 |   0.4068 |   0.3987 |   0.3034 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 1
| 147,892 | 24 | 20 | 3,700,737,910 |   4.0979 |   0.0075 |   0.0037 |   0.0001 |   0.1018 |   0.0936 |   2.8504 |   0.4089 |   0.3416 |   0.2941 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 1
| 147,892 | 16 | 20 | 3,700,737,910 |   5.7310 |   0.0124 |   0.0102 |   0.0001 |   0.1421 |   0.1329 |   3.5451 |   0.5873 |   0.8688 |   0.4424 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 1
| 147,892 | 16 | 20 | 3,700,737,910 |   5.5281 |   0.0074 |   0.0036 |   0.0001 |   0.1460 |   0.1307 |   3.4230 |   0.5876 |   0.7235 |   0.5098 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 1
| 147,892 | 16 | 20 | 3,700,737,910 |   5.6125 |   0.0074 |   0.0033 |   0.0001 |   0.1480 |   0.1340 |   3.5555 |   0.5851 |   0.6811 |   0.5013 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 1
| 147,892 | 16 | 20 | 3,700,737,910 |   5.6134 |   0.0074 |   0.0033 |   0.0001 |   0.1452 |   0.1334 |   3.4530 |   0.5873 |   0.7872 |   0.4998 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 1
| 147,892 | 16 | 20 | 3,700,737,910 |   5.6295 |   0.0074 |   0.0036 |   0.0001 |   0.1432 |   0.1334 |   3.5504 |   0.5847 |   0.7209 |   0.4893 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 1
| 147,892 | 8 | 20 | 3,700,737,910 |  12.3727 |   0.0076 |   0.0055 |   0.0001 |   0.2998 |   0.3381 |   4.9314 |   1.1725 |   4.6111 |   1.0123 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 1
| 147,892 | 8 | 20 | 3,700,737,910 |  12.8261 |   0.0076 |   0.0036 |   0.0001 |   0.3265 |   0.3427 |   4.9421 |   1.1660 |   5.0299 |   1.0113 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 1
| 147,892 | 8 | 20 | 3,700,737,910 |  12.9545 |   0.0076 |   0.0033 |   0.0001 |   0.3057 |   0.3453 |   4.9467 |   1.1738 |   5.2375 |   0.9378 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 1
| 147,892 | 8 | 20 | 3,700,737,910 |  11.9685 |   0.0076 |   0.0032 |   0.0001 |   0.3116 |   0.3467 |   4.9401 |   1.1647 |   4.1594 |   1.0384 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 1
| 147,892 | 8 | 20 | 3,700,737,910 |  13.0585 |   0.0075 |   0.0033 |   0.0001 |   0.3156 |   0.3392 |   4.9619 |   1.1723 |   5.2400 |   1.0219 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 1
| 165,435 | 40 | 588 | 3,137,407,481 |  21.1541 |   0.0075 |   0.0071 |   0.0001 |   0.4561 |   0.6707 |  11.7822 |   0.9586 |   7.0974 |   0.1816 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 1
| 165,435 | 40 | 588 | 3,137,407,481 |  21.0911 |   0.0075 |   0.0036 |   0.0001 |   0.4513 |   0.6681 |  11.7428 |   0.9727 |   7.1020 |   0.1467 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 1
| 165,435 | 40 | 588 | 3,137,407,481 |  21.1482 |   0.0074 |   0.0036 |   0.0001 |   0.4495 |   0.6775 |  11.7953 |   0.9492 |   7.1196 |   0.1497 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 1
| 165,435 | 40 | 588 | 3,137,407,481 |  21.0683 |   0.0074 |   0.0037 |   0.0001 |   0.4541 |   0.6672 |  11.7533 |   0.9528 |   7.0862 |   0.1473 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 1
| 165,435 | 40 | 588 | 3,137,407,481 |  21.0773 |   0.0074 |   0.0037 |   0.0001 |   0.4532 |   0.6658 |  11.7435 |   0.9635 |   7.0939 |   0.1501 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 1
| 165,435 | 32 | 588 | 3,137,407,481 |  21.4019 |   0.0074 |   0.0057 |   0.0001 |   0.5515 |   0.7406 |  11.1592 |   1.1372 |   7.6152 |   0.1908 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 1
| 165,435 | 32 | 588 | 3,137,407,481 |  21.4460 |   0.0073 |   0.0038 |   0.0001 |   0.5461 |   0.7409 |  11.2164 |   1.1569 |   7.5908 |   0.1875 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 1
| 165,435 | 32 | 588 | 3,137,407,481 |  21.4674 |   0.0073 |   0.0037 |   0.0001 |   0.5397 |   0.7470 |  11.2591 |   1.1468 |   7.5786 |   0.1889 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 1
| 165,435 | 32 | 588 | 3,137,407,481 |  21.5255 |   0.0074 |   0.0037 |   0.0001 |   0.5354 |   0.7271 |  11.1986 |   1.1565 |   7.7094 |   0.1910 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 1
| 165,435 | 32 | 588 | 3,137,407,481 |  21.4803 |   0.0073 |   0.0038 |   0.0001 |   0.5431 |   0.7394 |  11.2384 |   1.1627 |   7.6020 |   0.1873 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 1
| 165,435 | 24 | 588 | 3,137,407,481 |  25.9618 |   0.0073 |   0.0054 |   0.0001 |   0.7121 |   0.7994 |  10.8353 |   1.2431 |  12.0787 |   0.2857 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 1
| 165,435 | 24 | 588 | 3,137,407,481 |  25.9171 |   0.0075 |   0.0039 |   0.0001 |   0.7192 |   0.7985 |  10.7956 |   1.2362 |  12.0769 |   0.2831 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 1
| 165,435 | 24 | 588 | 3,137,407,481 |  25.9649 |   0.0073 |   0.0036 |   0.0001 |   0.7118 |   0.7972 |  10.8666 |   1.2774 |  12.0542 |   0.2502 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 1
| 165,435 | 24 | 588 | 3,137,407,481 |  25.9157 |   0.0074 |   0.0037 |   0.0001 |   0.7389 |   0.8019 |  10.7777 |   1.2559 |  12.0787 |   0.2551 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 1
| 165,435 | 24 | 588 | 3,137,407,481 |  25.9137 |   0.0073 |   0.0037 |   0.0001 |   0.7323 |   0.7977 |  10.8142 |   1.2366 |  12.0723 |   0.2532 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 1
| 165,435 | 16 | 588 | 3,137,407,481 |  35.9365 |   0.0074 |   0.0053 |   0.0001 |   0.9971 |   0.8832 |  10.7397 |   1.1019 |  21.8420 |   0.3651 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 1
| 165,435 | 16 | 588 | 3,137,407,481 |  35.7743 |   0.0075 |   0.0033 |   0.0001 |   0.9446 |   0.9167 |  10.5611 |   1.1117 |  21.8634 |   0.3693 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 1
| 165,435 | 16 | 588 | 3,137,407,481 |  35.9453 |   0.0074 |   0.0036 |   0.0001 |   0.9572 |   0.8999 |  10.6982 |   1.0909 |  21.8432 |   0.4485 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 1
| 165,435 | 16 | 588 | 3,137,407,481 |  35.9224 |   0.0074 |   0.0036 |   0.0001 |   1.0322 |   0.8963 |  10.5419 |   1.1189 |  21.8845 |   0.4412 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 1
| 165,435 | 16 | 588 | 3,137,407,481 |  36.6015 |   0.0074 |   0.0038 |   0.0001 |   0.9671 |   0.9202 |  11.6175 |   1.0758 |  21.5749 |   0.4386 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 1
| 165,435 | 8 | 588 | 3,137,407,481 |  74.3602 |   0.0073 |   0.0032 |   0.0001 |   1.9586 |   1.2897 |  19.7875 |   1.7131 |  48.8832 |   0.7208 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 1
| 165,435 | 8 | 588 | 3,137,407,481 |  70.2711 |   0.0073 |   0.0033 |   0.0001 |   2.0094 |   1.1539 |  12.5719 |   1.3509 |  52.4516 |   0.7262 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 1
| 165,435 | 8 | 588 | 3,137,407,481 |  70.7234 |   0.0073 |   0.0035 |   0.0001 |   2.0313 |   1.1291 |  12.7890 |   1.3256 |  52.7268 |   0.7142 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 1
| 165,435 | 8 | 588 | 3,137,407,481 |  70.6903 |   0.0075 |   0.0035 |   0.0001 |   1.9841 |   1.1412 |  12.6769 |   1.3162 |  52.7209 |   0.8435 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 1
| 165,435 | 8 | 588 | 3,137,407,481 |  71.9256 |   0.0074 |   0.0032 |   0.0001 |   2.1390 |   1.1821 |  12.7342 |   1.2333 |  53.9151 |   0.7146 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 1
| 409,593 | 40 | 77 | 65,941,441 |   1.4683 |   0.0074 |   0.0037 |   0.0001 |   0.0244 |   0.0598 |   1.1272 |   0.0715 |   0.1731 |   0.0048 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 1
| 409,593 | 40 | 77 | 65,941,441 |   1.5614 |   0.0074 |   0.0039 |   0.0001 |   0.0248 |   0.0699 |   1.1838 |   0.0780 |   0.1925 |   0.0048 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 1
| 409,593 | 40 | 77 | 65,941,441 |   1.4951 |   0.0074 |   0.0038 |   0.0001 |   0.0248 |   0.0613 |   1.1455 |   0.0703 |   0.1808 |   0.0048 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 1
| 409,593 | 40 | 77 | 65,941,441 |   1.4892 |   0.0073 |   0.0040 |   0.0001 |   0.0255 |   0.0613 |   1.1356 |   0.0744 |   0.1800 |   0.0049 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 1
| 409,593 | 40 | 77 | 65,941,441 |   1.4787 |   0.0075 |   0.0039 |   0.0001 |   0.0245 |   0.0622 |   1.1229 |   0.0745 |   0.1820 |   0.0049 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 1
| 409,593 | 32 | 77 | 65,941,441 |   1.4420 |   0.0075 |   0.0038 |   0.0001 |   0.0281 |   0.0615 |   1.0919 |   0.0696 |   0.1775 |   0.0058 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 1
| 409,593 | 32 | 77 | 65,941,441 |   1.4850 |   0.0074 |   0.0038 |   0.0001 |   0.0273 |   0.0621 |   1.1121 |   0.0859 |   0.1843 |   0.0059 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 1
| 409,593 | 32 | 77 | 65,941,441 |   1.4762 |   0.0075 |   0.0038 |   0.0001 |   0.0285 |   0.0632 |   1.1053 |   0.0870 |   0.1791 |   0.0055 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 1
| 409,593 | 32 | 77 | 65,941,441 |   1.4540 |   0.0074 |   0.0039 |   0.0001 |   0.0282 |   0.0629 |   1.0845 |   0.0837 |   0.1818 |   0.0054 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 1
| 409,593 | 32 | 77 | 65,941,441 |   1.4648 |   0.0075 |   0.0037 |   0.0001 |   0.0269 |   0.0623 |   1.1010 |   0.0825 |   0.1789 |   0.0055 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 1
| 409,593 | 24 | 77 | 65,941,441 |   1.3974 |   0.0075 |   0.0035 |   0.0001 |   0.0294 |   0.0678 |   1.0058 |   0.0947 |   0.1855 |   0.0067 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 1
| 409,593 | 24 | 77 | 65,941,441 |   1.4106 |   0.0075 |   0.0038 |   0.0001 |   0.0288 |   0.0675 |   1.0127 |   0.0977 |   0.1897 |   0.0066 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 1
| 409,593 | 24 | 77 | 65,941,441 |   1.4092 |   0.0075 |   0.0048 |   0.0001 |   0.0293 |   0.0685 |   1.0134 |   0.0977 |   0.1863 |   0.0065 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 1
| 409,593 | 24 | 77 | 65,941,441 |   1.4062 |   0.0088 |   0.0037 |   0.0001 |   0.0312 |   0.0675 |   1.0129 |   0.0947 |   0.1843 |   0.0067 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 1
| 409,593 | 24 | 77 | 65,941,441 |   1.4053 |   0.0074 |   0.0035 |   0.0001 |   0.0299 |   0.0668 |   1.0149 |   0.0954 |   0.1843 |   0.0066 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 1
| 409,593 | 16 | 77 | 65,941,441 |   1.3108 |   0.0075 |   0.0034 |   0.0001 |   0.0311 |   0.0738 |   0.9460 |   0.0809 |   0.1622 |   0.0092 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 1
| 409,593 | 16 | 77 | 65,941,441 |   1.3075 |   0.0074 |   0.0039 |   0.0001 |   0.0310 |   0.0761 |   0.9395 |   0.0810 |   0.1633 |   0.0091 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 1
| 409,593 | 16 | 77 | 65,941,441 |   1.3122 |   0.0074 |   0.0033 |   0.0001 |   0.0308 |   0.0735 |   0.9472 |   0.0801 |   0.1640 |   0.0091 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 1
| 409,593 | 16 | 77 | 65,941,441 |   1.3341 |   0.0074 |   0.0034 |   0.0001 |   0.0308 |   0.0739 |   0.9440 |   0.0806 |   0.1881 |   0.0093 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 1
| 409,593 | 16 | 77 | 65,941,441 |   1.3251 |   0.0074 |   0.0035 |   0.0001 |   0.0308 |   0.0738 |   0.9376 |   0.0806 |   0.1857 |   0.0092 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 1
| 409,593 | 8 | 77 | 65,941,441 |   1.4835 |   0.0113 |   0.0035 |   0.0002 |   0.0510 |   0.0891 |   1.0470 |   0.1058 |   0.1621 |   0.0169 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 1
| 409,593 | 8 | 77 | 65,941,441 |   1.4719 |   0.0074 |   0.0034 |   0.0002 |   0.0504 |   0.0886 |   1.0418 |   0.1053 |   0.1614 |   0.0169 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 1
| 409,593 | 8 | 77 | 65,941,441 |   1.4767 |   0.0068 |   0.0034 |   0.0002 |   0.0507 |   0.0885 |   1.0474 |   0.1055 |   0.1605 |   0.0171 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 1
| 409,593 | 8 | 77 | 65,941,441 |   1.4793 |   0.0075 |   0.0035 |   0.0002 |   0.0508 |   0.0883 |   1.0448 |   0.1056 |   0.1652 |   0.0169 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 1
| 409,593 | 8 | 77 | 65,941,441 |   1.4647 |   0.0074 |   0.0035 |   0.0002 |   0.0501 |   0.0879 |   1.0360 |   0.1060 |   0.1601 |   0.0169 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 40 | 513 | 864,761,518 |   9.9955 |   0.0076 |   0.0064 |   0.0001 |   0.2257 |   0.4047 |   7.0955 |   0.4460 |   1.7716 |   0.0443 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 40 | 513 | 864,761,518 |   9.9298 |   0.0073 |   0.0038 |   0.0001 |   0.2270 |   0.3978 |   7.0281 |   0.4566 |   1.7685 |   0.0444 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 40 | 513 | 864,761,518 |   9.9288 |   0.0075 |   0.0038 |   0.0001 |   0.2264 |   0.4000 |   7.0177 |   0.4561 |   1.7769 |   0.0442 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 40 | 513 | 864,761,518 |   9.9801 |   0.0074 |   0.0037 |   0.0001 |   0.2237 |   0.4054 |   7.0673 |   0.4488 |   1.7829 |   0.0444 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 40 | 513 | 864,761,518 |   9.9192 |   0.0074 |   0.0037 |   0.0001 |   0.2252 |   0.3976 |   7.0248 |   0.4507 |   1.7692 |   0.0444 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 32 | 513 | 864,761,518 |  10.1720 |   0.0074 |   0.0058 |   0.0001 |   0.2567 |   0.4323 |   7.0102 |   0.5005 |   1.9109 |   0.0538 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 32 | 513 | 864,761,518 |  10.0997 |   0.0073 |   0.0038 |   0.0001 |   0.2514 |   0.4264 |   6.9645 |   0.4855 |   1.9097 |   0.0547 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 32 | 513 | 864,761,518 |  10.1752 |   0.0073 |   0.0040 |   0.0001 |   0.2492 |   0.4307 |   7.0278 |   0.4783 |   1.9278 |   0.0540 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 32 | 513 | 864,761,518 |  10.0877 |   0.0074 |   0.0039 |   0.0001 |   0.2442 |   0.4286 |   6.9582 |   0.4890 |   1.9067 |   0.0536 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 32 | 513 | 864,761,518 |  10.1142 |   0.0075 |   0.0039 |   0.0001 |   0.2453 |   0.4305 |   6.9755 |   0.4942 |   1.9072 |   0.0541 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 24 | 513 | 864,761,518 |  10.6822 |   0.0075 |   0.0055 |   0.0001 |   0.3116 |   0.4759 |   6.9829 |   0.6079 |   2.2239 |   0.0725 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 24 | 513 | 864,761,518 |  10.6451 |   0.0078 |   0.0039 |   0.0001 |   0.3013 |   0.4738 |   6.9532 |   0.6113 |   2.2251 |   0.0725 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 24 | 513 | 864,761,518 |  10.7038 |   0.0077 |   0.0037 |   0.0001 |   0.3115 |   0.4826 |   6.9946 |   0.6128 |   2.2220 |   0.0725 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 24 | 513 | 864,761,518 |  10.6919 |   0.0076 |   0.0039 |   0.0001 |   0.3111 |   0.4725 |   6.9796 |   0.6147 |   2.2328 |   0.0736 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 24 | 513 | 864,761,518 |  10.7389 |   0.0076 |   0.0039 |   0.0001 |   0.3096 |   0.4783 |   7.0246 |   0.6109 |   2.2353 |   0.0724 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 16 | 513 | 864,761,518 |  12.6684 |   0.0077 |   0.0037 |   0.0007 |   0.3115 |   0.5523 |   7.5842 |   0.7044 |   3.3725 |   0.1351 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 16 | 513 | 864,761,518 |  12.7183 |   0.0083 |   0.0035 |   0.0017 |   0.3040 |   0.5467 |   7.6012 |   0.7132 |   3.4376 |   0.1057 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 16 | 513 | 864,761,518 |  12.6103 |   0.0077 |   0.0038 |   0.0018 |   0.3081 |   0.5352 |   7.5340 |   0.7088 |   3.3839 |   0.1308 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 16 | 513 | 864,761,518 |  12.6858 |   0.0080 |   0.0034 |   0.0007 |   0.3100 |   0.5574 |   7.5911 |   0.7134 |   3.4016 |   0.1036 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 16 | 513 | 864,761,518 |  12.6619 |   0.0076 |   0.0038 |   0.0008 |   0.3067 |   0.5517 |   7.5506 |   0.7058 |   3.4162 |   0.1225 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 8 | 513 | 864,761,518 |  25.1815 |   0.0083 |   0.0034 |   0.0003 |   0.5657 |   0.7778 |  10.3369 |   0.9933 |  12.2930 |   0.2062 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 8 | 513 | 864,761,518 |  23.2312 |   0.0080 |   0.0036 |   0.0003 |   0.5624 |   0.7355 |   8.4511 |   0.9900 |  12.2799 |   0.2039 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 8 | 513 | 864,761,518 |  23.3185 |   0.0081 |   0.0035 |   0.0003 |   0.5752 |   0.7537 |   8.4854 |   1.0033 |  12.2882 |   0.2042 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 8 | 513 | 864,761,518 |  23.2839 |   0.0079 |   0.0035 |   0.0003 |   0.5562 |   0.7443 |   8.4314 |   0.9944 |  12.3455 |   0.2039 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 1
| 552,020 | 8 | 513 | 864,761,518 |  23.2952 |   0.0082 |   0.0035 |   0.0003 |   0.5587 |   0.7366 |   8.4608 |   0.9905 |  12.2951 |   0.2451 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
CUDA AWARE MPI - TWO PASS
------------------------------------------------------------------------------------
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 1
| 163,734 | 40 | 125 | 408,443,204 |   4.7179 |   0.0074 |   0.0037 |   0.0001 |   0.0759 |   0.3151 |   3.5714 |   0.1631 |   0.5629 |   0.0220 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 1
| 163,734 | 40 | 125 | 408,443,204 |   4.7108 |   0.0074 |   0.0038 |   0.0001 |   0.0784 |   0.3064 |   3.5644 |   0.1628 |   0.5696 |   0.0218 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 1
| 163,734 | 40 | 125 | 408,443,204 |   4.7813 |   0.0075 |   0.0038 |   0.0001 |   0.0853 |   0.3209 |   3.6103 |   0.1714 |   0.5639 |   0.0220 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 1
| 163,734 | 40 | 125 | 408,443,204 |   4.7137 |   0.0073 |   0.0038 |   0.0001 |   0.0788 |   0.3054 |   3.5770 |   0.1635 |   0.5596 |   0.0220 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 1
| 163,734 | 40 | 125 | 408,443,204 |   4.7074 |   0.0074 |   0.0037 |   0.0001 |   0.0784 |   0.3094 |   3.5791 |   0.1624 |   0.5482 |   0.0225 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 1
| 163,734 | 32 | 125 | 408,443,204 |   4.4182 |   0.0074 |   0.0038 |   0.0001 |   0.0956 |   0.3228 |   3.2553 |   0.1750 |   0.5358 |   0.0262 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 1
| 163,734 | 32 | 125 | 408,443,204 |   4.4885 |   0.0074 |   0.0038 |   0.0001 |   0.0964 |   0.3252 |   3.3087 |   0.1903 |   0.5338 |   0.0267 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 1
| 163,734 | 32 | 125 | 408,443,204 |   4.4924 |   0.0075 |   0.0037 |   0.0001 |   0.0948 |   0.3212 |   3.3105 |   0.1809 |   0.5508 |   0.0268 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 1
| 163,734 | 32 | 125 | 408,443,204 |   4.4746 |   0.0075 |   0.0038 |   0.0001 |   0.0956 |   0.3237 |   3.2891 |   0.1862 |   0.5463 |   0.0262 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 1
| 163,734 | 32 | 125 | 408,443,204 |   4.4636 |   0.0074 |   0.0038 |   0.0001 |   0.0953 |   0.3273 |   3.2852 |   0.1822 |   0.5399 |   0.0263 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 1
| 163,734 | 24 | 125 | 408,443,204 |   4.2290 |   0.0075 |   0.0037 |   0.0001 |   0.1029 |   0.3482 |   2.9805 |   0.2137 |   0.5406 |   0.0356 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 1
| 163,734 | 24 | 125 | 408,443,204 |   4.1539 |   0.0075 |   0.0037 |   0.0001 |   0.1026 |   0.3468 |   2.8795 |   0.2154 |   0.5671 |   0.0349 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 1
| 163,734 | 24 | 125 | 408,443,204 |   4.1778 |   0.0075 |   0.0038 |   0.0001 |   0.1050 |   0.3455 |   2.9004 |   0.2167 |   0.5679 |   0.0347 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 1
| 163,734 | 24 | 125 | 408,443,204 |   4.1562 |   0.0074 |   0.0039 |   0.0001 |   0.1041 |   0.3454 |   2.9069 |   0.2168 |   0.5401 |   0.0354 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 1
| 163,734 | 24 | 125 | 408,443,204 |   4.1430 |   0.0075 |   0.0037 |   0.0001 |   0.1031 |   0.3466 |   2.8851 |   0.2119 |   0.5535 |   0.0352 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 1
| 163,734 | 16 | 125 | 408,443,204 |   3.7020 |   0.0075 |   0.0036 |   0.0001 |   0.1070 |   0.3728 |   2.4511 |   0.2374 |   0.4757 |   0.0504 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 1
| 163,734 | 16 | 125 | 408,443,204 |   3.7567 |   0.0075 |   0.0036 |   0.0001 |   0.1087 |   0.3744 |   2.4474 |   0.2414 |   0.5270 |   0.0502 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 1
| 163,734 | 16 | 125 | 408,443,204 |   3.7159 |   0.0074 |   0.0036 |   0.0001 |   0.1072 |   0.3693 |   2.4688 |   0.2397 |   0.4725 |   0.0510 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 1
| 163,734 | 16 | 125 | 408,443,204 |   3.6833 |   0.0074 |   0.0033 |   0.0001 |   0.1069 |   0.3716 |   2.4400 |   0.2389 |   0.4680 |   0.0504 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 1
| 163,734 | 16 | 125 | 408,443,204 |   3.7198 |   0.0075 |   0.0038 |   0.0001 |   0.1078 |   0.3711 |   2.4534 |   0.2378 |   0.4917 |   0.0506 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 1
| 163,734 | 8 | 125 | 408,443,204 |   4.4469 |   0.0074 |   0.0032 |   0.0001 |   0.1467 |   0.5022 |   2.7328 |   0.3453 |   0.6147 |   0.0978 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 1
| 163,734 | 8 | 125 | 408,443,204 |   4.4462 |   0.0074 |   0.0033 |   0.0001 |   0.1446 |   0.5019 |   2.7374 |   0.3467 |   0.6092 |   0.0989 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 1
| 163,734 | 8 | 125 | 408,443,204 |   4.4465 |   0.0074 |   0.0033 |   0.0001 |   0.1485 |   0.5040 |   2.7239 |   0.3471 |   0.6185 |   0.0970 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 1
| 163,734 | 8 | 125 | 408,443,204 |   4.5567 |   0.0074 |   0.0033 |   0.0001 |   0.1621 |   0.5115 |   2.7956 |   0.3617 |   0.6209 |   0.0974 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 1
| 163,734 | 8 | 125 | 408,443,204 |   4.4243 |   0.0073 |   0.0032 |   0.0001 |   0.1444 |   0.4984 |   2.7205 |   0.3439 |   0.6107 |   0.0990 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 1
| 147,892 | 40 | 20 | 3,700,737,910 |   4.4748 |   0.0074 |   0.0048 |   0.0001 |   0.0680 |   1.0497 |   2.6160 |   0.2287 |   0.3215 |   0.1834 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 1
| 147,892 | 40 | 20 | 3,700,737,910 |   4.4842 |   0.0075 |   0.0037 |   0.0001 |   0.0688 |   1.0495 |   2.6368 |   0.2259 |   0.3088 |   0.1867 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 1
| 147,892 | 40 | 20 | 3,700,737,910 |   4.4933 |   0.0074 |   0.0038 |   0.0001 |   0.0762 |   1.0536 |   2.6349 |   0.2256 |   0.3106 |   0.1848 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 1
| 147,892 | 40 | 20 | 3,700,737,910 |   4.5116 |   0.0074 |   0.0037 |   0.0001 |   0.0693 |   1.0483 |   2.6376 |   0.2241 |   0.3450 |   0.1799 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 1
| 147,892 | 40 | 20 | 3,700,737,910 |   4.5114 |   0.0073 |   0.0037 |   0.0001 |   0.0694 |   1.0487 |   2.6549 |   0.2241 |   0.3256 |   0.1814 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 1
| 147,892 | 32 | 20 | 3,700,737,910 |   4.8122 |   0.0075 |   0.0037 |   0.0001 |   0.0827 |   1.1169 |   2.7955 |   0.2739 |   0.3134 |   0.2223 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 1
| 147,892 | 32 | 20 | 3,700,737,910 |   4.7394 |   0.0073 |   0.0036 |   0.0001 |   0.0806 |   1.1085 |   2.7340 |   0.2715 |   0.3120 |   0.2255 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 1
| 147,892 | 32 | 20 | 3,700,737,910 |   4.8253 |   0.0075 |   0.0037 |   0.0001 |   0.0817 |   1.1184 |   2.7799 |   0.2742 |   0.3412 |   0.2224 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 1
| 147,892 | 32 | 20 | 3,700,737,910 |   4.8175 |   0.0074 |   0.0037 |   0.0001 |   0.0814 |   1.1219 |   2.7756 |   0.2756 |   0.3281 |   0.2273 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 1
| 147,892 | 32 | 20 | 3,700,737,910 |   4.7341 |   0.0072 |   0.0036 |   0.0001 |   0.0789 |   1.1160 |   2.7274 |   0.2772 |   0.3036 |   0.2237 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 1
| 147,892 | 24 | 20 | 3,700,737,910 |   5.9419 |   0.0075 |   0.0036 |   0.0001 |   0.1093 |   1.3670 |   3.3739 |   0.3548 |   0.4335 |   0.2958 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 1
| 147,892 | 24 | 20 | 3,700,737,910 |   5.9017 |   0.0075 |   0.0037 |   0.0001 |   0.1028 |   1.3519 |   3.3514 |   0.3556 |   0.4362 |   0.2961 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 1
| 147,892 | 24 | 20 | 3,700,737,910 |   5.8582 |   0.0078 |   0.0033 |   0.0001 |   0.1019 |   1.3551 |   3.3361 |   0.3546 |   0.4091 |   0.2936 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 1
| 147,892 | 24 | 20 | 3,700,737,910 |   5.8733 |   0.0075 |   0.0038 |   0.0001 |   0.0994 |   1.3746 |   3.3050 |   0.3570 |   0.4358 |   0.2939 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 1
| 147,892 | 24 | 20 | 3,700,737,910 |   5.8806 |   0.0075 |   0.0038 |   0.0001 |   0.1000 |   1.3606 |   3.3585 |   0.3515 |   0.3996 |   0.3029 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 1
| 147,892 | 16 | 20 | 3,700,737,910 |   7.7832 |   0.0073 |   0.0034 |   0.0001 |   0.1471 |   1.8314 |   4.0533 |   0.5215 |   0.7230 |   0.4996 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 1
| 147,892 | 16 | 20 | 3,700,737,910 |   7.7693 |   0.0074 |   0.0032 |   0.0001 |   0.1452 |   1.8362 |   4.0255 |   0.5139 |   0.8001 |   0.4410 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 1
| 147,892 | 16 | 20 | 3,700,737,910 |   7.6665 |   0.0073 |   0.0034 |   0.0001 |   0.1460 |   1.8335 |   3.9235 |   0.5158 |   0.8027 |   0.4376 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 1
| 147,892 | 16 | 20 | 3,700,737,910 |   7.8768 |   0.0074 |   0.0033 |   0.0001 |   0.1430 |   1.8318 |   4.1911 |   0.5168 |   0.6525 |   0.5342 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 1
| 147,892 | 16 | 20 | 3,700,737,910 |   7.8172 |   0.0074 |   0.0035 |   0.0001 |   0.1465 |   1.8302 |   4.0690 |   0.5134 |   0.7484 |   0.5023 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 1
| 165,435 | 40 | 588 | 3,137,407,481 |  22.0750 |   0.0075 |   0.0039 |   0.0001 |   0.4377 |   0.8919 |  13.6727 |   0.7466 |   6.1709 |   0.1476 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 1
| 165,435 | 40 | 588 | 3,137,407,481 |  22.0602 |   0.0074 |   0.0037 |   0.0001 |   0.4374 |   0.9050 |  13.6660 |   0.7435 |   6.1535 |   0.1474 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 1
| 165,435 | 40 | 588 | 3,137,407,481 |  22.1154 |   0.0074 |   0.0037 |   0.0001 |   0.4366 |   0.9053 |  13.6146 |   0.7477 |   6.2235 |   0.1802 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 1
| 165,435 | 40 | 588 | 3,137,407,481 |  22.1376 |   0.0074 |   0.0036 |   0.0001 |   0.4365 |   0.9036 |  13.6372 |   0.7339 |   6.2390 |   0.1799 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 1
| 165,435 | 40 | 588 | 3,137,407,481 |  22.2708 |   0.0075 |   0.0037 |   0.0001 |   0.4467 |   0.9076 |  13.7184 |   0.7635 |   6.2787 |   0.1484 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 1
| 165,435 | 32 | 588 | 3,137,407,481 |  22.4079 |   0.0074 |   0.0038 |   0.0001 |   0.5344 |   1.0382 |  13.2686 |   0.8873 |   6.4824 |   0.1895 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 1
| 165,435 | 32 | 588 | 3,137,407,481 |  22.5890 |   0.0074 |   0.0036 |   0.0001 |   0.5422 |   1.0190 |  13.4698 |   0.8840 |   6.4790 |   0.1876 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 1
| 165,435 | 32 | 588 | 3,137,407,481 |  22.5230 |   0.0074 |   0.0037 |   0.0001 |   0.5435 |   1.0284 |  13.4061 |   0.8838 |   6.4641 |   0.1898 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 1
| 165,435 | 32 | 588 | 3,137,407,481 |  22.6380 |   0.0075 |   0.0036 |   0.0001 |   0.5474 |   1.0100 |  13.4432 |   0.8623 |   6.5487 |   0.2189 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 1
| 165,435 | 32 | 588 | 3,137,407,481 |  22.5755 |   0.0074 |   0.0038 |   0.0001 |   0.5428 |   1.0353 |  13.4917 |   0.8567 |   6.4252 |   0.2163 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 1
| 165,435 | 24 | 588 | 3,137,407,481 |  26.8817 |   0.0074 |   0.0039 |   0.0001 |   0.6905 |   1.0590 |  12.7396 |   1.0371 |  11.0488 |   0.2991 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 1
| 165,435 | 24 | 588 | 3,137,407,481 |  26.7762 |   0.0074 |   0.0036 |   0.0001 |   0.6656 |   1.0370 |  12.7654 |   1.0376 |  11.0073 |   0.2558 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 1
| 165,435 | 24 | 588 | 3,137,407,481 |  26.7853 |   0.0074 |   0.0037 |   0.0001 |   0.6954 |   1.0575 |  12.7638 |   1.0564 |  10.9133 |   0.2914 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 1
| 165,435 | 24 | 588 | 3,137,407,481 |  26.7733 |   0.0074 |   0.0038 |   0.0001 |   0.6768 |   1.0331 |  12.7550 |   1.0419 |  11.0087 |   0.2503 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 1
| 165,435 | 24 | 588 | 3,137,407,481 |  26.8359 |   0.0074 |   0.0037 |   0.0001 |   0.6970 |   1.0545 |  12.7634 |   1.0633 |  10.9977 |   0.2525 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 1
| 165,435 | 16 | 588 | 3,137,407,481 |  36.4412 |   0.0074 |   0.0035 |   0.0001 |   0.9626 |   1.0036 |  12.1023 |   1.1316 |  20.8632 |   0.3704 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 1
| 165,435 | 16 | 588 | 3,137,407,481 |  36.3445 |   0.0074 |   0.0033 |   0.0001 |   0.9860 |   0.9936 |  12.0963 |   1.1035 |  20.7826 |   0.3751 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 1
| 165,435 | 16 | 588 | 3,137,407,481 |  36.1719 |   0.0074 |   0.0034 |   0.0001 |   0.9512 |   1.0073 |  11.9466 |   1.0909 |  20.8009 |   0.3677 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 1
| 165,435 | 16 | 588 | 3,137,407,481 |  36.4033 |   0.0075 |   0.0036 |   0.0001 |   0.9973 |   1.0205 |  12.0830 |   1.1168 |  20.7990 |   0.3792 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 1
| 165,435 | 16 | 588 | 3,137,407,481 |  36.2401 |   0.0073 |   0.0034 |   0.0001 |   1.0030 |   0.9909 |  12.0491 |   1.0938 |  20.7255 |   0.3705 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 1
| 165,435 | 8 | 588 | 3,137,407,481 |  77.4564 |   0.0073 |   0.0033 |   0.0001 |   1.4501 |   1.2234 |  12.6902 |   1.2384 |  59.9828 |   0.8643 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 1
| 165,435 | 8 | 588 | 3,137,407,481 |  74.1484 |   0.0074 |   0.0033 |   0.0001 |   1.6005 |   1.2710 |  12.8491 |   1.2530 |  56.3130 |   0.8543 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 1
| 165,435 | 8 | 588 | 3,137,407,481 |  75.4780 |   0.0075 |   0.0033 |   0.0001 |   2.1192 |   1.2523 |  13.4041 |   1.2414 |  56.5989 |   0.8546 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 1
| 165,435 | 8 | 588 | 3,137,407,481 |  71.8690 |   0.0074 |   0.0033 |   0.0001 |   1.5632 |   1.2476 |  12.9603 |   1.2787 |  54.0861 |   0.7257 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 1
| 165,435 | 8 | 588 | 3,137,407,481 |  73.3213 |   0.0071 |   0.0033 |   0.0001 |   2.1964 |   1.2275 |  13.7711 |   1.2678 |  54.1350 |   0.7164 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 1
| 409,593 | 40 | 77 | 65,941,441 |   2.2937 |   0.0075 |   0.0063 |   0.0001 |   0.0295 |   0.0821 |   1.8174 |   0.0577 |   0.2948 |   0.0047 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 1
| 409,593 | 40 | 77 | 65,941,441 |   2.1639 |   0.0074 |   0.0037 |   0.0001 |   0.0267 |   0.0754 |   1.7230 |   0.0518 |   0.2748 |   0.0048 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 1
| 409,593 | 40 | 77 | 65,941,441 |   2.2813 |   0.0076 |   0.0050 |   0.0001 |   0.0268 |   0.0860 |   1.7973 |   0.0562 |   0.3025 |   0.0048 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 1
| 409,593 | 40 | 77 | 65,941,441 |   2.2872 |   0.0074 |   0.0037 |   0.0001 |   0.0278 |   0.0856 |   1.8083 |   0.0550 |   0.2980 |   0.0049 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 1
| 409,593 | 40 | 77 | 65,941,441 |   2.2742 |   0.0074 |   0.0036 |   0.0001 |   0.0284 |   0.0886 |   1.8015 |   0.0513 |   0.2922 |   0.0048 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 1
| 409,593 | 32 | 77 | 65,941,441 |   2.2551 |   0.0074 |   0.0056 |   0.0001 |   0.0278 |   0.0862 |   1.7964 |   0.0659 |   0.2658 |   0.0055 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 1
| 409,593 | 32 | 77 | 65,941,441 |   2.2968 |   0.0074 |   0.0038 |   0.0001 |   0.0282 |   0.0819 |   1.8234 |   0.0645 |   0.2860 |   0.0054 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 1
| 409,593 | 32 | 77 | 65,941,441 |   2.3453 |   0.0074 |   0.0038 |   0.0001 |   0.0299 |   0.0846 |   1.8519 |   0.0617 |   0.3043 |   0.0055 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 1
| 409,593 | 32 | 77 | 65,941,441 |   2.1942 |   0.0073 |   0.0039 |   0.0001 |   0.0290 |   0.0860 |   1.7425 |   0.0626 |   0.2611 |   0.0058 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 1
| 409,593 | 32 | 77 | 65,941,441 |   2.2373 |   0.0074 |   0.0038 |   0.0001 |   0.0285 |   0.0856 |   1.7811 |   0.0675 |   0.2616 |   0.0056 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 1
| 409,593 | 24 | 77 | 65,941,441 |   2.0631 |   0.0075 |   0.0053 |   0.0001 |   0.0300 |   0.0958 |   1.5578 |   0.0827 |   0.2828 |   0.0064 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 1
| 409,593 | 24 | 77 | 65,941,441 |   2.0393 |   0.0076 |   0.0038 |   0.0001 |   0.0303 |   0.0982 |   1.5248 |   0.0819 |   0.2902 |   0.0064 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 1
| 409,593 | 24 | 77 | 65,941,441 |   2.0314 |   0.0076 |   0.0037 |   0.0001 |   0.0305 |   0.0943 |   1.5305 |   0.0831 |   0.2789 |   0.0064 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 1
| 409,593 | 24 | 77 | 65,941,441 |   2.0359 |   0.0077 |   0.0038 |   0.0001 |   0.0297 |   0.0975 |   1.5404 |   0.0841 |   0.2700 |   0.0065 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 1
| 409,593 | 24 | 77 | 65,941,441 |   2.0587 |   0.0076 |   0.0037 |   0.0001 |   0.0305 |   0.0943 |   1.5527 |   0.0848 |   0.2823 |   0.0064 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 1
| 409,593 | 16 | 77 | 65,941,441 |   1.7779 |   0.0075 |   0.0053 |   0.0001 |   0.0330 |   0.0937 |   1.3422 |   0.0789 |   0.2134 |   0.0091 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 1
| 409,593 | 16 | 77 | 65,941,441 |   1.7749 |   0.0075 |   0.0033 |   0.0001 |   0.0342 |   0.0923 |   1.3462 |   0.0782 |   0.2072 |   0.0093 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 1
| 409,593 | 16 | 77 | 65,941,441 |   1.7615 |   0.0073 |   0.0037 |   0.0001 |   0.0340 |   0.0971 |   1.3096 |   0.0786 |   0.2256 |   0.0091 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 1
| 409,593 | 16 | 77 | 65,941,441 |   1.7754 |   0.0074 |   0.0035 |   0.0001 |   0.0334 |   0.0916 |   1.3417 |   0.0785 |   0.2137 |   0.0091 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 1
| 409,593 | 16 | 77 | 65,941,441 |   1.7907 |   0.0073 |   0.0034 |   0.0001 |   0.0333 |   0.0945 |   1.3452 |   0.0779 |   0.2235 |   0.0090 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 1
| 409,593 | 8 | 77 | 65,941,441 |   1.9512 |   0.0074 |   0.0034 |   0.0003 |   0.0492 |   0.1154 |   1.4190 |   0.1038 |   0.2396 |   0.0166 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 1
| 409,593 | 8 | 77 | 65,941,441 |   1.9745 |   0.0073 |   0.0034 |   0.0003 |   0.0492 |   0.1268 |   1.3985 |   0.1040 |   0.2719 |   0.0165 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 1
| 409,593 | 8 | 77 | 65,941,441 |   1.9928 |   0.0072 |   0.0036 |   0.0003 |   0.0499 |   0.1158 |   1.4516 |   0.1061 |   0.2450 |   0.0168 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 1
| 409,593 | 8 | 77 | 65,941,441 |   1.9394 |   0.0074 |   0.0034 |   0.0003 |   0.0494 |   0.1156 |   1.4272 |   0.1038 |   0.2189 |   0.0167 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 1
| 409,593 | 8 | 77 | 65,941,441 |   1.9893 |   0.0072 |   0.0034 |   0.0003 |   0.0493 |   0.1154 |   1.4643 |   0.1042 |   0.2311 |   0.0174 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 40 | 513 | 864,761,518 |  15.8161 |   0.0074 |   0.0052 |   0.0001 |   0.2416 |   0.6419 |  12.0571 |   0.3933 |   2.4298 |   0.0450 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 40 | 513 | 864,761,518 |  15.8731 |   0.0075 |   0.0051 |   0.0001 |   0.2480 |   0.6278 |  12.0870 |   0.3885 |   2.4700 |   0.0442 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 40 | 513 | 864,761,518 |  15.7888 |   0.0075 |   0.0040 |   0.0001 |   0.2398 |   0.6442 |  11.9968 |   0.3967 |   2.4598 |   0.0440 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 40 | 513 | 864,761,518 |  15.9158 |   0.0074 |   0.0039 |   0.0001 |   0.2398 |   0.6517 |  12.1158 |   0.3970 |   2.4601 |   0.0439 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 40 | 513 | 864,761,518 |  15.9589 |   0.0073 |   0.0039 |   0.0001 |   0.2393 |   0.6436 |  12.1586 |   0.3968 |   2.4688 |   0.0443 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 32 | 513 | 864,761,518 |  13.8870 |   0.0074 |   0.0040 |   0.0001 |   0.2697 |   0.7047 |  10.1570 |   0.4147 |   2.2796 |   0.0539 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 32 | 513 | 864,761,518 |  13.7686 |   0.0075 |   0.0037 |   0.0001 |   0.2706 |   0.7012 |  10.1351 |   0.4076 |   2.1925 |   0.0540 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 32 | 513 | 864,761,518 |  13.9557 |   0.0080 |   0.0038 |   0.0001 |   0.2649 |   0.6872 |  10.2919 |   0.4160 |   2.2338 |   0.0538 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 32 | 513 | 864,761,518 |  14.1022 |   0.0076 |   0.0037 |   0.0001 |   0.2734 |   0.6983 |  10.3563 |   0.4182 |   2.2945 |   0.0538 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 32 | 513 | 864,761,518 |  13.7585 |   0.0077 |   0.0038 |   0.0001 |   0.2540 |   0.6311 |  10.1511 |   0.4147 |   2.2459 |   0.0540 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 24 | 513 | 864,761,518 |  14.3197 |   0.0074 |   0.0037 |   0.0001 |   0.3061 |   0.8030 |   9.9695 |   0.5243 |   2.6375 |   0.0720 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 24 | 513 | 864,761,518 |  14.2205 |   0.0074 |   0.0035 |   0.0001 |   0.3034 |   0.7991 |   9.9024 |   0.5154 |   2.6204 |   0.0723 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 24 | 513 | 864,761,518 |  14.2990 |   0.0075 |   0.0037 |   0.0001 |   0.2984 |   0.8077 |   9.9688 |   0.5096 |   2.6348 |   0.0721 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 24 | 513 | 864,761,518 |  14.3626 |   0.0074 |   0.0039 |   0.0001 |   0.3016 |   0.7974 |   9.9916 |   0.5268 |   2.6651 |   0.0726 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 24 | 513 | 864,761,518 |  14.3026 |   0.0075 |   0.0038 |   0.0001 |   0.3080 |   0.8014 |   9.9319 |   0.5229 |   2.6583 |   0.0726 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 16 | 513 | 864,761,518 |  15.2786 |   0.0077 |   0.0034 |   0.0016 |   0.3376 |   0.8668 |   9.9585 |   0.6755 |   3.3263 |   0.1046 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 16 | 513 | 864,761,518 |  15.0174 |   0.0077 |   0.0034 |   0.0016 |   0.3399 |   0.8638 |   9.9545 |   0.6711 |   3.0737 |   0.1050 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 16 | 513 | 864,761,518 |  15.0171 |   0.0077 |   0.0037 |   0.0016 |   0.3450 |   0.8722 |   9.9430 |   0.6709 |   3.0718 |   0.1048 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 16 | 513 | 864,761,518 |  14.9655 |   0.0077 |   0.0038 |   0.0012 |   0.3372 |   0.8643 |   9.9443 |   0.6721 |   3.0337 |   0.1051 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 16 | 513 | 864,761,518 |  14.9906 |   0.0077 |   0.0037 |   0.0016 |   0.3412 |   0.8696 |   9.9333 |   0.6745 |   3.0587 |   0.1039 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 8 | 513 | 864,761,518 |  23.8830 |   0.0075 |   0.0034 |   0.0003 |   0.5192 |   1.2236 |  10.6072 |   0.9829 |  10.2977 |   0.2445 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 8 | 513 | 864,761,518 |  23.7544 |   0.0077 |   0.0035 |   0.0003 |   0.5163 |   1.2269 |  10.5659 |   0.9822 |  10.2202 |   0.2348 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 8 | 513 | 864,761,518 |  23.8411 |   0.0078 |   0.0035 |   0.0003 |   0.5014 |   1.2284 |  10.5868 |   0.9788 |  10.2940 |   0.2436 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 8 | 513 | 864,761,518 |  23.7602 |   0.0077 |   0.0035 |   0.0003 |   0.5105 |   1.2148 |  10.6474 |   0.9859 |  10.1500 |   0.2436 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 1
| 552,020 | 8 | 513 | 864,761,518 |  23.7483 |   0.0078 |   0.0035 |   0.0003 |   0.5022 |   1.2173 |  10.5424 |   0.9799 |  10.2514 |   0.2471 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
Polaris job ended at: 2024-08-15 12:35:02
Total time taken: 2 hour(s), 3 minute(s), 20 second(s)
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> JOB ENDED >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

```
