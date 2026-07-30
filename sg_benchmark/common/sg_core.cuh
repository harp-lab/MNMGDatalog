// sg_core.cuh
// Shared core for the four Same Generation (SG) benchmark versions.
//
// This is a single-GPU, Datalog-style semi-naive Same Generation:
//     sg(X, Y) :- edge(P, X), edge(P, Y), X != Y.          (base)
//     sg(X, Y) :- edge(A, X), sg(A, B), edge(B, Y).        (recursive)
//
// SG differs structurally from Transitive Closure: each recursive step is a
// TWO-hop (two-join) derivation. For a frontier fact sg(a, b) we look up every
// edge(a, x) AND every edge(b, y) and emit the cross product sg(x, y). The base
// case pairs the two children x, y of every common parent p (x != y).
//
// As with TC, the derived fact sg(X, Y) is itself a pair, so novelty detection
// and deduplication use a single open-addressing hash SET of packed 64-bit
// pairs: a candidate that wins the atomicCAS insert is a genuinely new fact and
// is appended to the next frontier. The loop stops when no new facts appear.
//
// The kernels below are shared by all four versions. The ONLY thing that differs
// between v1/v2/v3 is how the iteration is driven:
//   v1: host `while` loop launching the kernels every iteration.
//   v2: the kernel sequence captured into a CUDA graph, replayed each iteration.
//   v3: the loop itself expressed as a CUDA graph conditional WHILE node.
//
// Buffer sizes change every iteration, so instead of passing sizes by value we
// keep them in device memory (d_frontier_size / d_new_count) and the kernels
// read them at launch time. This is what makes a single instantiated graph
// reusable across iterations (v2) and self-driving (v3).
//
// To support the two-hop recursive join we need, for a given source key, to
// enumerate ALL of its outgoing edges. The edge hash table stores every edge in
// its own slot (linear probing), so a probe walks the whole cluster for a key;
// duplicate keys simply occupy consecutive/near slots and are all visited.

#ifndef SG_CORE_CUH
#define SG_CORE_CUH

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
inline double sg_now() {
    return std::chrono::duration<double>(
        std::chrono::steady_clock::now().time_since_epoch()).count();
}
inline double sg_mem_used_mb() {
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

static const unsigned long long SG_EMPTY64 = 0xFFFFFFFFFFFFFFFFULL;

// ---------------------------------------------------------------------------
// Hashing (mirrors get_position / get_rank Murmur3 finalizer from the codebase)
// ---------------------------------------------------------------------------
__host__ __device__ inline int sg_get_position(int key, int hash_table_row_size) {
    key ^= key >> 16;
    key *= 0x85ebca6b;
    key ^= key >> 13;
    key *= 0xc2b2ae35;
    key ^= key >> 16;
    return key & (hash_table_row_size - 1);
}

__device__ inline unsigned long long sg_hash64(unsigned long long k, long capacity) {
    // splitmix64 finalizer
    k ^= k >> 30; k *= 0xbf58476d1ce4e5b9ULL;
    k ^= k >> 27; k *= 0x94d049bb133111ebULL;
    k ^= k >> 31;
    return k & (unsigned long long)(capacity - 1);
}

__host__ __device__ inline unsigned long long sg_pack(int a, int b) {
    return (((unsigned long long)(unsigned int)a) << 32) | (unsigned int)b;
}

// Insert `key` into the open-addressing result set. Returns true if the key was
// newly inserted (i.e. it is a genuinely new fact), false if it already existed.
// Overflow guard: the probe is bounded by `capacity`. If the set is full, set
// *overflow and return false instead of spinning forever.
__device__ inline bool sg_set_insert(unsigned long long *set, long capacity,
                                     unsigned long long key, int *overflow) {
    unsigned long long mask = (unsigned long long)(capacity - 1);
    unsigned long long pos = sg_hash64(key, capacity);
    for (long probes = 0; probes < capacity; probes++) {
        unsigned long long old = atomicCAS(&set[pos], SG_EMPTY64, key);
        if (old == SG_EMPTY64) return true;   // won the slot -> new fact
        if (old == key)        return false;  // already present -> duplicate
        pos = (pos + 1) & mask;
    }
    *overflow = 1;                             // set is full
    return false;
}

// ---------------------------------------------------------------------------
// Kernels (shared by all four versions)
// ---------------------------------------------------------------------------

__global__ void sg_warm_up_kernel() {}

// Build the edge hash table keyed by source. Every edge occupies its own slot;
// duplicate sources land in nearby slots and are all visited during a probe.
__global__ void sg_build_edges(const int *edges, int n_edges,
                               Entity *table, int table_cap) {
    int index = blockIdx.x * blockDim.x + threadIdx.x;
    int stride = blockDim.x * gridDim.x;
    for (int i = index; i < n_edges; i += stride) {
        int key = edges[i * 2];
        int value = edges[i * 2 + 1];
        int pos = sg_get_position(key, table_cap);
        while (true) {
            // Slot ownership is decided by the (key,value) pair so that duplicate
            // edges do not collapse; each distinct edge gets its own slot.
            int existing = atomicCAS(&table[pos].key, -1, key);
            if (existing == -1) {
                table[pos].value = value;
                break;
            }
            pos = (pos + 1) & (table_cap - 1);
        }
    }
}

// Seed the fixpoint with the base facts:
//   sg(x, y) :- edge(p, x), edge(p, y), x != y.
// For each edge (p, x) we enumerate every edge (p, y) sharing the same source p
// and emit sg(x, y) when x != y. Duplicates are removed by the result set.
__global__ void sg_init_base(const int *edges, int n_edges,
                             const Entity *edge_table, int edge_cap,
                             unsigned long long *result_set, long result_cap,
                             unsigned long long *frontier, int frontier_cap,
                             int *frontier_size, unsigned long long *result_count,
                             int *overflow) {
    int index = blockIdx.x * blockDim.x + threadIdx.x;
    int stride = blockDim.x * gridDim.x;
    for (int i = index; i < n_edges; i += stride) {
        int p = edges[i * 2];
        int x = edges[i * 2 + 1];
        // enumerate every edge(p, y)
        int pos = sg_get_position(p, edge_cap);
        while (true) {
            int k = edge_table[pos].key;
            if (k == p) {
                int y = edge_table[pos].value;
                if (x != y) {
                    unsigned long long np = sg_pack(x, y);
                    if (sg_set_insert(result_set, result_cap, np, overflow)) {
                        int w = atomicAdd(frontier_size, 1);
                        if (w < frontier_cap) frontier[w] = np;
                        else *overflow = 1;
                        atomicAdd(result_count, 1ULL);
                    }
                }
            } else if (k == -1) {
                break;
            }
            pos = (pos + 1) & (edge_cap - 1);
        }
    }
}

// Reset the per-iteration new-fact counter to 0. One thread.
__global__ void sg_reset(int *new_count) { *new_count = 0; }

// The recursive two-hop expand step:
//   sg(x, y) :- edge(a, x), sg(a, b), edge(b, y).
// For each frontier fact sg(a, b) we enumerate every edge(a, x) and every
// edge(b, y) and try to insert sg(x, y). Newly inserted facts go to new_frontier.
__global__ void sg_expand(const Entity *edge_table, int edge_cap,
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
        // outer loop: every edge(a, x)
        int pa = sg_get_position(a, edge_cap);
        while (true) {
            int ka = edge_table[pa].key;
            if (ka == a) {
                int x = edge_table[pa].value;
                // inner loop: every edge(b, y)
                int pb = sg_get_position(b, edge_cap);
                while (true) {
                    int kb = edge_table[pb].key;
                    if (kb == b) {
                        int y = edge_table[pb].value;
                        unsigned long long np = sg_pack(x, y);
                        if (sg_set_insert(result_set, result_cap, np, overflow)) {
                            int w = atomicAdd(new_count, 1);
                            if (w < new_frontier_cap) new_frontier[w] = np;
                            else *overflow = 1;
                            atomicAdd(result_count, 1ULL);
                        }
                    } else if (kb == -1) {
                        break;
                    }
                    pb = (pb + 1) & (edge_cap - 1);
                }
            } else if (ka == -1) {
                break;
            }
            pa = (pa + 1) & (edge_cap - 1);
        }
    }
}

// Copy the freshly produced facts from new_frontier into frontier so the next
// iteration reads from `frontier` again (keeps launch config identical, which
// is what lets a single graph be reused).
__global__ void sg_promote(unsigned long long *frontier,
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
__global__ void sg_set_sizes(int *frontier_size, const int *new_count) {
    *frontier_size = *new_count;
}

// Stream-compact the sparse result set into a dense array `out` of exactly the
// discovered pairs, so the final device->host copy transfers only SG tuples.
__global__ void sg_compact(const unsigned long long *set, long cap,
                           unsigned long long *out, unsigned long long *out_count) {
    long index = (long)blockIdx.x * blockDim.x + threadIdx.x;
    long stride = (long)blockDim.x * gridDim.x;
    for (long i = index; i < cap; i += stride) {
        unsigned long long s = set[i];
        if (s != SG_EMPTY64) {
            unsigned long long w = atomicAdd(out_count, 1ULL);
            out[w] = s;
        }
    }
}

// ---------------------------------------------------------------------------
// Context holding all device state + launch configuration
// ---------------------------------------------------------------------------
struct SGContext {
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
    double t_fileio  = 0.0;
    double t_h2d     = 0.0;
    double t_setup   = 0.0;
    double peak_mem_mb = 0.0;
};

// ---------------------------------------------------------------------------
// Binary edge reader. Format matches MNMGDatalog: raw int32 (src, dst) pairs.
// ---------------------------------------------------------------------------
inline int *sg_read_bin(const char *path, int *n_edges_out) {
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

inline long sg_next_pow2(long v) {
    long p = 1;
    while (p < v) p <<= 1;
    return p;
}

// ---------------------------------------------------------------------------
// Setup / teardown (identical for all four versions). Fills timing breakdown.
// ---------------------------------------------------------------------------
inline void sg_setup(SGContext &ctx, const char *input_file, long capacity_mult,
                     long frontier_slots) {
    int number_of_sm = 0, device_id = 0;
    cudaGetDevice(&device_id);
    cudaDeviceGetAttribute(&number_of_sm, cudaDevAttrMultiProcessorCount, device_id);
    ctx.block_size = 512;
    ctx.grid_size  = 32 * number_of_sm;

    // ---- CUDA context warm-up (untimed) ----
    sg_warm_up_kernel<<<1, 1>>>();
    void *warm = nullptr;
    checkCuda(cudaMalloc(&warm, sizeof(int)));
    checkCuda(cudaMemset(warm, 0, sizeof(int)));
    checkCuda(cudaFree(warm));
    checkCuda(cudaDeviceSynchronize());

    // ---- file IO (host read) ----
    double t0 = sg_now();
    int *edges_host = sg_read_bin(input_file, &ctx.n_edges);
    ctx.input_rows = ctx.n_edges;
    ctx.t_fileio = sg_now() - t0;

    // ---- host -> device transfer ----
    t0 = sg_now();
    checkCuda(cudaMalloc((void **)&ctx.d_edges, ctx.n_edges * 2 * sizeof(int)));
    checkCuda(cudaMemcpy(ctx.d_edges, edges_host, ctx.n_edges * 2 * sizeof(int),
                         cudaMemcpyHostToDevice));
    checkCuda(cudaDeviceSynchronize());
    ctx.t_h2d = sg_now() - t0;
    free(edges_host);

    // ---- setup (edge table + buffers + first seed) ----
    t0 = sg_now();
    ctx.edge_cap = (int)sg_next_pow2((long)std::ceil(ctx.n_edges / 0.6));
    if (ctx.edge_cap < 2) ctx.edge_cap = 2;
    checkCuda(cudaMalloc((void **)&ctx.d_edge_table, (long)ctx.edge_cap * sizeof(Entity)));
    checkCuda(cudaMemset(ctx.d_edge_table, 0xFF, (long)ctx.edge_cap * sizeof(Entity)));
    sg_build_edges<<<ctx.grid_size, ctx.block_size>>>(ctx.d_edges, ctx.n_edges,
                                                      ctx.d_edge_table, ctx.edge_cap);

    long est = (long)ctx.n_edges * capacity_mult;
    if (est < 4096) est = 4096;
    ctx.result_cap  = sg_next_pow2(est);

    long fcap = (frontier_slots > 0) ? sg_next_pow2(frontier_slots) : (1L << 28);
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
    ctx.t_setup = sg_now() - t0;
}

inline void sg_check_overflow(SGContext &ctx) {
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
// (warm-up and timed) repeat. Buffers are reused so addresses stay stable, which
// keeps any instantiated CUDA graph valid across repeats.
inline void sg_reset_state(SGContext &ctx) {
    checkCuda(cudaMemset(ctx.d_result_set, 0xFF, ctx.result_cap * sizeof(unsigned long long)));
    checkCuda(cudaMemset(ctx.d_frontier_size, 0, sizeof(int)));
    checkCuda(cudaMemset(ctx.d_new_count,     0, sizeof(int)));
    checkCuda(cudaMemset(ctx.d_result_count,  0, sizeof(unsigned long long)));
    checkCuda(cudaMemset(ctx.d_iter_count,    0, sizeof(unsigned long long)));
    checkCuda(cudaMemset(ctx.d_overflow,      0, sizeof(int)));
    sg_init_base<<<ctx.grid_size, ctx.block_size>>>(ctx.d_edges, ctx.n_edges,
                                                    ctx.d_edge_table, ctx.edge_cap,
                                                    ctx.d_result_set, ctx.result_cap,
                                                    ctx.d_frontier, ctx.frontier_cap,
                                                    ctx.d_frontier_size,
                                                    ctx.d_result_count, ctx.d_overflow);
    checkCuda(cudaDeviceSynchronize());
}

inline void sg_teardown(SGContext &ctx) {
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

inline unsigned long long sg_result_count(const SGContext &ctx) {
    unsigned long long h = 0;
    checkCuda(cudaMemcpy(&h, ctx.d_result_count, sizeof(unsigned long long),
                         cudaMemcpyDeviceToHost));
    return h;
}

// Each version's .cu defines its display name.
extern const char *SG_VERSION;

inline long long sg_write_output_from_host(const unsigned long long *host, long long n,
                                           const char *input_file) {
    char path[4096];
    snprintf(path, sizeof(path), "%s_%s_sg.bin", input_file, SG_VERSION);
    FILE *f = fopen(path, "wb");
    if (!f) { fprintf(stderr, "Cannot open output file %s\n", path); return -1; }
    for (long long i = 0; i < n; i++) {
        unsigned long long s = host[i];
        int pair[2] = { (int)(s >> 32), (int)(s & 0xffffffffULL) };  // (x,y)
        fwrite(pair, sizeof(int), 2, f);
    }
    fclose(f);
    printf("# wrote %lld tuples to %s\n", n, path);
    return n;
}

inline void sg_dump_from_host(const unsigned long long *host, long long n,
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
// ---------------------------------------------------------------------------
void sg_build(SGContext &ctx, double *build_seconds);
int  sg_run_once(SGContext &ctx, double *run_seconds);
void sg_destroy(SGContext &ctx);

inline double sg_median(double *v, int n) {
    for (int i = 0; i < n; i++)
        for (int j = i + 1; j < n; j++)
            if (v[j] < v[i]) { double t = v[i]; v[i] = v[j]; v[j] = t; }
    if (n == 0) return 0.0;
    return (n & 1) ? v[n / 2] : 0.5 * (v[n / 2 - 1] + v[n / 2]);
}

// ---------------------------------------------------------------------------
// Shared CSV output. Same 15-column schema as the TC benchmark (field 3 =
// Iterations, field 4 = result size) so the scripts/plotter are identical.
// TotalTime = FileIO + H2D + Setup + Build + Compute(median) + D2H. Compute
// includes the one-shot result compaction; D2H is purely the device->host copy.
// ---------------------------------------------------------------------------
#define SG_ROW_SENTINEL "__SGROW__"
inline void sg_print_header() {
    printf("# %s,Version,Input,Iterations,SG,TotalTime,FileIO,H2D,Setup,"
           "Build,Compute,ComputeMin,D2H,PeakMemMB,Repeats,Data\n", SG_ROW_SENTINEL);
}
inline void sg_print_row(const char *version, int input, int iterations,
                         unsigned long long sg, double fileio, double h2d,
                         double setup, double build, double compute,
                         double compute_min, double d2h, double peak_mem_mb,
                         int repeats, const char *data) {
    double total = fileio + h2d + setup + build + compute + d2h;
    printf("%s,%s,%d,%d,%llu,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.2lf,%d,%s\n",
           SG_ROW_SENTINEL, version, input, iterations, sg, total, fileio, h2d, setup,
           build, compute, compute_min, d2h, peak_mem_mb, repeats, data);
    fflush(stdout);
    const char *csv = getenv("SG_CSV");
    if (csv && csv[0]) {
        FILE *cf = fopen(csv, "w");
        if (cf) {
            fprintf(cf, "%s,%d,%d,%llu,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.2lf,%d,%s\n",
                    version, input, iterations, sg, total, fileio, h2d, setup,
                    build, compute, compute_min, d2h, peak_mem_mb, repeats, data);
            fclose(cf);
        }
    }
}

// ---------------------------------------------------------------------------
// Shared main. Usage: ./sg.out <data.bin> [capacity_mult] [repeats] [frontier_slots]
// ---------------------------------------------------------------------------
inline int sg_main(int argc, char **argv) {
    const char *input_file = (argc >= 2) ? argv[1] : "../data/data_10.bin";
    long capacity_mult  = (argc >= 3) ? atol(argv[2]) : 64;
    int  repeats        = (argc >= 4) ? atoi(argv[3]) : 1;
    long frontier_slots = (argc >= 5) ? atol(argv[4]) : 0;
    if (repeats < 1) repeats = 1;

    SGContext ctx;
    sg_setup(ctx, input_file, capacity_mult, frontier_slots);

    double build_seconds = 0.0;
    sg_build(ctx, &build_seconds);

    ctx.peak_mem_mb = sg_mem_used_mb();

    double warm = 0.0;
    sg_reset_state(ctx);
    int iterations = sg_run_once(ctx, &warm);
    sg_check_overflow(ctx);
    unsigned long long sg = sg_result_count(ctx);

    double *times = (double *)malloc(repeats * sizeof(double));
    double min_t = 1e300;
    for (int r = 0; r < repeats; r++) {
        double s = 0.0;
        sg_reset_state(ctx);
        iterations = sg_run_once(ctx, &s);
        times[r] = s;
        if (s < min_t) min_t = s;
    }
    sg_check_overflow(ctx);

    sg = sg_result_count(ctx);

    cudaFree(ctx.d_frontier);     ctx.d_frontier = nullptr;
    cudaFree(ctx.d_new_frontier); ctx.d_new_frontier = nullptr;

    // Materialize + D2H (compaction folded into compute; d2h = memcpy only).
    double scomp0 = sg_now();
    unsigned long long *d_compact = nullptr, *d_cnt = nullptr;
    checkCuda(cudaMalloc((void **)&d_compact, (size_t)(sg ? sg : 1) * sizeof(unsigned long long)));
    checkCuda(cudaMalloc((void **)&d_cnt, sizeof(unsigned long long)));
    checkCuda(cudaMemset(d_cnt, 0, sizeof(unsigned long long)));
    sg_compact<<<ctx.grid_size, ctx.block_size>>>(ctx.d_result_set, ctx.result_cap,
                                                  d_compact, d_cnt);
    checkCuda(cudaDeviceSynchronize());
    double compact_seconds = sg_now() - scomp0;

    unsigned long long *host = (unsigned long long *)malloc((size_t)(sg ? sg : 1) * sizeof(unsigned long long));
    double t0 = sg_now();
    checkCuda(cudaMemcpy(host, d_compact, (size_t)sg * sizeof(unsigned long long),
                         cudaMemcpyDeviceToHost));
    double d2h = sg_now() - t0;
    cudaFree(d_compact); cudaFree(d_cnt);

    double med_t = sg_median(times, repeats) + compact_seconds;
    min_t += compact_seconds;
    free(times);

    double fileio = ctx.t_fileio;
    if (!getenv("SG_NO_OUTPUT")) {
        double tw = sg_now();
        sg_write_output_from_host(host, (long long)sg, input_file);
        fileio += sg_now() - tw;
    }

    sg_print_header();
    sg_print_row(SG_VERSION, ctx.input_rows, iterations, sg,
                 fileio, ctx.t_h2d, ctx.t_setup, build_seconds,
                 med_t, min_t, d2h, ctx.peak_mem_mb, repeats, input_file);

    const char *dump = getenv("SG_DUMP");
    if (dump && dump[0]) sg_dump_from_host(host, (long long)sg, dump);
    free(host);

    sg_destroy(ctx);
    sg_teardown(ctx);
    return 0;
}

#endif // SG_CORE_CUH
