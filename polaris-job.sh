#!/bin/sh
#PBS -l select=10:system=polaris
#PBS -l place=scatter
#PBS -l walltime=0:30:00
#PBS -q prod
#PBS -A dist_relational_alg
#PBS -l filesystems=home:grand:eagle
#PBS -o polaris-job.out
#PBS -e polaris-job.error

cd ${PBS_O_WORKDIR}

# MPI example w/ 4 MPI ranks per node spread evenly across cores
NNODES=`wc -l < $PBS_NODEFILE` # Number of total nodes
NRANKS_PER_NODE=4              # Number of MPI ranks to spawn per node
NDEPTH=4                       # Number of hardware threads per rank (i.e. spacing between MPI ranks)
NTHREADS=1                     # Number of software threads per rank to launch (i.e. OMP_NUM_THREADS)

NTOTRANKS=$(( NNODES * NRANKS_PER_NODE ))
echo "NUM_OF_NODES= ${NNODES} TOTAL_NUM_RANKS= ${NTOTRANKS} RANKS_PER_NODE= ${NRANKS_PER_NODE} THREADS_PER_RANK= ${NTHREADS}"
cd /home/arsho/local_join
make runpolaris NTOTRANKS=${NTOTRANKS} NRANKS_PER_NODE=${NRANKS_PER_NODE} NDEPTH=${NDEPTH} DATA_FILE=data/data_147892.bin