#!/bin/sh
#PBS -l select=64:system=polaris
#PBS -l place=scatter
#PBS -l walltime=05:59:00
#PBS -q prod
#PBS -A dist_relational_alg
#PBS -l filesystems=home:grand:eagle
#PBS -o wcc-merged-medium.output
#PBS -e wcc-merged-medium.error

cd ${PBS_O_WORKDIR}

# MPI example w/ 4 MPI ranks per node spread evenly across cores
NNODES=`wc -l < $PBS_NODEFILE` # Number of total nodes
NRANKS_PER_NODE=4              # Number of MPI ranks to spawn per node
NDEPTH=4                       # Number of hardware threads per rank (i.e. spacing between MPI ranks)
NTHREADS=1                     # Number of software threads per rank to launch (i.e. OMP_NUM_THREADS)
NTOTRANKS=$(( NNODES * NRANKS_PER_NODE ))


run_single_dataset() {
  local cuda_aware_mpi=$1
  local method=$2
  local data_file=$3
  local mpi_gpu_support_enabled=$4

  echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>> WCC on $data_file >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
  for i in {256..10..-16}; do
    for j in {1..3}; do
      make testpolariswcc MPICH_GPU_SUPPORT_ENABLED=${mpi_gpu_support_enabled} \
        NTOTRANKS=${i} \
        NRANKS_PER_NODE=${NRANKS_PER_NODE} \
        NDEPTH=${NDEPTH} \
        DATA_FILE=${data_file} \
        CUDA_AWARE_MPI=${cuda_aware_mpi} \
        METHOD=${method} \
        JOB_RUN=${JOB_RUN}
    done
  done
}

run_benchmark() {
  local cuda_aware_mpi=$1
  local method=$2
  local mpi_gpu_support_enabled=$3
  run_single_dataset ${CUDA_AWARE_MPI} ${METHOD} "data/large_datasets/as-skitter.bin" ${MPICH_GPU_SUPPORT_ENABLED}
  run_single_dataset ${CUDA_AWARE_MPI} ${METHOD} "data/large_datasets/com-Orkut.bin" ${MPICH_GPU_SUPPORT_ENABLED}
  run_single_dataset ${CUDA_AWARE_MPI} ${METHOD} "data/large_datasets/uk-2002.bin" ${MPICH_GPU_SUPPORT_ENABLED}
  run_single_dataset ${CUDA_AWARE_MPI} ${METHOD} "data/large_datasets/stokes.bin" ${MPICH_GPU_SUPPORT_ENABLED}
  run_single_dataset ${CUDA_AWARE_MPI} ${METHOD} "data/large_datasets/arabic-2005.bin" ${MPICH_GPU_SUPPORT_ENABLED}
  run_single_dataset ${CUDA_AWARE_MPI} ${METHOD} "data/large_datasets/webbase-2001.bin" ${MPICH_GPU_SUPPORT_ENABLED}
  run_single_dataset ${CUDA_AWARE_MPI} ${METHOD} "data/large_datasets/twitter_rv.bin" ${MPICH_GPU_SUPPORT_ENABLED}
#  run_single_dataset ${CUDA_AWARE_MPI} ${METHOD} "data/flickr.bin" ${MPICH_GPU_SUPPORT_ENABLED}
#  run_single_dataset ${CUDA_AWARE_MPI} ${METHOD} "data/as-skitter.bin" ${MPICH_GPU_SUPPORT_ENABLED}
#  run_single_dataset ${CUDA_AWARE_MPI} ${METHOD} "data/web-BerkStan.bin" ${MPICH_GPU_SUPPORT_ENABLED}
#  run_single_dataset ${CUDA_AWARE_MPI} ${METHOD} "data/roadNet-CA.bin" ${MPICH_GPU_SUPPORT_ENABLED}
#  # fe_body
#  run_single_dataset ${CUDA_AWARE_MPI} ${METHOD} "data/data_163734.bin" ${MPICH_GPU_SUPPORT_ENABLED}
#  # usroad
#  run_single_dataset ${CUDA_AWARE_MPI} ${METHOD} "data/data_165435.bin" ${MPICH_GPU_SUPPORT_ENABLED}
#  # fe_ocean
#  run_single_dataset ${CUDA_AWARE_MPI} ${METHOD} "data/data_409593.bin" ${MPICH_GPU_SUPPORT_ENABLED}
#  run_single_dataset ${CUDA_AWARE_MPI} ${METHOD} "data/vsp_finan512_scagr7-2c_rlfddd.bin" ${MPICH_GPU_SUPPORT_ENABLED}
}


start_time=$(date +"%Y-%m-%d %H:%M:%S")
start_seconds=$(date +%s)
echo "Polaris job started at: $start_time"
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>> JOB STARTED >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
#echo "NUM_OF_NODES= ${NNODES} TOTAL_NUM_RANKS= ${NTOTRANKS} RANKS_PER_NODE= ${NRANKS_PER_NODE} THREADS_PER_RANK= ${NTHREADS}"
cd /home/arsho/mnmgJOIN
JOB_RUN=1
CUDA_AWARE_MPI=0
# METHOD 0 = TWO PASS, 1 = SORTING
METHOD=1
MPICH_GPU_SUPPORT_ENABLED=0
make buildpolariswcc
echo "TRADITIONAL MPI - SORTING"
echo "------------------------------------------------------------------------------------"
run_benchmark ${CUDA_AWARE_MPI} ${METHOD} ${MPICH_GPU_SUPPORT_ENABLED}

echo "TRADITIONAL MPI - TWO PASS"
echo "------------------------------------------------------------------------------------"
METHOD=0
run_benchmark ${CUDA_AWARE_MPI} ${METHOD} ${MPICH_GPU_SUPPORT_ENABLED}


echo ""
echo "===================================================================================="
echo ""

module load craype-accel-nvidia80
export MPICH_GPU_SUPPORT_ENABLED=1

MPICH_GPU_SUPPORT_ENABLED=1

CUDA_AWARE_MPI=1
# METHOD 0 = TWO PASS, 1 = SORTING
METHOD=1
make buildpolariswcc
echo "CUDA AWARE MPI - SORTING"
echo "------------------------------------------------------------------------------------"
run_benchmark ${CUDA_AWARE_MPI} ${METHOD} ${MPICH_GPU_SUPPORT_ENABLED}

echo "CUDA AWARE MPI - TWO PASS"
echo "------------------------------------------------------------------------------------"
METHOD=0
run_benchmark ${CUDA_AWARE_MPI} ${METHOD} ${MPICH_GPU_SUPPORT_ENABLED}

end_time=$(date +"%Y-%m-%d %H:%M:%S")
end_seconds=$(date +%s)
echo "Polaris job ended at: $end_time"

# Calculate the duration
duration=$((end_seconds - start_seconds))

# Convert the duration to hours, minutes, and seconds
hours=$((duration / 3600))
minutes=$(((duration % 3600) / 60))
seconds=$((duration % 60))

echo "Total time taken: $hours hour(s), $minutes minute(s), $seconds second(s)"
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>> JOB ENDED >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"