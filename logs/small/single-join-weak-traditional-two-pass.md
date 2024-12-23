>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> SINGLE JOIN on 10000000 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 1 --ppn 1 --depth=1 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 10000000 0 0 100000
| 10,000,000 | 1 | 1 | 950,725,901 |   6.4644 |   0.1817 |   0.1511 |   0.0003 |   0.1257 |   0.0391 |   0.0552 |   1.8932 |   2.7305 |   0.3838 |   0.0239 |   1.0306 |   0.0005 | 10000000_singlejoin.bin |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> SINGLE JOIN on 10000000 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 2 --ppn 2 --depth=2 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 10000000 0 0 200000
| 20,000,000 | 2 | 1 | 1,949,821,541 |   8.6482 |   0.3451 |   0.1529 |   0.0003 |   0.1254 |   0.0236 |   0.1104 |   1.1008 |   4.8180 |   0.3875 |   0.0422 |   1.6882 |   0.0066 | 10000000_singlejoin.bin |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> SINGLE JOIN on 10000000 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 10000000 0 0 400000
| 40,000,000 | 4 | 1 | 3,949,369,160 |   8.3075 |   0.6907 |   0.1516 |   0.0003 |   0.1510 |   0.0193 |   0.1049 |   0.6879 |   4.4369 |   0.3928 |   0.0702 |   1.7405 |   0.0130 | 10000000_singlejoin.bin |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> SINGLE JOIN on 10000000 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 10000000 0 0 800000
| 80,000,000 | 8 | 1 | 7,949,098,464 |   8.0640 |   0.6948 |   0.1525 |   0.0004 |   0.1512 |   0.0143 |   0.0893 |   0.4622 |   4.3591 |   0.3878 |   0.0607 |   1.7858 |   0.0584 | 10000000_singlejoin.bin |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> SINGLE JOIN on 10000000 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 10000000 0 0 1600000
| 160,000,000 | 16 | 1 | 15,948,907,958 |   8.4137 |   0.6941 |   0.1554 |   0.0003 |   0.1454 |   0.0146 |   0.1010 |   0.4955 |   4.5353 |   0.3887 |   0.0570 |   1.8281 |   0.1538 | 10000000_singlejoin.bin |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> SINGLE JOIN on 10000000 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 10000000 0 0 3200000
| 320,000,000 | 32 | 1 | 31,948,631,083 |   8.5694 |   0.6952 |   0.1521 |   0.0003 |   0.1512 |   0.0174 |   0.1061 |   0.5823 |   4.7034 |   0.3928 |   0.0357 |   1.8176 |   0.0674 | 10000000_singlejoin.bin |

