>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> SINGLE JOIN on 10000000 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 1 --ppn 1 --depth=1 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 10000000 0 1 100000
| 10,000,000 | 1 | 1 | 950,725,901 |   4.6855 |   0.2126 |   0.1513 |   0.0002 |   0.1513 |   0.0028 |   0.0808 |   0.0508 |   2.7107 |   0.3983 |   0.0240 |   1.0535 |   0.0005 | 10000000_singlejoin.bin |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> SINGLE JOIN on 10000000 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 2 --ppn 2 --depth=2 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 10000000 0 1 200000
| 20,000,000 | 2 | 1 | 1,949,821,541 |   7.4869 |   0.3469 |   0.1506 |   0.0002 |   0.1482 |   0.0030 |   0.1051 |   0.0501 |   4.6618 |   0.4029 |   0.0414 |   1.7267 |   0.0006 | 10000000_singlejoin.bin |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> SINGLE JOIN on 10000000 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 10000000 0 1 400000
| 40,000,000 | 4 | 1 | 3,949,369,160 |   7.7067 |   0.7008 |   0.1521 |   0.0003 |   0.1411 |   0.0032 |   0.1038 |   0.0511 |   4.4766 |   0.4089 |   0.0696 |   1.7377 |   0.0135 | 10000000_singlejoin.bin |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> SINGLE JOIN on 10000000 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 10000000 0 1 800000
| 80,000,000 | 8 | 1 | 7,949,098,464 |   7.6579 |   0.7009 |   0.1523 |   0.0002 |   0.1513 |   0.0035 |   0.0956 |   0.0622 |   4.3367 |   0.4113 |   0.0565 |   1.7723 |   0.0675 | 10000000_singlejoin.bin |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> SINGLE JOIN on 10000000 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 10000000 0 1 1600000
| 160,000,000 | 16 | 1 | 15,948,907,958 |   8.0219 |   0.7021 |   0.1520 |   0.0004 |   0.1518 |   0.0035 |   0.0947 |   0.0582 |   4.5709 |   0.4148 |   0.0430 |   1.8831 |   0.0994 | 10000000_singlejoin.bin |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> SINGLE JOIN on 10000000 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 10000000 0 1 3200000
| 320,000,000 | 32 | 1 | 31,948,631,083 |   8.0576 |   0.6992 |   0.1530 |   0.0003 |   0.1520 |   0.0037 |   0.1035 |   0.0565 |   4.6501 |   0.4214 |   0.0566 |   1.8405 |   0.0739 | 10000000_singlejoin.bin |

