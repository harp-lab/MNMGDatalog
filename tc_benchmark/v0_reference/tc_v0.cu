// tc_v0.cu  -  Version 0: reference (original MNMGDatalog algorithm)
//
// This is a faithful single-GPU port of MNMGDatalog/tc.cu (MPI removed). It uses
// the ORIGINAL algorithm: a hash join followed by Thrust sort / unique /
// set_difference / merge to maintain a sorted `t_full` relation and a `t_delta`
// of newly discovered facts.
//
//   join      : hash join of t_delta with the edge table  (get_join)
//   dedup     : thrust::sort + thrust::unique on the join result
//   novelty   : thrust::set_difference(t_delta, t_full)   -> only new facts
//   merge     : thrust::merge(t_full, t_delta)            -> new sorted t_full
//   stop      : when t_full stops growing
//
// It exists purely as the performance REFERENCE: v1/v2/v3 replace this whole
// sort-merge machinery with a single open-addressing hash set so the loop can
// live entirely on the GPU (and inside a CUDA graph). Comparing against v0 shows
// how much the hash-set + CUDA-graph redesign actually buys.
//
// This file has its OWN main and state and does not use the tc_build/
// tc_run_once/tc_destroy hooks, so it cannot affect v1/v2/v3. It reuses only the
// small helpers from tc_core.cuh (IO, Entity, hashing, median).

#include "../common/tc_core.cuh"

#include <thrust/reduce.h>
#include <thrust/scan.h>
#include <thrust/sort.h>
#include <thrust/unique.h>
#include <thrust/merge.h>
#include <thrust/set_operations.h>
#include <thrust/execution_policy.h>

const char *TC_VERSION = "reference";

// ---- comparators (from MNMGDatalog/common/utils.cu) -----------------------
struct set_cmp {
    __host__ __device__ bool operator()(const Entity &l, const Entity &r) const {
        if (l.key == r.key) return l.value < r.value;
        return l.key < r.key;
    }
};
struct is_equal {
    __host__ __device__ bool operator()(const Entity &l, const Entity &r) const {
        return (l.key == r.key) && (l.value == r.value);
    }
};

// ---- kernels --------------------------------------------------------------
// Build the edge hash table keyed by source (mirrors build_hash_table_entity).
__global__ void v0_build_edges(const int *edges, int n, Entity *table, int cap) {
    int idx = blockIdx.x * blockDim.x + threadIdx.x;
    int stride = blockDim.x * gridDim.x;
    for (int i = idx; i < n; i += stride) {
        int key = edges[i * 2], value = edges[i * 2 + 1];
        int pos = tc_get_position(key, cap);
        while (true) {
            int existing = atomicCAS(&table[pos].key, -1, key);
            if (existing == -1) { table[pos].value = value; break; }
            pos = (pos + 1) & (cap - 1);
        }
    }
}

// Initial t_delta = reverse edges (key=dst, value=src), as in tc.cu.
__global__ void v0_make_reverse(const int *edges, int n, Entity *out) {
    int idx = blockIdx.x * blockDim.x + threadIdx.x;
    int stride = blockDim.x * gridDim.x;
    for (int i = idx; i < n; i += stride) {
        out[i].key   = edges[i * 2 + 1];
        out[i].value = edges[i * 2];
    }
}

// Hash join (mirrors common/join.cu get_join_result_size_entity / _entity).
__global__ void v0_join_size(const Entity *ht, int ht_size,
                             const Entity *t_delta, int t_delta_size, int *out) {
    int idx = blockIdx.x * blockDim.x + threadIdx.x;
    int stride = blockDim.x * gridDim.x;
    for (int i = idx; i < t_delta_size; i += stride) {
        int key = t_delta[i].key, cnt = 0, pos = tc_get_position(key, ht_size);
        while (true) {
            if (ht[pos].key == key) cnt++;
            else if (ht[pos].key == -1) break;
            pos = (pos + 1) & (ht_size - 1);
        }
        out[i] = cnt;
    }
}
__global__ void v0_join_write(const Entity *ht, int ht_size,
                              const Entity *t_delta, int t_delta_size,
                              const int *offset, Entity *result) {
    int idx = blockIdx.x * blockDim.x + threadIdx.x;
    int stride = blockDim.x * gridDim.x;
    for (int i = idx; i < t_delta_size; i += stride) {
        int key = t_delta[i].key, value = t_delta[i].value;
        int start = offset[i], pos = tc_get_position(key, ht_size);
        while (true) {
            if (ht[pos].key == key) {
                result[start].key = ht[pos].value;
                result[start].value = value;
                start++;
            } else if (ht[pos].key == -1) break;
            pos = (pos + 1) & (ht_size - 1);
        }
    }
}

static Entity *v0_get_join(int grid, int block, const Entity *ht, int ht_size,
                           const Entity *rel, int rel_size, int *result_size) {
    if (ht_size == 0 || rel_size == 0) { *result_size = 0; return nullptr; }
    int *offset;
    checkCuda(cudaMalloc((void **)&offset, rel_size * sizeof(int)));
    checkCuda(cudaMemset(offset, 0, rel_size * sizeof(int)));
    v0_join_size<<<grid, block>>>(ht, ht_size, rel, rel_size, offset);
    checkCuda(cudaDeviceSynchronize());
    int total = thrust::reduce(thrust::device, offset, offset + rel_size, 0, thrust::plus<int>());
    thrust::exclusive_scan(thrust::device, offset, offset + rel_size, offset);
    Entity *result = nullptr;
    checkCuda(cudaMalloc((void **)&result, (long)total * sizeof(Entity)));
    v0_join_write<<<grid, block>>>(ht, ht_size, rel, rel_size, offset, result);
    checkCuda(cudaDeviceSynchronize());
    cudaFree(offset);
    *result_size = total;
    return result;
}

// ---------------------------------------------------------------------------
// State
// ---------------------------------------------------------------------------
struct V0State {
    int grid = 0, block = 512;
    int n_edges = 0;
    int input_rows = 0;
    int *d_edges = nullptr;
    Entity *hash_table = nullptr;
    int hash_table_size = 0;

    Entity *t_delta = nullptr;  int t_delta_size = 0;
    Entity *t_full  = nullptr;  long long t_full_size = 0;

    // timing breakdown (seconds) + peak memory (MB)
    double t_fileio = 0.0, t_h2d = 0.0, t_setup = 0.0;
    double peak_mem_mb = 0.0;
};

static void v0_setup(V0State &s, const char *file) {
    int sm = 0, dev = 0;
    cudaGetDevice(&dev);
    cudaDeviceGetAttribute(&sm, cudaDevAttrMultiProcessorCount, dev);
    s.block = 512; s.grid = 32 * sm;

    // ---- CUDA context warm-up (untimed) ----
    // Force CUDA context / driver initialization now so its one-time cost is not
    // charged to the H2D phase below. v1-v3 warm up the same way in tc_setup, so
    // this keeps the end-to-end timing comparison fair.
    tc_warm_up_kernel<<<1, 1>>>();
    void *warm = nullptr;
    checkCuda(cudaMalloc(&warm, sizeof(int)));
    checkCuda(cudaMemset(warm, 0, sizeof(int)));
    checkCuda(cudaFree(warm));
    checkCuda(cudaDeviceSynchronize());

    // ---- file IO (host read) ----
    double t0 = tc_now();
    int *edges_host = tc_read_bin(file, &s.n_edges);
    s.input_rows = s.n_edges;
    s.t_fileio = tc_now() - t0;

    // ---- host -> device transfer ----
    t0 = tc_now();
    checkCuda(cudaMalloc((void **)&s.d_edges, s.n_edges * 2 * sizeof(int)));
    checkCuda(cudaMemcpy(s.d_edges, edges_host, s.n_edges * 2 * sizeof(int),
                         cudaMemcpyHostToDevice));
    checkCuda(cudaDeviceSynchronize());
    s.t_h2d = tc_now() - t0;
    free(edges_host);

    // ---- setup (edge hash table, keyed by source, 0.6 load factor) ----
    t0 = tc_now();
    s.hash_table_size = (int)tc_next_pow2((long)std::ceil(s.n_edges / 0.6));
    if (s.hash_table_size < 2) s.hash_table_size = 2;
    checkCuda(cudaMalloc((void **)&s.hash_table, (long)s.hash_table_size * sizeof(Entity)));
    checkCuda(cudaMemset(s.hash_table, 0xFF, (long)s.hash_table_size * sizeof(Entity)));
    v0_build_edges<<<s.grid, s.block>>>(s.d_edges, s.n_edges, s.hash_table, s.hash_table_size);
    checkCuda(cudaDeviceSynchronize());
    s.t_setup = tc_now() - t0;
}

// Rebuild the initial t_delta / t_full for a fresh run (the "seed", untimed,
// matching how v1/v2/v3 seed the frontier outside their timed region).
static void v0_reset_state(V0State &s) {
    if (s.t_delta) { cudaFree(s.t_delta); s.t_delta = nullptr; }
    if (s.t_full)  { cudaFree(s.t_full);  s.t_full  = nullptr; }

    checkCuda(cudaMalloc((void **)&s.t_delta, (long)s.n_edges * sizeof(Entity)));
    v0_make_reverse<<<s.grid, s.block>>>(s.d_edges, s.n_edges, s.t_delta);
    checkCuda(cudaDeviceSynchronize());
    thrust::sort(thrust::device, s.t_delta, s.t_delta + s.n_edges, set_cmp());
    s.t_delta_size = (int)(thrust::unique(thrust::device, s.t_delta,
                                          s.t_delta + s.n_edges, is_equal()) - s.t_delta);

    checkCuda(cudaMalloc((void **)&s.t_full, (long)s.t_delta_size * sizeof(Entity)));
    checkCuda(cudaMemcpy(s.t_full, s.t_delta, (long)s.t_delta_size * sizeof(Entity),
                         cudaMemcpyDeviceToDevice));
    s.t_full_size = s.t_delta_size;
}

// The timed fixpoint: hash join + sort/unique + set_difference + merge, exactly
// like MNMGDatalog/tc.cu (single GPU).
static int v0_run_once(V0State &s, double *seconds) {
    cudaEvent_t start, stop;
    cudaEventCreate(&start); cudaEventCreate(&stop);
    cudaEventRecord(start, 0);

    int iterations = 0;
    while (true) {
        int jr_size = 0;
        Entity *join_result = v0_get_join(s.grid, s.block, s.hash_table, s.hash_table_size,
                                          s.t_delta, s.t_delta_size, &jr_size);
        cudaFree(s.t_delta);
        s.t_delta = join_result;
        s.t_delta_size = jr_size;

        // Deduplicate the join result.
        thrust::sort(thrust::device, s.t_delta, s.t_delta + s.t_delta_size, set_cmp());
        s.t_delta_size = (int)(thrust::unique(thrust::device, s.t_delta,
                                              s.t_delta + s.t_delta_size, is_equal()) - s.t_delta);

        // Keep only facts not already in t_full.
        s.t_delta_size = (int)(thrust::set_difference(thrust::device,
                               s.t_delta, s.t_delta + s.t_delta_size,
                               s.t_full, s.t_full + s.t_full_size,
                               s.t_delta, set_cmp()) - s.t_delta);

        // Merge new facts into t_full.
        long long new_full_size = (long long)s.t_delta_size + s.t_full_size;
        Entity *new_full = nullptr;
        checkCuda(cudaMalloc((void **)&new_full, new_full_size * sizeof(Entity)));
        thrust::merge(thrust::device,
                      s.t_full, s.t_full + s.t_full_size,
                      s.t_delta, s.t_delta + s.t_delta_size,
                      new_full, set_cmp());
        // Peak memory occurs here, while both t_full and new_full are live.
        double used = tc_mem_used_mb();
        if (used > s.peak_mem_mb) s.peak_mem_mb = used;

        cudaFree(s.t_full);
        s.t_full = new_full;

        long long old_size = s.t_full_size;
        s.t_full_size = new_full_size;
        iterations++;
        if (old_size == s.t_full_size) break;  // no growth -> fixpoint reached
    }

    cudaEventRecord(stop, 0);
    cudaEventSynchronize(stop);
    float ms = 0.0f;
    cudaEventElapsedTime(&ms, start, stop);
    *seconds = ms / 1000.0;
    cudaEventDestroy(start); cudaEventDestroy(stop);
    return iterations;
}

static void v0_teardown(V0State &s) {
    cudaFree(s.d_edges);
    cudaFree(s.hash_table);
    if (s.t_delta) cudaFree(s.t_delta);
    if (s.t_full)  cudaFree(s.t_full);
}

// Same CSV layout as tc_main (via tc_print_row) so verify.sh / benchmark.sh
// parse every version identically. v0 has no graph, so Build = 0. Unlike v1-v3,
// v0 allocates during the loop, so peak memory is sampled inside v0_run_once.
int main(int argc, char **argv) {
    const char *input_file = (argc >= 2) ? argv[1] : "../data/data_10.bin";
    (void)((argc >= 3) ? atol(argv[2]) : 64);      // capacity_mult unused by v0
    int repeats = (argc >= 4) ? atoi(argv[3]) : 1;
    if (repeats < 1) repeats = 1;

    V0State s;
    v0_setup(s, input_file);

    // Warm-up (untimed).
    double warm = 0.0;
    v0_reset_state(s);
    int iterations = v0_run_once(s, &warm);

    double *times = (double *)malloc(repeats * sizeof(double));
    double min_t = 1e300;
    for (int r = 0; r < repeats; r++) {
        double t = 0.0;
        v0_reset_state(s);
        iterations = v0_run_once(s, &t);
        times[r] = t;
        if (t < min_t) min_t = t;
    }
    unsigned long long tc = (unsigned long long)s.t_full_size;
    double med_t = tc_median(times, repeats);
    free(times);

    // D2H: transfer the final TC relation (t_full) from device to host (timed),
    // symmetric with v1-v3. t_full stores (key=dst, value=src); canonical output
    // is "src dst" = "value key".
    double t0 = tc_now();
    Entity *host = (Entity *)malloc((size_t)s.t_full_size * sizeof(Entity));
    checkCuda(cudaMemcpy(host, s.t_full, (size_t)s.t_full_size * sizeof(Entity),
                         cudaMemcpyDeviceToHost));
    double d2h = tc_now() - t0;

    tc_print_header();
    tc_print_row(TC_VERSION, s.input_rows, iterations, tc,
                 s.t_fileio, s.t_h2d, s.t_setup, /*build=*/0.0,
                 med_t, min_t, d2h, s.peak_mem_mb, repeats, input_file);

    // Disk write (NOT timed) from the already-copied host buffer, unless
    // TC_NO_OUTPUT=1. Binary int32 (src,dst) pairs, MNMGDatalog `_tc.bin` format.
    if (!getenv("TC_NO_OUTPUT")) {
        char path[4096];
        snprintf(path, sizeof(path), "%s_%s_tc.bin", input_file, TC_VERSION);
        FILE *f = fopen(path, "wb");
        if (f) {
            for (long long i = 0; i < s.t_full_size; i++) {
                int pair[2] = { host[i].value, host[i].key };  // (src,dst)
                fwrite(pair, sizeof(int), 2, f);
            }
            fclose(f);
            printf("# wrote %lld tuples to %s\n", (long long)s.t_full_size, path);
        }
    }

    // Optional: text dump for content-level verification (TC_DUMP=<file>).
    const char *dump = getenv("TC_DUMP");
    if (dump && dump[0]) {
        FILE *f = fopen(dump, "w");
        if (f) {
            for (long long i = 0; i < s.t_full_size; i++)
                fprintf(f, "%d %d\n", host[i].value, host[i].key);
            fclose(f);
        }
    }
    free(host);

    v0_teardown(s);
    return 0;
}
