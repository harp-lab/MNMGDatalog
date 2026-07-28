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

int tc_run(TCContext &ctx, double *seconds) {
    cudaStream_t stream;
    checkCuda(cudaStreamCreate(&stream));

    // Capture one iteration body into a graph.
    cudaGraph_t graph;
    checkCuda(cudaStreamBeginCapture(stream, cudaStreamCaptureModeGlobal));
    tc_reset<<<1, 1, 0, stream>>>(ctx.d_new_count);
    tc_expand<<<ctx.grid_size, ctx.block_size, 0, stream>>>(
        ctx.d_edge_table, ctx.edge_cap,
        ctx.d_frontier, ctx.d_frontier_size,
        ctx.d_result_set, ctx.result_cap,
        ctx.d_new_frontier, ctx.d_new_count,
        ctx.d_result_count);
    tc_promote<<<ctx.grid_size, ctx.block_size, 0, stream>>>(
        ctx.d_frontier, ctx.d_new_frontier, ctx.d_new_count);
    tc_set_sizes<<<1, 1, 0, stream>>>(ctx.d_frontier_size, ctx.d_new_count);
    checkCuda(cudaStreamEndCapture(stream, &graph));

    cudaGraphExec_t exec;
    checkCuda(cudaGraphInstantiate(&exec, graph, 0));

    cudaEvent_t start, stop;
    cudaEventCreate(&start);
    cudaEventCreate(&stop);
    cudaEventRecord(start, stream);

    int iterations = 0;
    int h_new_count = 0;
    while (true) {
        checkCuda(cudaGraphLaunch(exec, stream));
        checkCuda(cudaMemcpyAsync(&h_new_count, ctx.d_new_count, sizeof(int),
                                  cudaMemcpyDeviceToHost, stream));
        checkCuda(cudaStreamSynchronize(stream));
        iterations++;
        if (h_new_count == 0) break;
    }

    cudaEventRecord(stop, stream);
    cudaEventSynchronize(stop);
    float ms = 0.0f;
    cudaEventElapsedTime(&ms, start, stop);
    *seconds = ms / 1000.0;

    cudaEventDestroy(start);
    cudaEventDestroy(stop);
    cudaGraphExecDestroy(exec);
    cudaGraphDestroy(graph);
    cudaStreamDestroy(stream);
    return iterations;
}

int main(int argc, char **argv) {
    return tc_main(argc, argv);
}
