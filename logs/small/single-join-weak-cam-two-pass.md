>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> SINGLE JOIN on 10000000 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 1 --ppn 1 --depth=1 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 10000000 1 0 100000
| 10,000,000 | 1 | 1 | 950,725,901 |   6.3357 |   0.1827 |   0.1512 |   0.0002 |   0.1256 |   0.0389 |   0.0522 |   1.8932 |   2.5802 |   0.3837 |   0.0242 |   1.0542 |   0.0005 | 10000000_singlejoin.bin |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> SINGLE JOIN on 10000000 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 2 --ppn 2 --depth=2 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 10000000 1 0 200000
| 20,000,000 | 2 | 1 | 1,949,821,541 |   5.3500 |   0.0509 |   0.1471 |   0.0002 |   0.1262 |   0.0244 |   0.2196 |   1.0974 |   1.6916 |   0.3777 |   0.0418 |   1.7158 |   0.0044 | 10000000_singlejoin.bin |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> SINGLE JOIN on 10000000 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 10000000 1 0 400000
| 40,000,000 | 4 | 1 | 3,949,369,160 |   5.5751 |   0.5330 |   0.1519 |   0.0003 |   0.1517 |   0.0191 |   0.1299 |   0.7021 |   1.7874 |   0.3909 |   0.0700 |   1.7897 |   0.0009 | 10000000_singlejoin.bin |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> SINGLE JOIN on 10000000 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 10000000 1 0 800000
| 80,000,000 | 8 | 1 | 7,949,098,464 |   5.0734 |   0.0150 |   0.1522 |   0.0003 |   0.1516 |   0.0160 |   0.1080 |   0.5725 |   1.6506 |   0.5376 |   0.2804 |   1.7238 |   0.0176 | 10000000_singlejoin.bin |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> SINGLE JOIN on 10000000 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 10000000 1 0 1600000
| 160,000,000 | 16 | 1 | 15,948,907,958 |   5.5312 |   0.0151 |   0.1518 |   0.0003 |   0.1503 |   0.0179 |   0.1162 |   0.6225 |   2.0275 |   0.4765 |   0.2887 |   1.8047 |   0.0116 | 10000000_singlejoin.bin |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> SINGLE JOIN on 10000000 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 10000000 1 0 3200000
| 320,000,000 | 32 | 1 | 31,948,631,083 |   6.4644 |   0.0152 |   0.1521 |   0.0004 |   0.1486 |   0.0215 |   0.1347 |   0.7279 |   2.7705 |   0.4887 |   0.2650 |   1.7954 |   0.0965 | 10000000_singlejoin.bin |

