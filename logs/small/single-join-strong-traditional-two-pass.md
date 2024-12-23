>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> SINGLE JOIN on 10000001 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 1 --ppn 1 --depth=1 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 10000001 0 0 90000
| 10,000,000 | 1 | 1 | 1,037,050,773 |   7.0976 |   0.1968 |   0.1513 |   0.0002 |   0.1586 |   0.0476 |   0.0578 |   2.1034 |   2.9718 |   0.4410 |   0.0268 |   1.0930 |   0.0005 | 10000001_singlejoin.bin |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> SINGLE JOIN on 10000001 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 2 --ppn 2 --depth=2 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 10000001 0 0 90000
| 10,000,000 | 2 | 1 | 1,037,135,566 |   4.9745 |   0.3397 |   0.0764 |   0.0002 |   0.0701 |   0.0124 |   0.0582 |   0.6058 |   2.6973 |   0.2150 |   0.0221 |   0.9501 |   0.0036 | 10000001_singlejoin.bin |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> SINGLE JOIN on 10000001 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 10000001 0 0 90000
| 10,000,000 | 4 | 1 | 1,037,065,333 |   2.8435 |   0.6908 |   0.0391 |   0.0003 |   0.0425 |   0.0064 |   0.0325 |   0.2088 |   1.2721 |   0.1082 |   0.0195 |   0.4621 |   0.0004 | 10000001_singlejoin.bin |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> SINGLE JOIN on 10000001 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 10000001 0 0 90000
| 10,000,000 | 8 | 1 | 1,037,152,902 |   1.7268 |   0.6891 |   0.0195 |   0.0003 |   0.0230 |   0.0033 |   0.0158 |   0.0794 |   0.6128 |   0.0505 |   0.0078 |   0.2332 |   0.0117 | 10000001_singlejoin.bin |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> SINGLE JOIN on 10000001 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 10000001 0 0 90000
| 10,000,000 | 16 | 1 | 1,037,088,758 |   1.2399 |   0.6872 |   0.0103 |   0.0003 |   0.0101 |   0.0033 |   0.0159 |   0.0452 |   0.3229 |   0.0303 |   0.0059 |   0.1174 |   0.0014 | 10000001_singlejoin.bin |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> SINGLE JOIN on 10000001 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 10000001 0 0 90000
| 10,000,000 | 32 | 1 | 1,037,097,982 |   0.9916 |   0.6904 |   0.0055 |   0.0003 |   0.0075 |   0.0038 |   0.0093 |   0.0271 |   0.1659 |   0.0164 |   0.0041 |   0.0637 |   0.0032 | 10000001_singlejoin.bin |

