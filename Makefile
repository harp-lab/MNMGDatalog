TARGET = parallel_join
SRC = $(TARGET).cu
TARGET_MPI = mpi_tc
SRC_MPI = $(TARGET_MPI).cpp
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

buildmpi:
	${MPICC} $(SRC_MPI) -o $(TARGET_MPI).out $(COMPILER_FLAGS)

testmpi:
	${MPIRUN} -np $(NPROCS) ./$(TARGET_MPI).out $(DATA_FILE)

buildpolaris:
	CC $(SRC) -o $(TARGET).out $(COMPILER_FLAGS)

testpolaris:
	mpiexec -n ${NTOTRANKS} --ppn ${NRANKS_PER_NODE} --depth=${NDEPTH} --cpu-bind depth ./set_affinity_gpu_polaris.sh ./$(TARGET).out $(DATA_FILE)


run: build test

runmpi: buildmpi testmpi

runpolaris: buildpolaris testpolaris

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
