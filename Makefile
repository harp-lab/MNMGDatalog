TARGET = tc_naive
SRC = $(TARGET).cu
TARGET_MPI = tc_mpi
SRC_MPI = $(TARGET_MPI).cpp
TARGET_SEMI = tc_semi_naive
SRC_SEMI = $(TARGET_SEMI).cu
TARGET_SG = sg
SRC_SG = $(TARGET_SG).cu


COMPILER_FLAGS_LOCAL = -lm -O3 --extended-lambda
COMPILER_FLAGS = -lm -O3
MPICC?=mpiCC
MPIRUN?=mpirun
DEBUG_FLAGS = -Og -Wall
NPERNODE=8
NPROCS?=3
LDFLAGSLOCAL = -I/usr/lib/x86_64-linux-gnu/openmpi -I/usr/lib/x86_64-linux-gnu/openmpi/include -L/usr/lib/x86_64-linux-gnu/openmpi/lib -lmpi
MPIGTLFLAG = /opt/cray/pe/mpich/8.1.28/gtl/lib/libmpi_gtl_cuda.so


build:
	nvcc $(SRC) -o $(TARGET).out $(LDFLAGSLOCAL) $(COMPILER_FLAGS)

test:
	${MPIRUN} -np $(NPROCS) ./$(TARGET).out $(DATA_FILE)

buildsemi:
	nvcc $(SRC_SEMI) -o $(TARGET_SEMI).out $(LDFLAGSLOCAL) $(COMPILER_FLAGS_LOCAL)

testsemi:
	${MPIRUN} -np $(NPROCS) ./$(TARGET_SEMI).out $(DATA_FILE) $(CUDA_AWARE_MPI) $(METHOD)

buildsg:
	nvcc $(SRC_SG) -o $(TARGET_SG).out $(LDFLAGSLOCAL) $(COMPILER_FLAGS_LOCAL)

testsg:
	${MPIRUN} -np $(NPROCS) ./$(TARGET_SG).out $(DATA_FILE) $(CUDA_AWARE_MPI) $(METHOD)

buildmpi:
	${MPICC} $(SRC_MPI) -o $(TARGET_MPI).out $(COMPILER_FLAGS)

testmpi:
	${MPIRUN} -np $(NPROCS) ./$(TARGET_MPI).out $(DATA_FILE)

buildpolaris:
	CC $(SRC) -o $(TARGET).out $(COMPILER_FLAGS)

testpolaris:
	mpiexec -n ${NTOTRANKS} --ppn ${NRANKS_PER_NODE} --depth=${NDEPTH} --cpu-bind depth ./set_affinity_gpu_polaris.sh ./$(TARGET).out $(DATA_FILE)

buildpolarissemi:
	CC $(SRC_SEMI) -o $(TARGET_SEMI).out $(COMPILER_FLAGS)

testpolarissemi:
	MPICH_GPU_SUPPORT_ENABLED=${MPICH_GPU_SUPPORT_ENABLED} mpiexec --np ${NTOTRANKS} --ppn ${NRANKS_PER_NODE} --depth=${NDEPTH} --cpu-bind depth ./set_affinity_gpu_polaris.sh ./$(TARGET_SEMI).out $(DATA_FILE) $(CUDA_AWARE_MPI) $(METHOD) $(JOB_RUN)

buildpolarissg:
	CC $(SRC_SG) -o $(TARGET_SG).out $(COMPILER_FLAGS)

testpolarissg:
	MPICH_GPU_SUPPORT_ENABLED=${MPICH_GPU_SUPPORT_ENABLED} mpiexec --np ${NTOTRANKS} --ppn ${NRANKS_PER_NODE} --depth=${NDEPTH} --cpu-bind depth ./set_affinity_gpu_polaris.sh ./$(TARGET_SG).out $(DATA_FILE) $(CUDA_AWARE_MPI) $(METHOD) $(JOB_RUN)

run: build test

runmpi: buildmpi testmpi

runpolaris: buildpolaris testpolaris

runpolarissemi: buildpolarissemi testpolarissemi

runpolarissg: buildpolarissg testpolarissg

runsemi: buildsemi testsemi

runsg: buildsg testsg

cleanoutput:
	rm -f data/*_tc.bin*
	rm -f data/*_sg.bin*

clean: cleanoutput
	rm -f *.out
	rm -f *.cobaltlog
	rm -f data/*_output.bin*
	rm -f data/*_output.txt*
	rm -f data/*_tc.txt*
	rm -f data/*_sg.txt*
	rm -f data/*_converted.txt*
	rm -f core.*
	rm -f vgcore.*

.PHONY.: build
