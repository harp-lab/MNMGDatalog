# (Weakly) Connected Components (CC) benchmark - four versions.
#
#   v0_reference   : original MNMGDatalog WCC algorithm (thrust min-label
#                    sort/unique/merge/set_difference). REFERENCE.
#   v1_baseline    : fused atomicMin label-propagation kernel, host while-loop
#   v2_cudagraph   : per-round propagation captured into a CUDA graph
#   v3_conditional : whole fixpoint as a CUDA graph conditional WHILE node
#
# v3 requires CUDA 12.4+ (conditional nodes). Set GPU_ARCH for your device,
# e.g. sm_90 (Hopper) or sm_80 (Ampere).

NVCC     ?= nvcc
GPU_ARCH ?= native
NVCCFLAGS = -O3 -std=c++17 -arch=$(GPU_ARCH)
NVCCFLAGS += --extended-lambda

DATA_DIR   ?= ../data
DATA       ?= $(DATA_DIR)/data_10.bin
MULT       ?= 64
BENCH_MULT ?= 4096
REPEATS    ?= 10

V0 = v0_reference/cc_v0.out
V1 = v1_baseline/cc_v1.out
V2 = v2_cudagraph/cc_v2.out
V3 = v3_conditional/cc_v3.out

all: $(V0) $(V1) $(V2) $(V3)

$(V0): v0_reference/cc_v0.cu common/cc_core.cuh
	$(NVCC) $(NVCCFLAGS) v0_reference/cc_v0.cu -o $(V0)

$(V1): v1_baseline/cc_v1.cu common/cc_core.cuh
	$(NVCC) $(NVCCFLAGS) v1_baseline/cc_v1.cu -o $(V1)

$(V2): v2_cudagraph/cc_v2.cu common/cc_core.cuh
	$(NVCC) $(NVCCFLAGS) v2_cudagraph/cc_v2.cu -o $(V2)

$(V3): v3_conditional/cc_v3.cu common/cc_core.cuh
	$(NVCC) $(NVCCFLAGS) v3_conditional/cc_v3.cu -o $(V3)

run0: $(V0)
	./$(V0) $(DATA) $(MULT) $(REPEATS)
run1: $(V1)
	./$(V1) $(DATA) $(MULT) $(REPEATS)
run2: $(V2)
	./$(V2) $(DATA) $(MULT) $(REPEATS)
run3: $(V3)
	./$(V3) $(DATA) $(MULT) $(REPEATS)

# Verify all four versions produce identical (node,component) sets on datasets.
test: all
	@bash tests/verify.sh

# Performance benchmark. Override datasets: `make benchmark DS="a.bin b.bin"`.
benchmark: all
	@bash tests/benchmark.sh $(REPEATS) $(BENCH_MULT) $(DS)

# Plot the latest results/*.csv (or pass CSV=<path>) into results/charts/.
plot:
	python3 tests/plot_results.py $(CSV)

clean:
	rm -f $(V0) $(V1) $(V2) $(V3)

clean-output:
	rm -f $(DATA_DIR)/*_reference_cc.bin $(DATA_DIR)/*_baseline_cc.bin \
	      $(DATA_DIR)/*_cudagraph_cc.bin $(DATA_DIR)/*_conditional_cc.bin \
	      $(DATA_DIR)/*_cc.bin
	rm -rf results/charts results/*.csv

distclean: clean clean-output

.PHONY: all run0 run1 run2 run3 test benchmark plot clean clean-output distclean
