// cc_core.cuh
// Shared core for the four (Weakly) Connected Components (CC) benchmark versions.
//
// This is a single-GPU, Datalog-style semi-naive min-label propagation:
//     edge(x, y)  :- edge(y, x).                       (make symmetric / weakly)
//     cc(x, x)    :- edge(x, _).                        (every node seeds itself)
//     cc(y, c)    :- cc(x, c), edge(x, y).              (propagate, keep min c)
//
// The canonical result is one row per node: cc(node, component) where component
// is the MINIMUM node id reachable from `node` in the undirected graph. All four
// versions agree on this exact set of (node, component) pairs and on the number
// of propagation rounds.
//
// Unlike TC/SG the derived fact is NOT an insert-only pair: each node keeps a
// single, monotonically DECREASING label. So the fused versions (v1-v3) use a
// dense label array `label[node]` updated with atomicMin along every (symmetric)
// edge, plus a `changed` flag that drives the fixpoint. This is the standard,
// graph-capturable formulation of the same min-label fixpoint that
// MNMGDatalog/wcc.cu computes with sort/unique(min)/merge.
//
// The ONLY thing that differs between v1/v2/v3 is how the iteration is driven:
//   v1: host `while` loop launching the propagation kernel every round.
//   v2: the round captured into a CUDA graph, replayed each round.
//   v3: the loop itself expressed as a CUDA graph conditional WHILE node.
//
// The `changed` flag lives in device memory so a single instantiated graph is
// reusable across rounds (v2) and self-driving (v3).

#ifndef CC_CORE_CUH
#define CC_CORE_CUH

#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <cstdint>
#include <cmath>
#include <string>
#include <chrono>
#include <sys/stat.h>

// ---------------------------------------------------------------------------
// Wall-clock timing and device-memory helpers.
// ---------------------------------------------------------------------------
inline double cc_now() {
    return std::chrono::duration<double>(
        std::chrono::steady_clock::now().time_since_epoch()).count();
}
inline double cc_mem_used_mb() {
    size_t freeb = 0, totb = 0;
    cudaMemGetInfo(&freeb, &totb);
    return (double)(totb - freeb) / (1024.0 * 1024.0);
}

// ---------------------------------------------------------------------------
// Error handling (mirrors MNMGDatalog/common/error_handler.cu)
// ---------------------------------------------------------------------------
#define checkCuda(ans) { gpuAssert((ans), __FILE__, __LINE__); }
inline void gpuAssert(cudaError_t code, const char *file, int line, bool abort = true) {
    if (code != cudaSuccess) {
        fprintf(stderr, "GPUassert: %s %s %d\n", cudaGetErrorString(code), file, line);
        if (abort) exit(code);
    }
}

// key/value pair (mirrors Entity in MNMGDatalog/common/utils.cu).
struct Entity {
    int key;
    int value;
};

// ---------------------------------------------------------------------------
// Kernels (shared by all four fused versions)
// ---------------------------------------------------------------------------

__global__ void cc_warm_up_kernel() {}

// Compute the maximum node id present in the edge list (to size the label array).
__global__ void cc_max_node(const int *edges, int n_edges, int *max_node) {
    int index = blockIdx.x * blockDim.x + threadIdx.x;
    int stride = blockDim.x * gridDim.x;
    for (int i = index; i < n_edges; i += stride) {
        atomicMax(max_node, edges[i * 2]);
        atomicMax(max_node, edges[i * 2 + 1]);
    }
}

// Initialize every node's label to itself: cc(x,x). num_nodes = max_node + 1.
__global__ void cc_init_labels(int *label, int num_nodes) {
    int index = blockIdx.x * blockDim.x + threadIdx.x;
    int stride = blockDim.x * gridDim.x;
    for (int i = index; i < num_nodes; i += stride) label[i] = i;
}

// Reset the per-round "changed" flag to 0. One thread.
__global__ void cc_reset(int *changed) { *changed = 0; }

// One propagation round over the SYMMETRIC edge list (each undirected edge is
// stored in both directions, so a single directed pass covers both endpoints):
//   for edge (u, v): m = min(label[u], label[v]);
//                    atomicMin(label[u], m); atomicMin(label[v], m).
// If any label decreased, set *changed. This is monotonic (labels only shrink),
// so the fixpoint is reached when a round changes nothing.
//
// The edge count is read from DEVICE memory (`n_edges_ptr`) rather than passed by
// value, so a captured CUDA graph (v2/v3) stays valid after edges are appended in
// the incremental/streaming mode -- the replayed graph simply sees the new count.
__global__ void cc_propagate(const int *edges, const int *n_edges_ptr, int *label,
                             int *changed) {
    int n_edges = *n_edges_ptr;
    int index = blockIdx.x * blockDim.x + threadIdx.x;
    int stride = blockDim.x * gridDim.x;
    for (int i = index; i < n_edges; i += stride) {
        int u = edges[i * 2];
        int v = edges[i * 2 + 1];
        int lu = label[u];
        int lv = label[v];
        if (lu < lv) {
            int old = atomicMin(&label[v], lu);
            if (old > lu) *changed = 1;
        } else if (lv < lu) {
            int old = atomicMin(&label[u], lv);
            if (old > lv) *changed = 1;
        }
    }
}

// Count the iteration and (v3) drive the WHILE condition. One thread.
__global__ void cc_set_iter(unsigned long long *iter_count, const int *changed) {
    atomicAdd(iter_count, 1ULL);
    (void)changed;
}

// Compact all nodes into dense (node, label) pairs for output/verification.
// out gets packed pairs; out_count is the number written (== num_nodes).
__global__ void cc_compact(const int *label, int num_nodes,
                           unsigned long long *out, unsigned long long *out_count) {
    long index = (long)blockIdx.x * blockDim.x + threadIdx.x;
    long stride = (long)blockDim.x * gridDim.x;
    for (long i = index; i < num_nodes; i += stride) {
        unsigned long long w = atomicAdd(out_count, 1ULL);
        out[w] = (((unsigned long long)(unsigned int)i) << 32) | (unsigned int)label[i];
    }
}

// ---------------------------------------------------------------------------
// Context holding all device state + launch configuration
// ---------------------------------------------------------------------------
struct CCContext {
    int block_size = 512;
    int grid_size  = 0;

    int  n_edges   = 0;         // number of SYMMETRIC edges currently live (2x rows)
    long edges_cap = 0;         // allocated capacity of d_edges in SYMMETRIC edges
    int  input_rows = 0;        // original input rows
    int  *d_edges  = nullptr;   // symmetric edge list on device (edges_cap*2 ints)
    int  *d_n_edges = nullptr;  // device copy of n_edges (read by cc_propagate)

    int  num_nodes = 0;
    int  *d_label  = nullptr;   // dense label array (num_nodes ints)

    int  *d_changed    = nullptr;
    unsigned long long *d_iter_count = nullptr; // used by v3

    // Optional CUDA-graph state (v2 / v3).
    cudaStream_t    stream = nullptr;
    cudaGraph_t     graph  = nullptr;
    cudaGraphExec_t exec   = nullptr;

    double t_fileio  = 0.0;
    double t_h2d     = 0.0;
    double t_setup   = 0.0;
    double peak_mem_mb = 0.0;
};

// ---------------------------------------------------------------------------
// Binary edge reader. Format matches MNMGDatalog: raw int32 (src, dst) pairs.
// ---------------------------------------------------------------------------
inline int *cc_read_bin(const char *path, int *n_rows_out) {
    struct stat st{};
    if (stat(path, &st) != 0) {
        fprintf(stderr, "Cannot stat input file %s\n", path);
        exit(EXIT_FAILURE);
    }
    long n = st.st_size / (long)(sizeof(int) * 2);
    int *data = (int *)malloc(n * 2 * sizeof(int));
    FILE *fp = fopen(path, "rb");
    if (!fp) { fprintf(stderr, "Cannot open %s\n", path); exit(EXIT_FAILURE); }
    size_t got = fread(data, sizeof(int), n * 2, fp);
    fclose(fp);
    if (got != (size_t)(n * 2)) {
        fprintf(stderr, "Short read on %s\n", path);
        exit(EXIT_FAILURE);
    }
    *n_rows_out = (int)n;
    return data;
}

inline long cc_next_pow2(long v) {
    long p = 1;
    while (p < v) p <<= 1;
    return p;
}

// ---------------------------------------------------------------------------
// Setup: read edges, build a SYMMETRIC edge list on device, size + init labels.
// (capacity_mult / frontier_slots accepted for CLI symmetry with TC/SG; unused.)
// ---------------------------------------------------------------------------
inline void cc_setup(CCContext &ctx, const char *input_file, long capacity_mult,
                     long frontier_slots) {
    (void)capacity_mult; (void)frontier_slots;
    int number_of_sm = 0, device_id = 0;
    cudaGetDevice(&device_id);
    cudaDeviceGetAttribute(&number_of_sm, cudaDevAttrMultiProcessorCount, device_id);
    ctx.block_size = 512;
    ctx.grid_size  = 32 * number_of_sm;

    // ---- CUDA context warm-up (untimed) ----
    cc_warm_up_kernel<<<1, 1>>>();
    void *warm = nullptr;
    checkCuda(cudaMalloc(&warm, sizeof(int)));
    checkCuda(cudaMemset(warm, 0, sizeof(int)));
    checkCuda(cudaFree(warm));
    checkCuda(cudaDeviceSynchronize());

    // ---- file IO (host read) ----
    double t0 = cc_now();
    int rows = 0;
    int *edges_host = cc_read_bin(input_file, &rows);
    ctx.input_rows = rows;
    ctx.t_fileio = cc_now() - t0;

    // ---- host -> device transfer, building the symmetric edge list ----
    // Each input row (u,v) contributes both (u,v) and (v,u) so a single directed
    // propagation pass yields weakly-connected components (edge(x,y):-edge(y,x)).
    ctx.n_edges = rows * 2;
    t0 = cc_now();
    int *sym = (int *)malloc((size_t)ctx.n_edges * 2 * sizeof(int));
    for (int i = 0; i < rows; i++) {
        int u = edges_host[i * 2], v = edges_host[i * 2 + 1];
        sym[i * 2]                 = u; sym[i * 2 + 1]                 = v;
        sym[(rows + i) * 2]        = v; sym[(rows + i) * 2 + 1]        = u;
    }
    free(edges_host);
    ctx.edges_cap = ctx.n_edges;
    checkCuda(cudaMalloc((void **)&ctx.d_edges, (size_t)ctx.edges_cap * 2 * sizeof(int)));
    checkCuda(cudaMemcpy(ctx.d_edges, sym, (size_t)ctx.n_edges * 2 * sizeof(int),
                         cudaMemcpyHostToDevice));
    checkCuda(cudaMalloc((void **)&ctx.d_n_edges, sizeof(int)));
    checkCuda(cudaMemcpy(ctx.d_n_edges, &ctx.n_edges, sizeof(int), cudaMemcpyHostToDevice));
    checkCuda(cudaDeviceSynchronize());
    free(sym);
    ctx.t_h2d = cc_now() - t0;

    // ---- setup (find max node id, allocate + init labels, changed/iter) ----
    t0 = cc_now();
    int *d_max = nullptr;
    checkCuda(cudaMalloc((void **)&d_max, sizeof(int)));
    checkCuda(cudaMemset(d_max, 0, sizeof(int)));
    cc_max_node<<<ctx.grid_size, ctx.block_size>>>(ctx.d_edges, ctx.n_edges, d_max);
    checkCuda(cudaDeviceSynchronize());
    int max_node = 0;
    checkCuda(cudaMemcpy(&max_node, d_max, sizeof(int), cudaMemcpyDeviceToHost));
    cudaFree(d_max);
    ctx.num_nodes = max_node + 1;

    checkCuda(cudaMalloc((void **)&ctx.d_label, (size_t)ctx.num_nodes * sizeof(int)));
    checkCuda(cudaMalloc((void **)&ctx.d_changed, sizeof(int)));
    checkCuda(cudaMalloc((void **)&ctx.d_iter_count, sizeof(unsigned long long)));
    cc_init_labels<<<ctx.grid_size, ctx.block_size>>>(ctx.d_label, ctx.num_nodes);
    checkCuda(cudaMemset(ctx.d_changed, 0, sizeof(int)));
    checkCuda(cudaMemset(ctx.d_iter_count, 0, sizeof(unsigned long long)));
    checkCuda(cudaDeviceSynchronize());
    ctx.t_setup = cc_now() - t0;
}

// Reset labels + counters before every (warm-up and timed) repeat.
inline void cc_reset_state(CCContext &ctx) {
    cc_init_labels<<<ctx.grid_size, ctx.block_size>>>(ctx.d_label, ctx.num_nodes);
    checkCuda(cudaMemset(ctx.d_changed, 0, sizeof(int)));
    checkCuda(cudaMemset(ctx.d_iter_count, 0, sizeof(unsigned long long)));
    checkCuda(cudaDeviceSynchronize());
}

inline void cc_teardown(CCContext &ctx) {
    cudaFree(ctx.d_edges);
    cudaFree(ctx.d_n_edges);
    cudaFree(ctx.d_label);
    cudaFree(ctx.d_changed);
    cudaFree(ctx.d_iter_count);
}

// Each version's .cu defines its display name.
extern const char *CC_VERSION;

// Write the (node, component) result to a binary file of int32 pairs.
inline long long cc_write_output_from_host(const unsigned long long *host, long long n,
                                           const char *input_file) {
    char path[4096];
    snprintf(path, sizeof(path), "%s_%s_cc.bin", input_file, CC_VERSION);
    FILE *f = fopen(path, "wb");
    if (!f) { fprintf(stderr, "Cannot open output file %s\n", path); return -1; }
    for (long long i = 0; i < n; i++) {
        unsigned long long s = host[i];
        int pair[2] = { (int)(s >> 32), (int)(s & 0xffffffffULL) };  // (node,comp)
        fwrite(pair, sizeof(int), 2, f);
    }
    fclose(f);
    printf("# wrote %lld tuples to %s\n", n, path);
    return n;
}

inline void cc_dump_from_host(const unsigned long long *host, long long n,
                              const char *path) {
    FILE *f = fopen(path, "w");
    if (!f) { fprintf(stderr, "Cannot open dump file %s\n", path); return; }
    for (long long i = 0; i < n; i++) {
        unsigned long long s = host[i];
        fprintf(f, "%d %d\n", (int)(s >> 32), (int)(s & 0xffffffffULL));
    }
    fclose(f);
}

// ---------------------------------------------------------------------------
// Version hooks (defined per version .cu).
//   cc_build     : build/instantiate any CUDA graph (v2/v3); no-op for v1.
//   cc_run_once  : run the propagation fixpoint once (labels already reset),
//                  return #rounds, set *run_seconds to the fixpoint time.
//   cc_destroy   : release any graph resources.
// ---------------------------------------------------------------------------
void cc_build(CCContext &ctx, double *build_seconds);
int  cc_run_once(CCContext &ctx, double *run_seconds);
void cc_destroy(CCContext &ctx);

inline double cc_median(double *v, int n) {
    for (int i = 0; i < n; i++)
        for (int j = i + 1; j < n; j++)
            if (v[j] < v[i]) { double t = v[i]; v[i] = v[j]; v[j] = t; }
    if (n == 0) return 0.0;
    return (n & 1) ? v[n / 2] : 0.5 * (v[n / 2 - 1] + v[n / 2]);
}

// ---------------------------------------------------------------------------
// Shared CSV output. Same 15-column schema as TC/SG (field 3 = Iterations,
// field 4 = result size = num_nodes) so scripts/plotter are identical.
// TotalTime = FileIO + H2D + Setup + Build + Compute(median) + D2H. Compute
// includes the one-shot label compaction; D2H is purely the device->host copy.
// ---------------------------------------------------------------------------
#define CC_ROW_SENTINEL "__CCROW__"
inline void cc_print_header() {
    printf("# %s,Version,Input,Iterations,CC,TotalTime,FileIO,H2D,Setup,"
           "Build,Compute,ComputeMin,D2H,PeakMemMB,Repeats,Data\n", CC_ROW_SENTINEL);
}
inline void cc_print_row(const char *version, int input, int iterations,
                         unsigned long long cc, double fileio, double h2d,
                         double setup, double build, double compute,
                         double compute_min, double d2h, double peak_mem_mb,
                         int repeats, const char *data) {
    double total = fileio + h2d + setup + build + compute + d2h;
    printf("%s,%s,%d,%d,%llu,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.2lf,%d,%s\n",
           CC_ROW_SENTINEL, version, input, iterations, cc, total, fileio, h2d, setup,
           build, compute, compute_min, d2h, peak_mem_mb, repeats, data);
    fflush(stdout);
    const char *csv = getenv("CC_CSV");
    if (csv && csv[0]) {
        FILE *cf = fopen(csv, "w");
        if (cf) {
            fprintf(cf, "%s,%d,%d,%llu,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.2lf,%d,%s\n",
                    version, input, iterations, cc, total, fileio, h2d, setup,
                    build, compute, compute_min, d2h, peak_mem_mb, repeats, data);
            fclose(cf);
        }
    }
}

// ---------------------------------------------------------------------------
// Incremental / streaming mode: maintain WCC under batches of edge insertions.
//
// WCC is monotone under edge insertions -- adding an edge can only *lower* labels.
// So after a batch of new edges arrives we keep the RESIDENT label array and run
// the same propagation fixpoint again: starting from the previous (now stale but
// >= true) labeling, monotone atomicMin reconverges to the correct new labeling,
// typically in far fewer rounds than a from-scratch recompute. The min-label
// fixpoint is unique, so the maintained labeling equals the recomputed one (we
// verify this every batch). This is the streaming/online-graph case: efficient
// processing of edge insertions on a GPU-resident data structure.
//
// The experiment splits an input graph in-driver: the first (1-f) rows are the
// base graph G; the last f rows are the insertion stream, applied in one or more
// batches. Per batch we time INCREMENTAL maintenance (reuse resident labels) vs.
// full RECOMPUTE (re-init labels), on the identical cumulative graph and kernels,
// so the only difference is incrementality. (Deletions are non-monotone and out
// of scope; incremental TC/SG are future work.)
// ---------------------------------------------------------------------------

// Append n_rows raw (u,v) rows as 2*n_rows symmetric edges into the pre-allocated
// d_edges buffer, bump n_edges, and publish the new count to device memory so the
// (possibly captured) propagation graph sees it.
inline void cc_append_edges(CCContext &ctx, const int *rows_host, int n_rows) {
    if (n_rows <= 0) return;
    long add = (long)n_rows * 2;                 // symmetric edges added
    if ((long)ctx.n_edges + add > ctx.edges_cap) {
        fprintf(stderr, "cc_append_edges: capacity exceeded (%ld > %ld)\n",
                (long)ctx.n_edges + add, ctx.edges_cap);
        exit(2);
    }
    int *sym = (int *)malloc((size_t)add * 2 * sizeof(int));
    for (int i = 0; i < n_rows; i++) {
        int u = rows_host[i * 2], v = rows_host[i * 2 + 1];
        sym[i * 2] = u;             sym[i * 2 + 1] = v;
        sym[(n_rows + i) * 2] = v;  sym[(n_rows + i) * 2 + 1] = u;
    }
    checkCuda(cudaMemcpy(ctx.d_edges + (size_t)ctx.n_edges * 2, sym,
                         (size_t)add * 2 * sizeof(int), cudaMemcpyHostToDevice));
    free(sym);
    ctx.n_edges += (int)add;
    checkCuda(cudaMemcpy(ctx.d_n_edges, &ctx.n_edges, sizeof(int), cudaMemcpyHostToDevice));
    checkCuda(cudaDeviceSynchronize());
}

// Reset per-run counters (changed flag + v3 iteration counter) WITHOUT touching
// labels -- used to time an incremental maintain from resident labels.
inline void cc_pre_run(CCContext &ctx) {
    checkCuda(cudaMemset(ctx.d_changed, 0, sizeof(int)));
    checkCuda(cudaMemset(ctx.d_iter_count, 0, sizeof(unsigned long long)));
    checkCuda(cudaDeviceSynchronize());
}

inline void cc_labels_to_host(CCContext &ctx, int *host) {
    checkCuda(cudaMemcpy(host, ctx.d_label, (size_t)ctx.num_nodes * sizeof(int),
                         cudaMemcpyDeviceToHost));
}

inline int cc_incremental_main(int argc, char **argv) {
    const char *input_file = (argc >= 2) ? argv[1] : "../data/data_10.bin";
    int repeats = (argc >= 4) ? atoi(argv[3]) : 3;
    if (repeats < 1) repeats = 1;
    double frac = getenv("CC_DELTA_FRAC") ? atof(getenv("CC_DELTA_FRAC")) : 0.05;
    if (frac <= 0.0 || frac >= 1.0) frac = 0.05;
    int batches = getenv("CC_DELTA_BATCHES") ? atoi(getenv("CC_DELTA_BATCHES")) : 1;
    if (batches < 1) batches = 1;

    int sm = 0, dev = 0;
    cudaGetDevice(&dev);
    cudaDeviceGetAttribute(&sm, cudaDevAttrMultiProcessorCount, dev);
    CCContext ctx;
    ctx.block_size = 512; ctx.grid_size = 32 * sm;
    cc_warm_up_kernel<<<1, 1>>>();
    checkCuda(cudaDeviceSynchronize());

    int rows_full = 0;
    int *edges_host = cc_read_bin(input_file, &rows_full);
    ctx.input_rows = rows_full;

    long delta_total = (long)(frac * rows_full);
    if (delta_total < batches) delta_total = batches;
    if (delta_total >= rows_full) delta_total = rows_full / 2;
    long base_rows = rows_full - delta_total;
    long per_batch = delta_total / batches;
    if (per_batch < 1) per_batch = 1;

    int max_node = 0;
    for (long i = 0; i < (long)rows_full * 2; i++)
        if (edges_host[i] > max_node) max_node = edges_host[i];
    ctx.num_nodes = max_node + 1;

    // Allocate d_edges at full symmetric capacity, then load only the base graph.
    ctx.edges_cap = (long)rows_full * 2;
    checkCuda(cudaMalloc((void **)&ctx.d_edges, (size_t)ctx.edges_cap * 2 * sizeof(int)));
    checkCuda(cudaMalloc((void **)&ctx.d_n_edges, sizeof(int)));
    checkCuda(cudaMalloc((void **)&ctx.d_label, (size_t)ctx.num_nodes * sizeof(int)));
    checkCuda(cudaMalloc((void **)&ctx.d_changed, sizeof(int)));
    checkCuda(cudaMalloc((void **)&ctx.d_iter_count, sizeof(unsigned long long)));
    ctx.n_edges = 0;
    checkCuda(cudaMemcpy(ctx.d_n_edges, &ctx.n_edges, sizeof(int), cudaMemcpyHostToDevice));
    cc_append_edges(ctx, edges_host, (int)base_rows);

    // Build any CUDA graph once; pointers are stable and n_edges is read from
    // device, so the captured graph stays valid as batches are appended.
    double build_seconds = 0.0;
    cc_build(ctx, &build_seconds);
    ctx.peak_mem_mb = cc_mem_used_mb();

    // Base WCC = resident starting state.
    cc_init_labels<<<ctx.grid_size, ctx.block_size>>>(ctx.d_label, ctx.num_nodes);
    cc_pre_run(ctx);
    double t_base = 0.0;
    int base_rounds = cc_run_once(ctx, &t_base);

    int *d_snap = nullptr;
    checkCuda(cudaMalloc((void **)&d_snap, (size_t)ctx.num_nodes * sizeof(int)));
    int *host_inc = (int *)malloc((size_t)ctx.num_nodes * sizeof(int));
    int *host_rec = (int *)malloc((size_t)ctx.num_nodes * sizeof(int));

    const char *inccsv = getenv("CC_INC_CSV");
    const char *name = getenv("CC_NAME"); if (!name) name = "?";

    printf("# incremental WCC: %s base_rows=%ld delta_total=%ld batches=%d num_nodes=%d\n",
           input_file, base_rows, delta_total, batches, ctx.num_nodes);
    printf("# base WCC: rounds=%d time=%.3f ms\n", base_rounds, t_base * 1000.0);

    long cum_rows = base_rows, off = base_rows;
    for (int b = 1; b <= batches; b++) {
        long this_rows = (b == batches) ? (base_rows + delta_total - off) : per_batch;
        if (this_rows <= 0) break;

        // Snapshot the current correct labeling (post batch b-1 / base) = pre-state.
        checkCuda(cudaMemcpy(d_snap, ctx.d_label, (size_t)ctx.num_nodes * sizeof(int),
                             cudaMemcpyDeviceToDevice));
        // Append this batch's edges (permanent).
        cc_append_edges(ctx, edges_host + off * 2, (int)this_rows);
        cum_rows += this_rows; off += this_rows;

        // INCREMENTAL maintain: restore pre-state labels, reconverge (median of repeats).
        double inc_ms = 1e300; int inc_rounds = 0;
        for (int r = 0; r < repeats; r++) {
            checkCuda(cudaMemcpy(ctx.d_label, d_snap, (size_t)ctx.num_nodes * sizeof(int),
                                 cudaMemcpyDeviceToDevice));
            cc_pre_run(ctx);
            double t = 0.0; inc_rounds = cc_run_once(ctx, &t);
            if (t < inc_ms) inc_ms = t;
        }
        cc_labels_to_host(ctx, host_inc);

        // RECOMPUTE from scratch on the cumulative graph (median of repeats).
        double rec_ms = 1e300; int rec_rounds = 0;
        for (int r = 0; r < repeats; r++) {
            cc_init_labels<<<ctx.grid_size, ctx.block_size>>>(ctx.d_label, ctx.num_nodes);
            cc_pre_run(ctx);
            double t = 0.0; rec_rounds = cc_run_once(ctx, &t);
            if (t < rec_ms) rec_ms = t;
        }
        cc_labels_to_host(ctx, host_rec);

        int correct = 1;
        for (int i = 0; i < ctx.num_nodes; i++)
            if (host_inc[i] != host_rec[i]) { correct = 0; break; }

        double speedup = (inc_ms > 0.0) ? rec_ms / inc_ms : 0.0;
        printf("  batch %d: +%ld rows (cum %ld)  inc %.3f ms/%d rounds  "
               "recompute %.3f ms/%d rounds  speedup %.1fx  %s\n",
               b, this_rows, cum_rows, inc_ms * 1000.0, inc_rounds,
               rec_ms * 1000.0, rec_rounds, speedup, correct ? "OK" : "MISMATCH");

        if (inccsv && inccsv[0]) {
            FILE *cf = fopen(inccsv, "a");
            if (cf) {
                fprintf(cf, "%s,%s,%d,%d,%ld,%d,%ld,%ld,%d,%.6f,%d,%.6f,%.4f,%d\n",
                        CC_VERSION, name, ctx.input_rows, ctx.num_nodes, base_rows,
                        b, this_rows, cum_rows, inc_rounds, inc_ms, rec_rounds, rec_ms,
                        speedup, correct);
                fclose(cf);
            }
        }
    }

    free(host_inc); free(host_rec); free(edges_host);
    cudaFree(d_snap);
    cc_destroy(ctx);
    cc_teardown(ctx);
    return 0;
}

// ---------------------------------------------------------------------------
// Shared main. Usage: ./cc.out <data.bin> [capacity_mult] [repeats] [frontier]
// (capacity_mult / frontier accepted for CLI symmetry; unused by CC.)
// Set CC_DELTA_FRAC to run the incremental/streaming edge-insertion experiment
// instead of the batch benchmark.
// ---------------------------------------------------------------------------
inline int cc_main(int argc, char **argv) {
    if (getenv("CC_DELTA_FRAC")) return cc_incremental_main(argc, argv);
    const char *input_file = (argc >= 2) ? argv[1] : "../data/data_10.bin";
    long capacity_mult  = (argc >= 3) ? atol(argv[2]) : 64;
    int  repeats        = (argc >= 4) ? atoi(argv[3]) : 1;
    long frontier_slots = (argc >= 5) ? atol(argv[4]) : 0;
    if (repeats < 1) repeats = 1;

    CCContext ctx;
    cc_setup(ctx, input_file, capacity_mult, frontier_slots);

    double build_seconds = 0.0;
    cc_build(ctx, &build_seconds);

    ctx.peak_mem_mb = cc_mem_used_mb();

    double warm = 0.0;
    cc_reset_state(ctx);
    int iterations = cc_run_once(ctx, &warm);

    double *times = (double *)malloc(repeats * sizeof(double));
    double min_t = 1e300;
    for (int r = 0; r < repeats; r++) {
        double s = 0.0;
        cc_reset_state(ctx);
        iterations = cc_run_once(ctx, &s);
        times[r] = s;
        if (s < min_t) min_t = s;
    }

    unsigned long long cc = (unsigned long long)ctx.num_nodes;

    // Materialize (node,label) pairs + D2H (compaction folded into compute).
    double ccomp0 = cc_now();
    unsigned long long *d_compact = nullptr, *d_cnt = nullptr;
    checkCuda(cudaMalloc((void **)&d_compact, (size_t)(cc ? cc : 1) * sizeof(unsigned long long)));
    checkCuda(cudaMalloc((void **)&d_cnt, sizeof(unsigned long long)));
    checkCuda(cudaMemset(d_cnt, 0, sizeof(unsigned long long)));
    cc_compact<<<ctx.grid_size, ctx.block_size>>>(ctx.d_label, ctx.num_nodes,
                                                  d_compact, d_cnt);
    checkCuda(cudaDeviceSynchronize());
    double compact_seconds = cc_now() - ccomp0;

    unsigned long long *host = (unsigned long long *)malloc((size_t)(cc ? cc : 1) * sizeof(unsigned long long));
    double t0 = cc_now();
    checkCuda(cudaMemcpy(host, d_compact, (size_t)cc * sizeof(unsigned long long),
                         cudaMemcpyDeviceToHost));
    double d2h = cc_now() - t0;
    cudaFree(d_compact); cudaFree(d_cnt);

    double med_t = cc_median(times, repeats) + compact_seconds;
    min_t += compact_seconds;
    free(times);

    double fileio = ctx.t_fileio;
    if (!getenv("CC_NO_OUTPUT")) {
        double tw = cc_now();
        cc_write_output_from_host(host, (long long)cc, input_file);
        fileio += cc_now() - tw;
    }

    cc_print_header();
    cc_print_row(CC_VERSION, ctx.input_rows, iterations, cc,
                 fileio, ctx.t_h2d, ctx.t_setup, build_seconds,
                 med_t, min_t, d2h, ctx.peak_mem_mb, repeats, input_file);

    const char *dump = getenv("CC_DUMP");
    if (dump && dump[0]) cc_dump_from_host(host, (long long)cc, dump);
    free(host);

    cc_destroy(ctx);
    cc_teardown(ctx);
    return 0;
}

#endif // CC_CORE_CUH
