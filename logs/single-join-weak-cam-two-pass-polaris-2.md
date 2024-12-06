mpiexec --np 1 --ppn 1 --depth=1 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join_interactive.out 10000000 1 0 100000
| 10,000,000 | 1 | 1 | 950,725,901 |   6.3978 |   0.2090 |   0.1566 |   0.0002 |   0.1377 |   0.0483 |   0.0564 |   1.8798 |   2.5842 |   0.3831 |   0.0246 |   1.0741 |   0.0005 | 10000000_singlejoin.bin |
arsho::x3006c0s1b0n0 { ~/mnmgJOIN }-> mpiexec --np 2 --ppn 2 --depth=2 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join_interactive.out 10000000 1 0 200000
| 20,000,000 | 2 | 1 | 1,949,821,541 |   5.4102 |   0.2163 |   0.1558 |   0.0002 |   0.1402 |   0.0294 |   0.0558 |   1.1003 |   1.6775 |   0.3817 |   0.0434 |   1.7646 |   0.0006 | 10000000_singlejoin.bin |
arsho::x3006c0s1b0n0 { ~/mnmgJOIN }-> mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join_interactive.out 10000000 1 0 400000
| 40,000,000 | 4 | 1 | 3,949,369,160 |   5.4904 |   0.0846 |   0.1584 |   0.0002 |   0.1532 |   0.0543 |   0.5516 |   0.6769 |   1.7996 |   0.3885 |   0.0721 |   1.7086 |   0.0008 | 10000000_singlejoin.bin |
arsho::x3006c0s1b0n0 { ~/mnmgJOIN }-> mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join_interactive.out 10000000 1 0 800000
| 80,000,000 | 8 | 1 | 7,949,098,464 |   5.0200 |   0.0157 |   0.1575 |   0.0004 |   0.1514 |   0.0172 |   0.1066 |   0.6669 |   1.5968 |   0.4167 |   0.2192 |   1.8281 |   0.0010 | 10000000_singlejoin.bin |

