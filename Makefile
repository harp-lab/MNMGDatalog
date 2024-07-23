TARGET = tc_naive
SRC = $(TARGET).cu
TARGET_MPI = tc_mpi
SRC_MPI = $(TARGET_MPI).cpp
TARGET_GPU_COMM = gpu_comm
SRC_GPU_COMM = $(TARGET_GPU_COMM).cu
TARGET_SEMI = tc_semi_naive
SRC_SEMI = $(TARGET_SEMI).cu

COMPILER_FLAGS = -w -lm
MPICC?=mpiCC
MPIRUN?=mpirun
DEBUG_FLAGS = -Og -Wall
NPERNODE=8
NPROCS?=3
LDFLAGSLOCAL = -I/usr/lib/x86_64-linux-gnu/openmpi -I/usr/lib/x86_64-linux-gnu/openmpi/include -L/usr/lib/x86_64-linux-gnu/openmpi/lib -lmpi

build:
	nvcc $(SRC) -o $(TARGET).out $(LDFLAGSLOCAL) $(COMPILER_FLAGS)

test:
	${MPIRUN} -np $(NPROCS) ./$(TARGET).out $(DATA_FILE)

buildsemi:
	nvcc $(SRC_SEMI) -o $(TARGET_SEMI).out $(LDFLAGSLOCAL) $(COMPILER_FLAGS)

testsemi:
	${MPIRUN} -np $(NPROCS) ./$(TARGET_SEMI).out $(DATA_FILE)

buildmpi:
	${MPICC} $(SRC_MPI) -o $(TARGET_MPI).out $(COMPILER_FLAGS)

testmpi:
	${MPIRUN} -np $(NPROCS) ./$(TARGET_MPI).out $(DATA_FILE)

buildcomm:
	nvcc $(SRC_GPU_COMM) -o $(TARGET_GPU_COMM).out $(LDFLAGSLOCAL) $(COMPILER_FLAGS)

testcomm:
	${MPIRUN} -np $(NPROCS) ./$(TARGET_GPU_COMM).out $(DATA_FILE)

buildpolaris:
	CC $(SRC) -o $(TARGET).out $(COMPILER_FLAGS)

testpolaris:
	mpiexec -n ${NTOTRANKS} --ppn ${NRANKS_PER_NODE} --depth=${NDEPTH} --cpu-bind depth ./set_affinity_gpu_polaris.sh ./$(TARGET).out $(DATA_FILE)


run: build test

runmpi: buildmpi testmpi

runcomm: buildcomm testcomm

runpolaris: buildpolaris testpolaris

runsemi: buildsemi testsemi

clean:
	rm -f $(TARGET).out
	rm -f *.o*
	rm -f *.i*
	rm -f *.out
	rm -f *.output
	rm -f *.error
	rm -f *.cobaltlog
	rm -f data/*_output.bin*
	rm -f data/*_tc.bin*
	rm -f data/*_output.txt*
	rm -f data/*_tc.txt*
	rm -f data/*_converted.txt*

.PHONY.: build
