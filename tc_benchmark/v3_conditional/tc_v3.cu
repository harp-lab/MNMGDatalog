// tc_v3.cu  -  Version 3: CUDA graph with a conditional WHILE node
//
// Same kernels and same fixpoint as v1/v2, but the datalog `while` loop itself
// is expressed as a CUDA graph conditional WHILE node. The entire fixpoint runs
// on the GPU from a single graph launch: no per-iteration control returns to
// the CPU at all.
//
// The WHILE body is the same four-kernel iteration as the other versions,
// except the final kernel additionally calls cudaGraphSetConditional() to keep
// the loop running while new facts are still being produced.
//
// Requires CUDA 12.4+ (conditional WHILE nodes) and
// cudaStreamBeginCaptureToGraph (CUDA 12.3+). See:
// https://developer.nvidia.com/blog/dynamic-control-flow-in-cuda-graphs-with-conditional-nodes/

#include "../common/tc_core.cuh"

const char *TC_VERSION = "conditional";

// Publish the new frontier size, count the iteration, and drive the WHILE
// condition: keep looping while this iteration produced new facts.
__global__ void tc_set_sizes_cond(int *frontier_size, const int *new_count,
                                  unsigned long long *iter_count,
                                  cudaGraphConditionalHandle handle) {
    *frontier_size = *new_count;
    atomicAdd(iter_count, 1ULL);
    cudaGraphSetConditional(handle, (*new_count > 0) ? 1u : 0u);
}

int tc_run(TCContext &ctx, double *seconds) {
    cudaGraph_t graph;
    checkCuda(cudaGraphCreate(&graph, 0));

    // Default value 1 makes this a do-while: the body always runs at least once
    // (the base frontier is already seeded), then the handle set inside the body
    // decides whether to continue.
    cudaGraphConditionalHandle handle;
    checkCuda(cudaGraphConditionalHandleCreate(&handle, graph, 1, cudaGraphCondAssignDefault));

    cudaGraphNodeParams cParams = {};
    cParams.type = cudaGraphNodeTypeConditional;
    cParams.conditional.handle = handle;
    cParams.conditional.type   = cudaGraphCondTypeWhile;
    cParams.conditional.size   = 1;

    cudaGraphNode_t condNode;
    checkCuda(cudaGraphAddNode(&condNode, graph, nullptr, 0, &cParams));

    cudaGraph_t body = cParams.conditional.phGraph_out[0];

    // Populate the WHILE body via stream capture into the body graph.
    cudaStream_t capStream;
    checkCuda(cudaStreamCreate(&capStream));
    checkCuda(cudaStreamBeginCaptureToGraph(capStream, body, nullptr, nullptr, 0,
                                            cudaStreamCaptureModeRelaxed));
    tc_reset<<<1, 1, 0, capStream>>>(ctx.d_new_count);
    tc_expand<<<ctx.grid_size, ctx.block_size, 0, capStream>>>(
        ctx.d_edge_table, ctx.edge_cap,
        ctx.d_frontier, ctx.d_frontier_size,
        ctx.d_result_set, ctx.result_cap,
        ctx.d_new_frontier, ctx.d_new_count,
        ctx.d_result_count);
    tc_promote<<<ctx.grid_size, ctx.block_size, 0, capStream>>>(
        ctx.d_frontier, ctx.d_new_frontier, ctx.d_new_count);
    tc_set_sizes_cond<<<1, 1, 0, capStream>>>(
        ctx.d_frontier_size, ctx.d_new_count, ctx.d_iter_count, handle);
    checkCuda(cudaStreamEndCapture(capStream, nullptr));
    checkCuda(cudaStreamDestroy(capStream));

    cudaGraphExec_t exec;
    checkCuda(cudaGraphInstantiate(&exec, graph, 0));

    cudaStream_t stream;
    checkCuda(cudaStreamCreate(&stream));

    cudaEvent_t start, stop;
    cudaEventCreate(&start);
    cudaEventCreate(&stop);
    cudaEventRecord(start, stream);

    // The whole fixpoint runs inside this single launch.
    checkCuda(cudaGraphLaunch(exec, stream));

    cudaEventRecord(stop, stream);
    cudaEventSynchronize(stop);
    float ms = 0.0f;
    cudaEventElapsedTime(&ms, start, stop);
    *seconds = ms / 1000.0;

    unsigned long long h_iter = 0;
    checkCuda(cudaMemcpy(&h_iter, ctx.d_iter_count, sizeof(unsigned long long),
                         cudaMemcpyDeviceToHost));

    cudaEventDestroy(start);
    cudaEventDestroy(stop);
    cudaGraphExecDestroy(exec);
    cudaGraphDestroy(graph);
    cudaStreamDestroy(stream);
    return (int)h_iter;
}

int main(int argc, char **argv) {
    return tc_main(argc, argv);
}
