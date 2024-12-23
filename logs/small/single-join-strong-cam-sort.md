>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> SINGLE JOIN on 10000001 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 1 --ppn 1 --depth=1 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 10000001 1 1 90000
| 10,000,000 | 1 | 1 | 1,037,050,773 |   5.2209 |   0.2086 |   0.1514 |   0.0002 |   0.1653 |   0.0028 |   0.0631 |   0.0552 |   3.1157 |   0.4577 |   0.0265 |   1.1253 |   0.0005 | 10000001_singlejoin.bin |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> SINGLE JOIN on 10000001 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 2 --ppn 2 --depth=2 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 10000001 1 1 90000
| 10,000,000 | 2 | 1 | 1,037,135,566 |   2.5588 |   0.0451 |   0.0756 |   0.0002 |   0.0703 |   0.0050 |   0.1934 |   0.0280 |   1.0699 |   0.2210 |   0.0189 |   0.9044 |   0.0025 | 10000001_singlejoin.bin |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> SINGLE JOIN on 10000001 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 10000001 1 1 90000
| 10,000,000 | 4 | 1 | 1,037,065,333 |   1.9363 |   0.5309 |   0.0389 |   0.0002 |   0.0369 |   0.0025 |   0.0862 |   0.0156 |   0.6880 |   0.1104 |   0.0158 |   0.4494 |   0.0005 | 10000001_singlejoin.bin |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> SINGLE JOIN on 10000001 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 10000001 1 1 90000
| 10,000,000 | 8 | 1 | 1,037,152,902 |   0.7541 |   0.0057 |   0.0199 |   0.0003 |   0.0236 |   0.0024 |   0.0727 |   0.0083 |   0.2655 |   0.0669 |   0.0695 |   0.2387 |   0.0003 | 10000001_singlejoin.bin |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> SINGLE JOIN on 10000001 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 10000001 1 1 90000
| 10,000,000 | 16 | 1 | 1,037,088,758 |   0.4485 |   0.0051 |   0.0103 |   0.0003 |   0.0125 |   0.0021 |   0.0773 |   0.0048 |   0.1551 |   0.0337 |   0.0359 |   0.1162 |   0.0055 | 10000001_singlejoin.bin |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> SINGLE JOIN on 10000001 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 10000001 1 1 90000
| 10,000,000 | 32 | 1 | 1,037,097,982 |   0.3043 |   0.0049 |   0.0055 |   0.0001 |   0.0077 |   0.0021 |   0.0844 |   0.0029 |   0.1016 |   0.0173 |   0.0192 |   0.0611 |   0.0028 | 10000001_singlejoin.bin |
