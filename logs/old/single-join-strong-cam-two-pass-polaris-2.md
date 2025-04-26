arsho::x3006c0s1b0n0 { ~/mnmgJOIN }-> mpiexec --np 1 --ppn 1 --depth=1 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join_interactive.out 10000001 1 0 90000
| 10,000,000 | 1 | 1 | 1,037,050,773 |   6.9916 |   0.2100 |   0.1565 |   0.0003 |   0.1457 |   0.0496 |   0.0572 |   2.0903 |   2.8797 |   0.4404 |   0.0268 |   1.0910 |   0.0005 | 10000001_singlejoin.bin |
arsho::x3006c0s1b0n0 { ~/mnmgJOIN }-> mpiexec --np 2 --ppn 2 --depth=2 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join_interactive.out 10000001 1 0 90000
| 10,000,000 | 2 | 1 | 1,037,135,566 |   3.0584 |   0.2083 |   0.0786 |   0.0002 |   0.0830 |   0.0149 |   0.0360 |   0.6155 |   0.9361 |   0.2119 |   0.0239 |   0.9284 |   0.0004 | 10000001_singlejoin.bin |
arsho::x3006c0s1b0n0 { ~/mnmgJOIN }-> mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join_interactive.out 10000001 1 0 90000
| 10,000,000 | 4 | 1 | 1,037,065,333 |   2.0923 |   0.5375 |   0.0403 |   0.0003 |   0.0425 |   0.0080 |   0.0869 |   0.2305 |   0.6064 |   0.1023 |   0.0201 |   0.4532 |   0.0045 | 10000001_singlejoin.bin |
arsho::x3006c0s1b0n0 { ~/mnmgJOIN }-> mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./single_join_interactive.out 10000001 1 0 90000
| 10,000,000 | 8 | 1 | 1,037,152,902 |   0.7877 |   0.0060 |   0.0201 |   0.0003 |   0.0223 |   0.0043 |   0.0731 |   0.1097 |   0.2451 |   0.0508 |   0.0384 |   0.2270 |   0.0107 | 10000001_singlejoin.bin |
