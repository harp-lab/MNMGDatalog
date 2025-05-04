#!/bin/sh
#PBS -l select=1:system=polaris
#PBS -l place=scatter
#PBS -l walltime=0:59:00
#PBS -q debug
#PBS -A dist_relational_alg
#PBS -l filesystems=home:grand:eagle
#PBS -o power-job.output
#PBS -e power-job.error

# Change the directory to work directory, which is the directory you submit the job.
#cd ${PBS_O_WORKDIR}
cd /eagle/dist_relational_alg/arsho/mnmgJOIN

# MPI example w/ 4 MPI ranks per node spread evenly across cores
NRANKS_PER_NODE=4              # Number of MPI ranks to spawn per node
NDEPTH=1                       # Number of hardware threads per rank (i.e. spacing between MPI ranks)
NTHREADS=1                     # Number of software threads per rank to launch (i.e. OMP_NUM_THREADS)

run_single_dataset_tc() {
  local cuda_aware_mpi=$1
  local method=$2
  local data_file=$3
  local mpi_gpu_support_enabled=$4

  echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>> TC on $data_file >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
  CSV_OUT="power_$(hostname)_$DATA_FILE_1_gpu.csv"
  python $CSV_OUT ./tc.out $DATA_FILE 0 1 1
}

run_benchmark() {
  local cuda_aware_mpi=$1
  local method=$2
  local mpi_gpu_support_enabled=$3
  echo "--------------------------------- TC ---------------------------------"
#  run_single_dataset_tc ${CUDA_AWARE_MPI} ${METHOD} "data/com-dblpungraph.bin" ${MPICH_GPU_SUPPORT_ENABLED}
  run_single_dataset_tc ${CUDA_AWARE_MPI} ${METHOD} "data/vsp_finan512_scagr7-2c_rlfddd.bin" ${MPICH_GPU_SUPPORT_ENABLED}
  # usroad
  run_single_dataset_tc ${CUDA_AWARE_MPI} ${METHOD} "data/data_165435.bin" ${MPICH_GPU_SUPPORT_ENABLED}
#  # fe_ocean
#  run_single_dataset_tc ${CUDA_AWARE_MPI} ${METHOD} "data/data_409593.bin" ${MPICH_GPU_SUPPORT_ENABLED}
#  # Gnutella31
#  run_single_dataset_tc ${CUDA_AWARE_MPI} ${METHOD} "data/data_147892.bin" ${MPICH_GPU_SUPPORT_ENABLED}
  # SF.cedge
  run_single_dataset_tc ${CUDA_AWARE_MPI} ${METHOD} "data/data_223001.bin" ${MPICH_GPU_SUPPORT_ENABLED}

}





start_time=$(date +"%Y-%m-%d %H:%M:%S")
start_seconds=$(date +%s)
echo "Polaris job started at: $start_time"
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>> JOB STARTED >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
#echo "NUM_OF_NODES= ${NNODES} TOTAL_NUM_RANKS= ${NTOTRANKS} RANKS_PER_NODE= ${NRANKS_PER_NODE} THREADS_PER_RANK= ${NTHREADS}"
JOB_RUN=1
CUDA_AWARE_MPI=0
# METHOD 0 = TWO PASS, 1 = SORTING
METHOD=1
MPICH_GPU_SUPPORT_ENABLED=0
make buildpolaristc

module use /soft/modulefiles
module load conda; conda activate base
export MPICH_GPU_SUPPORT_ENABLED=0
export CUDA_VISIBLE_DEVICES=0

echo "TRADITIONAL MPI - SORTING POWER ANALYSIS on 1 GPU"
echo "------------------------------------------------------------------------------------"
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