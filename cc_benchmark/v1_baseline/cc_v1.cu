// cc_v1.cu  -  Version 1: fused label propagation, host while-loop.
//
// One propagation kernel (atomicMin along every symmetric edge) fused with the
// changed-flag update. The host `while` loop launches the round and copies the
// changed flag back to decide termination.

#include "../common/cc_core.cuh"

const char *CC_VERSION = "baseline";

void cc_build(CCContext &ctx, double *build_seconds) {
    (void)ctx;
    *build_seconds = 0.0;
}

int cc_run_once(CCContext &ctx, double *seconds) {
    cudaEvent_t start, stop;
    cudaEventCreate(&start);
    cudaEventCreate(&stop);
    cudaEventRecord(start, 0);

    int iterations = 0;
    while (true) {
        cc_reset<<<1, 1>>>(ctx.d_changed);
        cc_propagate<<<ctx.grid_size, ctx.block_size>>>(
            ctx.d_edges, ctx.d_n_edges, ctx.d_label, ctx.d_changed);
        int changed = 0;
        checkCuda(cudaMemcpy(&changed, ctx.d_changed, sizeof(int),
                             cudaMemcpyDeviceToHost));
        iterations++;
        if (changed == 0) break;
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

void cc_destroy(CCContext &ctx) { (void)ctx; }

int main(int argc, char **argv) {
    return cc_main(argc, argv);
}
