>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> SINGLE JOIN on 10000001 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 1 --ppn 1 --depth=1 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 10000001 1 0 90000
| 10,000,000 | 1 | 1 | 1,037,050,773 |   7.0013 |   0.2148 |   0.1471 |   0.0002 |   0.1577 |   0.0490 |   0.0558 |   2.1030 |   2.8590 |   0.4409 |   0.0267 |   1.0937 |   0.0005 | 10000001_singlejoin.bin |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> SINGLE JOIN on 10000001 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 2 --ppn 2 --depth=2 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 10000001 1 0 90000
| 10,000,000 | 2 | 1 | 1,037,135,566 |   3.0456 |   0.0438 |   0.0768 |   0.0002 |   0.0697 |   0.0131 |   0.1978 |   0.6037 |   0.9535 |   0.2097 |   0.0234 |   0.9282 |   0.0025 | 10000001_singlejoin.bin |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> SINGLE JOIN on 10000001 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 10000001 1 0 90000
| 10,000,000 | 4 | 1 | 1,037,065,333 |   2.0883 |   0.5238 |   0.0395 |   0.0003 |   0.0369 |   0.0114 |   0.0843 |   0.2115 |   0.6420 |   0.1038 |   0.0198 |   0.4541 |   0.0004 | 10000001_singlejoin.bin |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> SINGLE JOIN on 10000001 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 10000001 1 0 90000
| 10,000,000 | 8 | 1 | 1,037,152,902 |   0.7900 |   0.0054 |   0.0199 |   0.0003 |   0.0246 |   0.0047 |   0.0787 |   0.1032 |   0.2278 |   0.0582 |   0.0397 |   0.2254 |   0.0220 | 10000001_singlejoin.bin |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> SINGLE JOIN on 10000001 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 10000001 1 0 90000
| 10,000,000 | 16 | 1 | 1,037,088,758 |   0.4897 |   0.0051 |   0.0103 |   0.0003 |   0.0104 |   0.0033 |   0.0717 |   0.0487 |   0.1619 |   0.0308 |   0.0205 |   0.1214 |   0.0156 | 10000001_singlejoin.bin |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> SINGLE JOIN on 10000001 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 10000001 1 0 90000
| 10,000,000 | 32 | 1 | 1,037,097,982 |   0.3467 |   0.0049 |   0.0055 |   0.0003 |   0.0080 |   0.0026 |   0.0898 |   0.0322 |   0.1082 |   0.0183 |   0.0210 |   0.0609 |   0.0006 | 10000001_singlejoin.bin |

