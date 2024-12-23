>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> SINGLE JOIN on 10000000 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 1 --ppn 1 --depth=1 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 10000000 1 1 100000
| 10,000,000 | 1 | 1 | 950,725,901 |   4.7491 |   0.2092 |   0.1513 |   0.0003 |   0.1417 |   0.0028 |   0.0623 |   0.0498 |   2.8001 |   0.3977 |   0.0241 |   1.0608 |   0.0005 | 10000000_singlejoin.bin |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> SINGLE JOIN on 10000000 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 2 --ppn 2 --depth=2 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 10000000 1 1 200000
| 20,000,000 | 2 | 1 | 1,949,821,541 |   4.5512 |   0.2121 |   0.1513 |   0.0002 |   0.1534 |   0.0030 |   0.0570 |   0.0538 |   1.8948 |   0.4035 |   0.0341 |   1.7386 |   0.0006 | 10000000_singlejoin.bin |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> SINGLE JOIN on 10000000 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 10000000 1 1 400000
| 40,000,000 | 4 | 1 | 3,949,369,160 |   5.1429 |   0.0834 |   0.1533 |   0.0003 |   0.1510 |   0.0393 |   0.5492 |   0.0622 |   2.0143 |   0.4039 |   0.0552 |   1.7794 |   0.0048 | 10000000_singlejoin.bin |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> SINGLE JOIN on 10000000 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 10000000 1 1 800000
| 80,000,000 | 8 | 1 | 7,949,098,464 |   4.5904 |   0.0158 |   0.1524 |   0.0003 |   0.1502 |   0.0040 |   0.1079 |   0.0571 |   1.6018 |   0.4088 |   0.4958 |   1.7353 |   0.0133 | 10000000_singlejoin.bin |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> SINGLE JOIN on 10000000 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 10000000 1 1 1600000
| 160,000,000 | 16 | 1 | 15,948,907,958 |   5.4898 |   0.0156 |   0.1521 |   0.0004 |   0.1506 |   0.0039 |   0.1152 |   0.0619 |   2.0826 |   0.4530 |   0.4901 |   2.0027 |   0.1139 | 10000000_singlejoin.bin |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> SINGLE JOIN on 10000000 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 10000000 1 1 3200000
| 320,000,000 | 32 | 1 | 31,948,631,083 |   6.0578 |   0.0206 |   0.1517 |   0.0003 |   0.1505 |   0.0042 |   0.1347 |   0.0576 |   2.7529 |   0.4716 |   0.4975 |   1.8166 |   0.1513 | 10000000_singlejoin.bin |

