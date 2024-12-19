TARGET_TC = tc
SRC_TC = $(TARGET_TC).cu
TARGET_SG = sg
SRC_SG = $(TARGET_SG).cu
TARGET_CC = wcc
SRC_CC = $(TARGET_CC).cu
TARGET_SINGLE_JOIN = single_join
SRC_SINGLE_JOIN = $(TARGET_SINGLE_JOIN).cu

COMPILER_FLAGS = -lm -O3
#COMPILER_FLAGS = -lm -g -DDEBUG
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

buildwcc:
	nvcc $(SRC_CC) -o $(TARGET_CC).out $(LDFLAGSLOCAL) $(COMPILER_FLAGS) $(COMPILER_FLAGS_LOCAL)

testwcc:
	${MPIRUN} -np $(NPROCS) ./$(TARGET_CC).out $(DATA_FILE) $(CUDA_AWARE_MPI) $(METHOD)

buildsinglejoin:
	nvcc $(SRC_SINGLE_JOIN) -o $(TARGET_SINGLE_JOIN).out $(LDFLAGSLOCAL) $(COMPILER_FLAGS) $(COMPILER_FLAGS_LOCAL)

buildsinglejoinlocal:
	mpicxx $(SRC_SINGLE_JOIN) -DDEBUG -o $(TARGET_SINGLE_JOIN).out $(COMPILER_FLAGS)

testsinglejoin:
	${MPIRUN} -np $(NPROCS) ./$(TARGET_SINGLE_JOIN).out $(DATA_FILE) $(CUDA_AWARE_MPI) $(METHOD) $(RAND_RANGE)

buildpolaristc:
	CC $(SRC_TC) -o $(TARGET_TC).out $(COMPILER_FLAGS)

testpolaristc:
	MPICH_GPU_SUPPORT_ENABLED=${MPICH_GPU_SUPPORT_ENABLED} mpiexec --np ${NTOTRANKS} --ppn ${NRANKS_PER_NODE} --depth=${NDEPTH} --cpu-bind depth ./set_affinity_gpu_polaris.sh ./$(TARGET_TC).out $(DATA_FILE) $(CUDA_AWARE_MPI) $(METHOD) $(JOB_RUN)

buildpolarissg:
	CC $(SRC_SG) -o $(TARGET_SG).out $(COMPILER_FLAGS)

testpolarissg:
	MPICH_GPU_SUPPORT_ENABLED=${MPICH_GPU_SUPPORT_ENABLED} mpiexec --np ${NTOTRANKS} --ppn ${NRANKS_PER_NODE} --depth=${NDEPTH} --cpu-bind depth ./set_affinity_gpu_polaris.sh ./$(TARGET_SG).out $(DATA_FILE) $(CUDA_AWARE_MPI) $(METHOD) $(JOB_RUN)

buildpolariswcc:
	CC $(SRC_CC) -o $(TARGET_CC).out $(COMPILER_FLAGS)

testpolariswcc:
	MPICH_GPU_SUPPORT_ENABLED=${MPICH_GPU_SUPPORT_ENABLED} mpiexec --np ${NTOTRANKS} --ppn ${NRANKS_PER_NODE} --depth=${NDEPTH} --cpu-bind depth ./set_affinity_gpu_polaris.sh ./$(TARGET_CC).out $(DATA_FILE) $(CUDA_AWARE_MPI) $(METHOD) $(JOB_RUN)

buildpolarissinglejoin:
	CC $(SRC_SINGLE_JOIN) -o $(TARGET_SINGLE_JOIN).out $(COMPILER_FLAGS)

testpolarissinglejoin:
	MPICH_GPU_SUPPORT_ENABLED=${MPICH_GPU_SUPPORT_ENABLED} mpiexec --np ${NTOTRANKS} --ppn ${NRANKS_PER_NODE} --depth=${NDEPTH} --cpu-bind depth ./set_affinity_gpu_polaris.sh ./$(TARGET_SINGLE_JOIN).out $(DATA_FILE) $(CUDA_AWARE_MPI) $(METHOD) $(RAND_RANGE)

runpolaristc: buildpolaristc testpolaristc

runpolarissg: buildpolarissg testpolarissg

runpolariswcc: buildpolariswcc testpolariswcc

runpolariswcc: buildpolarissinglejoin testpolarissinglejoin

runtc: buildtc testtc

runsg: buildsg testsg

runwcc: buildwcc testwcc

runsinglejoin: buildsinglejoin testsinglejoin

all: buildtc buildsg buildwcc buildsinglejoin

cleanoutput:
	rm -f data/*_tc.bin*
	rm -f data/*_sg.bin*
	rm -f data/*_cc.bin*
	rm -f data/*_singlejoin.bin*
	rm -f *_singlejoin.bin*

clean: cleanoutput
	rm -f *.out
	rm -f *.cobaltlog
	rm -f data/*_output.bin*
	rm -f data/*_output.txt*
	rm -f data/*_tc.txt*
	rm -f data/*_sg.txt*
	rm -f data/*_cc.txt*
	rm -f data/*_singlejoin.txt*
	rm -f data/*_converted.txt*
	rm -f core.*
	rm -f vgcore.*

.PHONY.: build
