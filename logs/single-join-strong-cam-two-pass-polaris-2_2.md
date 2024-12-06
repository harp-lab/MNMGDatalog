mpiexec --np 1 --ppn 1 --depth=1 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join_interactive.out 25000000 1 0 600000
| 25,000,000 | 1 | 1 | 1,040,085,195 |   6.8031 |   0.2232 |   0.3896 |   0.0011 |   0.1162 |   0.1107 |   0.1350 |   1.9607 |   2.6909 |   0.4077 |   0.0287 |   1.1282 |   0.0005 | 25000000_singlejoin.bin |
arsho::x3006c0s1b0n0 { ~/mnmgJOIN }-> mpiexec --np 2 --ppn 2 --depth=2 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join_interactive.out 25000000 1 0 600000
| 25,000,000 | 2 | 1 | 1,040,045,356 |   3.0516 |   0.2127 |   0.1950 |   0.0003 |   0.0689 |   0.0361 |   0.0638 |   0.5770 |   0.8965 |   0.1963 |   0.0234 |   0.9763 |   0.0004 | 25000000_singlejoin.bin |
arsho::x3006c0s1b0n0 { ~/mnmgJOIN }-> mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join_interactive.out 25000000 1 0 600000
| 25,000,000 | 4 | 1 | 1,040,025,762 |   2.0496 |   0.5331 |   0.0993 |   0.0003 |   0.0352 |   0.0165 |   0.0963 |   0.2029 |   0.5867 |   0.0972 |   0.0203 |   0.4607 |   0.0003 | 25000000_singlejoin.bin |
arsho::x3006c0s1b0n0 { ~/mnmgJOIN }-> mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join_interactive.out 25000000 1 0 600000
| 25,000,000 | 8 | 1 | 1,040,068,949 |   0.7638 |   0.0094 |   0.0499 |   0.0003 |   0.0183 |   0.0077 |   0.0778 |   0.1041 |   0.2191 |   0.0487 |   0.0374 |   0.2338 |   0.0072 | 25000000_singlejoin.bin |
