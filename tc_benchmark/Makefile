# Transitive Closure (TC) benchmark - three versions.
#
#   v1_baseline    : host while-loop driving the kernels
#   v2_cudagraph   : per-iteration kernel sequence captured into a CUDA graph
#   v3_conditional : whole fixpoint as a CUDA graph conditional WHILE node
#
# v3 requires CUDA 12.4+ (conditional nodes). Set GPU_ARCH for your device,
# e.g. sm_90 (Hopper) or sm_80 (Ampere). Conditional nodes need a recent driver.

NVCC     ?= nvcc
GPU_ARCH ?= native
NVCCFLAGS = -O3 -std=c++17 -arch=$(GPU_ARCH)

# Datasets used for verification live in the parent MNMGDatalog checkout.
DATA_DIR ?= ../data
DATA     ?= $(DATA_DIR)/data_10.bin
MULT     ?= 64

V1 = v1_baseline/tc_v1.out
V2 = v2_cudagraph/tc_v2.out
V3 = v3_conditional/tc_v3.out

all: $(V1) $(V2) $(V3)

$(V1): v1_baseline/tc_v1.cu common/tc_core.cuh
	$(NVCC) $(NVCCFLAGS) v1_baseline/tc_v1.cu -o $(V1)

$(V2): v2_cudagraph/tc_v2.cu common/tc_core.cuh
	$(NVCC) $(NVCCFLAGS) v2_cudagraph/tc_v2.cu -o $(V2)

$(V3): v3_conditional/tc_v3.cu common/tc_core.cuh
	$(NVCC) $(NVCCFLAGS) v3_conditional/tc_v3.cu -o $(V3)

run1: $(V1)
	./$(V1) $(DATA) $(MULT)

run2: $(V2)
	./$(V2) $(DATA) $(MULT)

run3: $(V3)
	./$(V3) $(DATA) $(MULT)

# Verify all three versions against the README TC sizes on four datasets.
test: all
	@bash tests/verify.sh

clean:
	rm -f $(V1) $(V2) $(V3)

.PHONY: all run1 run2 run3 test clean
