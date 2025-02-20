#!/bin/sh
#PBS -l select=1:system=polaris
#PBS -l place=scatter
#PBS -l walltime=1:00:00
#PBS -q debug
#PBS -A dist_relational_alg
#PBS -l filesystems=home:grand:eagle
#PBS -o tc-slog-job.output
#PBS -e tc-slog-job.error
#PBS -M shovon.sylhet@gmail.com

cd /eagle/dist_relational_alg/arsho/slog-lang1
#cd ${PBS_O_WORKDIR}

run_benchmark() {
  mpiexec -np 32 ./backend/build/slog ./tc.slogc ./dataset/com-dblp/ out
}

start_time=$(date +"%Y-%m-%d %H:%M:%S")
start_seconds=$(date +%s)
echo "Polaris job started at: $start_time"
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>> JOB STARTED >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

run_benchmark

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