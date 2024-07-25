#!/bin/sh
#PBS -l select=10:system=polaris
#PBS -l place=scatter
#PBS -l walltime=0:30:00
#PBS -q prod
#PBS -A dist_relational_alg
#PBS -l filesystems=home:grand:eagle
#PBS -o polaris-job-semi.out
#PBS -e polaris-job-semi.error

cd ${PBS_O_WORKDIR}

# MPI example w/ 4 MPI ranks per node spread evenly across cores
NNODES=`wc -l < $PBS_NODEFILE` # Number of total nodes
NRANKS_PER_NODE=4              # Number of MPI ranks to spawn per node
NDEPTH=4                       # Number of hardware threads per rank (i.e. spacing between MPI ranks)
NTHREADS=1                     # Number of software threads per rank to launch (i.e. OMP_NUM_THREADS)

MNMGJOIN_HOME=/home/arsho/local_join

MPICH_GPU_SUPPORT_ENABLED=1

NTOTRANKS=$(( NNODES * NRANKS_PER_NODE ))
echo "NUM_OF_NODES= ${NNODES} TOTAL_NUM_RANKS= ${NTOTRANKS} RANKS_PER_NODE= ${NRANKS_PER_NODE} THREADS_PER_RANK= ${NTHREADS}"
cd MNMGJOIN_HOME
make buildpolarissemi

echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>> TC on p2p-Gnutella31 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
for i in {40..4..-8}; do
    echo ">>>>>>>>>>>>> p2p-Gnutella31 $i MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>"
    MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np $i --ppn $NRANKS_PER_NODE --depth=$NDEPTH --cpu-bind depth ./set_affinity_gpu_polaris_semi.sh ./tc_semi_naive.out data/data_147892.bin 1
done

echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>> TC on usroad >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
for i in {40..4..-8}; do
    echo ">>>>>>>>>>>>> usroad $i MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>"
    MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np $i --ppn $NRANKS_PER_NODE --depth=$NDEPTH --cpu-bind depth ./set_affinity_gpu_polaris_semi.sh ./tc_semi_naive.out data/data_165435.bin 1
done

echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>> TC on fe_ocean >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
for i in {40..4..-8}; do
    echo ">>>>>>>>>>>>> fe_ocean $i MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>"
    MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np $i --ppn $NRANKS_PER_NODE --depth=$NDEPTH --cpu-bind depth ./set_affinity_gpu_polaris_semi.sh ./tc_semi_naive.out data/data_409593.bin 1
done

echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>> TC on vsp_finan >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
for i in {40..4..-8}; do
    echo ">>>>>>>>>>>>> vsp_finan $i MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>"
    MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np $i --ppn $NRANKS_PER_NODE --depth=$NDEPTH --cpu-bind depth ./set_affinity_gpu_polaris_semi.sh ./tc_semi_naive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 1
done

echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>> TC on com-dblp >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
for i in {40..4..-8}; do
    echo ">>>>>>>>>>>>> com-dblp $i MPI ranks, 4 ranks per node, 4 depth, 1 thread per rank >>>>>>>>>>>>"
    MPICH_GPU_SUPPORT_ENABLED=1 mpiexec --np $i --ppn $NRANKS_PER_NODE --depth=$NDEPTH --cpu-bind depth ./set_affinity_gpu_polaris_semi.sh ./tc_semi_naive.out data/com-dblpungraph.bin 1
done