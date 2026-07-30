// sg_v2.cu  -  Version 2: fused operators captured into a replayed CUDA graph.
//
// Same kernels and same fixpoint as v1, but the per-iteration kernel sequence is
// captured once into a CUDA graph and replayed each iteration, removing the
// per-iteration kernel-launch overhead. The host still checks the new-fact count
// after each replay to decide termination (the loop condition stays on the CPU).

#include "../common/sg_core.cuh"

const char *SG_VERSION = "cudagraph";

// Capture one iteration's four-kernel sequence into a graph and instantiate it.
void sg_build(SGContext &ctx, double *build_seconds) {
    cudaEvent_t start, stop;
    cudaEventCreate(&start);
    cudaEventCreate(&stop);
    cudaEventRecord(start, 0);

    checkCuda(cudaStreamCreate(&ctx.stream));
    checkCuda(cudaStreamBeginCapture(ctx.stream, cudaStreamCaptureModeGlobal));
    sg_reset<<<1, 1, 0, ctx.stream>>>(ctx.d_new_count);
    sg_expand<<<ctx.grid_size, ctx.block_size, 0, ctx.stream>>>(
        ctx.d_edge_table, ctx.edge_cap,
        ctx.d_frontier, ctx.d_frontier_size,
        ctx.d_result_set, ctx.result_cap,
        ctx.d_new_frontier, ctx.frontier_cap, ctx.d_new_count,
        ctx.d_result_count, ctx.d_overflow);
    sg_promote<<<ctx.grid_size, ctx.block_size, 0, ctx.stream>>>(
        ctx.d_frontier, ctx.d_new_frontier, ctx.d_new_count);
    sg_set_sizes<<<1, 1, 0, ctx.stream>>>(ctx.d_frontier_size, ctx.d_new_count);
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

int sg_run_once(SGContext &ctx, double *seconds) {
    cudaEvent_t start, stop;
    cudaEventCreate(&start);
    cudaEventCreate(&stop);
    cudaEventRecord(start, ctx.stream);

    int iterations = 0;
    while (true) {
        checkCuda(cudaGraphLaunch(ctx.exec, ctx.stream));
        int new_count = 0;
        checkCuda(cudaMemcpyAsync(&new_count, ctx.d_new_count, sizeof(int),
                                  cudaMemcpyDeviceToHost, ctx.stream));
        checkCuda(cudaStreamSynchronize(ctx.stream));
        iterations++;
        if (new_count == 0) break;
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

void sg_destroy(SGContext &ctx) {
    if (ctx.exec)   cudaGraphExecDestroy(ctx.exec);
    if (ctx.graph)  cudaGraphDestroy(ctx.graph);
    if (ctx.stream) cudaStreamDestroy(ctx.stream);
}

int main(int argc, char **argv) {
    return sg_main(argc, argv);
}
