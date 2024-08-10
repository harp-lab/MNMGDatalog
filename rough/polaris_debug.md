

This table provides a performance summary of All-to-All communication methods using both sorting and two-pass methods.
The performance is evaluated in terms of the time taken by each method in the same execution on Polaris.

| Dataset            | # Input | # Process | # Iterations | # TC         | Sorting Method Time (s) | Two Pass Method Time (s) |
|--------------------|---------|-----------|--------------|--------------|-------------------------|--------------------------|
| p2p-Gnutella31     | 147,892 | 40        | 31           | 884,179,859  | 3.6863                  | 2.8211                   |
| p2p-Gnutella31     | 147,892 | 32        | 31           | 884,179,859  | 3.4231                  | 3.3650                   |
| p2p-Gnutella31     | 147,892 | 24        | 31           | 884,179,859  | 3.8711                  | 3.5686                   |
| p2p-Gnutella31     | 147,892 | 16        | 31           | 884,179,859  | 4.2495                  | 4.5925                   |
| p2p-Gnutella31     | 147,892 | 8         | 31           | 884,179,859  | 4.9168                  | 5.5405                   |
| usroad             | 165,435 | 40        | 606          | 871,365,688  | 12.2708                 | 12.3503                  |
| usroad             | 165,435 | 32        | 606          | 871,365,688  | 12.3314                 | 11.3393                  |
| usroad             | 165,435 | 24        | 606          | 871,365,688  | 12.7211                 | 13.1363                  |
| usroad             | 165,435 | 16        | 606          | 871,365,688  | 14.2997                 | 13.5109                  |
| usroad             | 165,435 | 8         | 606          | 871,365,688  | 23.0048                 | 23.6570                  |
| fe_ocean           | 409,593 | 40        | 247          | 1,669,750,513| 11.7615                 | 10.3831                  |
| fe_ocean           | 409,593 | 32        | 247          | 1,669,750,513| 10.4713                 | 9.4638                   |
| fe_ocean           | 409,593 | 24        | 247          | 1,669,750,513| 10.8981                 | 11.9389                  |
| fe_ocean           | 409,593 | 16        | 247          | 1,669,750,513| 12.4006                 | 12.0058                  |
| fe_ocean           | 409,593 | 8         | 247          | 1,669,750,513| 20.5007                 | 21.6534                  |
| vsp_finan          | 552,020 | 40        | 520          | 910,070,918  | 10.7563                 | 12.5607                  |
| vsp_finan          | 552,020 | 32        | 520          | 910,070,918  | 13.4290                 | 12.7959                  |
| vsp_finan          | 552,020 | 24        | 520          | 910,070,918  | 21.1224                 | 20.2548                  |
| vsp_finan          | 552,020 | 16        | 520          | 910,070,918  | 19.3254                 | 19.3602                  |
| vsp_finan          | 552,020 | 8         | 520          | 910,070,918  | 29.1141                 | 29.5762                  |
| com-dblp           | 1,049,866| 40       | 31           | 1,911,754,892| 7.0940                  | 6.8107                   |
| com-dblp           | 1,049,866| 32       | 31           | 1,911,754,892| 7.2212                  | 8.3900                   |
| com-dblp           | 1,049,866| 24       | 31           | 1,911,754,892| 7.1020                  | 8.0064                   |
| com-dblp           | 1,049,866| 16       | 31           | 1,911,754,892| 8.5480                  | 9.2024                   |
| com-dblp           | 1,049,866| 8        | 31           | 1,911,754,892| 11.4592                 | 12.9087                  |

### Polaris disk quota error fix
I was getting error like:
```shell
Couldn't write output: Disk quota exceeded
```
#### Solution of disk quota error
- I checked my disk quota:
```shell
myquota

Current quota information for yourself and projects you're a member of:

Name                           Type     Filesystem          Used          Quota           Grace
===============================================================================================
arsho                       User        /home            50.93G*            50G         expired
dist_relational_alg         Project     /lus/grand        929.5G            11T               -
dist_relational_alg         Project     /lus/eagle        929.5G            11T               -
```
- Then, I identified the largest directories:
```shell
arsho::polaris-login-02 { ~ }-> du -h --max-depth=1 | sort -hr
51G	.
11G	./mnmgJOIN
6.7G	./local_join
6.4G	./.conda
6.2G	./.cache
5.8G	./cudf_env
3.2G	./gpujoinenv
```
- Then, I deleted the large unnecessary folders:
```shell
arsho::polaris-login-02 { ~ }-> rm -rf ./local_join
```
- Check disk quota again:
```shell
arsho::polaris-login-02 { ~/mnmgJOIN }-> myquota

Current quota information for yourself and projects you're a member of:

Name                           Type     Filesystem          Used          Quota           Grace
===============================================================================================
arsho                       User        /home             28.66G            50G               -
dist_relational_alg         Project     /lus/grand        929.5G            11T               -
dist_relational_alg         Project     /lus/eagle        929.5G            11T               -

```

- Error:
```shell
/usr/bin/ld: warning: /var/tmp/pbs.2051517.polaris-pbs-01.hsn.cm.polaris.alcf.anl.gov/pgcudafatZViHizvVGyaE4.o: missing .note.GNU-stack section implies executable stack
/usr/bin/ld: NOTE: This behaviour is deprecated and will be removed in a future version of the linker
Couldn't write output: Disk quota exceeded
make: *** [Makefile:55: testpolarissemi] Error 127
/var/spool/pbs/mom_priv/jobs/2051517.polaris-pbs-01.hsn.cm.polaris.alcf.anl.gov.SC: line 75: echo: write error: Disk quota exceeded
Couldn't write output: Disk quota exceeded
```

### Error using GPU displacements and offset buffers in alltoallv
```shell
arsho::x3005c0s31b0n0 { ~/mnmgJOIN }-> mpiexec --np 4 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris_semi.sh ./tc_semi_naive_interactive.out data/data_165435.bin 1
“RANK= 3 LOCAL_RANK= 3 gpu= 3”
“RANK= 2 LOCAL_RANK= 2 gpu= 2”
“RANK= 1 LOCAL_RANK= 1 gpu= 1”
“RANK= 0 LOCAL_RANK= 0 gpu= 0”
x3005c0s31b0n0.hsn.cm.polaris.alcf.anl.gov: rank 3 died from signal 11 and dumped core
arsho::x3005c0s31b0n0 { ~/mnmgJOIN }-> ls
binary_file_utils.py  core.1093718  data      polaris_env.sh           polaris-job-semi.sh  rough        set_affinity_gpu_polaris_semi.sh  tc_naive.cu
common                core.1093719  drawing   polaris-job-semi.error   polaris-job.sh       semi.error   set_affinity_gpu_polaris.sh       tc_semi_naive.cu
core.1093717          core.1093720  Makefile  polaris-job-semi.output  README.md            semi.output  tc_mpi.cpp                        tc_semi_naive_interactive.out
arsho::x3005c0s31b0n0 { ~/mnmgJOIN }-> gdb ./tc_semi_naive_interactive.out core.1093719
GNU gdb (GDB; SUSE Linux Enterprise 15) 12.1
Copyright (C) 2022 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.
Type "show copying" and "show warranty" for details.
This GDB was configured as "x86_64-suse-linux".
Type "show configuration" for configuration details.
For bug reporting instructions, please see:
<http://bugs.opensuse.org/>.
Find the GDB manual and other documentation resources online at:
    <http://www.gnu.org/software/gdb/documentation/>.

For help, type "help".
Type "apropos word" to search for commands related to "word"...
Reading symbols from ./tc_semi_naive_interactive.out...

warning: Can't open file /dev/zero (deleted) during file-backed mapping note processing

warning: Can't open file /SYSV00000000 (deleted) during file-backed mapping note processing

warning: Can't open file /dev/shm/shared_memory.PMI.37a39191-6481-43f9-b0be-2afb99084e14 (deleted) during file-backed mapping note processing

warning: Can't open file /dev/shm/cray-shared-mem-coll-kvs_37a39191-6481-43f9-b0be-2afb99084e14-0-0-36240-0.tmp (deleted) during file-backed mapping note processing

warning: Can't open file /dev/shm/cray-shared-mem-coll-setup-kvs_37a39191-6481-43f9-b0be-2afb99084e14-36240-0.tmp (deleted) during file-backed mapping note processing

warning: Can't open file /run/palsd/37a39191-6481-43f9-b0be-2afb99084e14/apinfo during file-backed mapping note processing

warning: core file may not match specified executable file.
[New LWP 1093719]
[New LWP 1093749]
[New LWP 1093744]

warning: Section `.reg-xstate/1093719' in core file too small.
[Thread debugging using libthread_db enabled]
Using host libthread_db library "/lib64/libthread_db.so.1".
Core was generated by `./tc_semi_naive_interactive.out data/data_165435.bin 1'.
Program terminated with signal SIGSEGV, Segmentation fault.

warning: Section `.reg-xstate/1093719' in core file too small.
#0  0x000014ef22518953 in _cray_mpi_memcpy_rome () from /opt/cray/pe/lib64/libmpi_nvidia.so.12
[Current thread is 1 (Thread 0x14ef1f70e000 (LWP 1093719))]
Missing separate debuginfos, use: zypper install krb5-debuginfo-1.20.1-150500.3.3.1.x86_64 libatomic1-debuginfo-13.2.1+git7813-150000.1.6.1.x86_64 libbrotlicommon1-debuginfo-1.0.7-3.3.1.x86_64 libbrotlidec1-debuginfo-1.0.7-3.3.1.x86_64 libcom_err2-debuginfo-1.46.4-150400.3.3.1.x86_64 libcurl4-debuginfo-8.0.1-150400.5.41.1.x86_64 libgcc_s1-debuginfo-13.2.1+git7813-150000.1.6.1.x86_64 libgfortran5-debuginfo-13.2.1+git7813-150000.1.6.1.x86_64 libidn2-0-debuginfo-2.2.0-3.6.1.x86_64 libjansson4-debuginfo-2.14-150000.3.5.1.x86_64 libjitterentropy3-debuginfo-3.4.0-150000.1.9.1.x86_64 libjson-c3-debuginfo-0.13-3.3.1.x86_64 libkeyutils1-debuginfo-1.6.3-5.6.1.x86_64 libldap-2_4-2-debuginfo-2.4.46-150200.14.17.1.x86_64 libncurses6-debuginfo-6.1-150000.5.20.1.x86_64 libnghttp2-14-debuginfo-1.40.0-150200.12.1.x86_64 libnl3-200-debuginfo-3.3.0-1.29.x86_64 libopenssl1_1-debuginfo-1.1.1l-150500.17.25.1.x86_64 libpcre1-debuginfo-8.45-150000.20.13.1.x86_64 libpsl5-debuginfo-0.20.1-150000.3.3.1.x86_64 libquadmath0-debuginfo-13.2.1+git7813-150000.1.6.1.x86_64 libreadline7-debuginfo-7.0-150400.25.22.x86_64 libsasl2-3-debuginfo-2.1.28-150500.1.1.x86_64 libselinux1-debuginfo-3.1-150400.1.69.x86_64 libssh4-debuginfo-0.9.8-150400.3.6.1.x86_64 libstdc++6-debuginfo-13.2.1+git7813-150000.1.6.1.x86_64 libunistring2-debuginfo-0.9.10-1.1.x86_64 libyaml-0-2-debuginfo-0.1.7-1.17.x86_64 libz1-debuginfo-1.2.13-150500.4.3.1.x86_64 lustre-client-debuginfo-2.15.3.2_cray_16_g97d1e9c-1.x86_64 nvidia-computeG05-debuginfo-535.154.05-0.x86_64
(gdb) bt
#0  0x000014ef22518953 in _cray_mpi_memcpy_rome () from /opt/cray/pe/lib64/libmpi_nvidia.so.12
#1  0x000014ef20a3f75a in MPIR_Localcopy () from /opt/cray/pe/lib64/libmpi_nvidia.so.12
#2  0x000014ef21c0ccd9 in MPIR_Alltoall_intra_pairwise () from /opt/cray/pe/lib64/libmpi_nvidia.so.12
#3  0x000014ef205f7e64 in MPIR_Alltoall_intra_auto.part.0 () from /opt/cray/pe/lib64/libmpi_nvidia.so.12
#4  0x000014ef205f815c in MPIR_Alltoall_impl () from /opt/cray/pe/lib64/libmpi_nvidia.so.12
#5  0x000014ef205f893f in PMPI_Alltoall () from /opt/cray/pe/lib64/libmpi_nvidia.so.12
#6  0x0000000000405a69 in _Z18get_split_relationiP6EntityiiiiiiPi () at tc_semi_naive.cu:67
#7  0x0000000000406374 in main () at tc_semi_naive.cu:189
(gdb) info locals
No symbol table info available.
(gdb) list
109	    *size = total_receive;
110	    Entity *result_data;
111	    checkCuda(cudaMalloc((void **) &result_data, total_receive * sizeof(Entity)));
112	    cudaMemcpy(result_data, receive_data, total_receive * sizeof(Entity), cudaMemcpyDeviceToDevice);
113	    cudaFree(send_count);
114	    cudaFree(receive_count);
115	    cudaFree(send_displacements);
116	    cudaFree(send_displacements_temp);
117	    cudaFree(receive_displacements);
118	    cudaFree(send_data);
```
