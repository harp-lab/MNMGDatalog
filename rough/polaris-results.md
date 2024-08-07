### CUDA AWARE MPI
```shell
cat polaris-job-semi.output
ALL TO ALL COMMUNICATION METHOD: SORTING
------------------------------------------------------------------------------------
CC tc_semi_naive.cu -o tc_semi_naive.out -lm
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 40 | 31 | 884,179,859 |   3.5895 |   0.0066 |   2.3282 |   0.0001 |   0.0108 |   0.0234 |   0.9396 |   0.2355 |   0.0453 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 32 | 31 | 884,179,859 |   3.7066 |   0.0061 |   2.6991 |   0.0001 |   0.0113 |   0.0273 |   0.6561 |   0.2503 |   0.0563 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 24 | 31 | 884,179,859 |   4.0434 |   0.0060 |   3.0114 |   0.0001 |   0.0133 |   0.0289 |   0.6248 |   0.2858 |   0.0731 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 16 | 31 | 884,179,859 |   4.3631 |   0.0058 |   3.2963 |   0.0001 |   0.0141 |   0.0352 |   0.6127 |   0.2892 |   0.1097 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| 147,892 | 8 | 31 | 884,179,859 |   5.8811 |   0.0058 |   4.4054 |   0.0001 |   0.0181 |   0.0514 |   0.6958 |   0.4778 |   0.2267 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 40 | 606 | 871,365,688 |  14.4023 |   0.0063 |   2.4100 |   0.0001 |   0.0754 |   0.1631 |   8.2689 |   3.4090 |   0.0696 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 32 | 606 | 871,365,688 |  12.8989 |   0.0062 |   2.2323 |   0.0001 |   0.0580 |   0.2308 |   7.0039 |   3.2777 |   0.0900 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 24 | 606 | 871,365,688 |  14.4830 |   0.0059 |   2.6193 |   0.0001 |   0.0733 |   0.2947 |   7.0013 |   4.3594 |   0.1291 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 16 | 606 | 871,365,688 |  16.8489 |   0.0058 |   2.9738 |   0.0001 |   0.1175 |   0.2891 |   6.3202 |   7.0012 |   0.1411 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| 165,435 | 8 | 606 | 871,365,688 |  24.6041 |   0.0058 |   4.2029 |   0.0001 |   0.3359 |   0.3662 |   7.4710 |  11.9541 |   0.2681 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 40 | 247 | 1,669,750,513 |  10.9886 |   0.0060 |   4.1074 |   0.0001 |   0.0731 |   0.1669 |   4.5448 |   1.9960 |   0.0944 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 32 | 247 | 1,669,750,513 |  11.9148 |   0.0058 |   5.0603 |   0.0001 |   0.0910 |   0.1803 |   4.4714 |   1.9907 |   0.1151 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 24 | 247 | 1,669,750,513 |  12.7124 |   0.0058 |   5.0807 |   0.0001 |   0.1204 |   0.2085 |   4.3480 |   2.7910 |   0.1580 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 16 | 247 | 1,669,750,513 |  14.7175 |   0.0059 |   4.5346 |   0.0001 |   0.2153 |   0.2100 |   3.6511 |   5.8495 |   0.2511 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| 409,593 | 8 | 247 | 1,669,750,513 |  21.5418 |   0.0057 |   4.9985 |   0.0001 |   0.3624 |   0.2788 |   3.1876 |  12.2240 |   0.4847 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 40 | 520 | 910,070,918 |  12.9395 |   0.0058 |   1.8092 |   0.0001 |   0.0961 |   0.2246 |   7.7405 |   3.0099 |   0.0534 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 32 | 520 | 910,070,918 |  13.4633 |   0.0059 |   3.1651 |   0.0001 |   0.1157 |   0.2693 |   6.7527 |   3.0920 |   0.0626 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 24 | 520 | 910,070,918 |  13.4392 |   0.0060 |   2.2155 |   0.0001 |   0.1455 |   0.3062 |   6.6650 |   4.0133 |   0.0876 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 16 | 520 | 910,070,918 |  16.0113 |   0.0057 |   2.7551 |   0.0004 |   0.1725 |   0.3212 |   6.1335 |   6.5045 |   0.1183 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| 552,020 | 8 | 520 | 910,070,918 |  25.1876 |   0.0057 |   4.1365 |   0.0003 |   0.4068 |   0.4147 |   6.1069 |  13.8924 |   0.2242 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 40 | 31 | 1,911,754,892 |   6.6325 |   0.0059 |   5.3236 |   0.0003 |   0.0148 |   0.0372 |   0.8395 |   0.3138 |   0.0973 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 32 | 31 | 1,911,754,892 |   8.4715 |   0.0058 |   7.0062 |   0.0004 |   0.0152 |   0.0412 |   0.8976 |   0.3838 |   0.1213 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 24 | 31 | 1,911,754,892 |   8.0681 |   0.0058 |   6.2336 |   0.0001 |   0.0186 |   0.0488 |   1.0661 |   0.5295 |   0.1656 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 16 | 31 | 1,911,754,892 |   9.0817 |   0.0059 |   7.0558 |   0.0004 |   0.0182 |   0.0660 |   1.1278 |   0.5579 |   0.2497 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| 1,049,866 | 8 | 31 | 1,911,754,892 |  11.0856 |   0.0060 |   7.1329 |   0.0003 |   0.0232 |   0.1135 |   1.5496 |   1.7820 |   0.4780 | data/com-dblpungraph.bin_tc.bin |
ALL TO ALL COMMUNICATION METHOD: TWO PASS
------------------------------------------------------------------------------------
CC tc_semi_naive.cu -o tc_semi_naive.out -lm
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 40 | 31 | 884,179,859 |   2.7943 |   0.0173 |   1.8058 |   0.0001 |   0.0101 |   0.0981 |   0.5883 |   0.2292 |   0.0454 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 32 | 31 | 884,179,859 |   3.5995 |   0.0058 |   2.4680 |   0.0001 |   0.0107 |   0.1028 |   0.7052 |   0.2507 |   0.0562 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 24 | 31 | 884,179,859 |   3.8322 |   0.0057 |   2.6461 |   0.0001 |   0.0120 |   0.1189 |   0.6898 |   0.2853 |   0.0744 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 16 | 31 | 884,179,859 |   4.4681 |   0.0056 |   3.2259 |   0.0001 |   0.0130 |   0.1526 |   0.6541 |   0.3075 |   0.1092 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| 147,892 | 8 | 31 | 884,179,859 |   5.1550 |   0.0056 |   3.4644 |   0.0001 |   0.0202 |   0.2187 |   0.7635 |   0.4544 |   0.2281 | data/data_147892.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 40 | 606 | 871,365,688 |  13.1711 |   0.0057 |   2.1537 |   0.0001 |   0.0627 |   0.1562 |   7.4870 |   3.2346 |   0.0712 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 32 | 606 | 871,365,688 |  12.9238 |   0.0058 |   2.2739 |   0.0001 |   0.0505 |   0.2135 |   7.1079 |   3.1809 |   0.0912 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 24 | 606 | 871,365,688 |  14.1979 |   0.0057 |   2.5473 |   0.0001 |   0.0517 |   0.3411 |   7.0951 |   4.0458 |   0.1110 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 16 | 606 | 871,365,688 |  17.2057 |   0.0056 |   3.3558 |   0.0001 |   0.1186 |   0.3719 |   6.5232 |   6.6954 |   0.1350 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| 165,435 | 8 | 606 | 871,365,688 |  23.2433 |   0.0056 |   3.1472 |   0.0001 |   0.2859 |   0.5233 |   6.1073 |  12.8890 |   0.2849 | data/data_165435.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 40 | 247 | 1,669,750,513 |  12.7820 |   0.0057 |   5.0853 |   0.0001 |   0.0731 |   0.3682 |   5.0474 |   2.1045 |   0.0978 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 32 | 247 | 1,669,750,513 |  11.3596 |   0.0058 |   4.6055 |   0.0001 |   0.0908 |   0.4087 |   4.0746 |   2.0575 |   0.1167 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 24 | 247 | 1,669,750,513 |  13.1191 |   0.0057 |   5.4294 |   0.0001 |   0.1229 |   0.4710 |   4.0795 |   2.8532 |   0.1574 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 16 | 247 | 1,669,750,513 |  14.7679 |   0.0057 |   4.0677 |   0.0001 |   0.1726 |   0.6298 |   3.5806 |   6.0572 |   0.2543 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| 409,593 | 8 | 247 | 1,669,750,513 |  20.5643 |   0.0057 |   3.8855 |   0.0001 |   0.3754 |   0.7559 |   3.1720 |  11.9399 |   0.4298 | data/data_409593.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 40 | 520 | 910,070,918 |  12.0652 |   0.0057 |   2.3209 |   0.0001 |   0.0920 |   0.2812 |   6.4309 |   2.8811 |   0.0533 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 32 | 520 | 910,070,918 |  12.4674 |   0.0058 |   2.0564 |   0.0001 |   0.1129 |   0.3465 |   6.7260 |   3.1545 |   0.0653 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 24 | 520 | 910,070,918 |  13.3421 |   0.0057 |   2.8848 |   0.0001 |   0.1295 |   0.4192 |   5.9851 |   3.8244 |   0.0933 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 16 | 520 | 910,070,918 |  17.6168 |   0.0057 |   4.4952 |   0.0003 |   0.1830 |   0.4706 |   5.5066 |   6.8340 |   0.1213 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| 552,020 | 8 | 520 | 910,070,918 |  25.4008 |   0.0056 |   4.0586 |   0.0003 |   0.4382 |   0.6330 |   5.5208 |  14.4744 |   0.2699 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 40 | 31 | 1,911,754,892 |   8.1044 |   0.0058 |   6.5628 |   0.0003 |   0.0137 |   0.2237 |   0.8938 |   0.3089 |   0.0954 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 32 | 31 | 1,911,754,892 |   8.3758 |   0.0058 |   6.6459 |   0.0003 |   0.0152 |   0.2488 |   0.9825 |   0.3568 |   0.1205 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 24 | 31 | 1,911,754,892 |   8.1608 |   0.0059 |   6.1017 |   0.0002 |   0.0192 |   0.3177 |   1.0643 |   0.4904 |   0.1615 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 16 | 31 | 1,911,754,892 |  10.2900 |   0.0058 |   7.6431 |   0.0003 |   0.0234 |   0.4163 |   1.2838 |   0.6800 |   0.2372 | data/com-dblpungraph.bin_tc.bin |
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| 1,049,866 | 8 | 31 | 1,911,754,892 |  11.7276 |   0.0061 |   7.1506 |   0.0003 |   0.0384 |   0.6177 |   1.8008 |   1.6433 |   0.4704 | data/com-dblpungraph.bin_tc.bin |
```

### CUDA Aware MPI OLD
```shell
cat cudaawarempi.output
NUM_OF_NODES= 10 TOTAL_NUM_RANKS= 40 RANKS_PER_NODE= 4 THREADS_PER_RANK= 1
ALL TO ALL COMMUNICATION METHOD: SORTING
------------------------------------------------------------------------------------
CC tc_semi_naive.cu -o tc_semi_naive.out -lm
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> TC on p2p-Gnutella31 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>> p2p-Gnutella31 40 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 40 | 31 | 884,179,859 |   3.9323 |   0.0164 |   2.9332 |   0.0001 |   0.0106 |   0.0236 |   0.6673 |   0.2357 |   0.0454 | data/data_147892.bin_tc.bin |
>>>>>>>>>>>>> p2p-Gnutella31 32 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 32 | 31 | 884,179,859 |   3.4427 |   0.0058 |   2.4527 |   0.0001 |   0.0112 |   0.0259 |   0.6456 |   0.2450 |   0.0564 | data/data_147892.bin_tc.bin |
>>>>>>>>>>>>> p2p-Gnutella31 24 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 24 | 31 | 884,179,859 |   3.4872 |   0.0057 |   2.4609 |   0.0001 |   0.0127 |   0.0284 |   0.6283 |   0.2776 |   0.0734 | data/data_147892.bin_tc.bin |
>>>>>>>>>>>>> p2p-Gnutella31 16 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 16 | 31 | 884,179,859 |   4.4314 |   0.0057 |   3.3755 |   0.0001 |   0.0144 |   0.0347 |   0.6044 |   0.2883 |   0.1083 | data/data_147892.bin_tc.bin |
>>>>>>>>>>>>> p2p-Gnutella31 8 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 1
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 8 | 31 | 884,179,859 |   6.2553 |   0.0057 |   4.2900 |   0.0001 |   0.0273 |   0.0519 |   0.9654 |   0.6939 |   0.2211 | data/data_147892.bin_tc.bin |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> TC on usroad >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>> usroad 40 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 40 | 606 | 871,365,688 |  14.1177 |   0.0058 |   2.3314 |   0.0001 |   0.0684 |   0.1626 |   8.1312 |   3.3491 |   0.0690 | data/data_165435.bin_tc.bin |
>>>>>>>>>>>>> usroad 32 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 32 | 606 | 871,365,688 |  12.8959 |   0.0059 |   2.3323 |   0.0001 |   0.0585 |   0.2254 |   7.0641 |   3.1228 |   0.0867 | data/data_165435.bin_tc.bin |
>>>>>>>>>>>>> usroad 24 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 24 | 606 | 871,365,688 |  14.4235 |   0.0058 |   2.5915 |   0.0001 |   0.0645 |   0.2841 |   7.0583 |   4.3037 |   0.1155 | data/data_165435.bin_tc.bin |
>>>>>>>>>>>>> usroad 16 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 16 | 606 | 871,365,688 |  14.0538 |   0.0057 |   2.2838 |   0.0001 |   0.1158 |   0.2898 |   6.1663 |   5.0488 |   0.1434 | data/data_165435.bin_tc.bin |
>>>>>>>>>>>>> usroad 8 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 1
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 8 | 606 | 871,365,688 |  23.9925 |   0.0057 |   3.9234 |   0.0001 |   0.3192 |   0.3792 |   6.8628 |  12.2345 |   0.2675 | data/data_165435.bin_tc.bin |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> TC on fe_ocean >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>> fe_ocean 40 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 40 | 247 | 1,669,750,513 |  10.6264 |   0.0059 |   3.7721 |   0.0001 |   0.0749 |   0.1664 |   4.4959 |   2.0160 |   0.0951 | data/data_409593.bin_tc.bin |
>>>>>>>>>>>>> fe_ocean 32 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 32 | 247 | 1,669,750,513 |  11.3111 |   0.0059 |   4.3938 |   0.0001 |   0.0914 |   0.1902 |   4.5010 |   2.0160 |   0.1127 | data/data_409593.bin_tc.bin |
>>>>>>>>>>>>> fe_ocean 24 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 24 | 247 | 1,669,750,513 |  12.7496 |   0.0059 |   5.5335 |   0.0001 |   0.1146 |   0.1977 |   4.1277 |   2.6183 |   0.1519 | data/data_409593.bin_tc.bin |
>>>>>>>>>>>>> fe_ocean 16 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 16 | 247 | 1,669,750,513 |  12.5717 |   0.0059 |   3.9442 |   0.0001 |   0.1566 |   0.2226 |   3.6752 |   4.2975 |   0.2695 | data/data_409593.bin_tc.bin |
>>>>>>>>>>>>> fe_ocean 8 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 1
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 8 | 247 | 1,669,750,513 |  21.4086 |   0.0057 |   4.9326 |   0.0001 |   0.3510 |   0.2698 |   3.2259 |  12.1403 |   0.4832 | data/data_409593.bin_tc.bin |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> TC on vsp_finan >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>> vsp_finan 40 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 40 | 520 | 910,070,918 |  13.5675 |   0.0059 |   2.5466 |   0.0001 |   0.0945 |   0.2161 |   7.6567 |   2.9960 |   0.0516 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
>>>>>>>>>>>>> vsp_finan 32 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 32 | 520 | 910,070,918 |  13.3160 |   0.0058 |   2.9818 |   0.0001 |   0.1199 |   0.2656 |   6.7308 |   3.1509 |   0.0610 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
>>>>>>>>>>>>> vsp_finan 24 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 24 | 520 | 910,070,918 |  13.5118 |   0.0057 |   2.4862 |   0.0001 |   0.1407 |   0.2999 |   6.5976 |   3.8958 |   0.0858 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
>>>>>>>>>>>>> vsp_finan 16 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 16 | 520 | 910,070,918 |  14.5434 |   0.0058 |   3.2446 |   0.0003 |   0.1831 |   0.3292 |   5.9505 |   4.6850 |   0.1449 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
>>>>>>>>>>>>> vsp_finan 8 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 1
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 8 | 520 | 910,070,918 |  25.0013 |   0.0056 |   3.9564 |   0.0004 |   0.4006 |   0.4234 |   6.1329 |  13.8236 |   0.2584 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> TC on com-dblp >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>> com-dblp 40 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1,049,866 | 40 | 31 | 1,911,754,892 |   8.5174 |   0.0059 |   7.2040 |   0.0003 |   0.0144 |   0.0369 |   0.8360 |   0.3213 |   0.0985 | data/com-dblpungraph.bin_tc.bin |
>>>>>>>>>>>>> com-dblp 32 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1,049,866 | 32 | 31 | 1,911,754,892 |   8.0789 |   0.0058 |   6.5679 |   0.0004 |   0.0159 |   0.0424 |   0.9156 |   0.4075 |   0.1235 | data/com-dblpungraph.bin_tc.bin |
>>>>>>>>>>>>> com-dblp 24 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1,049,866 | 24 | 31 | 1,911,754,892 |   8.3103 |   0.0068 |   6.4080 |   0.0001 |   0.0200 |   0.0487 |   1.0910 |   0.5755 |   0.1602 | data/com-dblpungraph.bin_tc.bin |
>>>>>>>>>>>>> com-dblp 16 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1,049,866 | 16 | 31 | 1,911,754,892 |   9.3032 |   0.0057 |   7.2439 |   0.0004 |   0.0188 |   0.0649 |   1.1467 |   0.5758 |   0.2470 | data/com-dblpungraph.bin_tc.bin |
>>>>>>>>>>>>> com-dblp 8 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 1
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1,049,866 | 8 | 31 | 1,911,754,892 |  11.5592 |   0.0060 |   7.4375 |   0.0003 |   0.0259 |   0.1120 |   1.6437 |   1.8105 |   0.5233 | data/com-dblpungraph.bin_tc.bin |
ALL TO ALL COMMUNICATION METHOD: TWO PASS
------------------------------------------------------------------------------------
CC tc_semi_naive.cu -o tc_semi_naive.out -lm
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> TC on p2p-Gnutella31 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>> p2p-Gnutella31 40 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 40 | 31 | 884,179,859 |   3.1670 |   0.0072 |   2.1921 |   0.0001 |   0.0099 |   0.1016 |   0.5755 |   0.2340 |   0.0466 | data/data_147892.bin_tc.bin |
>>>>>>>>>>>>> p2p-Gnutella31 32 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 32 | 31 | 884,179,859 |   3.0436 |   0.0057 |   1.8993 |   0.0001 |   0.0106 |   0.1012 |   0.7087 |   0.2624 |   0.0556 | data/data_147892.bin_tc.bin |
>>>>>>>>>>>>> p2p-Gnutella31 24 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 24 | 31 | 884,179,859 |   3.8217 |   0.0057 |   2.6426 |   0.0001 |   0.0120 |   0.1175 |   0.6821 |   0.2881 |   0.0737 | data/data_147892.bin_tc.bin |
>>>>>>>>>>>>> p2p-Gnutella31 16 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 16 | 31 | 884,179,859 |   4.4885 |   0.0057 |   3.1757 |   0.0001 |   0.0137 |   0.1485 |   0.6881 |   0.3488 |   0.1079 | data/data_147892.bin_tc.bin |
>>>>>>>>>>>>> p2p-Gnutella31 8 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 1 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 8 | 31 | 884,179,859 |   5.9934 |   0.0057 |   4.3639 |   0.0001 |   0.0176 |   0.2229 |   0.7335 |   0.4183 |   0.2314 | data/data_147892.bin_tc.bin |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> TC on usroad >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>> usroad 40 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 40 | 606 | 871,365,688 |  13.1043 |   0.0057 |   2.1398 |   0.0001 |   0.0610 |   0.1529 |   7.4231 |   3.2518 |   0.0699 | data/data_165435.bin_tc.bin |
>>>>>>>>>>>>> usroad 32 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 32 | 606 | 871,365,688 |  12.7200 |   0.0057 |   2.2324 |   0.0001 |   0.0508 |   0.2089 |   6.9743 |   3.1574 |   0.0903 | data/data_165435.bin_tc.bin |
>>>>>>>>>>>>> usroad 24 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 24 | 606 | 871,365,688 |  14.2155 |   0.0058 |   2.9304 |   0.0001 |   0.0508 |   0.3327 |   6.9435 |   3.8371 |   0.1152 | data/data_165435.bin_tc.bin |
>>>>>>>>>>>>> usroad 16 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 16 | 606 | 871,365,688 |  14.4072 |   0.0057 |   2.7686 |   0.0001 |   0.1147 |   0.3693 |   6.1601 |   4.8476 |   0.1413 | data/data_165435.bin_tc.bin |
>>>>>>>>>>>>> usroad 8 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 1 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 8 | 606 | 871,365,688 |  23.3496 |   0.0056 |   3.4356 |   0.0001 |   0.2737 |   0.5306 |   5.9596 |  12.9098 |   0.2345 | data/data_165435.bin_tc.bin |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> TC on fe_ocean >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>> fe_ocean 40 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 40 | 247 | 1,669,750,513 |  11.9470 |   0.0057 |   4.2741 |   0.0001 |   0.0721 |   0.3628 |   5.0513 |   2.0870 |   0.0937 | data/data_409593.bin_tc.bin |
>>>>>>>>>>>>> fe_ocean 32 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 32 | 247 | 1,669,750,513 |  11.5148 |   0.0057 |   4.4862 |   0.0001 |   0.0912 |   0.3961 |   4.1861 |   2.2349 |   0.1145 | data/data_409593.bin_tc.bin |
>>>>>>>>>>>>> fe_ocean 24 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 24 | 247 | 1,669,750,513 |  11.5303 |   0.0058 |   3.9934 |   0.0001 |   0.1221 |   0.4531 |   4.0175 |   2.7839 |   0.1545 | data/data_409593.bin_tc.bin |
>>>>>>>>>>>>> fe_ocean 16 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 16 | 247 | 1,669,750,513 |  13.0333 |   0.0057 |   4.3135 |   0.0001 |   0.1491 |   0.5744 |   3.1770 |   4.5812 |   0.2323 | data/data_409593.bin_tc.bin |
>>>>>>>>>>>>> fe_ocean 8 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 1 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 8 | 247 | 1,669,750,513 |  21.6552 |   0.0057 |   4.9747 |   0.0001 |   0.3601 |   0.7623 |   3.2437 |  11.8220 |   0.4866 | data/data_409593.bin_tc.bin |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> TC on vsp_finan >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>> vsp_finan 40 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 40 | 520 | 910,070,918 |  11.7178 |   0.0058 |   1.8617 |   0.0001 |   0.0914 |   0.2822 |   6.4935 |   2.9310 |   0.0522 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
>>>>>>>>>>>>> vsp_finan 32 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 32 | 520 | 910,070,918 |  12.4146 |   0.0057 |   2.1626 |   0.0001 |   0.1035 |   0.3435 |   6.5802 |   3.1546 |   0.0644 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
>>>>>>>>>>>>> vsp_finan 24 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 24 | 520 | 910,070,918 |  12.3154 |   0.0057 |   2.1446 |   0.0001 |   0.1282 |   0.4212 |   5.8514 |   3.6747 |   0.0895 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
>>>>>>>>>>>>> vsp_finan 16 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 16 | 520 | 910,070,918 |  13.6184 |   0.0057 |   2.7152 |   0.0004 |   0.1504 |   0.4432 |   5.4818 |   4.6619 |   0.1599 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
>>>>>>>>>>>>> vsp_finan 8 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 8 | 520 | 910,070,918 |  25.4051 |   0.0057 |   4.1439 |   0.0003 |   0.4474 |   0.6344 |   5.4947 |  14.4204 |   0.2583 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> TC on com-dblp >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>> com-dblp 40 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1,049,866 | 40 | 31 | 1,911,754,892 |   7.1534 |   0.0058 |   5.6321 |   0.0003 |   0.0134 |   0.2182 |   0.8822 |   0.3035 |   0.0978 | data/com-dblpungraph.bin_tc.bin |
>>>>>>>>>>>>> com-dblp 32 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1,049,866 | 32 | 31 | 1,911,754,892 |   7.7006 |   0.0058 |   5.9897 |   0.0003 |   0.0152 |   0.2458 |   0.9602 |   0.3641 |   0.1193 | data/com-dblpungraph.bin_tc.bin |
>>>>>>>>>>>>> com-dblp 24 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1,049,866 | 24 | 31 | 1,911,754,892 |   7.2695 |   0.0058 |   5.1660 |   0.0002 |   0.0193 |   0.2978 |   1.0974 |   0.5214 |   0.1615 | data/com-dblpungraph.bin_tc.bin |
>>>>>>>>>>>>> com-dblp 16 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1,049,866 | 16 | 31 | 1,911,754,892 |   9.7933 |   0.0058 |   7.1932 |   0.0003 |   0.0235 |   0.3872 |   1.2940 |   0.6505 |   0.2389 | data/com-dblpungraph.bin_tc.bin |
>>>>>>>>>>>>> com-dblp 8 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1,049,866 | 8 | 31 | 1,911,754,892 |  10.3186 |   0.0062 |   6.0537 |   0.0003 |   0.0238 |   0.6301 |   1.5712 |   1.5600 |   0.4733 | data/com-dblpungraph.bin_tc.bin |
```
### CUDA Aware MPI=0
```shell
cat polaris-job-semi-cpu.output
NUM_OF_NODES= 10 TOTAL_NUM_RANKS= 40 RANKS_PER_NODE= 4 THREADS_PER_RANK= 1
ALL TO ALL COMMUNICATION METHOD: SORTING
------------------------------------------------------------------------------------
CC tc_semi_naive.cu -o tc_semi_naive.out -lm
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> TC on p2p-Gnutella31 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>> p2p-Gnutella31 40 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 1
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 40 | 31 | 884,179,859 |   3.9188 |   0.7182 |   2.6918 |   0.0001 |   0.0104 |   0.0243 |   0.2803 |   0.1451 |   0.0486 | data/data_147892.bin_tc.bin |
>>>>>>>>>>>>> p2p-Gnutella31 32 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 1
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 32 | 31 | 884,179,859 |   4.4190 |   0.7144 |   3.1178 |   0.0001 |   0.0107 |   0.0262 |   0.3365 |   0.1541 |   0.0592 | data/data_147892.bin_tc.bin |
>>>>>>>>>>>>> p2p-Gnutella31 24 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 1
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 24 | 31 | 884,179,859 |   4.2474 |   0.7120 |   2.7844 |   0.0001 |   0.0123 |   0.0282 |   0.4394 |   0.1926 |   0.0785 | data/data_147892.bin_tc.bin |
>>>>>>>>>>>>> p2p-Gnutella31 16 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 1
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 16 | 31 | 884,179,859 |   5.2554 |   0.7043 |   3.4739 |   0.0001 |   0.0140 |   0.0340 |   0.6409 |   0.2727 |   0.1156 | data/data_147892.bin_tc.bin |
>>>>>>>>>>>>> p2p-Gnutella31 8 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 1
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 8 | 31 | 884,179,859 |   6.7627 |   0.6957 |   4.0609 |   0.0001 |   0.0179 |   0.0510 |   1.2538 |   0.4556 |   0.2278 | data/data_147892.bin_tc.bin |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> TC on usroad >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>> usroad 40 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 1
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 40 | 606 | 871,365,688 |   6.8425 |   0.7164 |   2.2052 |   0.0001 |   0.0669 |   0.1651 |   0.3301 |   3.3010 |   0.0578 | data/data_165435.bin_tc.bin |
>>>>>>>>>>>>> usroad 32 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 1
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 32 | 606 | 871,365,688 |   7.9981 |   0.7136 |   2.3341 |   0.0001 |   0.0589 |   0.2400 |   0.3424 |   4.2286 |   0.0804 | data/data_165435.bin_tc.bin |
>>>>>>>>>>>>> usroad 24 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 1
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 24 | 606 | 871,365,688 |  10.1218 |   0.7110 |   2.6527 |   0.0001 |   0.0688 |   0.2846 |   0.3439 |   5.9779 |   0.0827 | data/data_165435.bin_tc.bin |
>>>>>>>>>>>>> usroad 16 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 1
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 16 | 606 | 871,365,688 |  14.9891 |   0.7060 |   2.9069 |   0.0001 |   0.1501 |   0.3305 |   0.4555 |  10.2955 |   0.1445 | data/data_165435.bin_tc.bin |
>>>>>>>>>>>>> usroad 8 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 1
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 8 | 606 | 871,365,688 |  23.0611 |   0.6994 |   3.5592 |   0.0001 |   0.4306 |   0.4640 |   0.9750 |  16.6645 |   0.2684 | data/data_165435.bin_tc.bin |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> TC on fe_ocean >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>> fe_ocean 40 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 1
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 40 | 247 | 1,669,750,513 |   8.6752 |   0.7095 |   4.5759 |   0.0001 |   0.0799 |   0.1752 |   0.6900 |   2.3422 |   0.1024 | data/data_409593.bin_tc.bin |
>>>>>>>>>>>>> fe_ocean 32 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 1
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 32 | 247 | 1,669,750,513 |  10.6138 |   0.7163 |   5.5562 |   0.0001 |   0.0960 |   0.2068 |   0.8198 |   3.1015 |   0.1172 | data/data_409593.bin_tc.bin |
>>>>>>>>>>>>> fe_ocean 24 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 1
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 24 | 247 | 1,669,750,513 |  12.9334 |   0.7138 |   5.7177 |   0.0001 |   0.1422 |   0.2465 |   1.2603 |   4.7088 |   0.1442 | data/data_409593.bin_tc.bin |
>>>>>>>>>>>>> fe_ocean 16 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 1
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 16 | 247 | 1,669,750,513 |  14.7026 |   0.7000 |   3.8446 |   0.0001 |   0.2506 |   0.2590 |   1.8450 |   7.5945 |   0.2088 | data/data_409593.bin_tc.bin |
>>>>>>>>>>>>> fe_ocean 8 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 1
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 8 | 247 | 1,669,750,513 |  21.7384 |   0.6980 |   4.1218 |   0.0001 |   0.3025 |   0.2550 |   3.5515 |  12.3194 |   0.4902 | data/data_409593.bin_tc.bin |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> TC on vsp_finan >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>> vsp_finan 40 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 40 | 520 | 910,070,918 |   7.1543 |   0.7130 |   2.2365 |   0.0001 |   0.0906 |   0.2210 |   0.4896 |   3.3442 |   0.0593 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
>>>>>>>>>>>>> vsp_finan 32 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 32 | 520 | 910,070,918 |   8.7171 |   0.7170 |   3.0017 |   0.0001 |   0.1148 |   0.2749 |   0.5289 |   3.9925 |   0.0871 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
>>>>>>>>>>>>> vsp_finan 24 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 24 | 520 | 910,070,918 |  11.1440 |   0.7120 |   2.7996 |   0.0001 |   0.1793 |   0.3563 |   0.6855 |   6.3262 |   0.0851 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
>>>>>>>>>>>>> vsp_finan 16 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 16 | 520 | 910,070,918 |  15.6662 |   0.7096 |   3.0937 |   0.0004 |   0.2741 |   0.3670 |   0.9559 |  10.1284 |   0.1372 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
>>>>>>>>>>>>> vsp_finan 8 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 8 | 520 | 910,070,918 |  26.2235 |   0.7046 |   4.4827 |   0.0003 |   0.4945 |   0.4546 |   1.9101 |  17.9064 |   0.2703 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> TC on com-dblp >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>> com-dblp 40 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 1
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1,049,866 | 40 | 31 | 1,911,754,892 |   6.8994 |   0.7109 |   5.0600 |   0.0004 |   0.0146 |   0.0372 |   0.7130 |   0.2603 |   0.1029 | data/com-dblpungraph.bin_tc.bin |
>>>>>>>>>>>>> com-dblp 32 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 1
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1,049,866 | 32 | 31 | 1,911,754,892 |   9.2441 |   0.7147 |   7.1670 |   0.0004 |   0.0147 |   0.0421 |   0.8748 |   0.3043 |   0.1262 | data/com-dblpungraph.bin_tc.bin |
>>>>>>>>>>>>> com-dblp 24 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 1
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1,049,866 | 24 | 31 | 1,911,754,892 |   8.4190 |   0.7124 |   5.9171 |   0.0001 |   0.0181 |   0.0483 |   1.1621 |   0.3918 |   0.1692 | data/com-dblpungraph.bin_tc.bin |
>>>>>>>>>>>>> com-dblp 16 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 1
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1,049,866 | 16 | 31 | 1,911,754,892 |   9.6457 |   0.7046 |   6.2971 |   0.0004 |   0.0213 |   0.0646 |   1.7288 |   0.5799 |   0.2490 | data/com-dblpungraph.bin_tc.bin |
>>>>>>>>>>>>> com-dblp 8 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 1
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1,049,866 | 8 | 31 | 1,911,754,892 |  12.8488 |   0.6959 |   6.7516 |   0.0003 |   0.0231 |   0.1107 |   3.3234 |   1.3819 |   0.5619 | data/com-dblpungraph.bin_tc.bin |
ALL TO ALL COMMUNICATION METHOD: TWO PASS
------------------------------------------------------------------------------------
CC tc_semi_naive.cu -o tc_semi_naive.out -lm
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> TC on p2p-Gnutella31 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>> p2p-Gnutella31 40 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 40 | 31 | 884,179,859 |   3.7549 |   0.7148 |   2.4619 |   0.0001 |   0.0096 |   0.0985 |   0.2890 |   0.1335 |   0.0476 | data/data_147892.bin_tc.bin |
>>>>>>>>>>>>> p2p-Gnutella31 32 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 32 | 31 | 884,179,859 |   3.8011 |   0.7201 |   2.4040 |   0.0001 |   0.0104 |   0.1074 |   0.3494 |   0.1489 |   0.0608 | data/data_147892.bin_tc.bin |
>>>>>>>>>>>>> p2p-Gnutella31 24 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 24 | 31 | 884,179,859 |   4.3497 |   0.7096 |   2.7226 |   0.0001 |   0.0130 |   0.1366 |   0.4687 |   0.2226 |   0.0765 | data/data_147892.bin_tc.bin |
>>>>>>>>>>>>> p2p-Gnutella31 16 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 16 | 31 | 884,179,859 |   5.1291 |   0.7013 |   3.2380 |   0.0001 |   0.0135 |   0.1595 |   0.6444 |   0.2546 |   0.1178 | data/data_147892.bin_tc.bin |
>>>>>>>>>>>>> p2p-Gnutella31 8 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_147892.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 8 | 31 | 884,179,859 |   7.1120 |   0.6992 |   4.2401 |   0.0001 |   0.0181 |   0.2345 |   1.2504 |   0.4382 |   0.2314 | data/data_147892.bin_tc.bin |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> TC on usroad >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>> usroad 40 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 40 | 606 | 871,365,688 |   7.0708 |   0.7107 |   2.2668 |   0.0001 |   0.0615 |   0.3276 |   0.3104 |   3.3348 |   0.0588 | data/data_165435.bin_tc.bin |
>>>>>>>>>>>>> usroad 32 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 32 | 606 | 871,365,688 |   8.0725 |   0.7166 |   2.2102 |   0.0001 |   0.0521 |   0.4073 |   0.3257 |   4.2876 |   0.0729 | data/data_165435.bin_tc.bin |
>>>>>>>>>>>>> usroad 24 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 24 | 606 | 871,365,688 |  10.4005 |   0.7219 |   2.7260 |   0.0001 |   0.0525 |   0.5135 |   0.3252 |   5.9629 |   0.0983 | data/data_165435.bin_tc.bin |
>>>>>>>>>>>>> usroad 16 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 16 | 606 | 871,365,688 |  16.3549 |   0.7052 |   4.0645 |   0.0001 |   0.1595 |   0.5724 |   0.4948 |  10.2433 |   0.1152 | data/data_165435.bin_tc.bin |
>>>>>>>>>>>>> usroad 8 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_165435.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 165,435 | 8 | 606 | 871,365,688 |  23.2240 |   0.7002 |   3.4961 |   0.0001 |   0.3539 |   0.8466 |   0.8650 |  16.6943 |   0.2677 | data/data_165435.bin_tc.bin |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> TC on fe_ocean >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>> fe_ocean 40 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 40 | 247 | 1,669,750,513 |   8.8219 |   0.7182 |   4.5372 |   0.0001 |   0.0768 |   0.4686 |   0.6327 |   2.2836 |   0.1047 | data/data_409593.bin_tc.bin |
>>>>>>>>>>>>> fe_ocean 32 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 32 | 247 | 1,669,750,513 |   9.5006 |   0.7183 |   4.2711 |   0.0001 |   0.0912 |   0.5050 |   0.7852 |   2.9951 |   0.1346 | data/data_409593.bin_tc.bin |
>>>>>>>>>>>>> fe_ocean 24 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 24 | 247 | 1,669,750,513 |  13.4000 |   0.7234 |   5.9914 |   0.0001 |   0.1519 |   0.5970 |   1.2151 |   4.5520 |   0.1691 | data/data_409593.bin_tc.bin |
>>>>>>>>>>>>> fe_ocean 16 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 16 | 247 | 1,669,750,513 |  15.0029 |   0.7044 |   3.8985 |   0.0001 |   0.2248 |   0.7851 |   1.7911 |   7.3471 |   0.2517 | data/data_409593.bin_tc.bin |
>>>>>>>>>>>>> fe_ocean 8 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/data_409593.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 409,593 | 8 | 247 | 1,669,750,513 |  22.6766 |   0.7035 |   4.4752 |   0.0001 |   0.2697 |   1.2783 |   3.4200 |  12.0441 |   0.4859 | data/data_409593.bin_tc.bin |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> TC on vsp_finan >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>> vsp_finan 40 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 40 | 520 | 910,070,918 |   7.0400 |   0.7119 |   1.8507 |   0.0001 |   0.0900 |   0.4855 |   0.5029 |   3.3281 |   0.0708 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
>>>>>>>>>>>>> vsp_finan 32 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 32 | 520 | 910,070,918 |   8.4701 |   0.7175 |   2.4881 |   0.0001 |   0.1071 |   0.5434 |   0.5381 |   3.9984 |   0.0775 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
>>>>>>>>>>>>> vsp_finan 24 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 24 | 520 | 910,070,918 |  11.8649 |   0.7200 |   3.2001 |   0.0001 |   0.1687 |   0.6614 |   0.7413 |   6.2878 |   0.0853 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
>>>>>>>>>>>>> vsp_finan 16 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 16 | 520 | 910,070,918 |  16.5896 |   0.7048 |   3.5643 |   0.0004 |   0.2743 |   0.9243 |   0.9737 |  10.0261 |   0.1217 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
>>>>>>>>>>>>> vsp_finan 8 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 8 | 520 | 910,070,918 |  26.6116 |   0.6899 |   4.2169 |   0.0003 |   0.5418 |   1.2492 |   1.8895 |  17.7989 |   0.2249 | data/vsp_finan512_scagr7-2c_rlfddd.bin_tc.bin |
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> TC on com-dblp >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>> com-dblp 40 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1,049,866 | 40 | 31 | 1,911,754,892 |   8.6460 |   0.7157 |   6.5968 |   0.0004 |   0.0136 |   0.2329 |   0.7451 |   0.2396 |   0.1020 | data/com-dblpungraph.bin_tc.bin |
>>>>>>>>>>>>> com-dblp 32 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 32 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1,049,866 | 32 | 31 | 1,911,754,892 |   9.3588 |   0.7143 |   7.0478 |   0.0004 |   0.0143 |   0.2698 |   0.9018 |   0.2843 |   0.1262 | data/com-dblpungraph.bin_tc.bin |
>>>>>>>>>>>>> com-dblp 24 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 24 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1,049,866 | 24 | 31 | 1,911,754,892 |   9.0769 |   0.7194 |   6.2812 |   0.0002 |   0.0163 |   0.3297 |   1.1870 |   0.3701 |   0.1730 | data/com-dblpungraph.bin_tc.bin |
>>>>>>>>>>>>> com-dblp 16 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1,049,866 | 16 | 31 | 1,911,754,892 |   9.6291 |   0.7045 |   5.8916 |   0.0003 |   0.0239 |   0.4427 |   1.7686 |   0.5422 |   0.2553 | data/com-dblpungraph.bin_tc.bin |
>>>>>>>>>>>>> com-dblp 8 MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>
mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_semi_naive.out data/com-dblpungraph.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1,049,866 | 8 | 31 | 1,911,754,892 |  13.8682 |   0.7001 |   7.3139 |   0.0003 |   0.0225 |   0.6343 |   3.3221 |   1.3204 |   0.5545 | data/com-dblpungraph.bin_tc.bin |

```