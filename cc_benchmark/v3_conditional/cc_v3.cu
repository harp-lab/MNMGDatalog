// cc_v3.cu  -  Version 3: CUDA graph with a conditional WHILE node.
//
// Same kernels and same fixpoint as v1/v2, but the propagation loop itself is a
// CUDA graph conditional WHILE node: the entire fixpoint runs on the GPU from a
// single launch, with no per-round control return to the CPU.
//
// Requires CUDA 12.4+ (conditional WHILE nodes) and
// cudaStreamBeginCaptureToGraph (CUDA 12.3+).

#include "../common/cc_core.cuh"

const char *CC_VERSION = "conditional";

// Count the round and drive the WHILE condition: keep looping while the last
// round changed at least one label.
__global__ void cc_cond(unsigned long long *iter_count, const int *changed,
                        cudaGraphConditionalHandle handle) {
    atomicAdd(iter_count, 1ULL);
    cudaGraphSetConditional(handle, (*changed != 0) ? 1u : 0u);
}

void cc_build(CCContext &ctx, double *build_seconds) {
    cudaEvent_t start, stop;
    cudaEventCreate(&start);
    cudaEventCreate(&stop);
    cudaEventRecord(start, 0);

    checkCuda(cudaGraphCreate(&ctx.graph, 0));

    cudaGraphConditionalHandle handle;
    checkCuda(cudaGraphConditionalHandleCreate(&handle, ctx.graph, 1, cudaGraphCondAssignDefault));

    cudaGraphNodeParams cParams = {};
    cParams.type = cudaGraphNodeTypeConditional;
    cParams.conditional.handle = handle;
    cParams.conditional.type   = cudaGraphCondTypeWhile;
    cParams.conditional.size   = 1;

    cudaGraphNode_t condNode;
    checkCuda(cudaGraphAddNode(&condNode, ctx.graph, nullptr, 0, &cParams));

    cudaGraph_t body = cParams.conditional.phGraph_out[0];

    cudaStream_t capStream;
    checkCuda(cudaStreamCreate(&capStream));
    checkCuda(cudaStreamBeginCaptureToGraph(capStream, body, nullptr, nullptr, 0,
                                            cudaStreamCaptureModeRelaxed));
    cc_reset<<<1, 1, 0, capStream>>>(ctx.d_changed);
    cc_propagate<<<ctx.grid_size, ctx.block_size, 0, capStream>>>(
        ctx.d_edges, ctx.d_n_edges, ctx.d_label, ctx.d_changed);
    cc_cond<<<1, 1, 0, capStream>>>(ctx.d_iter_count, ctx.d_changed, handle);
    checkCuda(cudaStreamEndCapture(capStream, nullptr));
    checkCuda(cudaStreamDestroy(capStream));

    checkCuda(cudaGraphInstantiate(&ctx.exec, ctx.graph, 0));
    checkCuda(cudaStreamCreate(&ctx.stream));

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

    checkCuda(cudaGraphLaunch(ctx.exec, ctx.stream));

    cudaEventRecord(stop, ctx.stream);
    cudaEventSynchronize(stop);
    float ms = 0.0f;
    cudaEventElapsedTime(&ms, start, stop);
    *seconds = ms / 1000.0;

    unsigned long long h_iter = 0;
    checkCuda(cudaMemcpy(&h_iter, ctx.d_iter_count, sizeof(unsigned long long),
                         cudaMemcpyDeviceToHost));

    cudaEventDestroy(start);
    cudaEventDestroy(stop);
    return (int)h_iter;
}

void cc_destroy(CCContext &ctx) {
    if (ctx.exec)   cudaGraphExecDestroy(ctx.exec);
    if (ctx.graph)  cudaGraphDestroy(ctx.graph);
    if (ctx.stream) cudaStreamDestroy(ctx.stream);
}

int main(int argc, char **argv) {
    return cc_main(argc, argv);
}
