### After fixing hashtable
```shell
cat tc-merged-new.output
Traditional MPI - Sorting: works
Traditional MPI - Two pass: works
CAM - Sorting:
data_147892.bin does not work
data_165435.bin does not work for 8, 16
data_409593.bin does not work
data/vsp_finan512_scagr7-2c_rlfddd.bin does not work
CAM - Two pass
data_147892.bin does not work for 16, 24, 32, 40
data_165435.bin does not work
data_409593.bin does not work
data/vsp_finan512_scagr7-2c_rlfddd.bin does not work

# 1 node
module load craype-accel-nvidia80
export MPICH_GPU_SUPPORT_ENABLED=1
CC wcc.cu -o cc_interactive.out
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./cc_interactive.out data/roadNet-CA.bin 0 0
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./cc_interactive.out data/roadNet-CA.bin 1 0


# 2 nodes
qsub -I -l select=2 -l filesystems=home:eagle -l walltime=1:00:00 -q debug-scaling -A dist_relational_alg
module load craype-accel-nvidia80
export MPICH_GPU_SUPPORT_ENABLED=1
CC tc.cu -o tc_interactive.out

MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_interactive.out data/data_165435.bin 1 0


CC wcc.cu -o cc_interactive.out


MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./cc_interactive.out data/data_165435.bin 1 0
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./cc_interactive.out data/roadNet-CA.bin 0 0
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./cc_interactive.out data/roadNet-CA.bin 1 0
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./cc_interactive.out data/roadNet-CA.bin 1 0
Rank: 0, iterations: 216, MPI_Alltoall MPI error: 0
Rank: 0, iterations: 216total_send: 72721, total_receive: 72330
Rank: 0, send_count_host[0]: 8824, send_displacements_host[0]: 0, receive_count_host[0]: 8824, receive_displacements_host[0]: 0
Rank: 0, send_count_host[1]: 9355, send_displacements_host[1]: 8824, receive_count_host[1]: 9447, receive_displacements_host[1]: 8824
Rank: 0, send_count_host[2]: 9142, send_displacements_host[2]: 18179, receive_count_host[2]: 9078, receive_displacements_host[2]: 18271
Rank: 0, send_count_host[3]: 9216, send_displacements_host[3]: 27321, receive_count_host[3]: 9124, receive_displacements_host[3]: 27349
Rank: 0, send_count_host[4]: 9149, send_displacements_host[4]: 36537, receive_count_host[4]: 9058, receive_displacements_host[4]: 36473
Rank: 0, send_count_host[5]: 9004, send_displacements_host[5]: 45686, receive_count_host[5]: 8979, receive_displacements_host[5]: 45531
Rank: 0, send_count_host[6]: 8930, send_displacements_host[6]: 54690, receive_count_host[6]: 8907, receive_displacements_host[6]: 54510
Rank: 0, send_count_host[7]: 9101, send_displacements_host[7]: 63620, receive_count_host[7]: 8913, receive_displacements_host[7]: 63417
Rank: 1, iterations: 216, MPI_Alltoall MPI error: 0
Rank: 1, iterations: 216total_send: 73526, total_receive: 73114
Rank: 1, send_count_host[0]: 9447, send_displacements_host[0]: 0, receive_count_host[0]: 9355, receive_displacements_host[0]: 0
Rank: 1, send_count_host[1]: 9339, send_displacements_host[1]: 9447, receive_count_host[1]: 9339, receive_displacements_host[1]: 9355
Rank: 1, send_count_host[2]: 9160, send_displacements_host[2]: 18786, receive_count_host[2]: 9047, receive_displacements_host[2]: 18694
Rank: 1, send_count_host[3]: 9193, send_displacements_host[3]: 27946, receive_count_host[3]: 9211, receive_displacements_host[3]: 27741
Rank: 1, send_count_host[4]: 9054, send_displacements_host[4]: 37139, receive_count_host[4]: 9021, receive_displacements_host[4]: 36952
Rank: 1, send_count_host[5]: 9016, send_displacements_host[5]: 46193, receive_count_host[5]: 9101, receive_displacements_host[5]: 45973
Rank: 1, send_count_host[6]: 9171, send_displacements_host[6]: 55209, receive_count_host[6]: 9021, receive_displacements_host[6]: 55074
Rank: 1, send_count_host[7]: 9146, send_displacements_host[7]: 64380, receive_count_host[7]: 9019, receive_displacements_host[7]: 64095
Rank: 4, iterations: 216, MPI_Alltoall MPI error: 0
Rank: 4, iterations: 216total_send: 71966, total_receive: 72200
Rank: 4, send_count_host[0]: 9058, send_displacements_host[0]: 0, receive_count_host[0]: 9149, receive_displacements_host[0]: 0
Rank: 4, send_count_host[1]: 9021, send_displacements_host[1]: 9058, receive_count_host[1]: 9054, receive_displacements_host[1]: 9149
Rank: 4, send_count_host[2]: 8928, send_displacements_host[2]: 18079, receive_count_host[2]: 8922, receive_displacements_host[2]: 18203
Rank: 4, send_count_host[3]: 9080, send_displacements_host[3]: 27007, receive_count_host[3]: 9183, receive_displacements_host[3]: 27125
Rank: 4, send_count_host[4]: 9099, send_displacements_host[4]: 36087, receive_count_host[4]: 9099, receive_displacements_host[4]: 36308
Rank: 4, send_count_host[5]: 8942, send_displacements_host[5]: 45186, receive_count_host[5]: 8932, receive_displacements_host[5]: 45407
Rank: 4, send_count_host[6]: 8883, send_displacements_host[6]: 54128, receive_count_host[6]: 8855, receive_displacements_host[6]: 54339
Rank: 4, send_count_host[7]: 8955, send_displacements_host[7]: 63011, receive_count_host[7]: 9006, receive_displacements_host[7]: 63194
Rank: 2, iterations: 216, MPI_Alltoall MPI error: 0
Rank: 2, iterations: 216total_send: 72123, total_receive: 72253
Rank: 2, send_count_host[0]: 9078, send_displacements_host[0]: 0, receive_count_host[0]: 9142, receive_displacements_host[0]: 0
Rank: 2, send_count_host[1]: 9047, send_displacements_host[1]: 9078, receive_count_host[1]: 9160, receive_displacements_host[1]: 9142
Rank: 2, send_count_host[2]: 8834, send_displacements_host[2]: 18125, receive_count_host[2]: 8834, receive_displacements_host[2]: 18302
Rank: 2, send_count_host[3]: 9151, send_displacements_host[3]: 26959, receive_count_host[3]: 9210, receive_displacements_host[3]: 27136
Rank: 2, send_count_host[4]: 8922, send_displacements_host[4]: 36110, receive_count_host[4]: 8928, receive_displacements_host[4]: 36346
Rank: 2, send_count_host[5]: 9061, send_displacements_host[5]: 45032, receive_count_host[5]: 9088, receive_displacements_host[5]: 45274
Rank: 2, send_count_host[6]: 8962, send_displacements_host[6]: 54093, receive_count_host[6]: 8914, receive_displacements_host[6]: 54362
Rank: 2, send_count_host[7]: 9068, send_displacements_host[7]: 63055, receive_count_host[7]: 8977, receive_displacements_host[7]: 63276
Rank: 5, iterations: 216, MPI_Alltoall MPI error: 0
Rank: 5, iterations: 216total_send: 72460, total_receive: 72307
Rank: 5, send_count_host[0]: 8979, send_displacements_host[0]: 0, receive_count_host[0]: 9004, receive_displacements_host[0]: 0
Rank: 5, send_count_host[1]: 9101, send_displacements_host[1]: 8979, receive_count_host[1]: 9016, receive_displacements_host[1]: 9004
Rank: 5, send_count_host[2]: 9088, send_displacements_host[2]: 18080, receive_count_host[2]: 9061, receive_displacements_host[2]: 18020
Rank: 5, send_count_host[3]: 9352, send_displacements_host[3]: 27168, receive_count_host[3]: 9274, receive_displacements_host[3]: 27081
Rank: 5, send_count_host[4]: 8932, send_displacements_host[4]: 36520, receive_count_host[4]: 8942, receive_displacements_host[4]: 36355
Rank: 5, send_count_host[5]: 9124, send_displacements_host[5]: 45452, receive_count_host[5]: 9124, receive_displacements_host[5]: 45297
Rank: 5, send_count_host[6]: 8911, send_displacements_host[6]: 54576, receive_count_host[6]: 8941, receive_displacements_host[6]: 54421
Rank: 5, send_count_host[7]: 8973, send_displacements_host[7]: 63487, receive_count_host[7]: 8945, receive_displacements_host[7]: 63362
Rank: 6, iterations: 216, MPI_Alltoall MPI error: 0
Rank: 6, iterations: 216total_send: 71462, total_receive: 71595
Rank: 6, send_count_host[0]: 8907, send_displacements_host[0]: 0, receive_count_host[0]: 8930, receive_displacements_host[0]: 0
Rank: 6, send_count_host[1]: 9021, send_displacements_host[1]: 8907, receive_count_host[1]: 9171, receive_displacements_host[1]: 8930
Rank: 6, send_count_host[2]: 8914, send_displacements_host[2]: 17928, receive_count_host[2]: 8962, receive_displacements_host[2]: 18101
Rank: 6, send_count_host[3]: 9041, send_displacements_host[3]: 26842, receive_count_host[3]: 9032, receive_displacements_host[3]: 27063
Rank: 6, send_count_host[4]: 8855, send_displacements_host[4]: 35883, receive_count_host[4]: 8883, receive_displacements_host[4]: 36095
Rank: 6, send_count_host[5]: 8941, send_displacements_host[5]: 44738, receive_count_host[5]: 8911, receive_displacements_host[5]: 44978
Rank: 6, send_count_host[6]: 8952, send_displacements_host[6]: 53679, receive_count_host[6]: 8952, receive_displacements_host[6]: 53889
Rank: 6, send_count_host[7]: 8831, send_displacements_host[7]: 62631, receive_count_host[7]: 8754, receive_displacements_host[7]: 62841
Rank: 3, iterations: 216, MPI_Alltoall MPI error: 0
Rank: 3, iterations: 216total_send: 73499, total_receive: 73511
Rank: 3, send_count_host[0]: 9124, send_displacements_host[0]: 0, receive_count_host[0]: 9216, receive_displacements_host[0]: 0
Rank: 3, send_count_host[1]: 9211, send_displacements_host[1]: 9124, receive_count_host[1]: 9193, receive_displacements_host[1]: 9216
Rank: 3, send_count_host[2]: 9210, send_displacements_host[2]: 18335, receive_count_host[2]: 9151, receive_displacements_host[2]: 18409
Rank: 3, send_count_host[3]: 9210, send_displacements_host[3]: 27545, receive_count_host[3]: 9210, receive_displacements_host[3]: 27560
Rank: 3, send_count_host[4]: 9183, send_displacements_host[4]: 36755, receive_count_host[4]: 9080, receive_displacements_host[4]: 36770
Rank: 3, send_count_host[5]: 9274, send_displacements_host[5]: 45938, receive_count_host[5]: 9352, receive_displacements_host[5]: 45850
Rank: 3, send_count_host[6]: 9032, send_displacements_host[6]: 55212, receive_count_host[6]: 9041, receive_displacements_host[6]: 55202
Rank: 3, send_count_host[7]: 9255, send_displacements_host[7]: 64244, receive_count_host[7]: 9268, receive_displacements_host[7]: 64243
Rank: 7, iterations: 216, MPI_Alltoall MPI error: 0
Rank: 7, iterations: 216total_send: 71933, total_receive: 72380
Rank: 7, send_count_host[0]: 8913, send_displacements_host[0]: 0, receive_count_host[0]: 9101, receive_displacements_host[0]: 0
Rank: 7, send_count_host[1]: 9019, send_displacements_host[1]: 8913, receive_count_host[1]: 9146, receive_displacements_host[1]: 9101
Rank: 7, send_count_host[2]: 8977, send_displacements_host[2]: 17932, receive_count_host[2]: 9068, receive_displacements_host[2]: 18247
Rank: 7, send_count_host[3]: 9268, send_displacements_host[3]: 26909, receive_count_host[3]: 9255, receive_displacements_host[3]: 27315
Rank: 7, send_count_host[4]: 9006, send_displacements_host[4]: 36177, receive_count_host[4]: 8955, receive_displacements_host[4]: 36570
Rank: 7, send_count_host[5]: 8945, send_displacements_host[5]: 45183, receive_count_host[5]: 8973, receive_displacements_host[5]: 45525
Rank: 7, send_count_host[6]: 8754, send_displacements_host[6]: 54128, receive_count_host[6]: 8831, receive_displacements_host[6]: 54498
Rank: 7, send_count_host[7]: 9051, send_displacements_host[7]: 62882, receive_count_host[7]: 9051, receive_displacements_host[7]: 63329
MPICH ERROR [Rank 7] [job id 1541d67e-2681-435b-8116-65af3d712f6a] [Thu Sep 26 14:57:09 2024] [x3102c0s7b0n0] - Abort(136913167) (rank 7 in comm 0): Fatal error in PMPI_Alltoallv: Other MPI error, error stack:
PMPI_Alltoallv(386).........: MPI_Alltoallv(sbuf=0x14f7ec2d6c00, scnts=0x29f7670, sdispls=0x2a1a220, dtype=0x4c00083e, rbuf=0x14f7ec363400, rcnts=0x2a1a1f0, rdispls=0x2a1a250, datatype=dtype=0x4c00083e, comm=MPI_COMM_WORLD) failed
MPIR_CRAY_Alltoallv(1180)...: 
MPIC_Isend(511).............: 
MPID_Isend_coll(610)........: 
MPIDI_isend_coll_unsafe(176): 
MPIDI_OFI_send_normal(372)..: OFI tagged senddata failed (ofi_send.h:372:MPIDI_OFI_send_normal:Resource temporarily unavailable)

aborting job:
Fatal error in PMPI_Alltoallv: Other MPI error, error stack:
PMPI_Alltoallv(386).........: MPI_Alltoallv(sbuf=0x14f7ec2d6c00, scnts=0x29f7670, sdispls=0x2a1a220, dtype=0x4c00083e, rbuf=0x14f7ec363400, rcnts=0x2a1a1f0, rdispls=0x2a1a250, datatype=dtype=0x4c00083e, comm=MPI_COMM_WORLD) failed
MPIR_CRAY_Alltoallv(1180)...: 
MPIC_Isend(511).............: 
MPID_Isend_coll(610)........: 
MPIDI_isend_coll_unsafe(176): 
MPIDI_OFI_send_normal(372)..: OFI tagged senddata failed (ofi_send.h:372:MPIDI_OFI_send_normal:Resource temporarily unavailable)
MPICH ERROR [Rank 5] [job id 1541d67e-2681-435b-8116-65af3d712f6a] [Thu Sep 26 14:57:09 2024] [x3102c0s7b0n0] - Abort(271130895) (rank 5 in comm 0): Fatal error in PMPI_Alltoallv: Other MPI error, error stack:
PMPI_Alltoallv(386).........: MPI_Alltoallv(sbuf=0x14e9a46d8400, scnts=0x44bb0b0, sdispls=0x4456d80, dtype=0x4c00083e, rbuf=0x14e9a4765e00, rcnts=0x446d4b0, rdispls=0x4456db0, datatype=dtype=0x4c00083e, comm=MPI_COMM_WORLD) failed
MPIR_CRAY_Alltoallv(1180)...: 
MPIC_Isend(511).............: 
MPID_Isend_coll(610)........: 
MPIDI_isend_coll_unsafe(176): 
MPIDI_OFI_send_normal(372)..: OFI tagged senddata failed (ofi_send.h:372:MPIDI_OFI_send_normal:Resource temporarily unavailable)

aborting job:
Fatal error in PMPI_Alltoallv: Other MPI error, error stack:
PMPI_Alltoallv(386).........: MPI_Alltoallv(sbuf=0x14e9a46d8400, scnts=0x44bb0b0, sdispls=0x4456d80, dtype=0x4c00083e, rbuf=0x14e9a4765e00, rcnts=0x446d4b0, rdispls=0x4456db0, datatype=dtype=0x4c00083e, comm=MPI_COMM_WORLD) failed
MPIR_CRAY_Alltoallv(1180)...: 
MPIC_Isend(511).............: 
MPID_Isend_coll(610)........: 
MPIDI_isend_coll_unsafe(176): 
MPIDI_OFI_send_normal(372)..: OFI tagged senddata failed (ofi_send.h:372:MPIDI_OFI_send_normal:Resource temporarily unavailable)
x3102c0s7b0n0.hsn.cm.polaris.alcf.anl.gov: rank 7 exited with code 255
x3102c0s37b1n0.hsn.cm.polaris.alcf.anl.gov: rank 0 died from signal 15




MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./cc_interactive.out data/data_163734.bin 1 0
Rank: 2, iterations: 0total_send: 40934, total_receive: 40729
Rank: 4, iterations: 0total_send: 40932, total_receive: 40963
Rank: 3, iterations: 0total_send: 40934, total_receive: 41336
Rank: 5, iterations: 0total_send: 40934, total_receive: 40119
Rank: 6, iterations: 0total_send: 40934, total_receive: 40490
Rank: 0, iterations: 0total_send: 40932, total_receive: 40869
Rank: 7, iterations: 0total_send: 40934, total_receive: 41151
Rank: 1, iterations: 0total_send: 40934, total_receive: 41811
Rank: 4, iterations: 0 done!
Rank: 5, iterations: 0 done!
Rank: 6, iterations: 0 done!
Rank: 7, iterations: 0 done!
Rank: 0, iterations: 0 done!
Rank: 1, iterations: 0 done!
Rank: 2, iterations: 0 done!
Rank: 3, iterations: 0 done!
Rank: 6, iterations: 0total_send: 40490, total_receive: 40490
Rank: 0, iterations: 0total_send: 40869, total_receive: 40869
Rank: 4, iterations: 0total_send: 40963, total_receive: 40963
Rank: 5, iterations: 0total_send: 40119, total_receive: 40119
Rank: 1, iterations: 0total_send: 41811, total_receive: 41811
Rank: 7, iterations: 0total_send: 41151, total_receive: 41151
Rank: 2, iterations: 0total_send: 40729, total_receive: 40729
Rank: 3, iterations: 0total_send: 41336, total_receive: 41336
Rank: 4, iterations: 0 done!
Rank: 5, iterations: 0 done!
Rank: 6, iterations: 0 done!
Rank: 7, iterations: 0 done!
Rank: 0, iterations: 0 done!
Rank: 1, iterations: 0 done!
Rank: 2, iterations: 0 done!
Rank: 3, iterations: 0 done!
Rank: 0, iterations: 1total_send: 40812, total_receive: 40816
Rank: 2, iterations: 1total_send: 40676, total_receive: 40697
Rank: 4, iterations: 1total_send: 40911, total_receive: 40929
Rank: 3, iterations: 1total_send: 41301, total_receive: 41290
Rank: 5, iterations: 1total_send: 40089, total_receive: 40083
Rank: 1, iterations: 1total_send: 41797, total_receive: 41775
Rank: 6, iterations: 1total_send: 40453, total_receive: 40449
Rank: 7, iterations: 1total_send: 41108, total_receive: 41108
Rank: 4, iterations: 1 done!
Rank: 5, iterations: 1 done!
Rank: 6, iterations: 1 done!
Rank: 7, iterations: 1 done!
Rank: 0, iterations: 1 done!
Rank: 1, iterations: 1 done!
Rank: 2, iterations: 1 done!
Rank: 3, iterations: 1 done!
Rank: 2, iterations: 2total_send: 40523, total_receive: 40507
Rank: 3, iterations: 2total_send: 41084, total_receive: 41062
Rank: 0, iterations: 2total_send: 40552, total_receive: 40584
Rank: 1, iterations: 2total_send: 41611, total_receive: 41585
Rank: 6, iterations: 2total_send: 40273, total_receive: 40286
Rank: 7, iterations: 2total_send: 40859, total_receive: 40900
Rank: 4, iterations: 2total_send: 40772, total_receive: 40758
Rank: 5, iterations: 2total_send: 39879, total_receive: 39871
Rank: 4, iterations: 2 done!
Rank: 5, iterations: 2 done!
Rank: 6, iterations: 2 done!
Rank: 7, iterations: 2 done!
Rank: 0, iterations: 2 done!
Rank: 1, iterations: 2 done!
Rank: 2, iterations: 2 done!
Rank: 3, iterations: 2 done!
Rank: 0, iterations: 3total_send: 40254, total_receive: 40251
Rank: 1, iterations: 3total_send: 41194, total_receive: 41213
Rank: 2, iterations: 3total_send: 40233, total_receive: 40236
Rank: 4, iterations: 3total_send: 40518, total_receive: 40481
Rank: 3, iterations: 3total_send: 40676, total_receive: 40741
Rank: 6, iterations: 3total_send: 40001, total_receive: 39986
Rank: 7, iterations: 3total_send: 40618, total_receive: 40564
Rank: 5, iterations: 3total_send: 39517, total_receive: 39539
Rank: 4, iterations: 3 done!
Rank: 5, iterations: 3 done!
Rank: 6, iterations: 3 done!
Rank: 7, iterations: 3 done!
Rank: 0, iterations: 3 done!
Rank: 1, iterations: 3 done!
Rank: 2, iterations: 3 done!
Rank: 3, iterations: 3 done!
Rank: 3, iterations: 4total_send: 40335, total_receive: 40287
Rank: 5, iterations: 4total_send: 39138, total_receive: 39105
Rank: 6, iterations: 4total_send: 39507, total_receive: 39563
Rank: 7, iterations: 4total_send: 40152, total_receive: 40189
Rank: 0, iterations: 4total_send: 39856, total_receive: 39844
Rank: 4, iterations: 4total_send: 40112, total_receive: 40127
Rank: 1, iterations: 4total_send: 40705, total_receive: 40766
Rank: 2, iterations: 4total_send: 39867, total_receive: 39791
MPICH ERROR [Rank 4] [job id bbc8b1c3-39ae-4732-8d2c-a756f33f4c88] [Sat Sep 28 12:31:58 2024] [x3005c0s7b0n0] - Abort(338239759) (rank 4 in comm 0): Fatal error in PMPI_Alltoallv: Other MPI error, error stack:
PMPI_Alltoallv(386)......: MPI_Alltoallv(sbuf=0x150d11d00000, scnts=0x27876c0, sdispls=0x27a0550, dtype=0x4c00083e, rbuf=0x150d11d4e600, rcnts=0x27a0520, rdispls=0x27a0580, datatype=dtype=0x4c00083e, comm=MPI_COMM_WORLD) failed
MPIR_CRAY_Alltoallv(1168): 
MPIC_Irecv(594)..........: 
MPID_Irecv(529)..........: 
MPIDI_irecv_unsafe(163)..: 
MPIDI_OFI_do_irecv(356)..: OFI tagged recv failed (ofi_recv.h:356:MPIDI_OFI_do_irecv:Resource temporarily unavailable)

aborting job:
Fatal error in PMPI_Alltoallv: Other MPI error, error stack:
PMPI_Alltoallv(386)......: MPI_Alltoallv(sbuf=0x150d11d00000, scnts=0x27876c0, sdispls=0x27a0550, dtype=0x4c00083e, rbuf=0x150d11d4e600, rcnts=0x27a0520, rdispls=0x27a0580, datatype=dtype=0x4c00083e, comm=MPI_COMM_WORLD) failed
MPIR_CRAY_Alltoallv(1168): 
MPIC_Irecv(594)..........: 
MPID_Irecv(529)..........: 
MPIDI_irecv_unsafe(163)..: 
MPIDI_OFI_do_irecv(356)..: OFI tagged recv failed (ofi_recv.h:356:MPIDI_OFI_do_irecv:Resource temporarily unavailable)
x3005c0s7b0n0.hsn.cm.polaris.alcf.anl.gov: rank 4 exited with code 255
x3005c0s7b0n0.hsn.cm.polaris.alcf.anl.gov: rank 6 died from signal 15

CC tc.cu -o tc_interactive.out
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_interactive.out data/data_10.bin 1 0 

# 4 nodes
qsub -I -l select=4 -l filesystems=home:eagle -l walltime=1:00:00 -q debug-scaling -A dist_relational_alg
CC tc.cu -o tc_interactive.out
CC sg.cu -o sg_interactive.out
CC wcc.cu -o cc_interactive.out
# p2p-Gnutella31 
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_interactive.out data/data_147892.bin 1 0 
MPICH ERROR [Rank 3] [job id 75e458c6-72cf-4978-bdf1-1cefce146b2a] [Wed Sep 25 12:32:18 2024] [x3005c0s19b1n0] - Abort(740892943) (rank 3 in comm 0): Fatal error in PMPI_Alltoallv: Other MPI error, error stack:
PMPI_Alltoallv(386).........: MPI_Alltoallv(sbuf=0x1470812f9000, scnts=0x35403f0, sdispls=0x3538850, dtype=0x4c00083e, rbuf=0x147081344400, rcnts=0x34eada0, rdispls=0x35303c0, datatype=dtype=0x4c00083e, comm=MPI_COMM_WORLD) failed
MPIR_CRAY_Alltoallv(1180)...: 
MPIC_Isend(511).............: 
MPID_Isend_coll(610)........: 
MPIDI_isend_coll_unsafe(176): 
MPIDI_OFI_send_normal(372)..: OFI tagged senddata failed (ofi_send.h:372:MPIDI_OFI_send_normal:Resource temporarily unavailable)

aborting job:
Fatal error in PMPI_Alltoallv: Other MPI error, error stack:
PMPI_Alltoallv(386).........: MPI_Alltoallv(sbuf=0x1470812f9000, scnts=0x35403f0, sdispls=0x3538850, dtype=0x4c00083e, rbuf=0x147081344400, rcnts=0x34eada0, rdispls=0x35303c0, datatype=dtype=0x4c00083e, comm=MPI_COMM_WORLD) failed
MPIR_CRAY_Alltoallv(1180)...: 
MPIC_Isend(511).............: 
MPID_Isend_coll(610)........: 
MPIDI_isend_coll_unsafe(176): 
MPIDI_OFI_send_normal(372)..: OFI tagged senddata failed (ofi_send.h:372:MPIDI_OFI_send_normal:Resource temporarily unavailable)
x3005c0s19b1n0.hsn.cm.polaris.alcf.anl.gov: rank 3 exited with code 255
x3005c0s19b1n0.hsn.cm.polaris.alcf.anl.gov: rank 2 died from signal 15
arsho::x3005c0s19b1n0 { ~/mnmgJOIN }-> MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_interactive.out data/data_147892.bin 0 0 
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 16 | 31 | 884,179,859 |   1.8617 |   0.7122 |   2.4026 |   0.0000 |   0.0246 |   0.1441 |   0.6355 |   0.0658 |   0.1617 |   0.1177 | data/data_147892.bin_tc.bin |



# CC
MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./cc_interactive.out data/roadNet-CA.bin 0 0
| # Input | # Process | # Iterations | # CC (# Nodes in largest WCC) | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 5,533,214 | 8 | 556 | 2,638 (1,957,027) |   1.2425 |   0.0094 |   0.0346 |   0.0003 |   0.0767 |   0.1752 |   0.1960 |   0.1860 |   0.5966 |   0.0022 | data/roadNet-CA.bin_cc.bin |
arsho::x3005c0s19b1n0 { ~/mnmgJOIN }-> MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./cc_interactive.out data/roadNet-CA.bin 1 0
MPICH ERROR [Rank 7] [job id 0247c724-c92b-49cc-a387-64db65eb4447] [Wed Sep 25 12:53:06 2024] [x3005c0s1b0n0] - Abort(808001807) (rank 7 in comm 0): Fatal error in PMPI_Alltoallv: Other MPI error, error stack:
PMPI_Alltoallv(386).........: MPI_Alltoallv(sbuf=0x14be102d6c00, scnts=0x2efd050, sdispls=0x2efd830, dtype=0x4c00083e, rbuf=0x14be10363400, rcnts=0x2efd800, rdispls=0x2efd860, datatype=dtype=0x4c00083e, comm=MPI_COMM_WORLD) failed
MPIR_CRAY_Alltoallv(1180)...: 
MPIC_Isend(511).............: 
MPID_Isend_coll(610)........: 
MPIDI_isend_coll_unsafe(176): 
MPIDI_OFI_send_normal(372)..: OFI tagged senddata failed (ofi_send.h:372:MPIDI_OFI_send_normal:Resource temporarily unavailable)

aborting job:
Fatal error in PMPI_Alltoallv: Other MPI error, error stack:
PMPI_Alltoallv(386).........: MPI_Alltoallv(sbuf=0x14be102d6c00, scnts=0x2efd050, sdispls=0x2efd830, dtype=0x4c00083e, rbuf=0x14be10363400, rcnts=0x2efd800, rdispls=0x2efd860, datatype=dtype=0x4c00083e, comm=MPI_COMM_WORLD) failed
MPIR_CRAY_Alltoallv(1180)...: 
MPIC_Isend(511).............: 
MPID_Isend_coll(610)........: 
MPIDI_isend_coll_unsafe(176): 
MPIDI_OFI_send_normal(372)..: OFI tagged senddata failed (ofi_send.h:372:MPIDI_OFI_send_normal:Resource temporarily unavailable)
MPICH ERROR [Rank 5] [job id 0247c724-c92b-49cc-a387-64db65eb4447] [Wed Sep 25 12:53:06 2024] [x3005c0s1b0n0] - Abort(942219535) (rank 5 in comm 0): Fatal error in PMPI_Alltoallv: Other MPI error, error stack:
PMPI_Alltoallv(386).........: MPI_Alltoallv(sbuf=0x1478226d8400, scnts=0x37efd20, sdispls=0x37ee910, dtype=0x4c00083e, rbuf=0x147822765e00, rcnts=0x37efd50, rdispls=0x37ee940, datatype=dtype=0x4c00083e, comm=MPI_COMM_WORLD) failed
MPIR_CRAY_Alltoallv(1180)...: 
MPIC_Isend(511).............: 
MPID_Isend_coll(610)........: 
MPIDI_isend_coll_unsafe(176): 
MPIDI_OFI_send_normal(372)..: OFI tagged senddata failed (ofi_send.h:372:MPIDI_OFI_send_normal:Resource temporarily unavailable)

aborting job:
Fatal error in PMPI_Alltoallv: Other MPI error, error stack:
PMPI_Alltoallv(386).........: MPI_Alltoallv(sbuf=0x1478226d8400, scnts=0x37efd20, sdispls=0x37ee910, dtype=0x4c00083e, rbuf=0x147822765e00, rcnts=0x37efd50, rdispls=0x37ee940, datatype=dtype=0x4c00083e, comm=MPI_COMM_WORLD) failed
MPIR_CRAY_Alltoallv(1180)...: 
MPIC_Isend(511).............: 
MPID_Isend_coll(610)........: 
MPIDI_isend_coll_unsafe(176): 
MPIDI_OFI_send_normal(372)..: OFI tagged senddata failed (ofi_send.h:372:MPIDI_OFI_send_normal:Resource temporarily unavailable)
x3005c0s1b0n0.hsn.cm.polaris.alcf.anl.gov: rank 7 exited with code 255
x3005c0s19b1n0.hsn.cm.polaris.alcf.anl.gov: rank 0 died from signal 15
arsho::x3005c0s19b1n0 { ~/mnmgJOIN }-> MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./cc_interactive.out data/roadNet-CA.bin 0 1
| # Input | # Process | # Iterations | # CC (# Nodes in largest WCC) | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 5,533,214 | 8 | 556 | 2,638 (1,957,027) |   1.2464 |   0.0084 |   0.0415 |   0.0003 |   0.0765 |   0.1898 |   0.2009 |   0.1938 |   0.5744 |   0.0022 | data/roadNet-CA.bin_cc.bin |
arsho::x3005c0s19b1n0 { ~/mnmgJOIN }-> MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 8 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./cc_interactive.out data/roadNet-CA.bin 1 1
MPICH ERROR [Rank 6] [job id 92163b00-28fc-4c35-b838-092c0530103f] [Wed Sep 25 12:54:10 2024] [x3005c0s1b0n0] - Abort(472457487) (rank 6 in comm 0): Fatal error in PMPI_Alltoallv: Other MPI error, error stack:
PMPI_Alltoallv(386).........: MPI_Alltoallv(sbuf=0x14577c66a000, scnts=0x2ac4f80, sdispls=0x2ac4fb0, dtype=0x4c00083e, rbuf=0x14577c731c00, rcnts=0x2a83390, rdispls=0x2abd880, datatype=dtype=0x4c00083e, comm=MPI_COMM_WORLD) failed
MPIR_CRAY_Alltoallv(1180)...: 
MPIC_Isend(511).............: 
MPID_Isend_coll(610)........: 
MPIDI_isend_coll_unsafe(176): 
MPIDI_OFI_send_normal(372)..: OFI tagged senddata failed (ofi_send.h:372:MPIDI_OFI_send_normal:Resource temporarily unavailable)

aborting job:
Fatal error in PMPI_Alltoallv: Other MPI error, error stack:
PMPI_Alltoallv(386).........: MPI_Alltoallv(sbuf=0x14577c66a000, scnts=0x2ac4f80, sdispls=0x2ac4fb0, dtype=0x4c00083e, rbuf=0x14577c731c00, rcnts=0x2a83390, rdispls=0x2abd880, datatype=dtype=0x4c00083e, comm=MPI_COMM_WORLD) failed
MPIR_CRAY_Alltoallv(1180)...: 
MPIC_Isend(511).............: 
MPID_Isend_coll(610)........: 
MPIDI_isend_coll_unsafe(176): 
MPIDI_OFI_send_normal(372)..: OFI tagged senddata failed (ofi_send.h:372:MPIDI_OFI_send_normal:Resource temporarily unavailable)
MPICH ERROR [Rank 2] [job id 92163b00-28fc-4c35-b838-092c0530103f] [Wed Sep 25 12:54:10 2024] [x3005c0s19b1n0] - Abort(69804303) (rank 2 in comm 0): Fatal error in PMPI_Alltoallv: Other MPI error, error stack:
PMPI_Alltoallv(386).........: MPI_Alltoallv(sbuf=0x15197646a800, scnts=0x40b1bf0, sdispls=0x40dab70, dtype=0x4c00083e, rbuf=0x151976533800, rcnts=0x4096040, rdispls=0x4094780, datatype=dtype=0x4c00083e, comm=MPI_COMM_WORLD) failed
MPIR_CRAY_Alltoallv(1180)...: 
MPIC_Isend(511).............: 
MPID_Isend_coll(610)........: 
MPIDI_isend_coll_unsafe(176): 
MPIDI_OFI_send_normal(372)..: OFI tagged senddata failed (ofi_send.h:372:MPIDI_OFI_send_normal:Resource temporarily unavailable)

aborting job:
Fatal error in PMPI_Alltoallv: Other MPI error, error stack:
PMPI_Alltoallv(386).........: MPI_Alltoallv(sbuf=0x15197646a800, scnts=0x40b1bf0, sdispls=0x40dab70, dtype=0x4c00083e, rbuf=0x151976533800, rcnts=0x4096040, rdispls=0x4094780, datatype=dtype=0x4c00083e, comm=MPI_COMM_WORLD) failed
MPIR_CRAY_Alltoallv(1180)...: 
MPIC_Isend(511).............: 
MPID_Isend_coll(610)........: 
MPIDI_isend_coll_unsafe(176): 
MPIDI_OFI_send_normal(372)..: OFI tagged senddata failed (ofi_send.h:372:MPIDI_OFI_send_normal:Resource temporarily unavailable)
x3005c0s1b0n0.hsn.cm.polaris.alcf.anl.gov: rank 6 exited with code 255
x3005c0s1b0n0.hsn.cm.polaris.alcf.anl.gov: rank 7 died from signal 15
arsho::x3005c0s19b1n0 { ~/mnmgJOIN }-> MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./cc_interactive.out data/roadNet-CA.bin 1 0
| # Input | # Process | # Iterations | # CC (# Nodes in largest WCC) | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 5,533,214 | 4 | 556 | 2,638 (1,957,027) |   7.7911 |   0.5551 |   1.3438 |   0.0003 |   0.1163 |   0.3133 |   5.7633 |   0.2809 |   0.7596 |   0.0022 | data/roadNet-CA.bin_cc.bin |





MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np 16 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./cc_interactive.out data/data_165435.bin 1 0


# Single interactive node
qsub -I -l select=1 -l filesystems=home:eagle -l walltime=1:00:00 -q debug -A dist_relational_alg

module load craype-accel-nvidia80
export MPICH_GPU_SUPPORT_ENABLED=1

arsho::x3006c0s31b0n0 { ~/mnmgJOIN }-> CC tc.cu -o tc_interactive.out -g -O1

arsho::x3006c0s31b0n0 { ~/mnmgJOIN }-> 
arsho::x3006c0s31b0n0 { ~/mnmgJOIN }-> mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./tc_interactive.out data/data_147892.bin 1 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 4 | 31 | 884,179,859 |   4.4235 |   0.5334 |   6.1584 |   0.0003 |   0.0584 |   0.4959 |   2.1434 |   0.2112 |   0.5067 |   0.4742 | data/data_147892.bin_tc.bin |
arsho::x3006c0s31b0n0 { ~/mnmgJOIN }-> mpiexec --np 40 ./tc_interactive.out data/data_147892.bin 1 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 147,892 | 40 | 31 | 884,179,859 |  35.7599 |  13.5661 |   6.6912 |   0.0065 |   0.7751 |   2.6939 |  11.3998 |   1.4921 |   5.3049 |   0.5216 | data/data_147892.bin_tc.bin |
arsho::x3006c0s31b0n0 { ~/mnmgJOIN }-> mpiexec --np 128 ./tc_interactive.out data/data_147892.bin 1 0
WARNING: CPU oversubscription detected for application
GPUassert: out of memory tc.cu 124
x3006c0s31b0n0.hsn.cm.polaris.alcf.anl.gov: rank 121 exited with code 2
x3006c0s31b0n0.hsn.cm.polaris.alcf.anl.gov: rank 32 died from signal 15


CC sg.cu -o sg_interactive.out
mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./sg_interactive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 552,020 | 4 | 513 | 864,761,518 |  52.5131 |   0.5382 |   5.5495 |   0.0007 |   0.6974 |   2.4376 |  25.7629 |   1.3026 |  21.2854 |   0.4881 | data/vsp_finan512_scagr7-2c_rlfddd.bin_sg.bin |
arsho::x3006c0s31b0n0 { ~/mnmgJOIN }-> mpiexec --np 40 ./sg_interactive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
GPUassert: out of memory sg.cu 321
GPUassert: out of memory sg.cu 327
GPUassert: out of memory sg.cu 321
GPUassert: out of memory sg.cu 327
GPUassert: out of memory sg.cu 321
GPUassert: out of memory sg.cu 321
GPUassert: out of memory sg.cu 327
GPUassert: out of memory sg.cu 327
GPUassert: out of memory sg.cu 327
GPUassert: out of memory sg.cu 327
GPUassert: out of memory sg.cu 327
x3006c0s31b0n0.hsn.cm.polaris.alcf.anl.gov: rank 2 exited with code 2
x3006c0s31b0n0.hsn.cm.polaris.alcf.anl.gov: rank 4 died from signal 15
arsho::x3006c0s31b0n0 { ~/mnmgJOIN }-> mpiexec --np 32 ./sg_interactive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
GPUassert: out of memory common/comm.cu 58
GPUassert: out of memory common/comm.cu 58
GPUassert: out of memory common/comm.cu 58
GPUassert: out of memory common/comm.cu 58
GPUassert: out of memory common/comm.cu 58
GPUassert: out of memory common/comm.cu 58
GPUassert: out of memory common/comm.cu 58
x3006c0s31b0n0.hsn.cm.polaris.alcf.anl.gov: rank 1 exited with code 2
x3006c0s31b0n0.hsn.cm.polaris.alcf.anl.gov: rank 2 died from signal 15
arsho::x3006c0s31b0n0 { ~/mnmgJOIN }-> mpiexec --np 24 ./sg_interactive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
GPUassert: out of memory sg.cu 327
GPUassert: out of memory sg.cu 327
GPUassert: out of memory sg.cu 327
GPUassert: out of memory sg.cu 327
GPUassert: out of memory sg.cu 321
GPUassert: out of memory sg.cu 321
GPUassert: out of memory sg.cu 327
GPUassert: out of memory sg.cu 327
GPUassert: out of memory sg.cu 327
GPUassert: out of memory sg.cu 327
x3006c0s31b0n0.hsn.cm.polaris.alcf.anl.gov: rank 23 exited with code 2
x3006c0s31b0n0.hsn.cm.polaris.alcf.anl.gov: rank 10 died from signal 15
arsho::x3006c0s31b0n0 { ~/mnmgJOIN }-> mpiexec --np 16 ./sg_interactive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1 0
GPUassert: out of memory sg.cu 327
x3006c0s31b0n0.hsn.cm.polaris.alcf.anl.gov: rank 6 exited with code 2
x3006c0s31b0n0.hsn.cm.polaris.alcf.anl.gov: rank 2 died from signal 15



CC wcc.cu -o cc_interactive.out
arsho::x3006c0s31b0n0 { ~/mnmgJOIN }-> mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./cc_interactive.out data/data_214078.bin 1 0
| # Input | # Process | # Iterations | # CC (# Nodes in largest WCC) | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 214,078 | 4 | 12 | 547 (56,739) |   1.1877 |   0.5336 |   1.3005 |   0.0003 |   0.0066 |   0.0025 |   0.5302 |   0.1096 |   0.0041 |   0.0009 | data/data_214078.bin_cc.bin |
arsho::x3006c0s31b0n0 { ~/mnmgJOIN }-> mpiexec --np 40 ./cc_interactive.out data/data_214078.bin 1 0
| # Input | # Process | # Iterations | # CC (# Nodes in largest WCC) | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 214,078 | 40 | 12 | 547 (56,739) |  31.6277 |  13.6684 |   3.1867 |   0.0079 |   0.2537 |   0.1882 |  16.9058 |   0.2639 |   0.3247 |   0.0151 | data/data_214078.bin_cc.bin |
arsho::x3006c0s31b0n0 { ~/mnmgJOIN }-> mpiexec --np 128 ./cc_interactive.out data/data_214078.bin 1 0
WARNING: CPU oversubscription detected for application
GPUassert: out of memory wcc.cu 145
x3006c0s31b0n0.hsn.cm.polaris.alcf.anl.gov: rank 40 exited with code 2
x3006c0s31b0n0.hsn.cm.polaris.alcf.anl.gov: rank 80 died from signal 15

```


### Debugging locally
```shell
mpiexec --np 20 ./cc_interactive.out data/flickr.bin 0 0
rank 14, iterations 0, relation_size 40931, hash_table_size: 2097151
rank 3, iterations 0, relation_size 41091, hash_table_size: 2097151
rank 7, iterations 0, relation_size 41336, hash_table_size: 2097151
rank 13, iterations 0, relation_size 41113, hash_table_size: 2097151
rank 5, iterations 0, relation_size 40528, hash_table_size: 2097151
rank 10, iterations 0, relation_size 40565, hash_table_size: 2097151
rank 15, iterations 0, relation_size 41185, hash_table_size: 2097151
rank 11, iterations 0, relation_size 41003, hash_table_size: 2097151
rank 9, iterations 0, relation_size 41563, hash_table_size: 2097151
rank 8, iterations 0, relation_size 41029, hash_table_size: 2097151
rank 4, iterations 0, relation_size 40971, hash_table_size: 2097151
rank 2, iterations 0, relation_size 41186, hash_table_size: 2097151
rank 6, iterations 0, relation_size 41003, hash_table_size: 2097151
rank 19, iterations 0, relation_size 41080, hash_table_size: 2097151
rank 1, iterations 0, relation_size 41098, hash_table_size: 2097151
rank 17, iterations 0, relation_size 41133, hash_table_size: 2097151
rank 18, iterations 0, relation_size 41061, hash_table_size: 2097151
rank 0, iterations 0, relation_size 41431, hash_table_size: 2097151
rank 16, iterations 0, relation_size 40798, hash_table_size: 2097151
rank 12, iterations 0, relation_size 40773, hash_table_size: 2097151
^CInterrupt (once more within 1 sec to abort immediately)


nvcc wcc.cu -o wcc.out -I/usr/lib/x86_64-linux-gnu/openmpi -I/usr/lib/x86_64-linux-gnu/openmpi/include -L/usr/lib/x86_64-linux-gnu/openmpi/lib -lmpi -lm --extended-lambda -g -O1
mpirun -np 22 --oversubscribe ./wcc.out data/flickr.bin 0 0
```


### Debugging WCC memoery leak
```shell
nvcc wcc.cu -o wcc.out -I/usr/lib/x86_64-linux-gnu/openmpi -I/usr/lib/x86_64-linux-gnu/openmpi/include -L/usr/lib/x86_64-linux-gnu/openmpi/lib -lmpi -lm --extended-lambda -g -O1
mpirun -np 8 valgrind ./wcc.out data/flickr.bin 0 0
mpirun -np 1 valgrind --leak-check=full --track-origins=yes ./wcc.out data/dummy.bin 0 0
```


```shell
cat tc-merged-new.error
MPICH ERROR [Rank 10] [job id 574596a4-9f66-4e0c-bb8f-b964b5cc374a] [Fri Sep 13 19:01:03 2024] [x3005c0s19b0n0] - Abort(1009328399) (rank 10 in comm 0): Fatal error in PMPI_Alltoallv: Other MPI error, error stack:
PMPI_Alltoallv(386).........: MPI_Alltoallv(sbuf=0x14cd9bc76a00, scnts=0x225b9c0, sdispls=0x217b4d0, dtype=0x4c00083e, rbuf=0x14cd9bd62c00, rcnts=0x22802b0, rdispls=0x22919f0, datatype=dtype=0x4c00083e, comm=MPI_COMM_WORLD) failed
MPIR_CRAY_Alltoallv(1180)...: 
MPIC_Isend(511).............: 
MPID_Isend_coll(610)........: 
MPIDI_isend_coll_unsafe(176): 
MPIDI_OFI_send_normal(372)..: OFI tagged senddata failed (ofi_send.h:372:MPIDI_OFI_send_normal:Resource temporarily unavailable)

aborting job:
Fatal error in PMPI_Alltoallv: Other MPI error, error stack:
PMPI_Alltoallv(386).........: MPI_Alltoallv(sbuf=0x14cd9bc76a00, scnts=0x225b9c0, sdispls=0x217b4d0, dtype=0x4c00083e, rbuf=0x14cd9bd62c00, rcnts=0x22802b0, rdispls=0x22919f0, datatype=dtype=0x4c00083e, comm=MPI_COMM_WORLD) failed
MPIR_CRAY_Alltoallv(1180)...: 
MPIC_Isend(511).............: 
MPID_Isend_coll(610)........: 
MPIDI_isend_coll_unsafe(176): 
MPIDI_OFI_send_normal(372)..: OFI tagged senddata failed (ofi_send.h:372:MPIDI_OFI_send_normal:Resource temporarily unavailable)
x3005c0s19b0n0.hsn.cm.polaris.alcf.anl.gov: rank 10 exited with code 255
x3005c0s19b0n0.hsn.cm.polaris.alcf.anl.gov: rank 8 died from signal 15
make: *** [Makefile:43: testpolaristc] Error 255
MPICH ERROR [Rank 10] [job id 8802b7a7-eaa3-4282-9731-faa2de106c4e] [Fri Sep 13 19:01:13 2024] [x3005c0s19b0n0] - Abort(405348623) (rank 10 in comm 0): Fatal error in PMPI_Alltoallv: Other MPI error, error stack:
PMPI_Alltoallv(386).........: MPI_Alltoallv(sbuf=0x148223c76a00, scnts=0x385dee0, sdispls=0x385ae60, dtype=0x4c00083e, rbuf=0x148223d62c00, rcnts=0x38457a0, rdispls=0x384dff0, datatype=dtype=0x4c00083e, comm=MPI_COMM_WORLD) failed
MPIR_CRAY_Alltoallv(1180)...: 
MPIC_Isend(511).............: 
MPID_Isend_coll(610)........: 
MPIDI_isend_coll_unsafe(176): 
MPIDI_OFI_send_normal(372)..: OFI tagged senddata failed (ofi_send.h:372:MPIDI_OFI_send_normal:Resource temporarily unavailable)

```

### Transitive Closure

#### Local machine (`CUDA_AWARE_MPI` = 0, Two pass method)

| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 23,874 | 2 | 58 | 481,121 |   0.1196 |   0.0003 |   0.0042 |   0.0002 |   0.0184 |   0.0257 |   0.0075 |   0.0607 |   0.0025 | data/data_23874.bin_tc.bin |
| 23,874 | 3 | 58 | 481,121 |   0.1692 |   0.0003 |   0.0054 |   0.0003 |   0.0252 |   0.0368 |   0.0102 |   0.0889 |   0.0022 | data/data_23874.bin_tc.bin |
| 23,874 | 4 | 58 | 481,121 |   0.2297 |   0.0003 |   0.0072 |   0.0004 |   0.0341 |   0.0568 |   0.0127 |   0.1156 |   0.0028 | data/data_23874.bin_tc.bin |
| 23,874 | 5 | 58 | 481,121 |   0.2585 |   0.0003 |   0.0078 |   0.0004 |   0.0395 |   0.0620 |   0.0171 |   0.1290 |   0.0023 | data/data_23874.bin_tc.bin |
| 23,874 | 6 | 58 | 481,121 |   0.2854 |   0.0003 |   0.0105 |   0.0005 |   0.0410 |   0.0688 |   0.0196 |   0.1416 |   0.0030 | data/data_23874.bin_tc.bin |
| 23,874 | 7 | 58 | 481,121 |   0.3473 |   0.0004 |   0.0101 |   0.0007 |   0.0514 |   0.0848 |   0.0244 |   0.1721 |   0.0034 | data/data_23874.bin_tc.bin |
| 23,874 | 8 | 58 | 481,121 |   0.3950 |   0.0004 |   0.0119 |   0.0007 |   0.0595 |   0.0993 |   0.0236 |   0.1958 |   0.0037 | data/data_23874.bin_tc.bin |

#### Local machine (`CUDA_AWARE_MPI` = 0, Sort method)

| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 23,874 | 2 | 58 | 481,121 |   0.1554 |   0.0003 |   0.0044 |   0.0001 |   0.0182 |   0.0580 |   0.0077 |   0.0641 |   0.0026 | data/data_23874.bin_tc.bin |
| 23,874 | 3 | 58 | 481,121 |   0.2148 |   0.0002 |   0.0058 |   0.0003 |   0.0236 |   0.0835 |   0.0100 |   0.0890 |   0.0023 | data/data_23874.bin_tc.bin |
| 23,874 | 4 | 58 | 481,121 |   0.2810 |   0.0004 |   0.0085 |   0.0004 |   0.0309 |   0.1134 |   0.0138 |   0.1109 |   0.0027 | data/data_23874.bin_tc.bin |
| 23,874 | 5 | 58 | 481,121 |   0.3220 |   0.0005 |   0.0134 |   0.0005 |   0.0349 |   0.1300 |   0.0177 |   0.1222 |   0.0028 | data/data_23874.bin_tc.bin |
| 23,874 | 6 | 58 | 481,121 |   0.3820 |   0.0003 |   0.0096 |   0.0005 |   0.0419 |   0.1590 |   0.0241 |   0.1427 |   0.0040 | data/data_23874.bin_tc.bin |
| 23,874 | 7 | 58 | 481,121 |   0.4512 |   0.0004 |   0.0114 |   0.0006 |   0.0520 |   0.1873 |   0.0292 |   0.1672 |   0.0032 | data/data_23874.bin_tc.bin |
| 23,874 | 8 | 58 | 481,121 |   0.5179 |   0.0006 |   0.0221 |   0.0007 |   0.0577 |   0.2112 |   0.0319 |   0.1890 |   0.0046 | data/data_23874.bin_tc.bin |

## cuDF SG
```shell
pip install --extra-index-url=https://pypi.nvidia.com cudf-cu12==24.8.*
```


#### Naive evaluation
```shell
make run DATA_FILE=data/data_23874.bin NPROCS=8
nvcc tc_naive.cu -o tc_naive.out -I/usr/lib/x86_64-linux-gnu/openmpi -I/usr/lib/x86_64-linux-gnu/openmpi/include -L/usr/lib/x86_64-linux-gnu/openmpi/lib -lmpi -lm
mpirun -np 8 ./tc_naive.out data/data_23874.bin
Total iterations 58, TC size 481121, generated file data/data_23874.bin_tc.bin
Total time: 7.2097 seconds

| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 23,874 | 8 | 58 | 481,121 |   7.2097 |
```

### Local Docker Run
```shell
docker build -t mnmgjoindocker .
#docker run --rm --entrypoint=bash -it -v $(pwd):/workspace mnmgjoindocker
docker run --rm --entrypoint=bash -it --gpus all -v $(pwd):/opt/mnmgjoin mnmgjoindocker

mnmgjoin@afe1ab5e7adc:/opt/mnmgjoin$ /opt/nvidia/hpc_sdk/Linux_x86_64/24.1/comm_libs/hpcx/bin/mpicxx tc_semi_naive.cu -o tc_semi_naive.out
mnmgjoin@afe1ab5e7adc:/opt/mnmgjoin$ /opt/nvidia/hpc_sdk/Linux_x86_64/24.1/comm_libs/hpcx/bin/mpirun -np 4 ./tc_semi_naive.out data/data_23874.bin 1 1
--------------------------------------------------------------------------
WARNING: Open MPI tried to bind a process but failed.  This is a
warning only; your job will continue, though performance may
be degraded.

  Local host:        afe1ab5e7adc
  Application name:  ./tc_semi_naive.out
  Error message:     failed to bind memory
  Location:          ../../../../../orte/mca/rtc/hwloc/rtc_hwloc.c:447

--------------------------------------------------------------------------
[LOG_CAT_ML] You must specify a valid HCA device by setting:
-x HCOLL_MAIN_IB=<dev_name:port> or -x UCX_NET_DEVICES=<dev_name:port>.
If no device was specified for HCOLL (or the calling library), automatic device detection will be run.
In case of unfounded HCA device please contact your system administrator.
[LOG_CAT_ML] You must specify a valid HCA device by setting:
-x HCOLL_MAIN_IB=<dev_name:port> or -x UCX_NET_DEVICES=<dev_name:port>.
If no device was specified for HCOLL (or the calling library), automatic device detection will be run.
In case of unfounded HCA device please contact your system administrator.
[LOG_CAT_ML] You must specify a valid HCA device by setting:
-x HCOLL_MAIN_IB=<dev_name:port> or -x UCX_NET_DEVICES=<dev_name:port>.
If no device was specified for HCOLL (or the calling library), automatic device detection will be run.
In case of unfounded HCA device please contact your system administrator.
[afe1ab5e7adc:00186] Error: ../../../../../ompi/mca/coll/hcoll/coll_hcoll_module.c:310 - mca_coll_hcoll_comm_query() Hcol library init failed
[afe1ab5e7adc:00185] Error: ../../../../../ompi/mca/coll/hcoll/coll_hcoll_module.c:310 - mca_coll_hcoll_comm_query() Hcol library init failed
[afe1ab5e7adc:00184] Error: ../../../../../ompi/mca/coll/hcoll/coll_hcoll_module.c:310 - mca_coll_hcoll_comm_query() Hcol library init failed
[LOG_CAT_ML] You must specify a valid HCA device by setting:
-x HCOLL_MAIN_IB=<dev_name:port> or -x UCX_NET_DEVICES=<dev_name:port>.
If no device was specified for HCOLL (or the calling library), automatic device detection will be run.
In case of unfounded HCA device please contact your system administrator.
[afe1ab5e7adc:00183] Error: ../../../../../ompi/mca/coll/hcoll/coll_hcoll_module.c:310 - mca_coll_hcoll_comm_query() Hcol library init failed
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 23874 | 4 | 58 | 481121 |   0.7154 |   0.2117 |   0.0389 |   0.0004 |   0.0289 |   0.1017 |   0.1901 |   0.1411 |   0.0027 | data/data_23874.bin_tc.bin |
[afe1ab5e7adc:00179] 3 more processes have sent help message help-orte-odls-default.txt / memory not bound
[afe1ab5e7adc:00179] Set MCA parameter "orte_base_help_aggregate" to 0 to see all help / error messages
mnmgjoin@afe1ab5e7adc:/opt/mnmgjoin$ /opt/nvidia/hpc_sdk/Linux_x86_64/24.1/comm_libs/hpcx/bin/mpirun -np 4 ./tc_semi_naive.out data/data_23874.bin 1 0
--------------------------------------------------------------------------
WARNING: Open MPI tried to bind a process but failed.  This is a
warning only; your job will continue, though performance may
be degraded.

  Local host:        afe1ab5e7adc
  Application name:  ./tc_semi_naive.out
  Error message:     failed to bind memory
  Location:          ../../../../../orte/mca/rtc/hwloc/rtc_hwloc.c:447

--------------------------------------------------------------------------
[LOG_CAT_ML] You must specify a valid HCA device by setting:
-x HCOLL_MAIN_IB=<dev_name:port> or -x UCX_NET_DEVICES=<dev_name:port>.
If no device was specified for HCOLL (or the calling library), automatic device detection will be run.
In case of unfounded HCA device please contact your system administrator.
[LOG_CAT_ML] You must specify a valid HCA device by setting:
-x HCOLL_MAIN_IB=<dev_name:port> or -x UCX_NET_DEVICES=<dev_name:port>.
If no device was specified for HCOLL (or the calling library), automatic device detection will be run.
In case of unfounded HCA device please contact your system administrator.
[LOG_CAT_ML] You must specify a valid HCA device by setting:
-x HCOLL_MAIN_IB=<dev_name:port> or -x UCX_NET_DEVICES=<dev_name:port>.
If no device was specified for HCOLL (or the calling library), automatic device detection will be run.
In case of unfounded HCA device please contact your system administrator.
[afe1ab5e7adc:00231] Error: ../../../../../ompi/mca/coll/hcoll/coll_hcoll_module.c:310 - mca_coll_hcoll_comm_query() Hcol library init failed
[LOG_CAT_ML] You must specify a valid HCA device by setting:
-x HCOLL_MAIN_IB=<dev_name:port> or -x UCX_NET_DEVICES=<dev_name:port>.
If no device was specified for HCOLL (or the calling library), automatic device detection will be run.
In case of unfounded HCA device please contact your system administrator.
[afe1ab5e7adc:00230] Error: ../../../../../ompi/mca/coll/hcoll/coll_hcoll_module.c:310 - mca_coll_hcoll_comm_query() Hcol library init failed
[afe1ab5e7adc:00228] Error: ../../../../../ompi/mca/coll/hcoll/coll_hcoll_module.c:310 - mca_coll_hcoll_comm_query() Hcol library init failed
[afe1ab5e7adc:00229] Error: ../../../../../ompi/mca/coll/hcoll/coll_hcoll_module.c:310 - mca_coll_hcoll_comm_query() Hcol library init failed
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 23874 | 4 | 58 | 481121 |   0.6453 |   0.1964 |   0.0252 |   0.0004 |   0.0297 |   0.0398 |   0.1983 |   0.1530 |   0.0025 | data/data_23874.bin_tc.bin |
[afe1ab5e7adc:00224] 3 more processes have sent help message help-orte-odls-default.txt / memory not bound
[afe1ab5e7adc:00224] Set MCA parameter "orte_base_help_aggregate" to 0 to see all help / error messages

```

### Bin file utility program
```shell
# python3 binary_file_utils.py txt_to_bin data/data_147892.txt data/data_147892.bin
# python3 binary_file_utils.py txt_to_bin data/data_165435.txt data/data_165435.bin
# python3 binary_file_utils.py txt_to_bin data/data_409593.txt data/data_409593.bin
# python3 binary_file_utils.py txt_to_bin data/vsp_finan512_scagr7-2c_rlfddd.mtx data/vsp_finan512_scagr7-2c_rlfddd.bin
# python3 binary_file_utils.py txt_to_bin data/com-dblpungraph.txt data/com-dblpungraph.bin
# python3 binary_file_utils.py txt_to_bin data/data_223001.txt data/data_223001.bin
# python3 binary_file_utils.py txt_to_bin data/data_163734.txt data/data_163734.bin
# python3 binary_file_utils.py txt_to_bin data/data_214078.txt data/data_214078.bin
# python3 binary_file_utils.py txt_to_bin data/data_49152.txt data/data_49152.bin
# python3 binary_file_utils.py txt_to_bin data/data_51971.txt data/data_51971.bin
# python3 binary_file_utils.py txt_to_bin data/data_88234.txt data/data_88234.bin
```

### Run container with privilege root
```
docker run --rm --entrypoint=bash --user root -it --gpus all mnmgjoindocker
apt update
apt install valgrind
/opt/nvidia/hpc_sdk/Linux_x86_64/24.1/comm_libs/hpcx/bin/mpicxx tc_semi_naive.cu -o tc_semi_naive.out
mpirun -np 2 ./tc_semi_naive.out data/data_23874.bin 0
OMPI_ALLOW_RUN_AS_ROOT=1 mpirun --allow-run-as-root -np 2 valgrind ./tc_semi_naive.out data/data_23874.bin 1

# successful run of cam
nvc++ -cuda cam.cu -o cam -I/opt/nvidia/hpc_sdk/Linux_x86_64/24.1/comm_libs/12.3/hpcx/hpcx-2.17.1/ompi -I/opt/nvidia/hpc_sdk/Linux_x86_64/24.1/comm_libs/12.3/hpcx/hpcx-2.17.1/ompi/include -L/opt/nvidia/hpc_sdk/Linux_x86_64/24.1/comm_libs/12.3/hpcx/hpcx-2.17.1/ompi/lib -lmpi
mpirun -np 2 ./cam
--------------------------------------------------------------------------
WARNING: Open MPI tried to bind a process but failed.  This is a
warning only; your job will continue, though performance may
be degraded.

  Local host:        9057ed676ae2
  Application name:  ./cam
  Error message:     failed to bind memory
  Location:          ../../../../../orte/mca/rtc/hwloc/rtc_hwloc.c:447

--------------------------------------------------------------------------
[LOG_CAT_ML] You must specify a valid HCA device by setting:
-x HCOLL_MAIN_IB=<dev_name:port> or -x UCX_NET_DEVICES=<dev_name:port>.
If no device was specified for HCOLL (or the calling library), automatic device detection will be run.
In case of unfounded HCA device please contact your system administrator.
[9057ed676ae2:00089] Error: ../../../../../ompi/mca/coll/hcoll/coll_hcoll_module.c:310 - mca_coll_hcoll_comm_query() Hcol library init failed
[LOG_CAT_ML] You must specify a valid HCA device by setting:
-x HCOLL_MAIN_IB=<dev_name:port> or -x UCX_NET_DEVICES=<dev_name:port>.
If no device was specified for HCOLL (or the calling library), automatic device detection will be run.
In case of unfounded HCA device please contact your system administrator.
[9057ed676ae2:00088] Error: ../../../../../ompi/mca/coll/hcoll/coll_hcoll_module.c:310 - mca_coll_hcoll_comm_query() Hcol library init failed
received: 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 
[9057ed676ae2:00084] 1 more process has sent help message help-orte-odls-default.txt / memory not bound
[9057ed676ae2:00084] Set MCA parameter "orte_base_help_aggregate" to 0 to see all help / error messages
```


### Interactive node run tc
```
ssh arsho@polaris.alcf.anl.gov
qsub -I -l select=1 -l filesystems=home:eagle -l walltime=1:00:00 -q debug -A dist_relational_alg
cd mnmgJOIN
module load craype-accel-nvidia80
export MPICH_GPU_SUPPORT_ENABLED=1

CC tc_semi_naive.cu -o tc_semi_naive_interactive.out
arsho::x3101c0s19b0n0 { ~/mnmgJOIN }-> mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris_semi.sh ./tc_semi_naive_interactive.out data/data_165435.bin 1
“RANK= 0 LOCAL_RANK= 0 gpu= 0”
“RANK= 3 LOCAL_RANK= 3 gpu= 3”
“RANK= 1 LOCAL_RANK= 1 gpu= 1”
“RANK= 2 LOCAL_RANK= 2 gpu= 2”

Generated file data/data_165435.bin_tc.bin
| # Input | # Process | # Iterations | # TC | Time (s) |
| --- | --- | --- | --- | --- |
| 165,435 | 4 | 606 | 871,365,688 |  46.4964 |
```


### Experiment: CUDA Aware MPI
```shell
# Polaris (working with cam)
CC cam.cu -o cam.out
# 2 MPI ranks, 2 ranks per node, 2 depth, 1 thread per rank
mpiexec --np 2 --ppn 2 --depth=2 --cpu-bind depth ./../set_affinity_gpu_polaris_semi.sh ./cam.out
arsho::x3002c0s37b0n0 { ~/mnmgJOIN/rough }-> mpiexec --np 2 --ppn 2 --depth=2 --cpu-bind depth ./../set_affinity_gpu_polaris_semi.sh ./cam.out
“RANK= 0 LOCAL_RANK= 0 gpu= 0”
“RANK= 1 LOCAL_RANK= 1 gpu= 1”
received: 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 

# Polaris (working with cam) without the module load
ssh arsho@polaris.alcf.anl.gov
qsub -I -l select=1 -l filesystems=home:eagle -l walltime=1:00:00 -q debug -A dist_relational_alg
cd rough
export MPICH_GPU_SUPPORT_ENABLED=1
arsho::x3206c0s37b0n0 { ~/mnmgJOIN/rough }-> CC cam.cu -o cam.out /opt/cray/pe/mpich/8.1.28/gtl/lib/libmpi_gtl_cuda.so
cam.cu:
/usr/bin/ld: warning: /var/tmp/pbs.2038492.polaris-pbs-01.hsn.cm.polaris.alcf.anl.gov/pgcudafatUQ5JckieWnySs.o: missing .note.GNU-stack section implies executable stack
/usr/bin/ld: NOTE: This behaviour is deprecated and will be removed in a future version of the linker
# 2 MPI ranks, 2 ranks per node, 2 depth, 1 thread per rank
arsho::x3206c0s37b0n0 { ~/mnmgJOIN/rough }-> mpiexec --np 2 --ppn 2 --depth=2 --cpu-bind depth ./../set_affinity_gpu_polaris_semi.sh ./cam.out
“RANK= 0 LOCAL_RANK= 0 gpu= 0”
“RANK= 1 LOCAL_RANK= 1 gpu= 1”
received: 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 


arsho::x3006c0s25b0n0 { ~ }-> cd mnmgJOIN
arsho::x3006c0s25b0n0 { ~/mnmgJOIN }-> module load craype-accel-nvidia80
arsho::x3006c0s25b0n0 { ~/mnmgJOIN }-> module load valgrind4hpc
arsho::x3006c0s25b0n0 { ~/mnmgJOIN }-> export MPICH_GPU_SUPPORT_ENABLED=1

# Local machine
nvcc cam.cu -o cam -I/usr/lib/x86_64-linux-gnu/openmpi -I/usr/lib/x86_64-linux-gnu/openmpi/include -L/usr/lib/x86_64-linux-gnu/openmpi/lib -lmpi -w -lm
mpirun -np 2 ./cam

find /usr -name mpicc 
export PATH=/opt/nvidia/hpc_sdk/Linux_x86_64/24.1/comm_libs/openmpi/openmpi-3.1.5/bin:$PATH
nvcc cam.cu -o cam -I/opt/nvidia/hpc_sdk/Linux_x86_64/24.1/comm_libs/openmpi/openmpi-3.1.5/ -I/opt/nvidia/hpc_sdk/Linux_x86_64/24.1/comm_libs/openmpi/openmpi-3.1.5/include -L/opt/nvidia/hpc_sdk/Linux_x86_64/24.1/comm_libs/openmpi/openmpi-3.1.5/lib -lmpi
```

### References
- [Polaris User Guides](https://docs.alcf.anl.gov/polaris/getting-started/)
- [Polaris running jobs](https://docs.alcf.anl.gov/polaris/running-jobs/)
- [Polaris CUDA MPI job example](https://github.com/argonne-lcf/GettingStarted/tree/master/Examples/Polaris/affinity_gpu)
- [Stackoverflow answer for all gather vs all to all](https://stackoverflow.com/a/34113431/3129414)
- [Blog on MPI](https://www.codeproject.com/Articles/896437/A-Gentle-Introduction-to-the-Message-Passing-Inter)
- [MPI all to all](https://mpi.deino.net/mpi_functions/MPI_Alltoall.html)
- [Thrust: The C++ Parallel Algorithms Library](https://nvidia.github.io/cccl/thrust/)
- [SO question on CudaFree](https://stackoverflow.com/questions/13100615/cudafree-is-not-freeing-memory)
- [SO question on CudaMemset](https://stackoverflow.com/questions/62055890/does-cudamalloc-initialize-the-array-to-0)
- [NVHPC MPI docs](https://docs.nvidia.com/hpc-sdk//compilers/hpc-compilers-user-guide/index.html#mpi-use)
