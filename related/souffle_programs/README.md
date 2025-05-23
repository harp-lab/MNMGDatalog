## Dataset Preprocessing from Suitsparse Matrix Collection
- Download matrix market file from [https://sparse.tamu.edu/Gleich/flickr](https://sparse.tamu.edu/Gleich/flickr).
- Though the website is in https the data files are in http format, so downloading will be failed.
- Go to inspect element, and then open the datafile link in a new tab, allow the browser to keep the file.
- Extract the downloaded file.
- Remove the meta data lines and make it tab separated in place using `sed`:
```shell
sed -i -e '1,17d' -e 's/ \+/\t/g' flickr.mtx
# Delete first 4 lines of snap datasets, DO NOT OPEN THE FILES WITH TEXT EDITOR
sed -i -e '1,4d' web-BerkStan.txt
qsub wcc-merged.sh 
2080785.polaris-pbs-01.hsn.cm.polaris.alcf.anl.gov
arsho::polaris-login-02 { ~/mnmgJOIN }-> cat wcc-merged.error
/usr/bin/ld: warning: /var/tmp/pbs.2080785.polaris-pbs-01.hsn.cm.polaris.alcf.anl.gov/pgcudafatQ9CEj_OwpP6J9.o: missing .note.GNU-stack section implies executable stack
/usr/bin/ld: NOTE: This behaviour is deprecated and will be removed in a future version of the linker
=>> PBS: job killed: walltime 3627 exceeded limit 3599
x3005c0s25b1n0.hsn.cm.polaris.alcf.anl.gov: rank 12 died from signal 15
make: *** [Makefile:55: testpolariswcc] Error 143
arsho::polaris-login-02 { ~/mnmgJOIN }-> cat wcc-merged.output
Polaris job started at: 2024-09-03 17:09:34
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> JOB STARTED >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
CC wcc.cu -o wcc.out -lm
TRADITIONAL MPI - SORTING
------------------------------------------------------------------------------------
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> WCC on data/flickr.bin >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
MPICH_GPU_SUPPORT_ENABLED=0 mpiexec --np 40 --ppn 4 --depth=4 --cpu-bind depth ./set_affinity_gpu_polaris.sh ./wcc.out data/flickr.bin 0 1 1

```

## Related Souffle Programs
- Build docker image and run container:
```shell
docker build -t 'souffle-image-mnmgjoin' .
docker run -v $(pwd):/workspace -it --name=souffle-container-mnmgjoin souffle-image-mnmgjoin
cd workspace
```
- Start exited container:
```shell
docker start -i souffle-container-mnmgjoin
cd workspace
```
### Transitive closure (TC)
- Copy `edge.facts` to `data` folder:
```shell
cp data/ol.data data/edge.facts
```
- Run Souffle program where there is an `edge.facts` file in `data` folder:
```shell
root@3541152b3033:/workspace# souffle -D . tc.dl -F./data
path	146120
```
- Create C++ code and run the executable. Set number of threads using `-j` flag, use `-j auto` for system default:
```shell
root@3541152b3033:/workspace# souffle -F./data -D . -o tc_dl tc.dl -j auto
root@3541152b3033:/workspace# time ./tc_dl
path	146120

real	0m0.292s
user	0m5.503s
sys	0m0.016s

souffle -F./data -D . -o tc_dl tc.dl -j 128 
root@3541152b3033:/workspace# time ./tc_dl
path	146120

real	0m0.670s
user	0m10.145s
sys	0m0.466s

root@3541152b3033:/workspace# time ./tc_dl -j 128
path	146120

real	0m0.672s
user	0m10.356s
sys	0m0.430s
root@3541152b3033:/workspace# time ./tc_dl -j 2  
path	146120

real	0m0.129s
user	0m0.242s
sys	0m0.004s
root@3541152b3033:/workspace# time ./tc_dl -j 1
path	146120

real	0m0.113s
user	0m0.108s
sys	0m0.004s

```
### Connected Component
- Copy `edge.facts` to `data` folder:
```shell
cp data/ol.data data/edge.facts
```
- Run Souffle program where there is an `edge.facts` file in `data` folder:
```shell
root@3541152b3033:/workspace# cp data/dummy.facts data/edge.facts 
root@3541152b3033:/workspace# souffle -D . cc.dl -F./data -j auto
unique_component	3
```

## Extra
- Souffle performance using different number of threads:

```shell

g++ tc_dl.cpp -I . -O3 -fopenmp

time ./a.out -j 1
path	884179859

real	9m7.514s
user	9m1.992s
sys	0m5.018s

arsho@thetagpu06:/lus/theta-fs0/projects/dist_relational_alg/shovon/GPUJoin/datalog_related$ time ./a.out -j 32
path	884179859

real	2m2.175s
user	11m32.363s
sys	0m10.700s
arsho@thetagpu06:/lus/theta-fs0/projects/dist_relational_alg/shovon/GPUJoin/datalog_related$ time ./a.out -j 64
path	884179859

real	2m4.879s
user	11m55.119s
sys	0m17.087s
arsho@thetagpu06:/lus/theta-fs0/projects/dist_relational_alg/shovon/GPUJoin/datalog_related$ time ./a.out -j 16
path	884179859

real	1m57.251s
user	9m34.587s
sys	0m7.887s
arsho@thetagpu06:/lus/theta-fs0/projects/dist_relational_alg/shovon/GPUJoin/datalog_related$ time ./a.out -j 128
path	884179859

real	2m12.129s
user	13m40.888s
sys	0m22.758s

```

- Souffle performance using different number of threads for the same graph:

| Dataset | Number of rows | TC size | Iterations | Threads(Souffle) | Souffle(s) | 
| --- | --- | --- |----|------------------| --- |  
| p2p-Gnutella31 | 147,892 | 884,179,859 | 31 | 1                | 547.514 | 
| p2p-Gnutella31 | 147,892 | 884,179,859 | 31 | 2                | 321.823 | 
| p2p-Gnutella31 | 147,892 | 884,179,859 | 31 | 4                | 202.916 | 
| p2p-Gnutella31 | 147,892 | 884,179,859 | 31 | 8                | 143.917 |
| p2p-Gnutella31 | 147,892 | 884,179,859 | 31 | 16               | 117.251 |
| p2p-Gnutella31 | 147,892 | 884,179,859 | 31 | 32               | 122.175 |
| p2p-Gnutella31 | 147,892 | 884,179,859 | 31 | 64               | 124.879 |
| p2p-Gnutella31 | 147,892 | 884,179,859 | 31 | 128              | 132.129 | 


### Running Souffle in ThetaGPU
```shell
arsho@thetalogin4:~> ssh thetagpusn1
qsub -I -n 1 -t 60 -q single-gpu -A dist_relational_alg
# create directory and clone spack from the above section if that is not installed already 
cd ~/spack/bin/
./spack install gcc@11.3.0
./spack module tcl find gcc@11.3.0
gcc-11.3.0-gcc-9.4.0-tqxatvi
module use ~/spack/share/spack/modules/linux-ubuntu20.04-zen2
arsho@thetagpu06:~/spack/bin$ module avail gcc
module load gcc-11.3.0-gcc-9.4.0-tqxatvi
arsho@thetagpu06:~/spack/bin$ g++ --version
g++ (Spack GCC) 11.3.0
cd /lus/theta-fs0/projects/dist_relational_alg/shovon/GPUJoin/datalog_related
arsho@thetagpu06:/lus/theta-fs0/projects/dist_relational_alg/shovon/GPUJoin/datalog_related$ g++ tc_dl.cpp -I .
arsho@thetagpu06:/lus/theta-fs0/projects/dist_relational_alg/shovon/GPUJoin/datalog_related$ time ./a.out
path	80498014

real	3m55.989s
user	3m54.894s
sys	0m1.052s


for default gcc
module unload gcc-11.3.0-gcc-9.4.0-tqxatvi
module load openmpi/openmpi-4.1.4_ucx-1.12.1_gcc-9.4.0
```

### Error
```shell
time ./tc_dl
-bash: ./tc_dl: Permission denied

real	0m0.001s
user	0m0.001s
sys	0m0.000s
arsho@thetagpu06:/lus/theta-fs0/projects/dist_relational_alg/shovon/GPUJoin/datalog_related$ chmod +x tc_dl
arsho@thetagpu06:/lus/theta-fs0/projects/dist_relational_alg/shovon/GPUJoin/datalog_related$ time ./tc_dl
./tc_dl: /usr/lib/x86_64-linux-gnu/libstdc++.so.6: version `GLIBCXX_3.4.29' not found (required by ./tc_dl)
./tc_dl: /usr/lib/x86_64-linux-gnu/libc.so.6: version `GLIBC_2.32' not found (required by ./tc_dl)
./tc_dl: /usr/lib/x86_64-linux-gnu/libc.so.6: version `GLIBC_2.33' not found (required by ./tc_dl)
./tc_dl: /usr/lib/x86_64-linux-gnu/libc.so.6: version `GLIBC_2.34' not found (required by ./tc_dl)

/GPUJoin/datalog_related$ g++ tc_dl.cpp -I . -O3
time ./a.out
path	74619885

real	1m19.381s
user	1m18.715s
sys	0m0.640s

```


### References
- [Install Souffle](https://souffle-lang.github.io/install.html)
- [Run Souffle](https://souffle-lang.github.io/execute)
