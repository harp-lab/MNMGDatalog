// tc_v1.cu  -  Version 1: baseline
//
// The datalog fixpoint runs as a plain host `while` loop. Every iteration the
// four kernels are launched directly from the CPU and the CPU reads back the
// new-fact count to decide whether to continue. This is the reference
// implementation; v2 and v3 must produce identical TC sizes.

#include "../common/tc_core.cuh"

const char *TC_VERSION = "baseline";

// No graph to build for the baseline.
void tc_build(TCContext &ctx, double *build_seconds) {
    (void)ctx;
    *build_seconds = 0.0;
}

int tc_run_once(TCContext &ctx, double *seconds) {
    cudaEvent_t start, stop;
    cudaEventCreate(&start);
    cudaEventCreate(&stop);
    cudaEventRecord(start, 0);

    int iterations = 0;
    int h_new_count = 0;
    while (true) {
        tc_reset<<<1, 1>>>(ctx.d_new_count);
        tc_expand<<<ctx.grid_size, ctx.block_size>>>(
            ctx.d_edge_table, ctx.edge_cap,
            ctx.d_frontier, ctx.d_frontier_size,
            ctx.d_result_set, ctx.result_cap,
            ctx.d_new_frontier, ctx.frontier_cap, ctx.d_new_count,
            ctx.d_result_count, ctx.d_overflow);
        tc_promote<<<ctx.grid_size, ctx.block_size>>>(
            ctx.d_frontier, ctx.d_new_frontier, ctx.d_new_count);
        tc_set_sizes<<<1, 1>>>(ctx.d_frontier_size, ctx.d_new_count);

        checkCuda(cudaMemcpy(&h_new_count, ctx.d_new_count, sizeof(int),
                             cudaMemcpyDeviceToHost));
        iterations++;
        if (h_new_count == 0) break;
    }

    cudaEventRecord(stop, 0);
    cudaEventSynchronize(stop);
    float ms = 0.0f;
    cudaEventElapsedTime(&ms, start, stop);
    *seconds = ms / 1000.0;
    cudaEventDestroy(start);
    cudaEventDestroy(stop);
    return iterations;
}

void tc_destroy(TCContext &ctx) { (void)ctx; }

int main(int argc, char **argv) {
    return tc_main(argc, argv);
}
