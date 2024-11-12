TRADITIONAL MPI - TWO PASS
------------------------------------------------------------------------------------
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> SINGLE JOIN on 15000000 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 0 0 1
| 15,000,000 | 32 | 1 | 224,966,459 |   0.7871 |   0.7053 |   0.0117 |   0.0003 |   0.0017 |   0.0124 |   0.0638 |   0.0057 |   0.0000 |   0.0020 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 0 0 1
| 15,000,000 | 32 | 1 | 224,966,459 |   0.7844 |   0.7021 |   0.0090 |   0.0004 |   0.0017 |   0.0146 |   0.0680 |   0.0057 |   0.0000 |   0.0022 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 0 0 1
| 15,000,000 | 32 | 1 | 224,966,459 |   0.7924 |   0.7107 |   0.0088 |   0.0003 |   0.0016 |   0.0124 |   0.0739 |   0.0057 |   0.0000 |   0.0025 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 0 0 1
| 15,000,000 | 16 | 1 | 224,950,913 |   0.8378 |   0.7025 |   0.0156 |   0.0003 |   0.0030 |   0.0161 |   0.0868 |   0.0085 |   0.0000 |   0.0029 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 0 0 1
| 15,000,000 | 16 | 1 | 224,950,913 |   0.8384 |   0.7035 |   0.0155 |   0.0003 |   0.0031 |   0.0158 |   0.0824 |   0.0083 |   0.0000 |   0.0029 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 0 0 1
| 15,000,000 | 16 | 1 | 224,950,913 |   0.8421 |   0.7087 |   0.0162 |   0.0003 |   0.0030 |   0.0168 |   0.0847 |   0.0086 |   0.0000 |   0.0030 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 0 0 1
| 15,000,000 | 8 | 1 | 224,961,629 |   0.9477 |   0.7058 |   0.0305 |   0.0004 |   0.0046 |   0.0249 |   0.1532 |   0.0142 |   0.0000 |   0.0035 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 0 0 1
| 15,000,000 | 8 | 1 | 224,961,629 |   0.9458 |   0.7035 |   0.0295 |   0.0003 |   0.0045 |   0.0249 |   0.1472 |   0.0135 |   0.0000 |   0.0032 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 0 0 1
| 15,000,000 | 8 | 1 | 224,961,629 |   0.9457 |   0.7027 |   0.0295 |   0.0003 |   0.0045 |   0.0249 |   0.1569 |   0.0138 |   0.0000 |   0.0040 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 0 0 1
| 15,000,000 | 4 | 1 | 224,952,211 |   1.2145 |   0.7041 |   0.0580 |   0.0003 |   0.0080 |   0.0646 |   0.3107 |   0.0259 |   0.0000 |   0.0058 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 0 0 1
| 15,000,000 | 4 | 1 | 224,952,211 |   1.2205 |   0.7056 |   0.0579 |   0.0003 |   0.0080 |   0.0647 |   0.3144 |   0.0261 |   0.0000 |   0.0058 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 0 0 1
| 15,000,000 | 4 | 1 | 224,952,211 |   1.2173 |   0.6997 |   0.0581 |   0.0004 |   0.0081 |   0.0645 |   0.3168 |   0.0260 |   0.0000 |   0.0057 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 2 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 0 0 1
| 15,000,000 | 2 | 1 | 224,954,187 |   1.4104 |   0.3642 |   0.1140 |   0.0003 |   0.0152 |   0.1865 |   0.6145 |   0.0453 |   0.0000 |   0.0054 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 2 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 0 0 1
| 15,000,000 | 2 | 1 | 224,954,187 |   1.3302 |   0.3198 |   0.1136 |   0.0003 |   0.0127 |   0.1505 |   0.6031 |   0.0445 |   0.0000 |   0.0054 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 2 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 0 0 1
| 15,000,000 | 2 | 1 | 224,954,187 |   1.3286 |   0.3183 |   0.1144 |   0.0003 |   0.0128 |   0.1505 |   0.5995 |   0.0446 |   0.0000 |   0.0054 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 1 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 0 0 1
| 15,000,000 | 1 | 1 | 224,975,474 |   1.7244 |   0.1855 |   0.2255 |   0.0004 |   0.0251 |   0.4820 |   0.6956 |   0.0880 |   0.0000 |   0.0061 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 1 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 0 0 1
| 15,000,000 | 1 | 1 | 224,975,474 |   1.7273 |   0.1872 |   0.2257 |   0.0003 |   0.0251 |   0.4819 |   0.6952 |   0.0881 |   0.0000 |   0.0060 | 15000000_singlejoin.bin |
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 1 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join.out 15000000 0 0 1
| 15,000,000 | 1 | 1 | 224,975,474 |   1.7435 |   0.1837 |   0.2255 |   0.0003 |   0.0252 |   0.4819 |   0.6939 |   0.0880 |   0.0000 |   0.0057 | 15000000_singlejoin.bin |
