### 4 nodes
```shell
qsub -I -l select=4 -l filesystems=home:eagle -l walltime=1:00:00 -q debug-scaling -A dist_relational_alg
cd mnmgJOIN/
CC tc.cu -o tc_interactive.out -lm -O3
CC sg.cu -o sg_interactive.out -lm -O3
CC wcc.cu -o cc_interactive.out -lm -O3
CC single_join.cu -o single_join_interactive.out -lm -O3

  run_single_dataset ${CUDA_AWARE_MPI} ${METHOD} "data/large_datasets/as-skitter.bin" ${MPICH_GPU_SUPPORT_ENABLED}
  run_single_dataset ${CUDA_AWARE_MPI} ${METHOD} "data/large_datasets/com-Orkut.bin" ${MPICH_GPU_SUPPORT_ENABLED}
  run_single_dataset ${CUDA_AWARE_MPI} ${METHOD} "data/large_datasets/uk-2002.bin" ${MPICH_GPU_SUPPORT_ENABLED}
  run_single_dataset ${CUDA_AWARE_MPI} ${METHOD} "data/large_datasets/stokes.bin" ${MPICH_GPU_SUPPORT_ENABLED}
  run_single_dataset ${CUDA_AWARE_MPI} ${METHOD} "data/large_datasets/arabic-2005.bin" ${MPICH_GPU_SUPPORT_ENABLED}
  run_single_dataset ${CUDA_AWARE_MPI} ${METHOD} "data/large_datasets/webbase-2001.bin" ${MPICH_GPU_SUPPORT_ENABLED}
  run_single_dataset ${CUDA_AWARE_MPI} ${METHOD} "data/large_datasets/twitter_rv.bin" ${MPICH_GPU_SUPPORT_ENABLED}

arsho::x3002c0s19b0n0 { ~/mnmgJOIN }-> MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join_interactive.out data/large_datasets/com-Orkut.bin 0 0 1
| 117,185,083 | 16 | 0 | 6,235,739,233 |   5.4817 |   0.7045 |   0.1320 |   0.0005 |   0.0974 |   0.4061 |   3.2231 |   0.2763 |   0.0000 |   0.0316 | data/large_datasets/com-Orkut.bin_singlejoin.bin |
arsho::x3002c0s19b0n0 { ~/mnmgJOIN }-> MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join_interactive.out data/large_datasets/com-Orkut.bin 0 0 1
| 117,185,083 | 8 | 0 | 6,235,739,233 |  10.8008 |   0.7159 |   0.1527 |   0.0023 |   0.1732 |   1.2385 |   6.3972 |   1.1440 |   0.0000 |   0.0709 | data/large_datasets/com-Orkut.bin_singlejoin.bin |


MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./cc_interactive.out data/large_datasets/com-Orkut.bin 0 0 1
| 117,185,083 | 16 | 9 | 1 (3,072,441) |   1.6139 |   0.7159 |   0.0307 |   0.0045 |   0.2695 |   0.0847 |   0.5599 |   0.0509 |   0.0319 |   0.0097 | data/large_datasets/com-Orkut.bin_cc.bin |
arsho::x3002c0s19b0n0 { ~/mnmgJOIN }-> MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./cc_interactive.out data/large_datasets/com-Orkut.bin 0 0 1
| 117,185,083 | 8 | 9 | 1 (3,072,441) |   2.3025 |   0.7239 |   0.0535 |   0.0047 |   0.3771 |   0.1460 |   0.9864 |   0.0983 |   0.0744 |   0.0137 | data/large_datasets/com-Orkut.bin_cc.bin |
arsho::x3002c0s19b0n0 { ~/mnmgJOIN }-> MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./cc_interactive.out data/large_datasets/com-Orkut.bin 0 0 1
| 117,185,083 | 4 | 9 | 1 (3,072,441) |   3.8034 |   0.7365 |   1.1726 |   0.0061 |   0.6170 |   0.3604 |   1.9473 |   0.1896 |   0.0386 |   0.0154 | data/large_datasets/com-Orkut.bin_cc.bin |

module load craype-accel-nvidia80
export MPICH_GPU_SUPPORT_ENABLED=1
CC tc.cu -o tc_interactive.out -lm -O3
CC sg.cu -o sg_interactive.out -lm -O3
CC wcc.cu -o cc_interactive.out -lm -O3
CC single_join.cu -o single_join_interactive.out -lm -O3

MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join_interactive.out data/large_datasets/com-Orkut.bin 1 0 1
| 117,185,083 | 16 | 0 | 6,235,739,233 |   3.3086 |   0.0128 |   0.0288 |   0.0005 |   0.0974 |   0.4665 |   1.6031 |   0.3401 |   0.0000 |   0.1916 | data/large_datasets/com-Orkut.bin_singlejoin.bin |
arsho::x3002c0s19b0n0 { ~/mnmgJOIN }-> MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join_interactive.out data/large_datasets/com-Orkut.bin 1 1 1
| 117,185,083 | 16 | 0 | 6,235,739,233 |   3.1231 |   0.0129 |   0.0286 |   0.0005 |   0.0971 |   0.0456 |   1.6683 |   0.2909 |   0.0000 |   0.3334 | data/large_datasets/com-Orkut.bin_singlejoin.bin |
arsho::x3002c0s19b0n0 { ~/mnmgJOIN }-> MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join_interactive.out data/large_datasets/com-Orkut.bin 0 0 1
| 117,185,083 | 16 | 0 | 6,235,739,233 |   5.4592 |   0.7068 |   0.0279 |   0.0005 |   0.0994 |   0.4053 |   3.2713 |   0.2765 |   0.0000 |   0.0332 | data/large_datasets/com-Orkut.bin_singlejoin.bin |
arsho::x3002c0s19b0n0 { ~/mnmgJOIN }-> MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join_interactive.out data/large_datasets/com-Orkut.bin 0 1 1
| 117,185,083 | 16 | 0 | 6,235,739,233 |   5.1028 |   0.7060 |   0.0283 |   0.0005 |   0.0994 |   0.0450 |   3.2323 |   0.2910 |   0.0000 |   0.0340 | data/large_datasets/com-Orkut.bin_singlejoin.bin |

MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./cc_interactive.out data/large_datasets/com-Orkut.bin 1 0 1
| 117,185,083 | 16 | 9 | 1 (3,072,441) |   1.6139 |   0.7159 |   0.0307 |   0.0045 |   0.2695 |   0.0847 |   0.5599 |   0.0509 |   0.0319 |   0.0097 | data/large_datasets/com-Orkut.bin_cc.bin |
arsho::x3002c0s19b0n0 { ~/mnmgJOIN }-> MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./cc_interactive.out data/large_datasets/com-Orkut.bin 0 0 1
| 117,185,083 | 8 | 9 | 1 (3,072,441) |   2.3025 |   0.7239 |   0.0535 |   0.0047 |   0.3771 |   0.1460 |   0.9864 |   0.0983 |   0.0744 |   0.0137 | data/large_datasets/com-Orkut.bin_cc.bin |
arsho::x3002c0s19b0n0 { ~/mnmgJOIN }-> MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./cc_interactive.out data/large_datasets/com-Orkut.bin 0 0 1
| 117,185,083 | 4 | 9 | 1 (3,072,441) |   3.8034 |   0.7365 |   1.1726 |   0.0061 |   0.6170 |   0.3604 |   1.9473 |   0.1896 |   0.0386 |   0.0154 | data/large_datasets/com-Orkut.bin_cc.bin |

arsho::x3002c0s19b0n0 { ~/mnmgJOIN }-> MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./cc_interactive.out data/large_datasets/com-Orkut.bin 1 0 1
| 117,185,083 | 16 | 9 | 1 (3,072,441) |   0.8135 |   0.0220 |   0.0288 |   0.0027 |   0.3068 |   0.0955 |   0.4443 |   0.0535 |   0.0621 |   0.0084 | data/large_datasets/com-Orkut.bin_cc.bin |
arsho::x3002c0s19b0n0 { ~/mnmgJOIN }-> MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./cc_interactive.out data/large_datasets/com-Orkut.bin 1 0 1
| 117,185,083 | 8 | 9 | 1 (3,072,441) |   1.2527 |   0.0270 |   0.0530 |   0.0051 |   0.4073 |   0.1800 |   0.5481 |   0.1196 |   0.0800 |   0.0150 | data/large_datasets/com-Orkut.bin_cc.bin |
arsho::x3002c0s19b0n0 { ~/mnmgJOIN }-> MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./cc_interactive.out data/large_datasets/com-Orkut.bin 1 0 1
| 117,185,083 | 4 | 9 | 1 (3,072,441) |   2.7028 |   0.5653 |   1.4022 |   0.0041 |   0.6194 |   0.3633 |   1.4737 |   0.1866 |   0.0382 |   0.0105 | data/large_datasets/com-Orkut.bin_cc.bin |
arsho::x3002c0s19b0n0 { ~/mnmgJOIN }-> MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./cc_interactive.out data/large_datasets/com-Orkut.bin 1 1 1
| 117,185,083 | 16 | 9 | 1 (3,072,441) |   0.7573 |   0.0223 |   0.0286 |   0.0026 |   0.2957 |   0.0143 |   0.4279 |   0.0518 |   0.0670 |   0.0143 | data/large_datasets/com-Orkut.bin_cc.bin |
arsho::x3002c0s19b0n0 { ~/mnmgJOIN }-> MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./cc_interactive.out data/large_datasets/com-Orkut.bin 1 1 1
| 117,185,083 | 8 | 9 | 1 (3,072,441) |   1.1029 |   0.0263 |   0.0524 |   0.0032 |   0.3826 |   0.0198 |   0.5514 |   0.1040 |   0.1177 |   0.0268 | data/large_datasets/com-Orkut.bin_cc.bin |
arsho::x3002c0s19b0n0 { ~/mnmgJOIN }-> MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./cc_interactive.out data/large_datasets/com-Orkut.bin 1 1 1
| 117,185,083 | 4 | 9 | 1 (3,072,441) |   2.5204 |   0.5752 |   1.3791 |   0.0063 |   0.6370 |   0.0401 |   1.5679 |   0.2018 |   0.0303 |   0.0090 | data/large_datasets/com-Orkut.bin_cc.bin |
arsho::x3002c0s19b0n0 { ~/mnmgJOIN }-> MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 2 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./cc_interactive.out data/large_datasets/com-Orkut.bin 1 1 1
| 117,185,083 | 2 | 9 | 1 (3,072,441) |   3.3899 |   0.2510 |   0.6080 |   0.0047 |   1.0206 |   0.0536 |   1.9225 |   0.3734 |   0.0235 |   0.0083 | data/large_datasets/com-Orkut.bin_cc.bin |
arsho::x3002c0s19b0n0 { ~/mnmgJOIN }-> MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 1 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./cc_interactive.out data/large_datasets/com-Orkut.bin 1 1 1
| 117,185,083 | 1 | 9 | 1 (3,072,441) |   8.0190 |   0.2684 |   0.3879 |   0.0074 |   1.8804 |   0.0845 |   4.9785 |   0.7556 |   0.0321 |   0.0122 | data/large_datasets/com-Orkut.bin_cc.bin |

```