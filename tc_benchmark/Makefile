# Transitive Closure (TC) benchmark - four versions.
#
#   v0_reference   : original MNMGDatalog algorithm (thrust sort/unique/
#                    set_difference/merge). Performance REFERENCE.
#   v1_baseline    : hash-set redesign, host while-loop driving the kernels
#   v2_cudagraph   : per-iteration kernel sequence captured into a CUDA graph
#   v3_conditional : whole fixpoint as a CUDA graph conditional WHILE node
#
# v3 requires CUDA 12.4+ (conditional nodes). Set GPU_ARCH for your device,
# e.g. sm_90 (Hopper) or sm_80 (Ampere). Conditional nodes need a recent driver.

NVCC     ?= nvcc
GPU_ARCH ?= native
NVCCFLAGS = -O3 -std=c++17 -arch=$(GPU_ARCH)
# v0 uses Thrust device lambdas/execution policies; --extended-lambda is harmless
# for the others too.
NVCCFLAGS += --extended-lambda

# Datasets used for verification live in the parent MNMGDatalog checkout.
DATA_DIR   ?= ../data
DATA       ?= $(DATA_DIR)/data_10.bin
MULT       ?= 64
# Larger default capacity multiplier for the benchmark's higher-compute datasets
# (result set is sized next_pow2(n_edges * MULT); too small -> fast overflow error).
BENCH_MULT ?= 4096
REPEATS    ?= 10

V0 = v0_reference/tc_v0.out
V1 = v1_baseline/tc_v1.out
V2 = v2_cudagraph/tc_v2.out
V3 = v3_conditional/tc_v3.out

all: $(V0) $(V1) $(V2) $(V3)

$(V0): v0_reference/tc_v0.cu common/tc_core.cuh
	$(NVCC) $(NVCCFLAGS) v0_reference/tc_v0.cu -o $(V0)

$(V1): v1_baseline/tc_v1.cu common/tc_core.cuh
	$(NVCC) $(NVCCFLAGS) v1_baseline/tc_v1.cu -o $(V1)

$(V2): v2_cudagraph/tc_v2.cu common/tc_core.cuh
	$(NVCC) $(NVCCFLAGS) v2_cudagraph/tc_v2.cu -o $(V2)

$(V3): v3_conditional/tc_v3.cu common/tc_core.cuh
	$(NVCC) $(NVCCFLAGS) v3_conditional/tc_v3.cu -o $(V3)

run0: $(V0)
	./$(V0) $(DATA) $(MULT) $(REPEATS)

run1: $(V1)
	./$(V1) $(DATA) $(MULT) $(REPEATS)

run2: $(V2)
	./$(V2) $(DATA) $(MULT) $(REPEATS)

run3: $(V3)
	./$(V3) $(DATA) $(MULT) $(REPEATS)

# Verify all four versions against the README TC sizes on four datasets.
test: all
	@bash tests/verify.sh

# Performance benchmark: 1 warm-up + REPEATS timed runs per version, with
# median/min times and speedups vs the reference. Override datasets:
# `make benchmark DS="a.bin b.bin"`.
benchmark: all
	@bash tests/benchmark.sh $(REPEATS) $(BENCH_MULT) $(DS)

clean:
	rm -f $(V0) $(V1) $(V2) $(V3)

.PHONY: all run0 run1 run2 run3 test benchmark clean
