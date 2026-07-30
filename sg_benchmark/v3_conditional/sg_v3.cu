// sg_v3.cu  -  Version 3: CUDA graph with a conditional WHILE node.
//
// Same kernels and same fixpoint as v1/v2, but the datalog `while` loop itself
// is expressed as a CUDA graph conditional WHILE node. The entire fixpoint runs
// on the GPU from a single graph launch: no per-iteration control returns to the
// CPU at all.
//
// Requires CUDA 12.4+ (conditional WHILE nodes) and
// cudaStreamBeginCaptureToGraph (CUDA 12.3+).

#include "../common/sg_core.cuh"

const char *SG_VERSION = "conditional";

// Publish the new frontier size, count the iteration, and drive the WHILE
// condition: keep looping while this iteration produced new facts.
__global__ void sg_set_sizes_cond(int *frontier_size, const int *new_count,
                                  unsigned long long *iter_count,
                                  cudaGraphConditionalHandle handle) {
    *frontier_size = *new_count;
    atomicAdd(iter_count, 1ULL);
    cudaGraphSetConditional(handle, (*new_count > 0) ? 1u : 0u);
}

void sg_build(SGContext &ctx, double *build_seconds) {
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
    sg_reset<<<1, 1, 0, capStream>>>(ctx.d_new_count);
    sg_expand<<<ctx.grid_size, ctx.block_size, 0, capStream>>>(
        ctx.d_edge_table, ctx.edge_cap,
        ctx.d_frontier, ctx.d_frontier_size,
        ctx.d_result_set, ctx.result_cap,
        ctx.d_new_frontier, ctx.frontier_cap, ctx.d_new_count,
        ctx.d_result_count, ctx.d_overflow);
    sg_promote<<<ctx.grid_size, ctx.block_size, 0, capStream>>>(
        ctx.d_frontier, ctx.d_new_frontier, ctx.d_new_count);
    sg_set_sizes_cond<<<1, 1, 0, capStream>>>(
        ctx.d_frontier_size, ctx.d_new_count, ctx.d_iter_count, handle);
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

int sg_run_once(SGContext &ctx, double *seconds) {
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

void sg_destroy(SGContext &ctx) {
    if (ctx.exec)   cudaGraphExecDestroy(ctx.exec);
    if (ctx.graph)  cudaGraphDestroy(ctx.graph);
    if (ctx.stream) cudaStreamDestroy(ctx.stream);
}

int main(int argc, char **argv) {
    return sg_main(argc, argv);
}
