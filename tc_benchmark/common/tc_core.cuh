// tc_core.cuh
// Shared core for the three Transitive Closure (TC) benchmark versions.
//
// This is a single-GPU, Datalog-style semi-naive TC:
//     path(a, c) :- path(a, b), edge(b, c).
//
// The recursive fixpoint keeps a "frontier" (delta) of newly discovered facts.
// Each iteration joins the frontier with the edge relation and inserts the
// resulting pairs into a global open-addressing hash set. Only pairs that are
// genuinely new (won the atomicCAS insert) are appended to the next frontier.
// The loop stops when no new facts are produced.
//
// The kernels below are shared by all three versions. The ONLY thing that
// differs between versions is how the iteration is driven:
//   v1: host `while` loop launching the kernels every iteration.
//   v2: the kernel sequence captured into a CUDA graph, replayed each iteration.
//   v3: the loop itself expressed as a CUDA graph conditional WHILE node,
//       so the whole fixpoint runs on the GPU with a single graph launch.
//
// Buffer sizes change every iteration, so instead of passing sizes by value we
// keep them in device memory (d_frontier_size / d_new_count) and the kernels
// read them at launch time. This is what makes a single instantiated graph
// reusable across iterations (v2) and self-driving (v3).

#ifndef TC_CORE_CUH
#define TC_CORE_CUH

#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <cstdint>
#include <cmath>
#include <string>
#include <chrono>
#include <sys/stat.h>

// ---------------------------------------------------------------------------
// Wall-clock timing and device-memory helpers (shared by all versions).
// ---------------------------------------------------------------------------
inline double tc_now() {
    return std::chrono::duration<double>(
        std::chrono::steady_clock::now().time_since_epoch()).count();
}
// Currently-used device memory in MB (total - free).
inline double tc_mem_used_mb() {
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

// Edge slot for the open-addressing edge hash table (mirrors Entity in
// MNMGDatalog/common/utils.cu). key = edge source, value = edge destination.
struct Entity {
    int key;
    int value;
};

static const unsigned long long TC_EMPTY64 = 0xFFFFFFFFFFFFFFFFULL;

// ---------------------------------------------------------------------------
// Hashing (mirrors get_position / get_rank Murmur3 finalizer from the codebase)
// ---------------------------------------------------------------------------
__host__ __device__ inline int tc_get_position(int key, int hash_table_row_size) {
    key ^= key >> 16;
    key *= 0x85ebca6b;
    key ^= key >> 13;
    key *= 0xc2b2ae35;
    key ^= key >> 16;
    return key & (hash_table_row_size - 1);
}

__device__ inline unsigned long long tc_hash64(unsigned long long k, long capacity) {
    // splitmix64 finalizer
    k ^= k >> 30; k *= 0xbf58476d1ce4e5b9ULL;
    k ^= k >> 27; k *= 0x94d049bb133111ebULL;
    k ^= k >> 31;
    return k & (unsigned long long)(capacity - 1);
}

__host__ __device__ inline unsigned long long tc_pack(int a, int b) {
    return (((unsigned long long)(unsigned int)a) << 32) | (unsigned int)b;
}

// Insert `key` into the open-addressing result set. Returns true if the key was
// newly inserted (i.e. it is a genuinely new fact), false if it already existed.
//
// Overflow guard: the probe is bounded by `capacity`. If the set is full (no
// empty slot found), *overflow is set and we return false instead of spinning
// forever. The host checks *overflow after the run and aborts with a clear
// "increase capacity_mult" message. This turns a would-be infinite hang into a
// fast, actionable error.
__device__ inline bool tc_set_insert(unsigned long long *set, long capacity,
                                     unsigned long long key, int *overflow) {
    unsigned long long mask = (unsigned long long)(capacity - 1);
    unsigned long long pos = tc_hash64(key, capacity);
    for (long probes = 0; probes < capacity; probes++) {
        unsigned long long old = atomicCAS(&set[pos], TC_EMPTY64, key);
        if (old == TC_EMPTY64) return true;   // won the slot -> new fact
        if (old == key)        return false;  // already present -> duplicate
        pos = (pos + 1) & mask;
    }
    *overflow = 1;                             // set is full
    return false;
}

// ---------------------------------------------------------------------------
// Kernels (shared by all three versions)
// ---------------------------------------------------------------------------

__global__ void tc_warm_up_kernel() {}

// Build the edge hash table keyed by source. Duplicate edges land in separate
// slots; that only produces duplicate candidates which the result set dedups.
__global__ void tc_build_edges(const int *edges, int n_edges,
                               Entity *table, int table_cap) {
    int index = blockIdx.x * blockDim.x + threadIdx.x;
    int stride = blockDim.x * gridDim.x;
    for (int i = index; i < n_edges; i += stride) {
        int key = edges[i * 2];
        int value = edges[i * 2 + 1];
        int pos = tc_get_position(key, table_cap);
        while (true) {
            int existing = atomicCAS(&table[pos].key, -1, key);
            if (existing == -1) {
                table[pos].value = value;
                break;
            }
            pos = (pos + 1) & (table_cap - 1);
        }
    }
}

// Seed the fixpoint with the base facts: path(a,b) :- edge(a,b).
// Deduplicates the input edges via the result set.
__global__ void tc_init_base(const int *edges, int n_edges,
                             unsigned long long *result_set, long result_cap,
                             unsigned long long *frontier, int frontier_cap,
                             int *frontier_size, unsigned long long *result_count,
                             int *overflow) {
    int index = blockIdx.x * blockDim.x + threadIdx.x;
    int stride = blockDim.x * gridDim.x;
    for (int i = index; i < n_edges; i += stride) {
        int a = edges[i * 2];
        int b = edges[i * 2 + 1];
        unsigned long long p = tc_pack(a, b);
        if (tc_set_insert(result_set, result_cap, p, overflow)) {
            int w = atomicAdd(frontier_size, 1);
            if (w < frontier_cap) frontier[w] = p;
            else *overflow = 1;
            atomicAdd(result_count, 1ULL);
        }
    }
}

// Reset the per-iteration new-fact counter to 0. One thread.
__global__ void tc_reset(int *new_count) { *new_count = 0; }

// The join / expand step: for each frontier fact path(a,b), probe the edge
// table for every edge(b,c) and try to insert path(a,c). Newly inserted facts
// are appended to `new_frontier`.
__global__ void tc_expand(const Entity *edge_table, int edge_cap,
                          const unsigned long long *frontier, const int *frontier_size,
                          unsigned long long *result_set, long result_cap,
                          unsigned long long *new_frontier, int new_frontier_cap,
                          int *new_count, unsigned long long *result_count,
                          int *overflow) {
    int n = *frontier_size;
    int index = blockIdx.x * blockDim.x + threadIdx.x;
    int stride = blockDim.x * gridDim.x;
    for (int i = index; i < n; i += stride) {
        unsigned long long f = frontier[i];
        int a = (int)(f >> 32);
        int b = (int)(f & 0xffffffffULL);
        int pos = tc_get_position(b, edge_cap);
        while (true) {
            int k = edge_table[pos].key;
            if (k == b) {
                int c = edge_table[pos].value;
                unsigned long long np = tc_pack(a, c);
                if (tc_set_insert(result_set, result_cap, np, overflow)) {
                    int w = atomicAdd(new_count, 1);
                    if (w < new_frontier_cap) new_frontier[w] = np;
                    else *overflow = 1;
                    atomicAdd(result_count, 1ULL);
                }
            } else if (k == -1) {
                break;
            }
            pos = (pos + 1) & (edge_cap - 1);
        }
    }
}

// Copy the freshly produced facts from new_frontier into frontier so the next
// iteration reads from `frontier` again (keeps launch config identical, which
// is what lets a single graph be reused).
__global__ void tc_promote(unsigned long long *frontier,
                           const unsigned long long *new_frontier,
                           const int *new_count) {
    int n = *new_count;
    int index = blockIdx.x * blockDim.x + threadIdx.x;
    int stride = blockDim.x * gridDim.x;
    for (int i = index; i < n; i += stride) {
        frontier[i] = new_frontier[i];
    }
}

// Publish the new frontier size (used by v1 and v2). One thread.
__global__ void tc_set_sizes(int *frontier_size, const int *new_count) {
    *frontier_size = *new_count;
}

// ---------------------------------------------------------------------------
// Context holding all device state + launch configuration
// ---------------------------------------------------------------------------
struct TCContext {
    int block_size = 512;
    int grid_size  = 0;

    int  n_edges   = 0;
    int  *d_edges  = nullptr;       // raw edges on device (n_edges * 2 ints)

    Entity *d_edge_table = nullptr; // edge hash table (keyed by source)
    int  edge_cap  = 0;

    unsigned long long *d_result_set = nullptr; // open-addressing pair set
    long result_cap = 0;

    unsigned long long *d_frontier     = nullptr;
    unsigned long long *d_new_frontier = nullptr;
    int frontier_cap = 0;                        // capacity of each frontier buffer

    int *d_frontier_size = nullptr;             // device-resident sizes
    int *d_new_count     = nullptr;
    unsigned long long *d_result_count = nullptr;
    unsigned long long *d_iter_count   = nullptr; // used by v3
    int *d_overflow      = nullptr;              // set if result set / frontier fills

    // Optional CUDA-graph state (used by v2 / v3; ignored by v1).
    cudaStream_t    stream = nullptr;
    cudaGraph_t     graph  = nullptr;
    cudaGraphExec_t exec   = nullptr;

    // host-side results
    int input_rows = 0;

    // timing breakdown (seconds) + memory (MB)
    double t_fileio  = 0.0;   // host read of the .bin file
    double t_h2d     = 0.0;   // host -> device copy of edges
    double t_setup   = 0.0;   // edge-table build + buffer alloc + first seed
    double peak_mem_mb = 0.0; // device memory in use after setup+build
};

// ---------------------------------------------------------------------------
// Binary edge reader. Format matches MNMGDatalog: raw int32 (src, dst) pairs.
// ---------------------------------------------------------------------------
inline int *tc_read_bin(const char *path, int *n_edges_out) {
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
    *n_edges_out = (int)n;
    return data;
}

inline long tc_next_pow2(long v) {
    long p = 1;
    while (p < v) p <<= 1;
    return p;
}

// ---------------------------------------------------------------------------
// Setup / teardown (identical for all three versions). Fills timing breakdown.
// ---------------------------------------------------------------------------
// frontier_slots: capacity of EACH frontier buffer (0 = auto). The frontier
// only holds one iteration's new facts, so it can be far smaller than the result
// set. Decoupling it is what lets billion-pair TCs fit in one GPU: the result
// set is unavoidably ~2*TC, but the two frontier buffers stay small.
inline void tc_setup(TCContext &ctx, const char *input_file, long capacity_mult,
                     long frontier_slots) {
    int number_of_sm = 0, device_id = 0;
    cudaGetDevice(&device_id);
    cudaDeviceGetAttribute(&number_of_sm, cudaDevAttrMultiProcessorCount, device_id);
    ctx.block_size = 512;
    ctx.grid_size  = 32 * number_of_sm;

    // ---- CUDA context warm-up (untimed) ----
    // Force context/driver + allocator initialization now so its one-time cost
    // is not charged to the timed H2D / setup phases (keeps end-to-end timing
    // fair across all versions, including v0).
    tc_warm_up_kernel<<<1, 1>>>();
    void *warm = nullptr;
    checkCuda(cudaMalloc(&warm, sizeof(int)));
    checkCuda(cudaMemset(warm, 0, sizeof(int)));
    checkCuda(cudaFree(warm));
    checkCuda(cudaDeviceSynchronize());

    // ---- file IO (host read) ----
    double t0 = tc_now();
    int *edges_host = tc_read_bin(input_file, &ctx.n_edges);
    ctx.input_rows = ctx.n_edges;
    ctx.t_fileio = tc_now() - t0;

    // ---- host -> device transfer ----
    t0 = tc_now();
    checkCuda(cudaMalloc((void **)&ctx.d_edges, ctx.n_edges * 2 * sizeof(int)));
    checkCuda(cudaMemcpy(ctx.d_edges, edges_host, ctx.n_edges * 2 * sizeof(int),
                         cudaMemcpyHostToDevice));
    checkCuda(cudaDeviceSynchronize());
    ctx.t_h2d = tc_now() - t0;
    free(edges_host);

    // ---- setup (edge table + buffers + first seed) ----
    t0 = tc_now();
    // Edge table sized by 0.6 load factor (matches get_hash_table logic).
    ctx.edge_cap = (int)tc_next_pow2((long)std::ceil(ctx.n_edges / 0.6));
    if (ctx.edge_cap < 2) ctx.edge_cap = 2;
    checkCuda(cudaMalloc((void **)&ctx.d_edge_table, (long)ctx.edge_cap * sizeof(Entity)));
    // 0xFF bytes -> every int field becomes -1 (empty slot marker).
    checkCuda(cudaMemset(ctx.d_edge_table, 0xFF, (long)ctx.edge_cap * sizeof(Entity)));
    tc_build_edges<<<ctx.grid_size, ctx.block_size>>>(ctx.d_edges, ctx.n_edges,
                                                      ctx.d_edge_table, ctx.edge_cap);

    // Result set + frontier buffers. Capacity is an upper bound on the number of
    // distinct facts (TC size); the frontier can never exceed it.
    long est = (long)ctx.n_edges * capacity_mult;
    if (est < 4096) est = 4096;
    ctx.result_cap  = tc_next_pow2(est);

    // Frontier buffers: default cap = min(result_cap, 2^28 = 268M slots = 2 GB
    // each). One iteration's new facts almost never approach this; if they do,
    // the overflow guard trips and the run is skipped with a clear message.
    long fcap = (frontier_slots > 0) ? tc_next_pow2(frontier_slots) : (1L << 28);
    if (fcap > ctx.result_cap) fcap = ctx.result_cap;
    ctx.frontier_cap = (int)fcap;

    checkCuda(cudaMalloc((void **)&ctx.d_result_set, ctx.result_cap * sizeof(unsigned long long)));
    checkCuda(cudaMemset(ctx.d_result_set, 0xFF, ctx.result_cap * sizeof(unsigned long long)));
    checkCuda(cudaMalloc((void **)&ctx.d_frontier,     (long)ctx.frontier_cap * sizeof(unsigned long long)));
    checkCuda(cudaMalloc((void **)&ctx.d_new_frontier, (long)ctx.frontier_cap * sizeof(unsigned long long)));

    checkCuda(cudaMalloc((void **)&ctx.d_frontier_size, sizeof(int)));
    checkCuda(cudaMalloc((void **)&ctx.d_new_count,     sizeof(int)));
    checkCuda(cudaMalloc((void **)&ctx.d_result_count,  sizeof(unsigned long long)));
    checkCuda(cudaMalloc((void **)&ctx.d_iter_count,    sizeof(unsigned long long)));
    checkCuda(cudaMalloc((void **)&ctx.d_overflow,      sizeof(int)));
    checkCuda(cudaMemset(ctx.d_overflow, 0, sizeof(int)));
    checkCuda(cudaDeviceSynchronize());
    ctx.t_setup = tc_now() - t0;
}

// Abort with a clear message if the result set / frontier overflowed.
inline void tc_check_overflow(TCContext &ctx) {
    int of = 0;
    checkCuda(cudaMemcpy(&of, ctx.d_overflow, sizeof(int), cudaMemcpyDeviceToHost));
    if (of) {
        fprintf(stderr,
            "ERROR: result set / frontier overflow (capacity too small).\n"
            "       Increase capacity_mult (arg 2). Current result_cap=%ld slots.\n",
            ctx.result_cap);
        exit(2);
    }
}

// Reset all fixpoint state and re-seed the base facts. Called before every
// (warm-up and timed) repeat so each run starts from a clean slate. The edge
// table and device buffers are reused, so their addresses stay stable, which
// keeps any instantiated CUDA graph valid across repeats.
inline void tc_reset_state(TCContext &ctx) {
    checkCuda(cudaMemset(ctx.d_result_set, 0xFF, ctx.result_cap * sizeof(unsigned long long)));
    checkCuda(cudaMemset(ctx.d_frontier_size, 0, sizeof(int)));
    checkCuda(cudaMemset(ctx.d_new_count,     0, sizeof(int)));
    checkCuda(cudaMemset(ctx.d_result_count,  0, sizeof(unsigned long long)));
    checkCuda(cudaMemset(ctx.d_iter_count,    0, sizeof(unsigned long long)));
    checkCuda(cudaMemset(ctx.d_overflow,      0, sizeof(int)));
    tc_init_base<<<ctx.grid_size, ctx.block_size>>>(ctx.d_edges, ctx.n_edges,
                                                    ctx.d_result_set, ctx.result_cap,
                                                    ctx.d_frontier, ctx.frontier_cap,
                                                    ctx.d_frontier_size,
                                                    ctx.d_result_count, ctx.d_overflow);
    checkCuda(cudaDeviceSynchronize());
}

inline void tc_teardown(TCContext &ctx) {
    cudaFree(ctx.d_edges);
    cudaFree(ctx.d_edge_table);
    cudaFree(ctx.d_result_set);
    cudaFree(ctx.d_frontier);
    cudaFree(ctx.d_new_frontier);
    cudaFree(ctx.d_frontier_size);
    cudaFree(ctx.d_new_count);
    cudaFree(ctx.d_result_count);
    cudaFree(ctx.d_iter_count);
    cudaFree(ctx.d_overflow);
}

inline unsigned long long tc_result_count(const TCContext &ctx) {
    unsigned long long h = 0;
    checkCuda(cudaMemcpy(&h, ctx.d_result_count, sizeof(unsigned long long),
                         cudaMemcpyDeviceToHost));
    return h;
}

// ---------------------------------------------------------------------------
// Version hooks. Each version's .cu defines TC_VERSION and these three:
//   tc_build     : build/instantiate any CUDA graph (v2/v3); no-op for v1.
//                  Reports the one-time build+instantiate cost in *build_seconds.
//   tc_run_once  : run the fixpoint exactly once (state must already be reset),
//                  return #iterations, set *run_seconds to the fixpoint time.
//   tc_destroy   : release any graph resources.
// ---------------------------------------------------------------------------
extern const char *TC_VERSION;
void tc_build(TCContext &ctx, double *build_seconds);
int  tc_run_once(TCContext &ctx, double *run_seconds);
void tc_destroy(TCContext &ctx);

// Median of a small array (sorts a copy).
inline double tc_median(double *v, int n) {
    for (int i = 0; i < n; i++)
        for (int j = i + 1; j < n; j++)
            if (v[j] < v[i]) { double t = v[i]; v[i] = v[j]; v[j] = t; }
    if (n == 0) return 0.0;
    return (n & 1) ? v[n / 2] : 0.5 * (v[n / 2 - 1] + v[n / 2]);
}

// ---------------------------------------------------------------------------
// Shared CSV output. Used by tc_main (v1-v3) AND v0_reference so every version
// emits identical columns. Positions are stable for tests/verify.sh:
//   field 3 = Iterations, field 4 = TC.
//
//   Version,Input,Iterations,TC,             (identity / correctness)
//   TotalTime,                               (end-to-end: all phases below)
//   FileIO,H2D,Setup,Build,Compute,ComputeMin,D2H,   (breakdown, seconds)
//   PeakMemMB,Repeats,Data
//
// TotalTime = FileIO + H2D + Setup + Build + Compute(median) + D2H, i.e. the
// end-to-end cost of one representative solve (Compute is the median over the
// timed repeats; the per-phase one-time costs are added once).
// ---------------------------------------------------------------------------
// The data row starts with a unique sentinel token so downstream parsers can
// pick it out unambiguously, even if the program (or any library it links)
// prints stray text to stdout. Parsers match the sentinel and then read the
// canonical 15 columns that follow it.
#define TC_ROW_SENTINEL "__TCROW__"
inline void tc_print_header() {
    printf("# %s,Version,Input,Iterations,TC,TotalTime,FileIO,H2D,Setup,"
           "Build,Compute,ComputeMin,D2H,PeakMemMB,Repeats,Data\n", TC_ROW_SENTINEL);
}
inline void tc_print_row(const char *version, int input, int iterations,
                         unsigned long long tc, double fileio, double h2d,
                         double setup, double build, double compute,
                         double compute_min, double d2h, double peak_mem_mb,
                         int repeats, const char *data) {
    double total = fileio + h2d + setup + build + compute + d2h;
    printf("%s,%s,%d,%d,%llu,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.2lf,%d,%s\n",
           TC_ROW_SENTINEL, version, input, iterations, tc, total, fileio, h2d, setup,
           build, compute, compute_min, d2h, peak_mem_mb, repeats, data);
    fflush(stdout);
}

// ---------------------------------------------------------------------------
// Shared main. Usage: ./tc.out <data.bin> [capacity_mult] [repeats] [frontier_slots]
//   capacity_mult  : sizes the result set as next_pow2(n_edges * mult) (def 64)
//   repeats        : timed fixpoint runs, preceded by 1 warm-up (def 1)
//   frontier_slots : capacity of each frontier buffer (0/absent = auto, 2^28)
// ---------------------------------------------------------------------------
inline int tc_main(int argc, char **argv) {
    const char *input_file = (argc >= 2) ? argv[1] : "../data/data_10.bin";
    long capacity_mult  = (argc >= 3) ? atol(argv[2]) : 64;
    int  repeats        = (argc >= 4) ? atoi(argv[3]) : 1;
    long frontier_slots = (argc >= 5) ? atol(argv[4]) : 0;
    if (repeats < 1) repeats = 1;

    TCContext ctx;
    tc_setup(ctx, input_file, capacity_mult, frontier_slots);

    // Build any graph once (measured separately from the fixpoint).
    double build_seconds = 0.0;
    tc_build(ctx, &build_seconds);

    // Peak device memory: all big allocations are done by now (v1-v3 use fixed
    // pre-allocated buffers and allocate nothing during the loop).
    ctx.peak_mem_mb = tc_mem_used_mb();

    // Warm-up run (not timed): pays JIT / first-launch / cache costs.
    double warm = 0.0;
    tc_reset_state(ctx);
    int iterations = tc_run_once(ctx, &warm);
    tc_check_overflow(ctx);
    unsigned long long tc = tc_result_count(ctx);

    // Timed repeats.
    double *times = (double *)malloc(repeats * sizeof(double));
    double min_t = 1e300;
    for (int r = 0; r < repeats; r++) {
        double s = 0.0;
        tc_reset_state(ctx);
        iterations = tc_run_once(ctx, &s);
        times[r] = s;
        if (s < min_t) min_t = s;
    }
    tc_check_overflow(ctx);

    // Device -> host copy of the final result count (measured).
    double t0 = tc_now();
    tc = tc_result_count(ctx);
    double d2h = tc_now() - t0;

    double med_t = tc_median(times, repeats);
    free(times);

    tc_print_header();
    tc_print_row(TC_VERSION, ctx.input_rows, iterations, tc,
                 ctx.t_fileio, ctx.t_h2d, ctx.t_setup, build_seconds,
                 med_t, min_t, d2h, ctx.peak_mem_mb, repeats, input_file);

    tc_destroy(ctx);
    tc_teardown(ctx);
    return 0;
}

#endif // TC_CORE_CUH
