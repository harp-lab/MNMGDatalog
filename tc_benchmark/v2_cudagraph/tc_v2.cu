// tc_v2.cu  -  Version 2: CUDA graph (captured iteration, replayed)
//
// Same kernels and same fixpoint as v1, but the per-iteration kernel sequence
// is captured once into a CUDA graph and instantiated. The host loop then just
// relaunches the single instantiated graph each iteration instead of issuing
// four separate kernel launches, cutting per-iteration launch overhead.
//
// This is only valid because the kernels read their sizes from device memory
// (d_frontier_size / d_new_count) rather than taking them as by-value launch
// arguments, so the same graph is correct for every iteration.

#include "../common/tc_core.cuh"

const char *TC_VERSION = "cudagraph";

// Capture one iteration body into a CUDA graph and instantiate it once.
void tc_build(TCContext &ctx, double *build_seconds) {
    cudaEvent_t start, stop;
    cudaEventCreate(&start);
    cudaEventCreate(&stop);
    cudaEventRecord(start, 0);

    checkCuda(cudaStreamCreate(&ctx.stream));
    checkCuda(cudaStreamBeginCapture(ctx.stream, cudaStreamCaptureModeGlobal));
    tc_reset<<<1, 1, 0, ctx.stream>>>(ctx.d_new_count);
    tc_expand<<<ctx.grid_size, ctx.block_size, 0, ctx.stream>>>(
        ctx.d_edge_table, ctx.edge_cap,
        ctx.d_frontier, ctx.d_frontier_size,
        ctx.d_result_set, ctx.result_cap,
        ctx.d_new_frontier, ctx.frontier_cap, ctx.d_new_count,
        ctx.d_result_count, ctx.d_overflow);
    tc_promote<<<ctx.grid_size, ctx.block_size, 0, ctx.stream>>>(
        ctx.d_frontier, ctx.d_new_frontier, ctx.d_new_count);
    tc_set_sizes<<<1, 1, 0, ctx.stream>>>(ctx.d_frontier_size, ctx.d_new_count);
    checkCuda(cudaStreamEndCapture(ctx.stream, &ctx.graph));
    checkCuda(cudaGraphInstantiate(&ctx.exec, ctx.graph, 0));

    cudaEventRecord(stop, 0);
    cudaEventSynchronize(stop);
    float ms = 0.0f;
    cudaEventElapsedTime(&ms, start, stop);
    *build_seconds = ms / 1000.0;
    cudaEventDestroy(start);
    cudaEventDestroy(stop);
}

int tc_run_once(TCContext &ctx, double *seconds) {
    cudaEvent_t start, stop;
    cudaEventCreate(&start);
    cudaEventCreate(&stop);
    cudaEventRecord(start, ctx.stream);

    int iterations = 0;
    int h_new_count = 0;
    while (true) {
        checkCuda(cudaGraphLaunch(ctx.exec, ctx.stream));
        checkCuda(cudaMemcpyAsync(&h_new_count, ctx.d_new_count, sizeof(int),
                                  cudaMemcpyDeviceToHost, ctx.stream));
        checkCuda(cudaStreamSynchronize(ctx.stream));
        iterations++;
        if (h_new_count == 0) break;
    }

    cudaEventRecord(stop, ctx.stream);
    cudaEventSynchronize(stop);
    float ms = 0.0f;
    cudaEventElapsedTime(&ms, start, stop);
    *seconds = ms / 1000.0;
    cudaEventDestroy(start);
    cudaEventDestroy(stop);
    return iterations;
}

void tc_destroy(TCContext &ctx) {
    if (ctx.exec)   cudaGraphExecDestroy(ctx.exec);
    if (ctx.graph)  cudaGraphDestroy(ctx.graph);
    if (ctx.stream) cudaStreamDestroy(ctx.stream);
}

int main(int argc, char **argv) {
    return tc_main(argc, argv);
}
