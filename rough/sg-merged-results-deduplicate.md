```shell
Polaris job started at: 2024-08-15 01:56:28
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> JOB STARTED >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
TRADITIONAL MPI - SORTING
------------------------------------------------------------------------------------
CC sg.cu -o sg.out -lm -O3
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 40 | 125 | 408,443,204 |   1.8640 |   0.7176 |   0.6545 |   0.0001 |   0.0769 |   0.1385 |   0.5614 |   0.0926 |   0.2537 |   0.0232 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 40 | 125 | 408,443,204 |   1.8458 |   0.7105 |   0.6767 |   0.0001 |   0.0766 |   0.1379 |   0.5505 |   0.0929 |   0.2542 |   0.0233 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 40 | 125 | 408,443,204 |   1.8633 |   0.7127 |   0.6921 |   0.0001 |   0.0757 |   0.1370 |   0.5702 |   0.0928 |   0.2512 |   0.0236 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 40 | 125 | 408,443,204 |   1.8686 |   0.7118 |   0.6954 |   0.0001 |   0.0768 |   0.1371 |   0.5708 |   0.0933 |   0.2556 |   0.0232 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 40 | 125 | 408,443,204 |   1.8631 |   0.7158 |   0.7612 |   0.0001 |   0.0766 |   0.1373 |   0.5651 |   0.0920 |   0.2531 |   0.0231 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 32 | 125 | 408,443,204 |   2.0676 |   0.7125 |   0.8716 |   0.0001 |   0.1017 |   0.1585 |   0.6555 |   0.1137 |   0.2970 |   0.0286 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 32 | 125 | 408,443,204 |   1.9702 |   0.7097 |   0.7432 |   0.0001 |   0.0886 |   0.1453 |   0.6340 |   0.0995 |   0.2645 |   0.0285 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 32 | 125 | 408,443,204 |   1.9618 |   0.7123 |   0.7409 |   0.0001 |   0.0880 |   0.1455 |   0.6344 |   0.0987 |   0.2549 |   0.0279 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 32 | 125 | 408,443,204 |   1.9668 |   0.7153 |   0.7565 |   0.0001 |   0.0879 |   0.1452 |   0.6306 |   0.1006 |   0.2582 |   0.0289 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 32 | 125 | 408,443,204 |   1.9659 |   0.7127 |   0.6713 |   0.0001 |   0.0883 |   0.1447 |   0.6348 |   0.0999 |   0.2561 |   0.0293 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 24 | 125 | 408,443,204 |   2.2616 |   0.7127 |   0.7901 |   0.0001 |   0.0994 |   0.1587 |   0.8385 |   0.1096 |   0.3027 |   0.0398 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 24 | 125 | 408,443,204 |   2.2720 |   0.7137 |   0.7854 |   0.0001 |   0.0997 |   0.1574 |   0.8441 |   0.1102 |   0.3079 |   0.0390 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 24 | 125 | 408,443,204 |   2.2735 |   0.7165 |   1.0022 |   0.0001 |   0.1006 |   0.1590 |   0.8421 |   0.1109 |   0.3051 |   0.0391 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 24 | 125 | 408,443,204 |   2.2728 |   0.7113 |   0.9929 |   0.0001 |   0.0995 |   0.1576 |   0.8501 |   0.1093 |   0.3050 |   0.0399 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 24 | 125 | 408,443,204 |   2.2662 |   0.7121 |   0.8253 |   0.0001 |   0.0992 |   0.1589 |   0.8445 |   0.1093 |   0.3020 |   0.0401 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 16 | 125 | 408,443,204 |   2.6939 |   0.7173 |   1.3980 |   0.0001 |   0.1034 |   0.1644 |   1.1492 |   0.1283 |   0.3705 |   0.0607 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 16 | 125 | 408,443,204 |   2.6689 |   0.7105 |   1.0194 |   0.0001 |   0.1037 |   0.1620 |   1.1386 |   0.1277 |   0.3647 |   0.0615 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 16 | 125 | 408,443,204 |   2.6624 |   0.7117 |   0.9333 |   0.0001 |   0.1045 |   0.1644 |   1.1323 |   0.1269 |   0.3617 |   0.0607 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 16 | 125 | 408,443,204 |   2.6675 |   0.7072 |   1.2119 |   0.0001 |   0.1049 |   0.1637 |   1.1425 |   0.1269 |   0.3608 |   0.0614 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 16 | 125 | 408,443,204 |   2.6901 |   0.7158 |   1.1473 |   0.0001 |   0.1070 |   0.1642 |   1.1481 |   0.1259 |   0.3680 |   0.0610 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 8 | 125 | 408,443,204 |   4.2911 |   0.7493 |   2.4486 |   0.0001 |   0.1302 |   0.1972 |   2.3053 |   0.1876 |   0.5939 |   0.1274 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 8 | 125 | 408,443,204 |   4.2818 |   0.6897 |   2.4647 |   0.0001 |   0.1320 |   0.1957 |   2.3260 |   0.1875 |   0.6227 |   0.1281 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 8 | 125 | 408,443,204 |   4.1810 |   0.7069 |   2.6006 |   0.0001 |   0.1310 |   0.1923 |   2.2813 |   0.1886 |   0.5525 |   0.1283 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 8 | 125 | 408,443,204 |   4.2810 |   0.7074 |   1.9963 |   0.0001 |   0.1346 |   0.2050 |   2.3115 |   0.1886 |   0.6041 |   0.1299 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 8 | 125 | 408,443,204 |   4.2506 |   0.6966 |   1.6375 |   0.0001 |   0.1291 |   0.1930 |   2.3045 |   0.1876 |   0.6122 |   0.1274 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 40 | 20 | 3,700,737,910 |   4.2138 |   0.7100 |  10.6762 |   0.0001 |   0.0668 |   0.0638 |   2.8182 |   0.1528 |   0.2103 |   0.1919 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 40 | 20 | 3,700,737,910 |   4.2381 |   0.7104 |  10.2010 |   0.0001 |   0.0671 |   0.0629 |   2.8340 |   0.1514 |   0.2193 |   0.1930 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 40 | 20 | 3,700,737,910 |   4.2355 |   0.7049 |  11.7163 |   0.0001 |   0.0669 |   0.0642 |   2.8366 |   0.1513 |   0.2165 |   0.1950 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 40 | 20 | 3,700,737,910 |   4.2311 |   0.7040 |  12.6201 |   0.0001 |   0.0670 |   0.0630 |   2.8398 |   0.1516 |   0.2135 |   0.1921 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 40 | 20 | 3,700,737,910 |   4.2294 |   0.7070 |  10.0521 |   0.0001 |   0.0663 |   0.0637 |   2.8322 |   0.1517 |   0.2185 |   0.1899 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 32 | 20 | 3,700,737,910 |   5.0009 |   0.7088 |  10.3057 |   0.0001 |   0.0829 |   0.0729 |   3.4834 |   0.1876 |   0.2319 |   0.2333 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 32 | 20 | 3,700,737,910 |   5.0166 |   0.7023 |  11.3493 |   0.0001 |   0.0827 |   0.0747 |   3.4849 |   0.1860 |   0.2503 |   0.2356 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 32 | 20 | 3,700,737,910 |   5.0028 |   0.7034 |  12.5730 |   0.0001 |   0.0827 |   0.0747 |   3.4928 |   0.1853 |   0.2300 |   0.2339 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 32 | 20 | 3,700,737,910 |   5.0150 |   0.7042 |  11.0963 |   0.0001 |   0.0816 |   0.0734 |   3.4934 |   0.1890 |   0.2333 |   0.2400 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 32 | 20 | 3,700,737,910 |   5.0576 |   0.7082 |  11.3444 |   0.0001 |   0.0806 |   0.0751 |   3.5322 |   0.1882 |   0.2421 |   0.2312 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 24 | 20 | 3,700,737,910 |   6.4138 |   0.6986 |  10.3457 |   0.0001 |   0.1005 |   0.0912 |   4.6199 |   0.2402 |   0.3515 |   0.3119 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 24 | 20 | 3,700,737,910 |   6.3642 |   0.6893 |  12.6420 |   0.0001 |   0.0967 |   0.0936 |   4.6297 |   0.2413 |   0.3059 |   0.3076 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 24 | 20 | 3,700,737,910 |   6.4264 |   0.6974 |  13.2917 |   0.0001 |   0.0975 |   0.0911 |   4.6480 |   0.2407 |   0.3404 |   0.3112 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 24 | 20 | 3,700,737,910 |   6.3915 |   0.6932 |  10.6921 |   0.0001 |   0.0983 |   0.0920 |   4.6289 |   0.2417 |   0.3270 |   0.3104 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 24 | 20 | 3,700,737,910 |   6.4175 |   0.6946 |   9.6479 |   0.0001 |   0.1022 |   0.0933 |   4.6315 |   0.2426 |   0.3433 |   0.3099 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 16 | 20 | 3,700,737,910 |   9.5387 |   0.6911 |  10.2404 |   0.0001 |   0.1381 |   0.1237 |   6.8531 |   0.3563 |   0.9266 |   0.4498 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 16 | 20 | 3,700,737,910 |   9.4857 |   0.6720 |  11.3861 |   0.0001 |   0.1356 |   0.1278 |   6.8553 |   0.3605 |   0.8843 |   0.4502 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 16 | 20 | 3,700,737,910 |   9.5475 |   0.6706 |  12.2357 |   0.0001 |   0.1425 |   0.1291 |   6.8453 |   0.3576 |   0.9594 |   0.4429 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 16 | 20 | 3,700,737,910 |   9.5899 |   0.6851 |  13.1165 |   0.0001 |   0.1423 |   0.1277 |   6.8872 |   0.3600 |   0.9494 |   0.4380 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 16 | 20 | 3,700,737,910 |   9.4734 |   0.6640 |  12.3806 |   0.0001 |   0.1402 |   0.1271 |   6.8438 |   0.3577 |   0.8973 |   0.4432 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 8 | 20 | 3,700,737,910 |  20.6921 |   0.6624 |  13.0429 |   0.0001 |   0.2724 |   0.3920 |  12.9666 |   0.9165 |   4.5457 |   0.9365 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 8 | 20 | 3,700,737,910 |  20.9444 |   0.6451 |  13.5655 |   0.0001 |   0.2600 |   0.3764 |  12.9891 |   0.9601 |   4.7575 |   0.9562 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 8 | 20 | 3,700,737,910 |  20.8369 |   0.6298 |  13.1739 |   0.0000 |   0.3017 |   0.3954 |  12.9893 |   0.8883 |   4.6056 |   1.0267 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 8 | 20 | 3,700,737,910 |  21.6209 |   0.6347 |  13.1347 |   0.0001 |   0.2954 |   0.4143 |  13.0372 |   0.8307 |   5.4854 |   0.9233 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 8 | 20 | 3,700,737,910 |  20.8350 |   0.6444 |  13.3763 |   0.0001 |   0.2780 |   0.4124 |  13.0414 |   1.0405 |   4.4773 |   0.9410 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 40 | 588 | 3,137,407,481 |  14.3101 |   0.7093 |   9.4054 |   0.0001 |   0.4191 |   0.6454 |   2.1335 |   0.3329 |   9.9000 |   0.1700 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 40 | 588 | 3,137,407,481 |  14.2885 |   0.7116 |   9.4020 |   0.0001 |   0.4257 |   0.6421 |   2.0908 |   0.3339 |   9.8892 |   0.1951 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 40 | 588 | 3,137,407,481 |  14.2726 |   0.7121 |  10.5295 |   0.0001 |   0.4216 |   0.6337 |   2.0791 |   0.3384 |   9.9172 |   0.1704 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 40 | 588 | 3,137,407,481 |  14.4371 |   0.7767 |   9.3508 |   0.0001 |   0.4268 |   0.6258 |   2.1656 |   0.3491 |   9.9258 |   0.1672 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 40 | 588 | 3,137,407,481 |  14.2265 |   0.7127 |   9.1577 |   0.0001 |   0.4212 |   0.6365 |   2.1008 |   0.3436 |   9.8420 |   0.1697 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 32 | 588 | 3,137,407,481 |  17.2986 |   0.7089 |   9.6590 |   0.0001 |   0.4950 |   0.7077 |   2.4544 |   0.3621 |  12.3658 |   0.2046 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 32 | 588 | 3,137,407,481 |  17.3610 |   0.7142 |  10.3697 |   0.0001 |   0.4905 |   0.7497 |   2.4744 |   0.3621 |  12.3257 |   0.2444 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 32 | 588 | 3,137,407,481 |  17.3625 |   0.7094 |   9.3596 |   0.0001 |   0.4922 |   0.7234 |   2.4528 |   0.3658 |  12.3716 |   0.2472 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 32 | 588 | 3,137,407,481 |  17.3626 |   0.7096 |  11.4565 |   0.0001 |   0.5015 |   0.7244 |   2.4260 |   0.3612 |  12.4073 |   0.2324 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 32 | 588 | 3,137,407,481 |  17.4605 |   0.7133 |  10.9955 |   0.0001 |   0.5069 |   0.7174 |   2.4939 |   0.3702 |  12.4116 |   0.2472 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 24 | 588 | 3,137,407,481 |  22.7461 |   0.7112 |  11.1173 |   0.0001 |   0.5995 |   0.7389 |   2.9082 |   0.4143 |  17.0689 |   0.3051 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 24 | 588 | 3,137,407,481 |  22.8224 |   0.7133 |  11.5363 |   0.0001 |   0.5850 |   0.7382 |   2.9586 |   0.4328 |  17.1271 |   0.2673 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 24 | 588 | 3,137,407,481 |  22.8714 |   0.7107 |  11.0598 |   0.0001 |   0.5966 |   0.7486 |   3.0235 |   0.4615 |  17.0202 |   0.3102 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 24 | 588 | 3,137,407,481 |  22.8198 |   0.7108 |  10.3900 |   0.0001 |   0.5929 |   0.7462 |   3.0008 |   0.4277 |  17.0289 |   0.3124 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 24 | 588 | 3,137,407,481 |  22.6957 |   0.7110 |  10.4853 |   0.0001 |   0.5956 |   0.7356 |   2.9931 |   0.4358 |  16.9590 |   0.2655 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 16 | 588 | 3,137,407,481 |  34.1143 |   0.7103 |  11.0139 |   0.0001 |   0.7629 |   0.8106 |   4.2591 |   0.4685 |  26.7202 |   0.3827 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 16 | 588 | 3,137,407,481 |  33.8245 |   0.7033 |  10.8296 |   0.0001 |   0.7554 |   0.8305 |   4.1707 |   0.4662 |  26.5155 |   0.3828 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 16 | 588 | 3,137,407,481 |  34.0906 |   0.7094 |  11.5957 |   0.0001 |   0.7467 |   0.8200 |   4.2950 |   0.4501 |  26.6809 |   0.3884 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 16 | 588 | 3,137,407,481 |  34.1473 |   0.7915 |  11.2044 |   0.0001 |   0.7923 |   0.8163 |   4.2673 |   0.4642 |  26.5686 |   0.4469 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 16 | 588 | 3,137,407,481 |  34.0715 |   0.7144 |  13.4766 |   0.0001 |   0.7640 |   0.8427 |   4.3785 |   0.4510 |  26.4672 |   0.4537 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 8 | 588 | 3,137,407,481 |  68.9502 |   0.7079 |  12.9652 |   0.0001 |   1.1844 |   1.0430 |   8.9526 |   0.5757 |  55.7597 |   0.7268 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 8 | 588 | 3,137,407,481 |  68.6559 |   0.6875 |  12.6904 |   0.0001 |   1.1558 |   1.0758 |   8.6268 |   0.5572 |  55.6808 |   0.8721 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 8 | 588 | 3,137,407,481 |  68.6311 |   0.6858 |  10.4394 |   0.0001 |   1.2074 |   1.0321 |   8.7062 |   0.5638 |  55.5623 |   0.8734 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 8 | 588 | 3,137,407,481 |  68.4984 |   0.6850 |  11.3042 |   0.0001 |   1.1785 |   1.0399 |   8.6107 |   0.5631 |  55.6844 |   0.7367 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 8 | 588 | 3,137,407,481 |  68.8323 |   0.6738 |   9.7096 |   0.0001 |   1.1807 |   1.0338 |   8.5663 |   0.6877 |  55.9578 |   0.7322 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 40 | 77 | 65,941,441 |   1.0692 |   0.7160 |   0.2962 |   0.0001 |   0.0231 |   0.0605 |   0.1358 |   0.0341 |   0.0946 |   0.0051 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 40 | 77 | 65,941,441 |   1.1493 |   0.7812 |   0.2120 |   0.0001 |   0.0236 |   0.0610 |   0.1461 |   0.0347 |   0.0976 |   0.0050 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 40 | 77 | 65,941,441 |   1.0556 |   0.7121 |   0.2697 |   0.0001 |   0.0229 |   0.0598 |   0.1258 |   0.0341 |   0.0960 |   0.0049 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 40 | 77 | 65,941,441 |   1.0660 |   0.7170 |   0.2651 |   0.0001 |   0.0232 |   0.0609 |   0.1302 |   0.0345 |   0.0951 |   0.0050 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 40 | 77 | 65,941,441 |   1.0534 |   0.7120 |   0.1811 |   0.0001 |   0.0230 |   0.0603 |   0.1242 |   0.0344 |   0.0946 |   0.0049 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 32 | 77 | 65,941,441 |   1.0733 |   0.7119 |   0.3211 |   0.0001 |   0.0265 |   0.0615 |   0.1306 |   0.0376 |   0.0991 |   0.0060 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 32 | 77 | 65,941,441 |   1.0699 |   0.7155 |   0.1847 |   0.0001 |   0.0264 |   0.0611 |   0.1250 |   0.0378 |   0.0983 |   0.0057 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 32 | 77 | 65,941,441 |   1.0768 |   0.7135 |   0.2089 |   0.0001 |   0.0260 |   0.0618 |   0.1327 |   0.0376 |   0.0994 |   0.0056 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 32 | 77 | 65,941,441 |   1.1406 |   0.7138 |   0.1682 |   0.0001 |   0.0337 |   0.0618 |   0.1423 |   0.0377 |   0.1367 |   0.0145 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 32 | 77 | 65,941,441 |   1.0807 |   0.7178 |   0.2730 |   0.0001 |   0.0260 |   0.0612 |   0.1342 |   0.0375 |   0.0982 |   0.0057 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 24 | 77 | 65,941,441 |   1.1062 |   0.7146 |   0.2986 |   0.0001 |   0.0286 |   0.0640 |   0.1451 |   0.0417 |   0.1046 |   0.0076 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 24 | 77 | 65,941,441 |   1.1182 |   0.7174 |   0.3331 |   0.0001 |   0.0287 |   0.0637 |   0.1539 |   0.0429 |   0.1041 |   0.0075 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 24 | 77 | 65,941,441 |   1.1018 |   0.7097 |   0.2070 |   0.0001 |   0.0291 |   0.0640 |   0.1445 |   0.0424 |   0.1045 |   0.0074 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 24 | 77 | 65,941,441 |   1.1047 |   0.7118 |   0.3056 |   0.0001 |   0.0291 |   0.0641 |   0.1451 |   0.0422 |   0.1050 |   0.0074 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 24 | 77 | 65,941,441 |   1.1129 |   0.7154 |   0.2516 |   0.0001 |   0.0287 |   0.0648 |   0.1498 |   0.0425 |   0.1041 |   0.0075 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 16 | 77 | 65,941,441 |   1.1556 |   0.7101 |   0.2958 |   0.0001 |   0.0284 |   0.0685 |   0.1779 |   0.0461 |   0.1141 |   0.0103 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 16 | 77 | 65,941,441 |   1.1408 |   0.7081 |   0.3008 |   0.0001 |   0.0284 |   0.0684 |   0.1666 |   0.0460 |   0.1131 |   0.0101 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 16 | 77 | 65,941,441 |   1.1508 |   0.7107 |   0.2923 |   0.0001 |   0.0287 |   0.0689 |   0.1725 |   0.0460 |   0.1140 |   0.0100 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 16 | 77 | 65,941,441 |   1.1565 |   0.7135 |   0.2760 |   0.0001 |   0.0281 |   0.0687 |   0.1776 |   0.0457 |   0.1130 |   0.0098 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 16 | 77 | 65,941,441 |   1.1457 |   0.7131 |   0.3369 |   0.0001 |   0.0286 |   0.0693 |   0.1658 |   0.0453 |   0.1132 |   0.0103 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 8 | 77 | 65,941,441 |   1.3323 |   0.7110 |   0.3821 |   0.0002 |   0.0469 |   0.0846 |   0.2830 |   0.0561 |   0.1328 |   0.0177 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 8 | 77 | 65,941,441 |   1.3247 |   0.7138 |   0.3422 |   0.0002 |   0.0471 |   0.0853 |   0.2725 |   0.0562 |   0.1315 |   0.0180 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 8 | 77 | 65,941,441 |   1.3224 |   0.7121 |   0.4702 |   0.0002 |   0.0470 |   0.0847 |   0.2729 |   0.0565 |   0.1314 |   0.0175 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 8 | 77 | 65,941,441 |   1.3152 |   0.7127 |   0.4369 |   0.0002 |   0.0469 |   0.0845 |   0.2656 |   0.0556 |   0.1319 |   0.0177 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 8 | 77 | 65,941,441 |   1.3246 |   0.7126 |   0.4809 |   0.0002 |   0.0468 |   0.0840 |   0.2747 |   0.0560 |   0.1329 |   0.0175 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 40 | 513 | 864,761,518 |   4.9485 |   0.7130 |   1.6841 |   0.0001 |   0.1755 |   0.3421 |   1.3268 |   0.2154 |   2.0943 |   0.0813 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 40 | 513 | 864,761,518 |   5.0043 |   0.7149 |   1.9184 |   0.0001 |   0.1765 |   0.3402 |   1.3378 |   0.2170 |   2.1257 |   0.0922 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 40 | 513 | 864,761,518 |   4.9717 |   0.7130 |   1.8304 |   0.0001 |   0.1747 |   0.3407 |   1.3215 |   0.2151 |   2.1112 |   0.0954 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 40 | 513 | 864,761,518 |   4.9517 |   0.7139 |   1.9403 |   0.0001 |   0.1765 |   0.3432 |   1.3231 |   0.2159 |   2.0997 |   0.0792 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 40 | 513 | 864,761,518 |   5.0011 |   0.7163 |   2.0009 |   0.0001 |   0.1790 |   0.3418 |   1.3355 |   0.2203 |   2.1118 |   0.0964 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 32 | 513 | 864,761,518 |   6.0943 |   0.7145 |   1.8930 |   0.0001 |   0.1982 |   0.3752 |   1.5566 |   0.2367 |   2.9229 |   0.0901 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 32 | 513 | 864,761,518 |   6.0789 |   0.7146 |   2.4532 |   0.0001 |   0.1963 |   0.3715 |   1.5416 |   0.2412 |   2.9230 |   0.0906 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 32 | 513 | 864,761,518 |   6.1054 |   0.7120 |   2.3541 |   0.0001 |   0.1936 |   0.3833 |   1.5762 |   0.2450 |   2.8930 |   0.1022 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 32 | 513 | 864,761,518 |   6.0758 |   0.7132 |   2.8297 |   0.0001 |   0.1961 |   0.3764 |   1.5232 |   0.2364 |   2.9420 |   0.0884 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 32 | 513 | 864,761,518 |   6.0975 |   0.7176 |   1.9384 |   0.0001 |   0.1951 |   0.3751 |   1.5502 |   0.2384 |   2.9176 |   0.1033 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 24 | 513 | 864,761,518 |   8.1244 |   0.7163 |   2.7632 |   0.0001 |   0.2331 |   0.4293 |   1.9018 |   0.2706 |   4.4556 |   0.1177 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 24 | 513 | 864,761,518 |   8.0938 |   0.7101 |   2.2914 |   0.0001 |   0.2312 |   0.4148 |   1.8869 |   0.2684 |   4.4786 |   0.1038 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 24 | 513 | 864,761,518 |   8.1209 |   0.7111 |   2.4784 |   0.0001 |   0.2330 |   0.4317 |   1.9662 |   0.2943 |   4.3782 |   0.1063 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 24 | 513 | 864,761,518 |   8.1101 |   0.7128 |   2.1473 |   0.0001 |   0.2304 |   0.4121 |   1.9115 |   0.2701 |   4.4677 |   0.1054 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 24 | 513 | 864,761,518 |   8.1193 |   0.7102 |   2.2420 |   0.0001 |   0.2283 |   0.4126 |   1.9433 |   0.2624 |   4.4427 |   0.1198 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 16 | 513 | 864,761,518 |  12.2937 |   0.7135 |   2.7908 |   0.0003 |   0.2644 |   0.4830 |   2.7002 |   0.3218 |   7.6628 |   0.1477 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 16 | 513 | 864,761,518 |  12.3117 |   0.7041 |   2.8498 |   0.0003 |   0.2634 |   0.5208 |   2.7303 |   0.3380 |   7.6243 |   0.1303 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 16 | 513 | 864,761,518 |  12.3089 |   0.7134 |   3.6623 |   0.0003 |   0.2694 |   0.4807 |   2.6962 |   0.3314 |   7.6692 |   0.1483 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 16 | 513 | 864,761,518 |  12.3028 |   0.7077 |   3.1644 |   0.0003 |   0.2693 |   0.4805 |   2.7015 |   0.3247 |   7.6856 |   0.1331 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 16 | 513 | 864,761,518 |  12.2577 |   0.7038 |   3.1206 |   0.0003 |   0.2722 |   0.4825 |   2.7244 |   0.3324 |   7.5848 |   0.1573 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 8 | 513 | 864,761,518 |  24.8285 |   0.6982 |   4.0375 |   0.0003 |   0.4516 |   0.6498 |   5.1886 |   0.4689 |  17.1182 |   0.2529 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 8 | 513 | 864,761,518 |  24.7772 |   0.6872 |   3.0565 |   0.0003 |   0.4525 |   0.6416 |   5.0963 |   0.4704 |  17.1700 |   0.2589 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 8 | 513 | 864,761,518 |  24.8065 |   0.6906 |   3.0742 |   0.0003 |   0.4545 |   0.6531 |   5.1761 |   0.4689 |  17.1095 |   0.2536 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 8 | 513 | 864,761,518 |  24.9869 |   0.6907 |   3.3724 |   0.0002 |   0.4806 |   0.6524 |   5.2306 |   0.4852 |  17.1941 |   0.2531 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 8 | 513 | 864,761,518 |  24.9107 |   0.6944 |   4.1184 |   0.0003 |   0.4709 |   0.6491 |   5.1684 |   0.5203 |  17.1492 |   0.2579 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
TRADITIONAL MPI - TWO PASS
------------------------------------------------------------------------------------
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 40 | 125 | 408,443,204 |   2.0011 |   0.7178 |   0.8547 |   0.0001 |   0.0694 |   0.2864 |   0.5620 |   0.0923 |   0.2502 |   0.0230 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 40 | 125 | 408,443,204 |   1.9958 |   0.7120 |   0.8206 |   0.0001 |   0.0692 |   0.2922 |   0.5617 |   0.0911 |   0.2461 |   0.0235 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 40 | 125 | 408,443,204 |   2.1027 |   0.7124 |   0.7304 |   0.0001 |   0.0800 |   0.3096 |   0.6114 |   0.0988 |   0.2669 |   0.0235 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 40 | 125 | 408,443,204 |   1.9940 |   0.7095 |   0.7515 |   0.0001 |   0.0684 |   0.2926 |   0.5564 |   0.0926 |   0.2512 |   0.0231 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 40 | 125 | 408,443,204 |   1.9995 |   0.7133 |   1.0557 |   0.0001 |   0.0695 |   0.2895 |   0.5623 |   0.0918 |   0.2494 |   0.0237 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 32 | 125 | 408,443,204 |   2.1284 |   0.7168 |   0.8451 |   0.0001 |   0.0887 |   0.3134 |   0.6275 |   0.0978 |   0.2558 |   0.0283 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 32 | 125 | 408,443,204 |   2.1284 |   0.7133 |   0.8572 |   0.0001 |   0.0888 |   0.3119 |   0.6319 |   0.0980 |   0.2548 |   0.0296 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 32 | 125 | 408,443,204 |   2.1317 |   0.7122 |   0.9632 |   0.0001 |   0.0887 |   0.3191 |   0.6217 |   0.0977 |   0.2559 |   0.0364 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 32 | 125 | 408,443,204 |   2.1280 |   0.7151 |   0.9050 |   0.0001 |   0.0882 |   0.3125 |   0.6270 |   0.0985 |   0.2576 |   0.0291 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 32 | 125 | 408,443,204 |   2.1115 |   0.7113 |   0.7438 |   0.0001 |   0.0881 |   0.3119 |   0.6194 |   0.0978 |   0.2538 |   0.0292 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 24 | 125 | 408,443,204 |   2.4455 |   0.7115 |   0.9570 |   0.0001 |   0.0930 |   0.3453 |   0.8461 |   0.1052 |   0.3048 |   0.0396 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 24 | 125 | 408,443,204 |   2.4695 |   0.7139 |   0.9793 |   0.0001 |   0.0948 |   0.3502 |   0.8635 |   0.1065 |   0.2991 |   0.0415 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 24 | 125 | 408,443,204 |   2.4643 |   0.7132 |   0.8845 |   0.0001 |   0.0926 |   0.3455 |   0.8581 |   0.1068 |   0.3064 |   0.0418 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 24 | 125 | 408,443,204 |   2.4357 |   0.7076 |   0.9872 |   0.0001 |   0.0922 |   0.3492 |   0.8410 |   0.1062 |   0.2998 |   0.0397 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 24 | 125 | 408,443,204 |   2.4643 |   0.7122 |   0.7859 |   0.0001 |   0.0929 |   0.3479 |   0.8635 |   0.1075 |   0.3000 |   0.0402 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 16 | 125 | 408,443,204 |   2.9149 |   0.7102 |   1.1674 |   0.0001 |   0.0992 |   0.4183 |   1.1394 |   0.1225 |   0.3648 |   0.0605 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 16 | 125 | 408,443,204 |   2.8886 |   0.7084 |   1.2433 |   0.0001 |   0.1005 |   0.4131 |   1.1230 |   0.1225 |   0.3585 |   0.0626 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 16 | 125 | 408,443,204 |   2.9766 |   0.7126 |   1.2864 |   0.0001 |   0.1091 |   0.4275 |   1.1662 |   0.1250 |   0.3747 |   0.0615 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 16 | 125 | 408,443,204 |   2.9030 |   0.7110 |   0.9187 |   0.0001 |   0.1001 |   0.4144 |   1.1329 |   0.1225 |   0.3613 |   0.0607 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 16 | 125 | 408,443,204 |   2.9176 |   0.7142 |   1.5201 |   0.0001 |   0.1016 |   0.4177 |   1.1405 |   0.1238 |   0.3602 |   0.0597 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 8 | 125 | 408,443,204 |   4.5366 |   0.7100 |   2.0039 |   0.0001 |   0.1344 |   0.5771 |   2.2303 |   0.1789 |   0.5781 |   0.1277 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 8 | 125 | 408,443,204 |   4.5550 |   0.6963 |   1.6144 |   0.0001 |   0.1415 |   0.5875 |   2.2445 |   0.1840 |   0.5745 |   0.1267 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 8 | 125 | 408,443,204 |   4.4857 |   0.6955 |   2.0039 |   0.0001 |   0.1368 |   0.5779 |   2.2215 |   0.1786 |   0.5482 |   0.1270 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 8 | 125 | 408,443,204 |   4.4963 |   0.6925 |   1.5374 |   0.0001 |   0.1376 |   0.5792 |   2.2330 |   0.1769 |   0.5508 |   0.1261 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 8 | 125 | 408,443,204 |   4.5048 |   0.6962 |   1.6243 |   0.0001 |   0.1360 |   0.5769 |   2.2308 |   0.1782 |   0.5587 |   0.1279 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 40 | 20 | 3,700,737,910 |   5.3022 |   0.7158 |  10.4033 |   0.0001 |   0.0646 |   0.9967 |   2.9825 |   0.1353 |   0.2177 |   0.1895 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 40 | 20 | 3,700,737,910 |   5.3026 |   0.7146 |  13.4457 |   0.0001 |   0.0663 |   0.9935 |   2.9751 |   0.1373 |   0.2247 |   0.1911 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 40 | 20 | 3,700,737,910 |   5.2832 |   0.7059 |   9.5094 |   0.0001 |   0.0641 |   0.9898 |   2.9774 |   0.1363 |   0.2196 |   0.1900 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 40 | 20 | 3,700,737,910 |   5.2759 |   0.7125 |  10.3207 |   0.0001 |   0.0653 |   0.9896 |   2.9696 |   0.1391 |   0.2090 |   0.1907 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 40 | 20 | 3,700,737,910 |   5.2891 |   0.7054 |   9.7650 |   0.0001 |   0.0647 |   0.9811 |   2.9901 |   0.1387 |   0.2162 |   0.1929 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 32 | 20 | 3,700,737,910 |   6.1579 |   0.6952 |  10.3155 |   0.0001 |   0.0808 |   1.1128 |   3.6301 |   0.1680 |   0.2365 |   0.2345 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 32 | 20 | 3,700,737,910 |   6.1910 |   0.7080 |  10.7737 |   0.0001 |   0.0805 |   1.1136 |   3.6399 |   0.1699 |   0.2469 |   0.2322 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 32 | 20 | 3,700,737,910 |   6.1591 |   0.6975 |  10.2350 |   0.0001 |   0.0796 |   1.1110 |   3.6239 |   0.1674 |   0.2478 |   0.2318 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 32 | 20 | 3,700,737,910 |   6.1586 |   0.7001 |  10.1792 |   0.0001 |   0.0798 |   1.1135 |   3.6193 |   0.1689 |   0.2420 |   0.2349 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 32 | 20 | 3,700,737,910 |   6.2080 |   0.7101 |   9.8193 |   0.0001 |   0.0829 |   1.1160 |   3.6463 |   0.1678 |   0.2475 |   0.2373 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 24 | 20 | 3,700,737,910 |   7.8001 |   0.7046 |  11.4325 |   0.0001 |   0.0985 |   1.3652 |   4.7787 |   0.2200 |   0.3230 |   0.3099 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 24 | 20 | 3,700,737,910 |   7.8405 |   0.7030 |   9.6708 |   0.0001 |   0.0977 |   1.3707 |   4.8000 |   0.2210 |   0.3391 |   0.3089 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 24 | 20 | 3,700,737,910 |   7.8111 |   0.6950 |   9.0503 |   0.0001 |   0.1032 |   1.3631 |   4.7968 |   0.2213 |   0.3249 |   0.3068 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 24 | 20 | 3,700,737,910 |   7.7948 |   0.6972 |   9.7256 |   0.0001 |   0.0998 |   1.3595 |   4.7724 |   0.2204 |   0.3360 |   0.3095 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 24 | 20 | 3,700,737,910 |   7.8123 |   0.6916 |  12.1037 |   0.0001 |   0.0996 |   1.3669 |   4.7988 |   0.2222 |   0.3224 |   0.3109 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 16 | 20 | 3,700,737,910 |  11.4357 |   0.6953 |  14.1640 |   0.0001 |   0.1364 |   1.8462 |   7.0760 |   0.3265 |   0.9160 |   0.4392 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 16 | 20 | 3,700,737,910 |  11.3781 |   0.6753 |  10.5930 |   0.0001 |   0.1373 |   1.8508 |   7.0299 |   0.3264 |   0.8318 |   0.5266 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 16 | 20 | 3,700,737,910 |  11.4224 |   0.6867 |  10.8168 |   0.0001 |   0.1405 |   1.8529 |   7.0270 |   0.3262 |   0.8688 |   0.5203 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 16 | 20 | 3,700,737,910 |  11.4504 |   0.6893 |  12.5924 |   0.0001 |   0.1370 |   1.8523 |   7.0457 |   0.3275 |   0.8944 |   0.5040 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 16 | 20 | 3,700,737,910 |  11.3647 |   0.6794 |  12.5512 |   0.0001 |   0.1350 |   1.8499 |   7.0052 |   0.3271 |   0.8315 |   0.5366 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 8 | 20 | 3,700,737,910 |  24.5317 |   0.6863 |  14.6181 |   0.0001 |   0.2809 |   2.9195 |  13.0568 |   1.1748 |   5.3886 |   1.0247 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 8 | 20 | 3,700,737,910 |  24.3542 |   0.6362 |  14.0023 |   0.0000 |   0.2633 |   2.7878 |  13.0430 |   1.0468 |   5.6557 |   0.9215 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 8 | 20 | 3,700,737,910 |  25.6987 |   0.6270 |  12.9200 |   0.0000 |   0.2707 |   2.9108 |  13.1045 |   1.1835 |   6.6738 |   0.9284 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 8 | 20 | 3,700,737,910 |  24.9182 |   0.6451 |  13.5938 |   0.0001 |   0.2524 |   2.7464 |  13.0490 |   1.0284 |   6.2544 |   0.9425 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 8 | 20 | 3,700,737,910 |  24.8799 |   0.6303 |  13.4587 |   0.0001 |   0.2503 |   2.7752 |  13.0709 |   1.1525 |   5.9799 |   1.0207 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 40 | 588 | 3,137,407,481 |  14.9572 |   0.7592 |   9.8594 |   0.0001 |   0.4120 |   1.2170 |   2.1523 |   0.3295 |   9.9151 |   0.1720 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 40 | 588 | 3,137,407,481 |  14.9157 |   0.7126 |   9.5473 |   0.0001 |   0.4127 |   1.2174 |   2.1529 |   0.3333 |   9.9175 |   0.1694 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 40 | 588 | 3,137,407,481 |  14.8930 |   0.7138 |   9.0161 |   0.0001 |   0.4116 |   1.2185 |   2.1670 |   0.3344 |   9.8749 |   0.1726 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 40 | 588 | 3,137,407,481 |  14.8984 |   0.7176 |  10.6679 |   0.0001 |   0.4161 |   1.2187 |   2.1422 |   0.3337 |   9.8986 |   0.1714 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 40 | 588 | 3,137,407,481 |  14.8584 |   0.7171 |   9.3411 |   0.0001 |   0.4136 |   1.2146 |   2.1577 |   0.3309 |   9.8545 |   0.1700 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 32 | 588 | 3,137,407,481 |  17.9367 |   0.7141 |   9.9429 |   0.0001 |   0.4855 |   1.2656 |   2.3768 |   0.3692 |  12.5164 |   0.2090 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 32 | 588 | 3,137,407,481 |  17.9836 |   0.7111 |  11.2543 |   0.0001 |   0.5102 |   1.2613 |   2.4206 |   0.3444 |  12.5017 |   0.2342 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 32 | 588 | 3,137,407,481 |  17.9665 |   0.7172 |   9.1433 |   0.0001 |   0.4832 |   1.2672 |   2.4729 |   0.3497 |  12.4426 |   0.2336 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 32 | 588 | 3,137,407,481 |  17.9982 |   0.7115 |  10.2998 |   0.0001 |   0.4897 |   1.2699 |   2.4905 |   0.3491 |  12.4809 |   0.2065 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 32 | 588 | 3,137,407,481 |  17.9181 |   0.7094 |   8.6575 |   0.0001 |   0.4816 |   1.2777 |   2.4204 |   0.3540 |  12.4696 |   0.2053 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 24 | 588 | 3,137,407,481 |  23.4063 |   0.7042 |  10.0148 |   0.0001 |   0.5827 |   1.4139 |   2.9824 |   0.4478 |  16.9649 |   0.3103 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 24 | 588 | 3,137,407,481 |  23.2819 |   0.7148 |  10.2976 |   0.0001 |   0.5823 |   1.4354 |   2.9879 |   0.3979 |  16.8939 |   0.2696 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 24 | 588 | 3,137,407,481 |  23.4005 |   0.7136 |  11.5441 |   0.0001 |   0.5811 |   1.4278 |   2.9758 |   0.4194 |  17.0153 |   0.2675 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 24 | 588 | 3,137,407,481 |  23.3568 |   0.7131 |  11.0737 |   0.0001 |   0.5714 |   1.4138 |   2.9957 |   0.3794 |  17.0133 |   0.2701 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 24 | 588 | 3,137,407,481 |  23.4000 |   0.7086 |  11.6034 |   0.0001 |   0.5784 |   1.4254 |   3.0335 |   0.3884 |  16.9623 |   0.3034 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 16 | 588 | 3,137,407,481 |  34.7172 |   0.7057 |  10.4322 |   0.0001 |   0.7311 |   1.6151 |   4.2400 |   0.4353 |  26.6027 |   0.3873 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 16 | 588 | 3,137,407,481 |  34.5580 |   0.7099 |  12.2019 |   0.0001 |   0.7187 |   1.5920 |   4.1496 |   0.4324 |  26.5204 |   0.4349 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 16 | 588 | 3,137,407,481 |  34.8428 |   0.7065 |  11.7189 |   0.0001 |   0.7798 |   1.6208 |   4.1955 |   0.4343 |  26.7263 |   0.3795 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 16 | 588 | 3,137,407,481 |  34.7509 |   0.7210 |  10.0245 |   0.0001 |   0.7308 |   1.6050 |   4.2892 |   0.4294 |  26.5901 |   0.3853 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 16 | 588 | 3,137,407,481 |  34.6578 |   0.7114 |  13.3754 |   0.0001 |   0.7179 |   1.6065 |   4.2229 |   0.4226 |  26.5853 |   0.3912 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 8 | 588 | 3,137,407,481 |  69.2417 |   0.6951 |  11.4631 |   0.0001 |   1.1439 |   2.0522 |   8.4982 |   0.5568 |  55.4418 |   0.8536 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 8 | 588 | 3,137,407,481 |  69.3300 |   0.6927 |  10.7327 |   0.0001 |   1.1017 |   2.0538 |   8.4923 |   0.5627 |  55.5670 |   0.8598 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 8 | 588 | 3,137,407,481 |  69.0763 |   0.6879 |  13.9035 |   0.0001 |   1.1555 |   2.0353 |   8.4185 |   0.5477 |  55.3756 |   0.8557 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 8 | 588 | 3,137,407,481 |  69.3940 |   0.6885 |  10.2280 |   0.0001 |   1.1635 |   2.0742 |   8.5324 |   0.5504 |  55.6581 |   0.7268 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 8 | 588 | 3,137,407,481 |  69.0851 |   0.6839 |  11.1322 |   0.0001 |   1.1674 |   2.0445 |   8.5864 |   0.5530 |  55.2506 |   0.7992 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 40 | 77 | 65,941,441 |   1.0519 |   0.7113 |   0.2478 |   0.0001 |   0.0231 |   0.0636 |   0.1177 |   0.0341 |   0.0972 |   0.0047 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 40 | 77 | 65,941,441 |   1.0444 |   0.7083 |   0.2432 |   0.0001 |   0.0233 |   0.0634 |   0.1127 |   0.0343 |   0.0975 |   0.0048 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 40 | 77 | 65,941,441 |   1.0535 |   0.7137 |   0.4180 |   0.0001 |   0.0231 |   0.0643 |   0.1158 |   0.0343 |   0.0974 |   0.0048 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 40 | 77 | 65,941,441 |   1.0524 |   0.7108 |   0.1668 |   0.0001 |   0.0233 |   0.0638 |   0.1194 |   0.0342 |   0.0962 |   0.0047 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 40 | 77 | 65,941,441 |   1.0586 |   0.7155 |   0.1681 |   0.0001 |   0.0231 |   0.0644 |   0.1186 |   0.0343 |   0.0979 |   0.0047 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 32 | 77 | 65,941,441 |   1.0823 |   0.7140 |   0.3044 |   0.0001 |   0.0256 |   0.0700 |   0.1289 |   0.0372 |   0.1003 |   0.0061 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 32 | 77 | 65,941,441 |   1.0743 |   0.7115 |   0.2555 |   0.0001 |   0.0252 |   0.0697 |   0.1249 |   0.0370 |   0.1001 |   0.0059 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 32 | 77 | 65,941,441 |   1.0718 |   0.7098 |   0.2664 |   0.0001 |   0.0253 |   0.0695 |   0.1241 |   0.0373 |   0.1000 |   0.0057 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 32 | 77 | 65,941,441 |   1.0813 |   0.7158 |   0.2167 |   0.0001 |   0.0251 |   0.0699 |   0.1261 |   0.0374 |   0.1011 |   0.0058 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 32 | 77 | 65,941,441 |   1.0771 |   0.7141 |   0.1798 |   0.0001 |   0.0254 |   0.0700 |   0.1231 |   0.0377 |   0.1008 |   0.0060 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 24 | 77 | 65,941,441 |   1.1214 |   0.7161 |   0.2624 |   0.0001 |   0.0287 |   0.0807 |   0.1406 |   0.0423 |   0.1053 |   0.0075 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 24 | 77 | 65,941,441 |   1.1202 |   0.7146 |   0.3115 |   0.0001 |   0.0282 |   0.0809 |   0.1426 |   0.0413 |   0.1051 |   0.0074 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 24 | 77 | 65,941,441 |   1.1314 |   0.7177 |   0.2517 |   0.0001 |   0.0282 |   0.0806 |   0.1515 |   0.0414 |   0.1046 |   0.0074 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 24 | 77 | 65,941,441 |   1.1239 |   0.7174 |   0.2373 |   0.0001 |   0.0285 |   0.0800 |   0.1441 |   0.0414 |   0.1050 |   0.0074 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 24 | 77 | 65,941,441 |   1.1141 |   0.7113 |   0.2547 |   0.0001 |   0.0281 |   0.0808 |   0.1400 |   0.0414 |   0.1050 |   0.0074 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 16 | 77 | 65,941,441 |   1.1886 |   0.7140 |   0.2938 |   0.0001 |   0.0306 |   0.0986 |   0.1736 |   0.0462 |   0.1156 |   0.0098 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 16 | 77 | 65,941,441 |   1.1947 |   0.7163 |   0.3493 |   0.0001 |   0.0312 |   0.1014 |   0.1751 |   0.0461 |   0.1152 |   0.0094 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 16 | 77 | 65,941,441 |   1.1840 |   0.7143 |   0.2988 |   0.0001 |   0.0311 |   0.0987 |   0.1662 |   0.0469 |   0.1168 |   0.0099 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 16 | 77 | 65,941,441 |   1.2894 |   0.7103 |   0.2751 |   0.0001 |   0.0462 |   0.1286 |   0.2016 |   0.0571 |   0.1356 |   0.0099 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 16 | 77 | 65,941,441 |   1.1816 |   0.7110 |   0.2779 |   0.0001 |   0.0308 |   0.0991 |   0.1666 |   0.0457 |   0.1186 |   0.0098 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 8 | 77 | 65,941,441 |   1.3642 |   0.7090 |   0.3582 |   0.0003 |   0.0460 |   0.1320 |   0.2671 |   0.0567 |   0.1351 |   0.0180 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 8 | 77 | 65,941,441 |   1.3544 |   0.7089 |   0.3099 |   0.0003 |   0.0452 |   0.1311 |   0.2610 |   0.0559 |   0.1338 |   0.0183 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 8 | 77 | 65,941,441 |   1.3739 |   0.7131 |   0.3244 |   0.0003 |   0.0461 |   0.1303 |   0.2762 |   0.0560 |   0.1337 |   0.0181 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 8 | 77 | 65,941,441 |   1.3659 |   0.7085 |   0.4454 |   0.0003 |   0.0463 |   0.1315 |   0.2712 |   0.0563 |   0.1334 |   0.0183 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 8 | 77 | 65,941,441 |   1.3784 |   0.7119 |   0.4663 |   0.0003 |   0.0464 |   0.1346 |   0.2775 |   0.0562 |   0.1333 |   0.0181 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 40 | 513 | 864,761,518 |   5.6211 |   0.7717 |   1.9477 |   0.0001 |   0.1737 |   0.8786 |   1.3433 |   0.2091 |   2.1499 |   0.0948 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 40 | 513 | 864,761,518 |   5.5636 |   0.7181 |   2.0557 |   0.0001 |   0.1730 |   0.8700 |   1.3447 |   0.2078 |   2.1704 |   0.0795 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 40 | 513 | 864,761,518 |   5.5458 |   0.7133 |   1.8768 |   0.0001 |   0.1726 |   0.8583 |   1.3509 |   0.2056 |   2.1652 |   0.0798 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 40 | 513 | 864,761,518 |   5.5688 |   0.7154 |   1.9816 |   0.0001 |   0.1724 |   0.8708 |   1.3434 |   0.2047 |   2.1670 |   0.0949 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 40 | 513 | 864,761,518 |   5.5266 |   0.7144 |   1.9487 |   0.0001 |   0.1737 |   0.8520 |   1.3408 |   0.2076 |   2.1426 |   0.0954 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 32 | 513 | 864,761,518 |   6.6911 |   0.7116 |   2.5760 |   0.0001 |   0.2012 |   0.9314 |   1.5376 |   0.2391 |   2.9794 |   0.0907 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 32 | 513 | 864,761,518 |   6.6755 |   0.7125 |   2.6096 |   0.0001 |   0.1987 |   0.9326 |   1.5196 |   0.2332 |   2.9821 |   0.0968 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 32 | 513 | 864,761,518 |   6.6949 |   0.7133 |   1.9949 |   0.0001 |   0.2003 |   0.9338 |   1.5265 |   0.2347 |   2.9987 |   0.0876 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 32 | 513 | 864,761,518 |   6.7075 |   0.7132 |   1.8662 |   0.0001 |   0.1968 |   0.9458 |   1.5388 |   0.2427 |   2.9662 |   0.1039 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 32 | 513 | 864,761,518 |   6.6874 |   0.7122 |   1.5321 |   0.0001 |   0.2008 |   0.9337 |   1.5403 |   0.2288 |   2.9813 |   0.0903 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 24 | 513 | 864,761,518 |   8.7369 |   0.7099 |   2.3826 |   0.0001 |   0.2197 |   1.0518 |   1.8976 |   0.2648 |   4.4697 |   0.1233 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 24 | 513 | 864,761,518 |   8.7383 |   0.7117 |   2.7244 |   0.0001 |   0.2210 |   1.0416 |   1.8978 |   0.2588 |   4.5006 |   0.1068 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 24 | 513 | 864,761,518 |   8.8002 |   0.7093 |   2.9953 |   0.0001 |   0.2206 |   1.0584 |   1.9251 |   0.2637 |   4.5186 |   0.1044 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 24 | 513 | 864,761,518 |   8.7893 |   0.7139 |   2.7384 |   0.0001 |   0.2199 |   1.0502 |   1.9057 |   0.2910 |   4.4906 |   0.1179 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 24 | 513 | 864,761,518 |   8.7821 |   0.7152 |   2.3384 |   0.0001 |   0.2162 |   1.0507 |   1.9064 |   0.2606 |   4.5123 |   0.1207 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 16 | 513 | 864,761,518 |  13.1524 |   0.7713 |   2.8860 |   0.0003 |   0.2620 |   1.2843 |   2.7080 |   0.3278 |   7.6684 |   0.1303 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 16 | 513 | 864,761,518 |  13.0256 |   0.6946 |   3.1243 |   0.0003 |   0.2627 |   1.2620 |   2.7238 |   0.3309 |   7.6184 |   0.1330 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 16 | 513 | 864,761,518 |  13.0821 |   0.7049 |   3.1503 |   0.0003 |   0.2651 |   1.2909 |   2.7024 |   0.3361 |   7.6274 |   0.1549 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 16 | 513 | 864,761,518 |  13.0417 |   0.7188 |   2.4269 |   0.0003 |   0.2646 |   1.3102 |   2.7840 |   0.3165 |   7.5138 |   0.1334 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 16 | 513 | 864,761,518 |  13.0151 |   0.7013 |   3.1347 |   0.0003 |   0.2652 |   1.2889 |   2.7207 |   0.3234 |   7.5836 |   0.1317 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 8 | 513 | 864,761,518 |  25.8678 |   0.7015 |   3.4424 |   0.0003 |   0.3917 |   1.7151 |   5.1527 |   0.4763 |  17.2105 |   0.2196 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 8 | 513 | 864,761,518 |  25.9516 |   0.6819 |   3.3470 |   0.0003 |   0.3940 |   1.7211 |   5.2096 |   0.4479 |  17.2370 |   0.2598 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 8 | 513 | 864,761,518 |  25.8678 |   0.6891 |   4.0744 |   0.0003 |   0.3932 |   1.7377 |   5.1380 |   0.4508 |  17.1981 |   0.2606 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 8 | 513 | 864,761,518 |  25.7022 |   0.6822 |   3.9176 |   0.0003 |   0.3919 |   1.7349 |   5.1571 |   0.4497 |  17.0674 |   0.2188 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 8 | 513 | 864,761,518 |  25.7824 |   0.6789 |   3.6294 |   0.0003 |   0.3968 |   1.7311 |   5.1617 |   0.4504 |  17.1126 |   0.2506 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |

====================================================================================

CUDA AWARE MPI - SORTING
------------------------------------------------------------------------------------
CC sg.cu -o sg.out -lm -O3
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 40 | 125 | 408,443,204 |   3.3006 |   0.0151 |   0.5412 |   0.0001 |   0.0814 |   0.1421 |   2.4807 |   0.1113 |   0.4477 |   0.0222 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 40 | 125 | 408,443,204 |   3.2191 |   0.0053 |   0.5163 |   0.0001 |   0.0809 |   0.1413 |   2.4294 |   0.1109 |   0.4287 |   0.0226 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 40 | 125 | 408,443,204 |   3.2817 |   0.0052 |   0.7109 |   0.0001 |   0.0802 |   0.1418 |   2.4707 |   0.1110 |   0.4495 |   0.0232 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 40 | 125 | 408,443,204 |   3.2768 |   0.0053 |   0.6745 |   0.0001 |   0.0801 |   0.1425 |   2.4667 |   0.1086 |   0.4513 |   0.0223 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 40 | 125 | 408,443,204 |   3.2697 |   0.0052 |   0.7051 |   0.0001 |   0.0797 |   0.1424 |   2.4535 |   0.1162 |   0.4503 |   0.0222 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 32 | 125 | 408,443,204 |   3.1617 |   0.0056 |   0.7937 |   0.0001 |   0.0917 |   0.1507 |   2.3434 |   0.1161 |   0.4266 |   0.0276 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 32 | 125 | 408,443,204 |   3.2315 |   0.0053 |   0.6326 |   0.0001 |   0.0912 |   0.1486 |   2.3955 |   0.1179 |   0.4452 |   0.0277 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 32 | 125 | 408,443,204 |   3.2178 |   0.0053 |   0.7340 |   0.0001 |   0.0920 |   0.1496 |   2.3720 |   0.1159 |   0.4553 |   0.0277 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 32 | 125 | 408,443,204 |   3.2302 |   0.0053 |   0.7320 |   0.0001 |   0.0916 |   0.1492 |   2.3984 |   0.1194 |   0.4387 |   0.0275 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 32 | 125 | 408,443,204 |   3.2158 |   0.0052 |   0.7524 |   0.0001 |   0.0910 |   0.1502 |   2.3893 |   0.1161 |   0.4365 |   0.0274 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 24 | 125 | 408,443,204 |   3.0542 |   0.0055 |   0.7824 |   0.0001 |   0.1061 |   0.1618 |   2.1454 |   0.1323 |   0.4668 |   0.0362 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 24 | 125 | 408,443,204 |   3.0478 |   0.0053 |   0.8699 |   0.0001 |   0.1051 |   0.1647 |   2.1648 |   0.1348 |   0.4365 |   0.0366 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 24 | 125 | 408,443,204 |   3.0153 |   0.0053 |   0.8811 |   0.0001 |   0.1071 |   0.1623 |   2.1522 |   0.1332 |   0.4174 |   0.0377 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 24 | 125 | 408,443,204 |   3.0315 |   0.0053 |   0.7854 |   0.0001 |   0.1051 |   0.1620 |   2.1572 |   0.1349 |   0.4296 |   0.0374 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 24 | 125 | 408,443,204 |   3.0424 |   0.0054 |   0.9568 |   0.0001 |   0.1072 |   0.1638 |   2.1578 |   0.1362 |   0.4342 |   0.0376 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 16 | 125 | 408,443,204 |   2.8531 |   0.0053 |   1.2204 |   0.0001 |   0.1112 |   0.1686 |   1.9853 |   0.1509 |   0.3784 |   0.0534 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 16 | 125 | 408,443,204 |   2.8987 |   0.0053 |   0.8416 |   0.0001 |   0.1154 |   0.1693 |   1.9671 |   0.1506 |   0.4383 |   0.0526 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 16 | 125 | 408,443,204 |   2.8684 |   0.0053 |   1.4386 |   0.0001 |   0.1122 |   0.1684 |   1.9904 |   0.1494 |   0.3895 |   0.0533 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 16 | 125 | 408,443,204 |   2.8713 |   0.0055 |   1.0091 |   0.0001 |   0.1119 |   0.1699 |   1.9920 |   0.1515 |   0.3870 |   0.0535 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 16 | 125 | 408,443,204 |   2.8661 |   0.0052 |   1.2911 |   0.0001 |   0.1113 |   0.1690 |   1.9921 |   0.1509 |   0.3840 |   0.0535 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 8 | 125 | 408,443,204 |   3.6346 |   0.0053 |   1.8014 |   0.0001 |   0.1331 |   0.2041 |   2.4140 |   0.2298 |   0.5396 |   0.1087 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 8 | 125 | 408,443,204 |   3.4914 |   0.0052 |   1.5740 |   0.0001 |   0.1345 |   0.2018 |   2.2689 |   0.2311 |   0.5415 |   0.1083 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 8 | 125 | 408,443,204 |   3.4800 |   0.0052 |   1.6464 |   0.0001 |   0.1340 |   0.1978 |   2.2626 |   0.2304 |   0.5416 |   0.1083 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 8 | 125 | 408,443,204 |   3.4761 |   0.0051 |   1.7104 |   0.0001 |   0.1360 |   0.2009 |   2.2609 |   0.2311 |   0.5322 |   0.1098 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 8 | 125 | 408,443,204 |   3.5038 |   0.0052 |   2.0127 |   0.0001 |   0.1369 |   0.2019 |   2.2753 |   0.2302 |   0.5475 |   0.1068 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 40 | 20 | 3,700,737,910 |   2.9081 |   0.0058 |  10.6519 |   0.0001 |   0.0732 |   0.0744 |   2.1460 |   0.1631 |   0.2610 |   0.1844 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 40 | 20 | 3,700,737,910 |   2.8403 |   0.0052 |  11.3013 |   0.0001 |   0.0688 |   0.0659 |   2.0704 |   0.1622 |   0.2834 |   0.1843 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 40 | 20 | 3,700,737,910 |   2.8265 |   0.0052 |   9.6762 |   0.0001 |   0.0696 |   0.0670 |   2.0945 |   0.1652 |   0.2417 |   0.1832 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 40 | 20 | 3,700,737,910 |   2.7928 |   0.0053 |  10.0875 |   0.0001 |   0.0692 |   0.0660 |   2.0399 |   0.1632 |   0.2629 |   0.1864 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 40 | 20 | 3,700,737,910 |   2.8317 |   0.0054 |  12.3839 |   0.0001 |   0.0708 |   0.0656 |   2.0693 |   0.1624 |   0.2730 |   0.1850 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 32 | 20 | 3,700,737,910 |   3.2866 |   0.0053 |  11.1020 |   0.0001 |   0.0817 |   0.0776 |   2.4058 |   0.1938 |   0.2924 |   0.2299 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 32 | 20 | 3,700,737,910 |   3.2348 |   0.0053 |  11.7079 |   0.0001 |   0.0818 |   0.0836 |   2.3688 |   0.1956 |   0.2748 |   0.2249 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 32 | 20 | 3,700,737,910 |   3.3468 |   0.0053 |  10.1915 |   0.0001 |   0.0851 |   0.0766 |   2.4713 |   0.1917 |   0.2852 |   0.2315 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 32 | 20 | 3,700,737,910 |   3.2192 |   0.0053 |  10.2908 |   0.0001 |   0.0823 |   0.0774 |   2.3706 |   0.1919 |   0.2628 |   0.2289 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 32 | 20 | 3,700,737,910 |   3.3212 |   0.0052 |   9.9532 |   0.0001 |   0.0838 |   0.0780 |   2.4288 |   0.1958 |   0.3008 |   0.2287 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 24 | 20 | 3,700,737,910 |   4.1449 |   0.0052 |  10.0181 |   0.0001 |   0.1070 |   0.0986 |   2.9029 |   0.2491 |   0.4739 |   0.3081 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 24 | 20 | 3,700,737,910 |   4.0809 |   0.0053 |   9.6717 |   0.0001 |   0.1067 |   0.0996 |   2.8801 |   0.2505 |   0.4384 |   0.3002 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 24 | 20 | 3,700,737,910 |   4.1741 |   0.0053 |   8.3837 |   0.0001 |   0.1048 |   0.1001 |   2.9742 |   0.2505 |   0.4326 |   0.3066 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 24 | 20 | 3,700,737,910 |   4.0175 |   0.0053 |   9.5269 |   0.0001 |   0.1020 |   0.0970 |   2.9099 |   0.2506 |   0.3499 |   0.3028 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 24 | 20 | 3,700,737,910 |   4.1496 |   0.0053 |   9.8304 |   0.0001 |   0.1053 |   0.0933 |   2.9331 |   0.2475 |   0.4663 |   0.2986 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 16 | 20 | 3,700,737,910 |   5.2896 |   0.0053 |  11.4663 |   0.0001 |   0.1388 |   0.1340 |   3.3370 |   0.3622 |   0.7841 |   0.5281 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 16 | 20 | 3,700,737,910 |   5.4401 |   0.0052 |  10.4245 |   0.0001 |   0.1450 |   0.1367 |   3.6888 |   0.3682 |   0.5800 |   0.5161 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 16 | 20 | 3,700,737,910 |   5.2336 |   0.0053 |  12.3531 |   0.0001 |   0.1424 |   0.1310 |   3.5327 |   0.3681 |   0.6081 |   0.4459 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 16 | 20 | 3,700,737,910 |   5.3613 |   0.0053 |  10.9539 |   0.0001 |   0.1387 |   0.1316 |   3.5320 |   0.3615 |   0.6745 |   0.5175 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 16 | 20 | 3,700,737,910 |   5.3740 |   0.0052 |  10.8290 |   0.0001 |   0.1520 |   0.1309 |   3.5776 |   0.3626 |   0.6344 |   0.5111 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 8 | 20 | 3,700,737,910 |  12.5947 |   0.0056 |  13.3176 |   0.0001 |   0.3220 |   0.3391 |   4.9598 |   0.7197 |   5.2200 |   1.0285 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 8 | 20 | 3,700,737,910 |  11.9366 |   0.0055 |  13.7962 |   0.0001 |   0.3030 |   0.3426 |   4.9456 |   0.7221 |   4.5947 |   1.0229 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 8 | 20 | 3,700,737,910 |  11.7129 |   0.0054 |  13.4390 |   0.0001 |   0.2904 |   0.3475 |   4.9619 |   0.7205 |   4.3635 |   1.0237 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 8 | 20 | 3,700,737,910 |  11.9236 |   0.0055 |  13.3429 |   0.0001 |   0.3159 |   0.3404 |   4.9505 |   0.7195 |   4.5550 |   1.0368 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 8 | 20 | 3,700,737,910 |  12.1013 |   0.0055 |  13.6641 |   0.0001 |   0.3250 |   0.3382 |   4.9733 |   0.8411 |   4.5910 |   1.0272 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 40 | 588 | 3,137,407,481 |  18.9212 |   0.0058 |   9.4762 |   0.0001 |   0.4508 |   0.6642 |  11.6983 |   0.5212 |   5.3807 |   0.2000 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 40 | 588 | 3,137,407,481 |  18.9098 |   0.0052 |   9.2101 |   0.0001 |   0.4407 |   0.6747 |  11.7021 |   0.5174 |   5.3613 |   0.2083 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 40 | 588 | 3,137,407,481 |  18.9705 |   0.0053 |   9.5608 |   0.0001 |   0.4497 |   0.6678 |  11.6782 |   0.5269 |   5.4480 |   0.1945 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 40 | 588 | 3,137,407,481 |  18.9568 |   0.0053 |   8.8470 |   0.0001 |   0.4412 |   0.6719 |  11.7336 |   0.5221 |   5.3858 |   0.1967 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 40 | 588 | 3,137,407,481 |  18.9199 |   0.0053 |  10.3432 |   0.0001 |   0.4559 |   0.6736 |  11.7500 |   0.5294 |   5.3302 |   0.1755 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 32 | 588 | 3,137,407,481 |  21.1170 |   0.0055 |   9.7441 |   0.0001 |   0.5452 |   0.7374 |  11.2876 |   0.6461 |   7.6536 |   0.2416 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 32 | 588 | 3,137,407,481 |  21.0569 |   0.0053 |  10.8628 |   0.0001 |   0.5333 |   0.7229 |  11.2501 |   0.6442 |   7.6909 |   0.2100 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 32 | 588 | 3,137,407,481 |  20.9775 |   0.0053 |  11.2403 |   0.0001 |   0.5409 |   0.7445 |  11.2190 |   0.6314 |   7.6289 |   0.2076 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 32 | 588 | 3,137,407,481 |  21.0375 |   0.0053 |   9.8646 |   0.0001 |   0.5380 |   0.7492 |  11.3089 |   0.6352 |   7.5678 |   0.2330 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 32 | 588 | 3,137,407,481 |  20.9231 |   0.0053 |   9.1028 |   0.0001 |   0.5312 |   0.7427 |  11.1232 |   0.6446 |   7.6384 |   0.2376 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 24 | 588 | 3,137,407,481 |  25.3628 |   0.0053 |   9.9069 |   0.0001 |   0.7367 |   0.8037 |  10.7776 |   0.7190 |  12.0542 |   0.2661 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 24 | 588 | 3,137,407,481 |  25.2568 |   0.0053 |  11.3399 |   0.0001 |   0.7068 |   0.8096 |  10.7193 |   0.5999 |  12.1497 |   0.2661 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 24 | 588 | 3,137,407,481 |  25.3942 |   0.0053 |  10.3339 |   0.0001 |   0.7615 |   0.8001 |  10.7006 |   0.7020 |  12.1574 |   0.2674 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 24 | 588 | 3,137,407,481 |  25.3346 |   0.0053 |  11.2593 |   0.0001 |   0.7253 |   0.8026 |  10.7866 |   0.6958 |  12.0537 |   0.2653 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 24 | 588 | 3,137,407,481 |  25.3864 |   0.0053 |  11.1911 |   0.0001 |   0.7324 |   0.8015 |  10.7419 |   0.6915 |  12.1059 |   0.3079 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 16 | 588 | 3,137,407,481 |  35.6114 |   0.0057 |  11.0786 |   0.0001 |   1.0131 |   0.9156 |  10.7286 |   0.6261 |  21.9384 |   0.3838 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 16 | 588 | 3,137,407,481 |  36.0647 |   0.0053 |   9.1959 |   0.0001 |   0.9364 |   0.8685 |  12.0453 |   0.6386 |  21.1868 |   0.3837 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 16 | 588 | 3,137,407,481 |  35.4758 |   0.0053 |   9.5344 |   0.0001 |   1.0119 |   0.9153 |  10.7346 |   0.6285 |  21.7930 |   0.3872 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 16 | 588 | 3,137,407,481 |  35.5733 |   0.0053 |  10.9042 |   0.0001 |   0.9518 |   0.9092 |  10.6775 |   0.6297 |  21.9624 |   0.4374 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 16 | 588 | 3,137,407,481 |  35.8613 |   0.0053 |  10.1750 |   0.0001 |   0.9628 |   0.8751 |  10.8564 |   0.6133 |  22.1702 |   0.3780 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 8 | 588 | 3,137,407,481 |  70.0078 |   0.0052 |  11.2783 |   0.0001 |   1.9417 |   1.1179 |  12.6281 |   0.7806 |  52.7244 |   0.8099 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 8 | 588 | 3,137,407,481 |  70.5422 |   0.0052 |  10.3047 |   0.0001 |   2.0438 |   1.1580 |  12.9255 |   0.7919 |  52.7600 |   0.8578 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 8 | 588 | 3,137,407,481 |  73.5681 |   0.0053 |  10.5108 |   0.0001 |   1.9843 |   1.3027 |  19.7866 |   0.7683 |  48.9861 |   0.7348 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 8 | 588 | 3,137,407,481 |  69.5383 |   0.0052 |  13.4019 |   0.0001 |   1.9639 |   1.1112 |  12.3687 |   0.7823 |  52.4457 |   0.8611 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 8 | 588 | 3,137,407,481 |  68.5263 |   0.0052 |  11.0885 |   0.0001 |   1.6327 |   1.0746 |  11.7433 |   0.7592 |  52.4544 |   0.8569 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 40 | 77 | 65,941,441 |   1.4416 |   0.0055 |   0.3824 |   0.0001 |   0.0244 |   0.0599 |   1.1318 |   0.0419 |   0.1732 |   0.0049 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 40 | 77 | 65,941,441 |   1.4417 |   0.0054 |   0.4430 |   0.0001 |   0.0241 |   0.0607 |   1.1279 |   0.0430 |   0.1756 |   0.0050 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 40 | 77 | 65,941,441 |   1.4376 |   0.0053 |   0.1424 |   0.0001 |   0.0254 |   0.0602 |   1.1239 |   0.0437 |   0.1741 |   0.0049 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 40 | 77 | 65,941,441 |   1.4417 |   0.0052 |   0.2497 |   0.0001 |   0.0250 |   0.0604 |   1.1296 |   0.0415 |   0.1748 |   0.0049 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 40 | 77 | 65,941,441 |   1.4484 |   0.0053 |   0.2248 |   0.0001 |   0.0269 |   0.0608 |   1.1347 |   0.0428 |   0.1729 |   0.0050 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 32 | 77 | 65,941,441 |   1.4258 |   0.0053 |   0.2986 |   0.0001 |   0.0270 |   0.0611 |   1.0974 |   0.0514 |   0.1780 |   0.0056 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 32 | 77 | 65,941,441 |   1.4408 |   0.0052 |   0.1867 |   0.0001 |   0.0261 |   0.0605 |   1.1089 |   0.0526 |   0.1815 |   0.0059 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 32 | 77 | 65,941,441 |   1.4376 |   0.0053 |   0.1818 |   0.0001 |   0.0266 |   0.0611 |   1.1070 |   0.0537 |   0.1782 |   0.0058 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 32 | 77 | 65,941,441 |   1.4323 |   0.0053 |   0.2489 |   0.0001 |   0.0287 |   0.0607 |   1.1011 |   0.0528 |   0.1778 |   0.0059 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 32 | 77 | 65,941,441 |   1.4333 |   0.0053 |   0.1938 |   0.0001 |   0.0262 |   0.0610 |   1.1087 |   0.0484 |   0.1778 |   0.0058 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 24 | 77 | 65,941,441 |   1.3570 |   0.0055 |   0.3022 |   0.0001 |   0.0290 |   0.0665 |   1.0095 |   0.0595 |   0.1802 |   0.0067 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 24 | 77 | 65,941,441 |   1.3597 |   0.0055 |   0.2126 |   0.0001 |   0.0286 |   0.0677 |   1.0095 |   0.0605 |   0.1811 |   0.0067 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 24 | 77 | 65,941,441 |   1.3479 |   0.0055 |   0.2214 |   0.0001 |   0.0290 |   0.0677 |   1.0029 |   0.0572 |   0.1787 |   0.0068 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 24 | 77 | 65,941,441 |   1.3584 |   0.0055 |   0.2866 |   0.0001 |   0.0291 |   0.0681 |   1.0112 |   0.0557 |   0.1819 |   0.0068 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 24 | 77 | 65,941,441 |   1.3630 |   0.0055 |   0.2517 |   0.0001 |   0.0291 |   0.0681 |   1.0136 |   0.0605 |   0.1795 |   0.0067 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 16 | 77 | 65,941,441 |   1.2879 |   0.0054 |   0.3795 |   0.0001 |   0.0304 |   0.0726 |   0.9421 |   0.0506 |   0.1773 |   0.0094 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 16 | 77 | 65,941,441 |   1.2594 |   0.0053 |   0.2660 |   0.0001 |   0.0304 |   0.0715 |   0.9332 |   0.0502 |   0.1591 |   0.0097 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 16 | 77 | 65,941,441 |   1.2999 |   0.0052 |   0.3591 |   0.0001 |   0.0300 |   0.0719 |   0.9428 |   0.0616 |   0.1788 |   0.0094 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 16 | 77 | 65,941,441 |   1.2636 |   0.0052 |   0.3069 |   0.0001 |   0.0301 |   0.0734 |   0.9404 |   0.0501 |   0.1549 |   0.0095 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 16 | 77 | 65,941,441 |   1.2768 |   0.0052 |   0.3480 |   0.0001 |   0.0300 |   0.0725 |   0.9436 |   0.0501 |   0.1660 |   0.0093 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 8 | 77 | 65,941,441 |   1.4189 |   0.0053 |   0.4765 |   0.0002 |   0.0493 |   0.0875 |   1.0351 |   0.0648 |   0.1591 |   0.0175 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 8 | 77 | 65,941,441 |   1.4133 |   0.0052 |   0.3620 |   0.0002 |   0.0496 |   0.0879 |   1.0320 |   0.0650 |   0.1562 |   0.0172 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 8 | 77 | 65,941,441 |   1.4153 |   0.0053 |   0.3366 |   0.0002 |   0.0495 |   0.0876 |   1.0318 |   0.0655 |   0.1580 |   0.0173 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 8 | 77 | 65,941,441 |   1.4786 |   0.0053 |   0.4347 |   0.0002 |   0.0555 |   0.0907 |   1.0557 |   0.0853 |   0.1687 |   0.0172 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 8 | 77 | 65,941,441 |   1.4139 |   0.0053 |   0.3615 |   0.0002 |   0.0493 |   0.0876 |   1.0339 |   0.0648 |   0.1555 |   0.0174 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 40 | 513 | 864,761,518 |   9.7335 |   0.0052 |   2.3643 |   0.0001 |   0.2201 |   0.3908 |   6.9854 |   0.2913 |   1.7814 |   0.0591 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 40 | 513 | 864,761,518 |   9.7653 |   0.0053 |   1.6963 |   0.0001 |   0.2207 |   0.3945 |   7.0032 |   0.2988 |   1.7829 |   0.0598 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 40 | 513 | 864,761,518 |   9.7684 |   0.0052 |   1.8990 |   0.0001 |   0.2230 |   0.3931 |   7.0069 |   0.3020 |   1.7795 |   0.0587 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 40 | 513 | 864,761,518 |   9.8170 |   0.0053 |   2.1632 |   0.0001 |   0.2202 |   0.3948 |   7.0512 |   0.2976 |   1.7889 |   0.0591 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 40 | 513 | 864,761,518 |   9.7227 |   0.0053 |   1.9434 |   0.0001 |   0.2193 |   0.3913 |   6.9725 |   0.2915 |   1.7825 |   0.0604 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 32 | 513 | 864,761,518 |   9.9709 |   0.0052 |   1.8743 |   0.0001 |   0.2503 |   0.4325 |   6.9891 |   0.3175 |   1.8995 |   0.0768 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 32 | 513 | 864,761,518 |   9.7995 |   0.0053 |   2.1536 |   0.0001 |   0.2465 |   0.4287 |   6.8472 |   0.3033 |   1.8904 |   0.0781 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 32 | 513 | 864,761,518 |   9.9988 |   0.0052 |   1.8512 |   0.0001 |   0.2495 |   0.4317 |   7.0185 |   0.3183 |   1.8978 |   0.0777 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 32 | 513 | 864,761,518 |   9.8956 |   0.0053 |   1.9133 |   0.0001 |   0.2553 |   0.4260 |   6.9331 |   0.3130 |   1.8846 |   0.0782 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 32 | 513 | 864,761,518 |   9.9855 |   0.0053 |   2.0389 |   0.0001 |   0.2494 |   0.4311 |   6.9945 |   0.3222 |   1.9063 |   0.0766 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 24 | 513 | 864,761,518 |  10.4496 |   0.0057 |   2.9598 |   0.0001 |   0.3110 |   0.4724 |   6.9361 |   0.3979 |   2.2189 |   0.1075 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 24 | 513 | 864,761,518 |  10.5228 |   0.0063 |   2.4083 |   0.0001 |   0.3035 |   0.4823 |   6.9865 |   0.4076 |   2.2257 |   0.1107 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 24 | 513 | 864,761,518 |  10.4723 |   0.0058 |   3.4725 |   0.0001 |   0.3114 |   0.4692 |   6.9588 |   0.3968 |   2.2223 |   0.1080 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 24 | 513 | 864,761,518 |  10.4785 |   0.0058 |   2.7170 |   0.0001 |   0.3055 |   0.4743 |   6.9459 |   0.4168 |   2.2214 |   0.1087 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 24 | 513 | 864,761,518 |  10.5105 |   0.0063 |   2.7845 |   0.0001 |   0.3208 |   0.4758 |   6.9615 |   0.4067 |   2.2301 |   0.1092 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 16 | 513 | 864,761,518 |  12.3601 |   0.0059 |   3.5142 |   0.0012 |   0.3004 |   0.5486 |   7.4486 |   0.4733 |   3.4440 |   0.1381 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 16 | 513 | 864,761,518 |  12.5246 |   0.0058 |   3.6091 |   0.0016 |   0.3138 |   0.5411 |   7.5603 |   0.4769 |   3.4869 |   0.1382 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 16 | 513 | 864,761,518 |  12.4635 |   0.0059 |   3.3981 |   0.0016 |   0.2992 |   0.5414 |   7.5529 |   0.4745 |   3.4247 |   0.1633 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 16 | 513 | 864,761,518 |  12.8267 |   0.0061 |   3.0637 |   0.0014 |   0.3056 |   0.5358 |   7.6992 |   0.4690 |   3.6714 |   0.1383 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 16 | 513 | 864,761,518 |  12.5239 |   0.0059 |   3.2314 |   0.0016 |   0.3049 |   0.5387 |   7.5958 |   0.4737 |   3.4380 |   0.1654 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 8 | 513 | 864,761,518 |  22.9713 |   0.0060 |   3.4960 |   0.0003 |   0.5653 |   0.7470 |   8.4365 |   0.6671 |  12.2915 |   0.2576 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 8 | 513 | 864,761,518 |  23.0904 |   0.0060 |   3.9705 |   0.0003 |   0.5832 |   0.7368 |   8.4851 |   0.6634 |  12.3580 |   0.2575 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 8 | 513 | 864,761,518 |  23.0127 |   0.0059 |   4.3318 |   0.0003 |   0.5758 |   0.7399 |   8.4509 |   0.6550 |  12.3669 |   0.2180 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 8 | 513 | 864,761,518 |  23.0378 |   0.0060 |   3.8358 |   0.0003 |   0.5700 |   0.7627 |   8.4744 |   0.6568 |  12.3502 |   0.2174 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 8 | 513 | 864,761,518 |  23.0438 |   0.0059 |   3.9700 |   0.0003 |   0.5752 |   0.7517 |   8.4441 |   0.6592 |  12.3914 |   0.2160 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
CUDA AWARE MPI - TWO PASS
------------------------------------------------------------------------------------
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 40 | 125 | 408,443,204 |   4.6469 |   0.0052 |   0.6323 |   0.0001 |   0.0744 |   0.3089 |   3.5729 |   0.0986 |   0.5643 |   0.0226 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 40 | 125 | 408,443,204 |   4.6482 |   0.0053 |   0.5953 |   0.0001 |   0.0756 |   0.3120 |   3.5752 |   0.0987 |   0.5587 |   0.0226 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 40 | 125 | 408,443,204 |   4.6180 |   0.0053 |   0.6416 |   0.0001 |   0.0751 |   0.3046 |   3.5565 |   0.0972 |   0.5565 |   0.0227 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 40 | 125 | 408,443,204 |   4.6245 |   0.0053 |   0.5825 |   0.0001 |   0.0763 |   0.3102 |   3.5577 |   0.0972 |   0.5552 |   0.0227 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 40 | 125 | 408,443,204 |   4.6486 |   0.0061 |   0.5949 |   0.0001 |   0.0754 |   0.3106 |   3.5782 |   0.0992 |   0.5559 |   0.0231 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 32 | 125 | 408,443,204 |   4.3953 |   0.0054 |   0.6444 |   0.0001 |   0.0949 |   0.3294 |   3.2875 |   0.1101 |   0.5399 |   0.0281 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 32 | 125 | 408,443,204 |   4.3165 |   0.0053 |   0.6290 |   0.0001 |   0.0947 |   0.3253 |   3.2434 |   0.1087 |   0.5118 |   0.0273 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 32 | 125 | 408,443,204 |   4.3668 |   0.0053 |   0.7725 |   0.0001 |   0.0947 |   0.3237 |   3.2595 |   0.1099 |   0.5466 |   0.0271 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 32 | 125 | 408,443,204 |   4.3488 |   0.0053 |   0.5511 |   0.0001 |   0.0942 |   0.3205 |   3.2623 |   0.1129 |   0.5260 |   0.0276 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 32 | 125 | 408,443,204 |   4.4585 |   0.0053 |   0.6551 |   0.0001 |   0.0995 |   0.3333 |   3.3113 |   0.1120 |   0.5696 |   0.0276 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 24 | 125 | 408,443,204 |   4.0412 |   0.0053 |   0.7404 |   0.0001 |   0.1022 |   0.3562 |   2.8964 |   0.1268 |   0.5169 |   0.0374 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 24 | 125 | 408,443,204 |   4.0677 |   0.0053 |   0.6797 |   0.0001 |   0.1030 |   0.3455 |   2.8931 |   0.1262 |   0.5577 |   0.0369 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 24 | 125 | 408,443,204 |   4.0457 |   0.0052 |   0.7800 |   0.0001 |   0.1012 |   0.3482 |   2.8896 |   0.1272 |   0.5371 |   0.0372 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 24 | 125 | 408,443,204 |   4.0727 |   0.0053 |   0.7565 |   0.0001 |   0.1038 |   0.3489 |   2.8882 |   0.1259 |   0.5629 |   0.0376 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 24 | 125 | 408,443,204 |   4.0381 |   0.0052 |   0.7265 |   0.0001 |   0.1009 |   0.3518 |   2.8853 |   0.1266 |   0.5311 |   0.0371 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 16 | 125 | 408,443,204 |   3.5686 |   0.0052 |   1.2776 |   0.0001 |   0.1065 |   0.3718 |   2.4231 |   0.1441 |   0.4650 |   0.0526 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 16 | 125 | 408,443,204 |   3.6755 |   0.0053 |   1.5499 |   0.0001 |   0.1058 |   0.3738 |   2.4997 |   0.1436 |   0.4946 |   0.0526 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 16 | 125 | 408,443,204 |   3.5389 |   0.0052 |   1.3124 |   0.0001 |   0.1055 |   0.3731 |   2.4044 |   0.1432 |   0.4541 |   0.0532 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 16 | 125 | 408,443,204 |   3.6207 |   0.0052 |   1.1542 |   0.0001 |   0.1064 |   0.3730 |   2.4603 |   0.1442 |   0.4786 |   0.0530 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 16 | 125 | 408,443,204 |   3.5650 |   0.0053 |   0.9499 |   0.0001 |   0.1069 |   0.3706 |   2.4214 |   0.1430 |   0.4637 |   0.0540 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 8 | 125 | 408,443,204 |   4.4226 |   0.0067 |   1.8720 |   0.0001 |   0.1409 |   0.4997 |   2.8366 |   0.2160 |   0.6231 |   0.0995 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 8 | 125 | 408,443,204 |   4.3095 |   0.0053 |   1.7029 |   0.0001 |   0.1401 |   0.5007 |   2.7306 |   0.2133 |   0.6212 |   0.0983 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 8 | 125 | 408,443,204 |   4.3172 |   0.0053 |   1.3721 |   0.0001 |   0.1403 |   0.4995 |   2.7292 |   0.2140 |   0.6294 |   0.0995 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 8 | 125 | 408,443,204 |   4.3634 |   0.0053 |   1.5259 |   0.0001 |   0.1515 |   0.5073 |   2.7455 |   0.2170 |   0.6382 |   0.0986 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_163734.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 8 | 125 | 408,443,204 |   4.2878 |   0.0052 |   1.5227 |   0.0001 |   0.1431 |   0.5014 |   2.7195 |   0.2125 |   0.6074 |   0.0986 | data/data_163734.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 40 | 20 | 3,700,737,910 |   4.2709 |   0.0053 |  11.1271 |   0.0001 |   0.0688 |   0.9903 |   2.5517 |   0.1358 |   0.3356 |   0.1833 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 40 | 20 | 3,700,737,910 |   4.2070 |   0.0053 |  12.4017 |   0.0001 |   0.0662 |   0.9878 |   2.5222 |   0.1370 |   0.3025 |   0.1860 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 40 | 20 | 3,700,737,910 |   4.2827 |   0.0055 |  10.4431 |   0.0001 |   0.0658 |   0.9769 |   2.5931 |   0.1378 |   0.3192 |   0.1844 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 40 | 20 | 3,700,737,910 |   4.2246 |   0.0052 |  10.8294 |   0.0001 |   0.0668 |   0.9929 |   2.5370 |   0.1387 |   0.2993 |   0.1846 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 40 | 20 | 3,700,737,910 |   4.2251 |   0.0053 |  10.6302 |   0.0001 |   0.0687 |   0.9866 |   2.5386 |   0.1369 |   0.3022 |   0.1869 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 32 | 20 | 3,700,737,910 |   4.7112 |   0.0053 |   9.2118 |   0.0001 |   0.0807 |   1.1041 |   2.8366 |   0.1684 |   0.2915 |   0.2246 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 32 | 20 | 3,700,737,910 |   4.6900 |   0.0052 |  10.8354 |   0.0001 |   0.0803 |   1.1187 |   2.7839 |   0.1688 |   0.3053 |   0.2277 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 32 | 20 | 3,700,737,910 |   4.6720 |   0.0052 |  12.6067 |   0.0001 |   0.0789 |   1.1127 |   2.7374 |   0.1722 |   0.3421 |   0.2233 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 32 | 20 | 3,700,737,910 |   4.6874 |   0.0053 |   9.6803 |   0.0001 |   0.0800 |   1.1162 |   2.7720 |   0.1685 |   0.3111 |   0.2341 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 32 | 20 | 3,700,737,910 |   4.6916 |   0.0053 |  12.0056 |   0.0001 |   0.0811 |   1.1178 |   2.7609 |   0.1692 |   0.3271 |   0.2303 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 24 | 20 | 3,700,737,910 |   5.8861 |   0.0054 |  12.6400 |   0.0001 |   0.1031 |   1.3592 |   3.3754 |   0.2215 |   0.5229 |   0.2986 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 24 | 20 | 3,700,737,910 |   5.8555 |   0.0055 |  10.2982 |   0.0001 |   0.1037 |   1.3612 |   3.3534 |   0.2222 |   0.5129 |   0.2966 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 24 | 20 | 3,700,737,910 |   5.9256 |   0.0055 |  10.4663 |   0.0001 |   0.1040 |   1.3607 |   3.4206 |   0.2214 |   0.5157 |   0.2977 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 24 | 20 | 3,700,737,910 |   5.8603 |   0.0055 |   8.4889 |   0.0001 |   0.1034 |   1.3482 |   3.3724 |   0.2244 |   0.5095 |   0.2967 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 24 | 20 | 3,700,737,910 |   5.8177 |   0.0055 |  11.9357 |   0.0001 |   0.1042 |   1.3426 |   3.3850 |   0.2222 |   0.4578 |   0.3004 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 16 | 20 | 3,700,737,910 |   7.5579 |   0.0052 |  11.6318 |   0.0001 |   0.1477 |   1.8353 |   4.0831 |   0.3222 |   0.6548 |   0.5094 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 16 | 20 | 3,700,737,910 |   7.3760 |   0.0052 |  10.3853 |   0.0001 |   0.1429 |   1.8450 |   3.9001 |   0.3206 |   0.7197 |   0.4423 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 16 | 20 | 3,700,737,910 |   7.4380 |   0.0053 |  12.7366 |   0.0001 |   0.1468 |   1.8373 |   3.9037 |   0.3209 |   0.7799 |   0.4441 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 16 | 20 | 3,700,737,910 |   7.3277 |   0.0053 |  14.1756 |   0.0001 |   0.1439 |   1.8334 |   3.8711 |   0.3179 |   0.6408 |   0.5153 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_147892.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 16 | 20 | 3,700,737,910 |   7.4002 |   0.0053 |  12.1007 |   0.0001 |   0.1471 |   1.8479 |   3.9257 |   0.3231 |   0.7106 |   0.4405 | data/data_147892.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 40 | 588 | 3,137,407,481 |  20.4416 |   0.0053 |   9.5684 |   0.0001 |   0.4333 |   0.9071 |  13.5858 |   0.4250 |   4.9071 |   0.1780 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 40 | 588 | 3,137,407,481 |  20.3238 |   0.0052 |  10.9365 |   0.0001 |   0.4329 |   0.8985 |  13.5853 |   0.4171 |   4.8054 |   0.1793 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 40 | 588 | 3,137,407,481 |  20.3888 |   0.0053 |  10.1456 |   0.0001 |   0.4384 |   0.9144 |  13.5697 |   0.4158 |   4.8410 |   0.2042 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 40 | 588 | 3,137,407,481 |  20.4916 |   0.0053 |   9.6338 |   0.0001 |   0.4378 |   0.9078 |  13.6464 |   0.4201 |   4.8730 |   0.2012 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 40 | 588 | 3,137,407,481 |  20.4158 |   0.0052 |   9.5963 |   0.0001 |   0.4329 |   0.9188 |  13.6061 |   0.4191 |   4.8531 |   0.1806 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 32 | 588 | 3,137,407,481 |  22.2623 |   0.0053 |  10.4668 |   0.0001 |   0.5487 |   1.0222 |  13.4693 |   0.5042 |   6.5121 |   0.2005 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 32 | 588 | 3,137,407,481 |  22.2206 |   0.0086 |  10.7302 |   0.0001 |   0.5433 |   1.0263 |  13.4364 |   0.4855 |   6.5191 |   0.2014 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 32 | 588 | 3,137,407,481 |  22.2633 |   0.0052 |   8.7249 |   0.0001 |   0.5414 |   1.0273 |  13.4365 |   0.4982 |   6.5265 |   0.2282 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 32 | 588 | 3,137,407,481 |  22.2722 |   0.0053 |  10.5306 |   0.0001 |   0.5471 |   1.0344 |  13.4440 |   0.4978 |   6.5037 |   0.2398 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 32 | 588 | 3,137,407,481 |  22.1988 |   0.0053 |   8.6806 |   0.0001 |   0.5524 |   1.0226 |  13.5013 |   0.4974 |   6.4148 |   0.2048 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 24 | 588 | 3,137,407,481 |  26.2873 |   0.0053 |  10.9400 |   0.0001 |   0.6687 |   1.0655 |  12.7101 |   0.6166 |  10.9572 |   0.2639 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 24 | 588 | 3,137,407,481 |  26.3715 |   0.0053 |  10.5962 |   0.0001 |   0.6970 |   1.0382 |  12.7026 |   0.6193 |  11.0107 |   0.2983 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 24 | 588 | 3,137,407,481 |  26.2413 |   0.0053 |  12.3960 |   0.0001 |   0.6825 |   1.0519 |  12.6594 |   0.6205 |  10.9581 |   0.2636 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 24 | 588 | 3,137,407,481 |  26.2304 |   0.0053 |  10.2474 |   0.0001 |   0.6837 |   1.0520 |  12.6779 |   0.6221 |  10.9290 |   0.2604 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 24 | 588 | 3,137,407,481 |  26.4078 |   0.0052 |  11.9170 |   0.0001 |   0.6913 |   1.0607 |  12.7526 |   0.6263 |  11.0083 |   0.2632 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 16 | 588 | 3,137,407,481 |  35.9986 |   0.0051 |  10.7188 |   0.0001 |   0.9825 |   1.0012 |  12.0834 |   0.6272 |  20.9231 |   0.3760 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 16 | 588 | 3,137,407,481 |  35.9831 |   0.0052 |   9.9259 |   0.0001 |   0.9086 |   0.9867 |  12.2367 |   0.6331 |  20.8382 |   0.3745 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 16 | 588 | 3,137,407,481 |  36.3416 |   0.0053 |  10.9786 |   0.0001 |   0.9509 |   1.0761 |  13.1658 |   0.6368 |  20.0816 |   0.4250 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 16 | 588 | 3,137,407,481 |  36.7998 |   0.0053 |  10.7004 |   0.0001 |   0.9601 |   0.9861 |  13.1117 |   0.6373 |  20.7264 |   0.3728 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 16 | 588 | 3,137,407,481 |  36.1503 |   0.0053 |  10.9818 |   0.0001 |   1.0217 |   0.9789 |  12.1031 |   0.6339 |  20.9760 |   0.4314 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 8 | 588 | 3,137,407,481 |  76.7361 |   0.0059 |  11.2518 |   0.0001 |   1.6949 |   1.2305 |  12.6692 |   0.7098 |  59.5532 |   0.8725 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 8 | 588 | 3,137,407,481 |  82.0456 |   0.0052 |  11.4152 |   0.0001 |   1.9859 |   2.3424 |  19.9865 |   0.7318 |  56.1171 |   0.8766 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 8 | 588 | 3,137,407,481 |  77.6822 |   0.0053 |  13.7078 |   0.0001 |   1.8571 |   1.2578 |  13.6925 |   0.7099 |  59.2967 |   0.8629 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 8 | 588 | 3,137,407,481 |  70.8303 |   0.0053 |  10.1461 |   0.0001 |   1.8638 |   1.2566 |  12.8949 |   0.7041 |  53.3937 |   0.7118 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_165435.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 8 | 588 | 3,137,407,481 |  77.3871 |   0.0052 |  13.6682 |   0.0001 |   1.8831 |   1.2641 |  13.6078 |   0.7083 |  59.0376 |   0.8809 | data/data_165435.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 40 | 77 | 65,941,441 |   2.2650 |   0.0053 |   0.3957 |   0.0001 |   0.0295 |   0.0838 |   1.8016 |   0.0340 |   0.3057 |   0.0051 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 40 | 77 | 65,941,441 |   2.2590 |   0.0053 |   0.2025 |   0.0001 |   0.0286 |   0.0815 |   1.8026 |   0.0351 |   0.3010 |   0.0050 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 40 | 77 | 65,941,441 |   2.3134 |   0.0053 |   0.1820 |   0.0001 |   0.0320 |   0.0847 |   1.8614 |   0.0350 |   0.2899 |   0.0050 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 40 | 77 | 65,941,441 |   2.2688 |   0.0052 |   0.2870 |   0.0001 |   0.0266 |   0.0830 |   1.8080 |   0.0334 |   0.3075 |   0.0050 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 40 | 77 | 65,941,441 |   2.2533 |   0.0052 |   0.2083 |   0.0001 |   0.0267 |   0.0840 |   1.7912 |   0.0342 |   0.3071 |   0.0048 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 32 | 77 | 65,941,441 |   2.2324 |   0.0053 |   0.2659 |   0.0001 |   0.0290 |   0.0804 |   1.8058 |   0.0408 |   0.2654 |   0.0058 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 32 | 77 | 65,941,441 |   2.2342 |   0.0053 |   0.2024 |   0.0001 |   0.0270 |   0.0843 |   1.7997 |   0.0388 |   0.2734 |   0.0056 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 32 | 77 | 65,941,441 |   2.2848 |   0.0052 |   0.3327 |   0.0001 |   0.0292 |   0.0884 |   1.8142 |   0.0487 |   0.2930 |   0.0060 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 32 | 77 | 65,941,441 |   2.1961 |   0.0053 |   0.2936 |   0.0001 |   0.0284 |   0.0824 |   1.7840 |   0.0392 |   0.2509 |   0.0059 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 32 | 77 | 65,941,441 |   2.1797 |   0.0052 |   0.2929 |   0.0001 |   0.0262 |   0.0812 |   1.7664 |   0.0399 |   0.2551 |   0.0056 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 24 | 77 | 65,941,441 |   2.0372 |   0.0054 |   0.3018 |   0.0001 |   0.0292 |   0.0944 |   1.5547 |   0.0545 |   0.2922 |   0.0067 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 24 | 77 | 65,941,441 |   1.9856 |   0.0055 |   0.2251 |   0.0001 |   0.0297 |   0.0970 |   1.5450 |   0.0511 |   0.2507 |   0.0066 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 24 | 77 | 65,941,441 |   2.0857 |   0.0055 |   0.3322 |   0.0001 |   0.0315 |   0.1001 |   1.6133 |   0.0504 |   0.2781 |   0.0068 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 24 | 77 | 65,941,441 |   2.0059 |   0.0054 |   0.2252 |   0.0001 |   0.0297 |   0.0935 |   1.5409 |   0.0499 |   0.2797 |   0.0067 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 24 | 77 | 65,941,441 |   2.0080 |   0.0054 |   0.3178 |   0.0001 |   0.0296 |   0.0933 |   1.5363 |   0.0590 |   0.2778 |   0.0064 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 16 | 77 | 65,941,441 |   1.7662 |   0.0052 |   0.3423 |   0.0001 |   0.0327 |   0.0944 |   1.3490 |   0.0496 |   0.2250 |   0.0103 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 16 | 77 | 65,941,441 |   1.7719 |   0.0053 |   0.3637 |   0.0001 |   0.0325 |   0.1113 |   1.3293 |   0.0491 |   0.2348 |   0.0095 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 16 | 77 | 65,941,441 |   1.7477 |   0.0053 |   0.2554 |   0.0001 |   0.0328 |   0.0936 |   1.3395 |   0.0497 |   0.2174 |   0.0093 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 16 | 77 | 65,941,441 |   1.7518 |   0.0053 |   0.2339 |   0.0001 |   0.0324 |   0.0915 |   1.3400 |   0.0490 |   0.2240 |   0.0094 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 16 | 77 | 65,941,441 |   1.7747 |   0.0052 |   0.2835 |   0.0001 |   0.0323 |   0.1238 |   1.3191 |   0.0495 |   0.2352 |   0.0094 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 8 | 77 | 65,941,441 |   1.9386 |   0.0052 |   0.3726 |   0.0003 |   0.0487 |   0.1145 |   1.4525 |   0.0647 |   0.2356 |   0.0171 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 8 | 77 | 65,941,441 |   1.8780 |   0.0052 |   0.3451 |   0.0003 |   0.0488 |   0.1145 |   1.4121 |   0.0652 |   0.2151 |   0.0169 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 8 | 77 | 65,941,441 |   1.9088 |   0.0053 |   0.3647 |   0.0003 |   0.0487 |   0.1155 |   1.4279 |   0.0648 |   0.2289 |   0.0174 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 8 | 77 | 65,941,441 |   1.8834 |   0.0053 |   0.4476 |   0.0003 |   0.0488 |   0.1164 |   1.4212 |   0.0645 |   0.2098 |   0.0170 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/data_409593.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 8 | 77 | 65,941,441 |   1.9245 |   0.0052 |   0.4298 |   0.0003 |   0.0487 |   0.1149 |   1.4342 |   0.0642 |   0.2398 |   0.0172 | data/data_409593.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 40 | 513 | 864,761,518 |  15.5236 |   0.0056 |   1.9688 |   0.0001 |   0.2354 |   0.6347 |  11.9126 |   0.2576 |   2.4219 |   0.0557 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 40 | 513 | 864,761,518 |  15.6587 |   0.0052 |   1.8677 |   0.0001 |   0.2354 |   0.6466 |  12.0142 |   0.2557 |   2.4452 |   0.0563 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 40 | 513 | 864,761,518 |  15.7110 |   0.0052 |   1.6563 |   0.0001 |   0.2354 |   0.6292 |  12.0770 |   0.2663 |   2.4419 |   0.0559 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 40 | 513 | 864,761,518 |  15.6586 |   0.0052 |   1.9394 |   0.0001 |   0.2372 |   0.6337 |  12.0186 |   0.2599 |   2.4485 |   0.0555 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 40 | 513 | 864,761,518 |  15.6977 |   0.0053 |   1.4637 |   0.0001 |   0.2375 |   0.6354 |  12.0468 |   0.2633 |   2.4532 |   0.0563 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 32 | 513 | 864,761,518 |  13.8919 |   0.0068 |   2.1874 |   0.0001 |   0.2692 |   0.6932 |  10.3244 |   0.2638 |   2.2645 |   0.0700 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 32 | 513 | 864,761,518 |  13.8413 |   0.0077 |   2.2987 |   0.0001 |   0.2710 |   0.7040 |  10.2624 |   0.2638 |   2.2622 |   0.0701 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 32 | 513 | 864,761,518 |  13.8233 |   0.0061 |   1.9030 |   0.0001 |   0.2732 |   0.6940 |  10.2429 |   0.2636 |   2.2735 |   0.0699 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 32 | 513 | 864,761,518 |  13.6837 |   0.0068 |   2.0341 |   0.0001 |   0.2724 |   0.7046 |  10.0881 |   0.2642 |   2.2782 |   0.0695 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 32 | 513 | 864,761,518 |  13.8563 |   0.0067 |   2.2515 |   0.0001 |   0.2717 |   0.6960 |  10.2765 |   0.2615 |   2.2747 |   0.0691 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 24 | 513 | 864,761,518 |  14.1894 |   0.0055 |   3.0130 |   0.0001 |   0.3010 |   0.8152 |   9.9718 |   0.3398 |   2.6627 |   0.0933 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 24 | 513 | 864,761,518 |  14.1942 |   0.0053 |   2.2672 |   0.0001 |   0.3007 |   0.7959 |   9.9829 |   0.3442 |   2.6735 |   0.0916 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 24 | 513 | 864,761,518 |  14.0802 |   0.0053 |   2.8242 |   0.0001 |   0.3058 |   0.8060 |   9.9091 |   0.3394 |   2.6229 |   0.0917 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 24 | 513 | 864,761,518 |  14.1729 |   0.0052 |   2.6348 |   0.0001 |   0.3057 |   0.8094 |   9.9459 |   0.3444 |   2.6694 |   0.0928 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 24 | 513 | 864,761,518 |  14.1731 |   0.0052 |   2.5149 |   0.0001 |   0.3041 |   0.7971 |   9.9942 |   0.3476 |   2.6325 |   0.0924 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 16 | 513 | 864,761,518 |  14.8080 |   0.0055 |   3.1063 |   0.0007 |   0.3377 |   0.8601 |   9.9561 |   0.4522 |   3.0624 |   0.1333 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 16 | 513 | 864,761,518 |  14.8634 |   0.0055 |   2.7357 |   0.0012 |   0.3504 |   0.8732 |   9.9799 |   0.4500 |   3.0691 |   0.1341 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 16 | 513 | 864,761,518 |  14.8100 |   0.0055 |   3.3593 |   0.0012 |   0.3391 |   0.8605 |   9.9410 |   0.4470 |   3.0822 |   0.1334 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 16 | 513 | 864,761,518 |  14.7650 |   0.0055 |   2.8297 |   0.0014 |   0.3474 |   0.8602 |   9.8893 |   0.4583 |   3.0689 |   0.1339 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 16 | 513 | 864,761,518 |  14.8155 |   0.0055 |   2.5234 |   0.0012 |   0.3369 |   0.8667 |   9.9483 |   0.4558 |   3.0659 |   0.1352 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 8 | 513 | 864,761,518 |  23.4978 |   0.0056 |   4.2412 |   0.0003 |   0.5297 |   1.2250 |  10.5505 |   0.6519 |  10.3233 |   0.2116 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 8 | 513 | 864,761,518 |  23.4650 |   0.0055 |   3.3699 |   0.0003 |   0.5236 |   1.2326 |  10.5523 |   0.6562 |  10.2516 |   0.2428 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 8 | 513 | 864,761,518 |  23.6026 |   0.0055 |   3.4999 |   0.0003 |   0.5273 |   1.2343 |  10.6681 |   0.6464 |  10.3097 |   0.2110 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 8 | 513 | 864,761,518 |  25.3927 |   0.0054 |   3.3135 |   0.0003 |   0.5283 |   1.2463 |  12.3401 |   0.6625 |  10.3496 |   0.2601 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0 
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 8 | 513 | 864,761,518 |  23.4794 |   0.0055 |   3.8554 |   0.0003 |   0.5432 |   1.2238 |  10.5537 |   0.6513 |  10.2885 |   0.2131 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
Polaris job ended at: 2024-08-15 04:43:28
Total time taken: 2 hour(s), 47 minute(s), 0 second(s)
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> JOB ENDED >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


```