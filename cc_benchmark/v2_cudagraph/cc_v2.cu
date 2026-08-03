// cc_v2.cu  -  Version 2: fused label propagation captured into a replayed CUDA graph.
//
// Same kernels and same fixpoint as v1, but one propagation round is captured
// once into a CUDA graph and replayed each round, removing per-round launch
// overhead. The host still checks the changed flag after each replay.

#include "../common/cc_core.cuh"

const char *CC_VERSION = "cudagraph";

void cc_build(CCContext &ctx, double *build_seconds) {
    cudaEvent_t start, stop;
    cudaEventCreate(&start);
    cudaEventCreate(&stop);
    cudaEventRecord(start, 0);

    checkCuda(cudaStreamCreate(&ctx.stream));
    checkCuda(cudaStreamBeginCapture(ctx.stream, cudaStreamCaptureModeGlobal));
    cc_reset<<<1, 1, 0, ctx.stream>>>(ctx.d_changed);
    cc_propagate<<<ctx.grid_size, ctx.block_size, 0, ctx.stream>>>(
        ctx.d_edges, ctx.d_n_edges, ctx.d_label, ctx.d_changed);
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

int cc_run_once(CCContext &ctx, double *seconds) {
    cudaEvent_t start, stop;
    cudaEventCreate(&start);
    cudaEventCreate(&stop);
    cudaEventRecord(start, ctx.stream);

    int iterations = 0;
    while (true) {
        checkCuda(cudaGraphLaunch(ctx.exec, ctx.stream));
        int changed = 0;
        checkCuda(cudaMemcpyAsync(&changed, ctx.d_changed, sizeof(int),
                                  cudaMemcpyDeviceToHost, ctx.stream));
        checkCuda(cudaStreamSynchronize(ctx.stream));
        iterations++;
        if (changed == 0) break;
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

void cc_destroy(CCContext &ctx) {
    if (ctx.exec)   cudaGraphExecDestroy(ctx.exec);
    if (ctx.graph)  cudaGraphDestroy(ctx.graph);
    if (ctx.stream) cudaStreamDestroy(ctx.stream);
}

int main(int argc, char **argv) {
    return cc_main(argc, argv);
}
