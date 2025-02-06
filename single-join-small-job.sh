#!/bin/sh
#PBS -l select=10:system=polaris
#PBS -l place=scatter
#PBS -l walltime=2:30:00
#PBS -q prod
#PBS -A dist_relational_alg
#PBS -l filesystems=home:grand:eagle
#PBS -o single-join-small-job.output
#PBS -e single-join-small-job.error
#PBS -M shovon.sylhet@gmail.com

cd /eagle/dist_relational_alg/arsho/mnmgJOIN

#cd ${PBS_O_WORKDIR}

# MPI example w/ 4 MPI ranks per node spread evenly across cores
NNODES=`wc -l < $PBS_NODEFILE` # Number of total nodes
NRANKS_PER_NODE=4              # Number of MPI ranks to spawn per node
NDEPTH=1                       # Number of hardware threads per rank (i.e. spacing between MPI ranks)
NTHREADS=1                     # Number of software threads per rank to launch (i.e. OMP_NUM_THREADS)
NTOTRANKS=$(( NNODES * NRANKS_PER_NODE ))


run_single_dataset_breakdown() {
  local cuda_aware_mpi=$1
  local method=$2
  local data_file=$3
  local mpi_gpu_support_enabled=$4
  local rand_range=$5
  local total_rank=$6
  local n_ranks=$7
  local n_depth=$8

  echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>> SINGLE JOIN on $data_file >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
  make testpolarissinglejoin MPICH_GPU_SUPPORT_ENABLED=${mpi_gpu_support_enabled} \
    NTOTRANKS=${total_rank} \
    NRANKS_PER_NODE=${n_ranks} \
    NDEPTH=${n_depth} \
    DATA_FILE=${data_file} \
    CUDA_AWARE_MPI=${cuda_aware_mpi} \
    METHOD=${method} \
    RAND_RANGE=${rand_range}
}


run_benchmark() {
  local cuda_aware_mpi=$1
  local method=$2
  local mpi_gpu_support_enabled=$3
  n_ranks=4
  n_depth=1
  weak_scaling_dataset=10000000
  rand_range=100000
  total_rank=1
  run_single_dataset_breakdown ${cuda_aware_mpi} ${method} ${weak_scaling_dataset} ${mpi_gpu_support_enabled} ${rand_range} ${total_rank} ${n_ranks} ${n_depth}
  rand_range=200000
  total_rank=2
  run_single_dataset_breakdown ${cuda_aware_mpi} ${method} ${weak_scaling_dataset} ${mpi_gpu_support_enabled} ${rand_range} ${total_rank} ${n_ranks} ${n_depth}
  rand_range=400000
  total_rank=4
  run_single_dataset_breakdown ${cuda_aware_mpi} ${method} ${weak_scaling_dataset} ${mpi_gpu_support_enabled} ${rand_range} ${total_rank} ${n_ranks} ${n_depth}
  rand_range=800000
  total_rank=8
  run_single_dataset_breakdown ${cuda_aware_mpi} ${method} ${weak_scaling_dataset} ${mpi_gpu_support_enabled} ${rand_range} ${total_rank} ${n_ranks} ${n_depth}
  rand_range=1600000
  total_rank=16
  run_single_dataset_breakdown ${cuda_aware_mpi} ${method} ${weak_scaling_dataset} ${mpi_gpu_support_enabled} ${rand_range} ${total_rank} ${n_ranks} ${n_depth}
  rand_range=3200000
  total_rank=32
  run_single_dataset_breakdown ${cuda_aware_mpi} ${method} ${weak_scaling_dataset} ${mpi_gpu_support_enabled} ${rand_range} ${total_rank} ${n_ranks} ${n_depth}

  weak_scaling_dataset=10000000
  rand_range=1000000
  total_rank=1
  run_single_dataset_breakdown ${cuda_aware_mpi} ${method} ${weak_scaling_dataset} ${mpi_gpu_support_enabled} ${rand_range} ${total_rank} ${n_ranks} ${n_depth}
  rand_range=2000000
  total_rank=2
  run_single_dataset_breakdown ${cuda_aware_mpi} ${method} ${weak_scaling_dataset} ${mpi_gpu_support_enabled} ${rand_range} ${total_rank} ${n_ranks} ${n_depth}
  rand_range=4000000
  total_rank=4
  run_single_dataset_breakdown ${cuda_aware_mpi} ${method} ${weak_scaling_dataset} ${mpi_gpu_support_enabled} ${rand_range} ${total_rank} ${n_ranks} ${n_depth}
  rand_range=8000000
  total_rank=8
  run_single_dataset_breakdown ${cuda_aware_mpi} ${method} ${weak_scaling_dataset} ${mpi_gpu_support_enabled} ${rand_range} ${total_rank} ${n_ranks} ${n_depth}
  rand_range=16000000
  total_rank=16
  run_single_dataset_breakdown ${cuda_aware_mpi} ${method} ${weak_scaling_dataset} ${mpi_gpu_support_enabled} ${rand_range} ${total_rank} ${n_ranks} ${n_depth}
  rand_range=32000000
  total_rank=32
  run_single_dataset_breakdown ${cuda_aware_mpi} ${method} ${weak_scaling_dataset} ${mpi_gpu_support_enabled} ${rand_range} ${total_rank} ${n_ranks} ${n_depth}

  weak_scaling_dataset=10000000
  rand_range=500000
  total_rank=1
  run_single_dataset_breakdown ${cuda_aware_mpi} ${method} ${weak_scaling_dataset} ${mpi_gpu_support_enabled} ${rand_range} ${total_rank} ${n_ranks} ${n_depth}
  rand_range=1000000
  total_rank=2
  run_single_dataset_breakdown ${cuda_aware_mpi} ${method} ${weak_scaling_dataset} ${mpi_gpu_support_enabled} ${rand_range} ${total_rank} ${n_ranks} ${n_depth}
  rand_range=2000000
  total_rank=4
  run_single_dataset_breakdown ${cuda_aware_mpi} ${method} ${weak_scaling_dataset} ${mpi_gpu_support_enabled} ${rand_range} ${total_rank} ${n_ranks} ${n_depth}
  rand_range=4000000
  total_rank=8
  run_single_dataset_breakdown ${cuda_aware_mpi} ${method} ${weak_scaling_dataset} ${mpi_gpu_support_enabled} ${rand_range} ${total_rank} ${n_ranks} ${n_depth}
  rand_range=8000000
  total_rank=16
  run_single_dataset_breakdown ${cuda_aware_mpi} ${method} ${weak_scaling_dataset} ${mpi_gpu_support_enabled} ${rand_range} ${total_rank} ${n_ranks} ${n_depth}
  rand_range=16000000
  total_rank=32
  run_single_dataset_breakdown ${cuda_aware_mpi} ${method} ${weak_scaling_dataset} ${mpi_gpu_support_enabled} ${rand_range} ${total_rank} ${n_ranks} ${n_depth}



  strong_scaling_dataset=25000000
  rand_range=600000
  total_rank=1
  run_single_dataset_breakdown ${cuda_aware_mpi} ${method} ${strong_scaling_dataset} ${mpi_gpu_support_enabled} ${rand_range} ${total_rank} ${n_ranks} ${n_depth}
  total_rank=2
  run_single_dataset_breakdown ${cuda_aware_mpi} ${method} ${strong_scaling_dataset} ${mpi_gpu_support_enabled} ${rand_range} ${total_rank} ${n_ranks} ${n_depth}
  total_rank=4
  run_single_dataset_breakdown ${cuda_aware_mpi} ${method} ${strong_scaling_dataset} ${mpi_gpu_support_enabled} ${rand_range} ${total_rank} ${n_ranks} ${n_depth}
  total_rank=8
  run_single_dataset_breakdown ${cuda_aware_mpi} ${method} ${strong_scaling_dataset} ${mpi_gpu_support_enabled} ${rand_range} ${total_rank} ${n_ranks} ${n_depth}
  total_rank=16
  run_single_dataset_breakdown ${cuda_aware_mpi} ${method} ${strong_scaling_dataset} ${mpi_gpu_support_enabled} ${rand_range} ${total_rank} ${n_ranks} ${n_depth}
  total_rank=32
  run_single_dataset_breakdown ${cuda_aware_mpi} ${method} ${strong_scaling_dataset} ${mpi_gpu_support_enabled} ${rand_range} ${total_rank} ${n_ranks} ${n_depth}

  strong_scaling_dataset=10000001
  rand_range=90000
  total_rank=1
  run_single_dataset_breakdown ${cuda_aware_mpi} ${method} ${strong_scaling_dataset} ${mpi_gpu_support_enabled} ${rand_range} ${total_rank} ${n_ranks} ${n_depth}
  total_rank=2
  run_single_dataset_breakdown ${cuda_aware_mpi} ${method} ${strong_scaling_dataset} ${mpi_gpu_support_enabled} ${rand_range} ${total_rank} ${n_ranks} ${n_depth}
  total_rank=4
  run_single_dataset_breakdown ${cuda_aware_mpi} ${method} ${strong_scaling_dataset} ${mpi_gpu_support_enabled} ${rand_range} ${total_rank} ${n_ranks} ${n_depth}
  total_rank=8
  run_single_dataset_breakdown ${cuda_aware_mpi} ${method} ${strong_scaling_dataset} ${mpi_gpu_support_enabled} ${rand_range} ${total_rank} ${n_ranks} ${n_depth}
  total_rank=16
  run_single_dataset_breakdown ${cuda_aware_mpi} ${method} ${strong_scaling_dataset} ${mpi_gpu_support_enabled} ${rand_range} ${total_rank} ${n_ranks} ${n_depth}
  total_rank=32
  run_single_dataset_breakdown ${cuda_aware_mpi} ${method} ${strong_scaling_dataset} ${mpi_gpu_support_enabled} ${rand_range} ${total_rank} ${n_ranks} ${n_depth}


  strong_scaling_dataset=25000000
  rand_range=100000
  total_rank=1
  run_single_dataset_breakdown ${cuda_aware_mpi} ${method} ${strong_scaling_dataset} ${mpi_gpu_support_enabled} ${rand_range} ${total_rank} ${n_ranks} ${n_depth}
  total_rank=2
  run_single_dataset_breakdown ${cuda_aware_mpi} ${method} ${strong_scaling_dataset} ${mpi_gpu_support_enabled} ${rand_range} ${total_rank} ${n_ranks} ${n_depth}
  total_rank=4
  run_single_dataset_breakdown ${cuda_aware_mpi} ${method} ${strong_scaling_dataset} ${mpi_gpu_support_enabled} ${rand_range} ${total_rank} ${n_ranks} ${n_depth}
  total_rank=8
  run_single_dataset_breakdown ${cuda_aware_mpi} ${method} ${strong_scaling_dataset} ${mpi_gpu_support_enabled} ${rand_range} ${total_rank} ${n_ranks} ${n_depth}
  total_rank=16
  run_single_dataset_breakdown ${cuda_aware_mpi} ${method} ${strong_scaling_dataset} ${mpi_gpu_support_enabled} ${rand_range} ${total_rank} ${n_ranks} ${n_depth}
  total_rank=32
  run_single_dataset_breakdown ${cuda_aware_mpi} ${method} ${strong_scaling_dataset} ${mpi_gpu_support_enabled} ${rand_range} ${total_rank} ${n_ranks} ${n_depth}

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
make buildpolarissinglejoin
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
make buildpolarissinglejoin
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