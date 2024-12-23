>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> SINGLE JOIN on 10000001 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 1 --ppn 1 --depth=1 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 10000001 0 1 90000
| 10,000,000 | 1 | 1 | 1,037,050,773 |   5.0364 |   0.2070 |   0.1513 |   0.0003 |   0.1676 |   0.0028 |   0.0566 |   0.0561 |   2.9758 |   0.4578 |   0.0265 |   1.0854 |   0.0006 | 10000001_singlejoin.bin |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> SINGLE JOIN on 10000001 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 2 --ppn 2 --depth=2 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 10000001 0 1 90000
| 10,000,000 | 2 | 1 | 1,037,135,566 |   4.3161 |   0.3388 |   0.0760 |   0.0002 |   0.0850 |   0.0025 |   0.0542 |   0.0301 |   2.6264 |   0.2238 |   0.0230 |   0.9317 |   0.0004 | 10000001_singlejoin.bin |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> SINGLE JOIN on 10000001 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 10000001 0 1 90000
| 10,000,000 | 4 | 1 | 1,037,065,333 |   2.6293 |   0.6848 |   0.0404 |   0.0002 |   0.0428 |   0.0026 |   0.0327 |   0.0178 |   1.2523 |   0.1085 |   0.0187 |   0.4644 |   0.0044 | 10000001_singlejoin.bin |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> SINGLE JOIN on 10000001 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 10000001 0 1 90000
| 10,000,000 | 8 | 1 | 1,037,152,902 |   1.6520 |   0.6769 |   0.0196 |   0.0002 |   0.0229 |   0.0022 |   0.0304 |   0.0081 |   0.6201 |   0.0544 |   0.0107 |   0.2258 |   0.0004 | 10000001_singlejoin.bin |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> SINGLE JOIN on 10000001 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 10000001 0 1 90000
| 10,000,000 | 16 | 1 | 1,037,088,758 |   1.2052 |   0.6887 |   0.0104 |   0.0003 |   0.0126 |   0.0020 |   0.0145 |   0.0048 |   0.3248 |   0.0327 |   0.0050 |   0.1161 |   0.0036 | 10000001_singlejoin.bin |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> SINGLE JOIN on 10000001 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 10000001 0 1 90000
| 10,000,000 | 32 | 1 | 1,037,097,982 |   1.0225 |   0.6971 |   0.0055 |   0.0003 |   0.0054 |   0.0019 |   0.0658 |   0.0029 |   0.1628 |   0.0181 |   0.0023 |   0.0641 |   0.0018 | 10000001_singlejoin.bin |

