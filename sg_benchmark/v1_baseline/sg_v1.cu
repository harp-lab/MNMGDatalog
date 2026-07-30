// sg_v1.cu  -  Version 1: fused operators, host while-loop.
//
// The relational-algebra chain (two-hop join, projection, dedup, union, novelty)
// is fused into a single expand kernel backed by an open-addressing hash set.
// The datalog `while` loop runs on the host, launching the kernel sequence each
// iteration and copying the new-fact count back to decide termination.

#include "../common/sg_core.cuh"

const char *SG_VERSION = "baseline";

// No graph to build.
void sg_build(SGContext &ctx, double *build_seconds) {
    (void)ctx;
    *build_seconds = 0.0;
}

int sg_run_once(SGContext &ctx, double *seconds) {
    cudaEvent_t start, stop;
    cudaEventCreate(&start);
    cudaEventCreate(&stop);
    cudaEventRecord(start, 0);

    int iterations = 0;
    while (true) {
        sg_reset<<<1, 1>>>(ctx.d_new_count);
        sg_expand<<<ctx.grid_size, ctx.block_size>>>(
            ctx.d_edge_table, ctx.edge_cap,
            ctx.d_frontier, ctx.d_frontier_size,
            ctx.d_result_set, ctx.result_cap,
            ctx.d_new_frontier, ctx.frontier_cap, ctx.d_new_count,
            ctx.d_result_count, ctx.d_overflow);
        sg_promote<<<ctx.grid_size, ctx.block_size>>>(
            ctx.d_frontier, ctx.d_new_frontier, ctx.d_new_count);
        sg_set_sizes<<<1, 1>>>(ctx.d_frontier_size, ctx.d_new_count);

        int new_count = 0;
        checkCuda(cudaMemcpy(&new_count, ctx.d_new_count, sizeof(int),
                             cudaMemcpyDeviceToHost));
        iterations++;
        if (new_count == 0) break;
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

void sg_destroy(SGContext &ctx) { (void)ctx; }

int main(int argc, char **argv) {
    return sg_main(argc, argv);
}
