TARGET_TC = tc
SRC_TC = $(TARGET_TC).cu
TARGET_SG = sg
SRC_SG = $(TARGET_SG).cu
TARGET_CC = cc
SRC_CC = $(TARGET_CC).cu


COMPILER_FLAGS = -lm -O3
COMPILER_FLAGS_LOCAL = --extended-lambda
MPICC?=mpiCC
MPIRUN?=mpirun
DEBUG_FLAGS = -Og -Wall
NPERNODE=8
NPROCS?=3
LDFLAGSLOCAL = -I/usr/lib/x86_64-linux-gnu/openmpi -I/usr/lib/x86_64-linux-gnu/openmpi/include -L/usr/lib/x86_64-linux-gnu/openmpi/lib -lmpi
MPIGTLFLAG = /opt/cray/pe/mpich/8.1.28/gtl/lib/libmpi_gtl_cuda.so


buildtc:
	nvcc $(SRC_TC) -o $(TARGET_TC).out $(LDFLAGSLOCAL) $(COMPILER_FLAGS) $(COMPILER_FLAGS_LOCAL)

testtc:
	${MPIRUN} -np $(NPROCS) ./$(TARGET_TC).out $(DATA_FILE) $(CUDA_AWARE_MPI) $(METHOD)

buildsg:
	nvcc $(SRC_SG) -o $(TARGET_SG).out $(LDFLAGSLOCAL) $(COMPILER_FLAGS) $(COMPILER_FLAGS_LOCAL)

testsg:
	${MPIRUN} -np $(NPROCS) ./$(TARGET_SG).out $(DATA_FILE) $(CUDA_AWARE_MPI) $(METHOD)

buildcc:
	nvcc $(SRC_CC) -o $(TARGET_CC).out $(LDFLAGSLOCAL) $(COMPILER_FLAGS) $(COMPILER_FLAGS_LOCAL)

testcc:
	${MPIRUN} -np $(NPROCS) ./$(TARGET_CC).out $(DATA_FILE) $(CUDA_AWARE_MPI) $(METHOD)

buildpolaristc:
	CC $(SRC_TC) -o $(TARGET_TC).out $(COMPILER_FLAGS)

testpolaristc:
	MPICH_GPU_SUPPORT_ENABLED=${MPICH_GPU_SUPPORT_ENABLED} mpiexec --np ${NTOTRANKS} --ppn ${NRANKS_PER_NODE} --depth=${NDEPTH} --cpu-bind depth ./set_affinity_gpu_polaris.sh ./$(TARGET_TC).out $(DATA_FILE) $(CUDA_AWARE_MPI) $(METHOD) $(JOB_RUN)

buildpolarissg:
	CC $(SRC_SG) -o $(TARGET_SG).out $(COMPILER_FLAGS)

testpolarissg:
	MPICH_GPU_SUPPORT_ENABLED=${MPICH_GPU_SUPPORT_ENABLED} mpiexec --np ${NTOTRANKS} --ppn ${NRANKS_PER_NODE} --depth=${NDEPTH} --cpu-bind depth ./set_affinity_gpu_polaris.sh ./$(TARGET_SG).out $(DATA_FILE) $(CUDA_AWARE_MPI) $(METHOD) $(JOB_RUN)

buildpolariscc:
	CC $(SRC_CC) -o $(TARGET_CC).out $(COMPILER_FLAGS)

testpolariscc:
	MPICH_GPU_SUPPORT_ENABLED=${MPICH_GPU_SUPPORT_ENABLED} mpiexec --np ${NTOTRANKS} --ppn ${NRANKS_PER_NODE} --depth=${NDEPTH} --cpu-bind depth ./set_affinity_gpu_polaris.sh ./$(TARGET_CC).out $(DATA_FILE) $(CUDA_AWARE_MPI) $(METHOD) $(JOB_RUN)

runpolaristc: buildpolaristc testpolaristc

runpolarissg: buildpolarissg testpolarissg

runpolariscc: buildpolariscc testpolariscc

runtc: buildtc testtc

runsg: buildsg testsg

runcc: buildcc testcc

all: buildtc buildsg buildcc

cleanoutput:
	rm -f data/*_tc.bin*
	rm -f data/*_sg.bin*
	rm -f data/*_cc.bin*

clean: cleanoutput
	rm -f *.out
	rm -f *.cobaltlog
	rm -f data/*_output.bin*
	rm -f data/*_output.txt*
	rm -f data/*_tc.txt*
	rm -f data/*_sg.txt*
	rm -f data/*_cc.txt*
	rm -f data/*_converted.txt*
	rm -f core.*
	rm -f vgcore.*

.PHONY.: build
