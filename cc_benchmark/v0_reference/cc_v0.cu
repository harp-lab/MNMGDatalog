// cc_v0.cu  -  Version 0: reference (original MNMGDatalog WCC algorithm)
//
// Faithful single-GPU port of MNMGDatalog/wcc.cu (MPI removed), using the ORIGINAL
// min-label sort-merge algorithm:
//
//   edge(x,y) :- edge(y,x).                 (symmetric edge relation)
//   cc(x,x)   :- edge(x,_).                  (seed each node with itself)
//   cc(y,c)   :- cc(x,c), edge(x,y).         (propagate; keep min c per node)
//   stop when no node's label changes (t_delta empties).
//
//   join      : hash join of t_delta(node,comp) with the edge table -> (dst,comp)
//   dedup     : thrust::sort + thrust::unique
//   union     : thrust::merge(cc, join_result)
//   min-label : thrust::unique(is_equal_key) on the sorted merge keeps, for each
//               node, the row with the smallest component (set_cmp sorts value
//               ascending within a key, so the first per key is the minimum).
//   novelty   : thrust::set_difference(new_cc, cc) -> only changed labels
//
// The canonical result is cc(node, component) = the minimum reachable node id per
// node, exactly what v1-v3 compute with the dense atomicMin label array.
//
// This file has its OWN main and state and does not use the cc_build/cc_run_once/
// cc_destroy hooks. It reuses only small helpers from cc_core.cuh.

#include "../common/cc_core.cuh"

#include <thrust/reduce.h>
#include <thrust/scan.h>
#include <thrust/sort.h>
#include <thrust/unique.h>
#include <thrust/merge.h>
#include <thrust/set_operations.h>
#include <thrust/execution_policy.h>

const char *CC_VERSION = "reference";

// ---- comparators (from MNMGDatalog/common/utils.cu) -----------------------
struct set_cmp {
    __host__ __device__ bool operator()(const Entity &l, const Entity &r) const {
        if (l.key == r.key) return l.value < r.value;   // value ascending within key
        return l.key < r.key;
    }
};
struct is_equal {
    __host__ __device__ bool operator()(const Entity &l, const Entity &r) const {
        return (l.key == r.key) && (l.value == r.value);
    }
};
// keep only the first row per key (== minimum component after set_cmp sort).
struct is_equal_key {
    __host__ __device__ bool operator()(const Entity &l, const Entity &r) const {
        return l.key == r.key;
    }
};

// ---- kernels --------------------------------------------------------------
__global__ void v0_max_node(const int *edges, int n, int *max_node) {
    int idx = blockIdx.x * blockDim.x + threadIdx.x;
    int stride = blockDim.x * gridDim.x;
    for (int i = idx; i < n; i += stride) {
        atomicMax(max_node, edges[i * 2]);
        atomicMax(max_node, edges[i * 2 + 1]);
    }
}

// Build the (symmetric) edge hash table keyed by source.
__global__ void v0_build_edges(const int *edges, int n, Entity *table, int cap) {
    int idx = blockIdx.x * blockDim.x + threadIdx.x;
    int stride = blockDim.x * gridDim.x;
    for (int i = idx; i < n; i += stride) {
        int key = edges[i * 2], value = edges[i * 2 + 1];
        // hash by key (Murmur3 finalizer, same as get_position)
        int h = key;
        h ^= h >> 16; h *= 0x85ebca6b; h ^= h >> 13; h *= 0xc2b2ae35; h ^= h >> 16;
        int pos = h & (cap - 1);
        while (true) {
            int existing = atomicCAS(&table[pos].key, -1, key);
            if (existing == -1) { table[pos].value = value; break; }
            pos = (pos + 1) & (cap - 1);
        }
    }
}

// Seed cc(x,x) for every node id that appears as an edge source (== every node,
// since the edge list is symmetric). We simply seed all num_nodes labels.
__global__ void v0_init_cc(Entity *cc, int num_nodes) {
    int idx = blockIdx.x * blockDim.x + threadIdx.x;
    int stride = blockDim.x * gridDim.x;
    for (int i = idx; i < num_nodes; i += stride) { cc[i].key = i; cc[i].value = i; }
}

// Hash join: for each cc row (node, comp) probe the edge table for edge(node,dst)
// and emit (dst, comp). Mirrors get_join over an edge table keyed by source.
__global__ void v0_join_size(const Entity *ht, int ht_size,
                             const Entity *rel, int rel_size, int *out) {
    int idx = blockIdx.x * blockDim.x + threadIdx.x;
    int stride = blockDim.x * gridDim.x;
    for (int i = idx; i < rel_size; i += stride) {
        int key = rel[i].key, cnt = 0;
        int h = key; h ^= h >> 16; h *= 0x85ebca6b; h ^= h >> 13; h *= 0xc2b2ae35; h ^= h >> 16;
        int pos = h & (ht_size - 1);
        while (true) {
            if (ht[pos].key == key) cnt++;
            else if (ht[pos].key == -1) break;
            pos = (pos + 1) & (ht_size - 1);
        }
        out[i] = cnt;
    }
}
__global__ void v0_join_write(const Entity *ht, int ht_size,
                              const Entity *rel, int rel_size,
                              const int *offset, Entity *result) {
    int idx = blockIdx.x * blockDim.x + threadIdx.x;
    int stride = blockDim.x * gridDim.x;
    for (int i = idx; i < rel_size; i += stride) {
        int key = rel[i].key, value = rel[i].value;  // (node, comp)
        int start = offset[i];
        int h = key; h ^= h >> 16; h *= 0x85ebca6b; h ^= h >> 13; h *= 0xc2b2ae35; h ^= h >> 16;
        int pos = h & (ht_size - 1);
        while (true) {
            if (ht[pos].key == key) {
                result[start].key = ht[pos].value;   // dst
                result[start].value = value;         // comp
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
    int input_rows = 0;
    int n_edges = 0;                 // symmetric edges
    int num_nodes = 0;
    int *d_edges = nullptr;          // symmetric edge list
    Entity *hash_table = nullptr;    // edge hash table keyed by source
    int hash_table_size = 0;

    Entity *cc = nullptr;      long long cc_size = 0;   // (node, min component)
    Entity *t_delta = nullptr; int t_delta_size = 0;

    double t_fileio = 0.0, t_h2d = 0.0, t_setup = 0.0;
    double peak_mem_mb = 0.0;
};

static void v0_setup(V0State &s, const char *file) {
    int sm = 0, dev = 0;
    cudaGetDevice(&dev);
    cudaDeviceGetAttribute(&sm, cudaDevAttrMultiProcessorCount, dev);
    s.block = 512; s.grid = 32 * sm;

    cc_warm_up_kernel<<<1, 1>>>();
    void *warm = nullptr;
    checkCuda(cudaMalloc(&warm, sizeof(int)));
    checkCuda(cudaMemset(warm, 0, sizeof(int)));
    checkCuda(cudaFree(warm));
    checkCuda(cudaDeviceSynchronize());

    double t0 = cc_now();
    int rows = 0;
    int *edges_host = cc_read_bin(file, &rows);
    s.input_rows = rows;
    s.t_fileio = cc_now() - t0;

    // Build the symmetric edge list on the host, then transfer.
    s.n_edges = rows * 2;
    t0 = cc_now();
    int *sym = (int *)malloc((size_t)s.n_edges * 2 * sizeof(int));
    for (int i = 0; i < rows; i++) {
        int u = edges_host[i * 2], v = edges_host[i * 2 + 1];
        sym[i * 2] = u;             sym[i * 2 + 1] = v;
        sym[(rows + i) * 2] = v;    sym[(rows + i) * 2 + 1] = u;
    }
    free(edges_host);
    checkCuda(cudaMalloc((void **)&s.d_edges, (size_t)s.n_edges * 2 * sizeof(int)));
    checkCuda(cudaMemcpy(s.d_edges, sym, (size_t)s.n_edges * 2 * sizeof(int),
                         cudaMemcpyHostToDevice));
    checkCuda(cudaDeviceSynchronize());
    free(sym);
    s.t_h2d = cc_now() - t0;

    t0 = cc_now();
    int *d_max = nullptr;
    checkCuda(cudaMalloc((void **)&d_max, sizeof(int)));
    checkCuda(cudaMemset(d_max, 0, sizeof(int)));
    v0_max_node<<<s.grid, s.block>>>(s.d_edges, s.n_edges, d_max);
    checkCuda(cudaDeviceSynchronize());
    int max_node = 0;
    checkCuda(cudaMemcpy(&max_node, d_max, sizeof(int), cudaMemcpyDeviceToHost));
    cudaFree(d_max);
    s.num_nodes = max_node + 1;

    s.hash_table_size = (int)cc_next_pow2((long)std::ceil(s.n_edges / 0.6));
    if (s.hash_table_size < 2) s.hash_table_size = 2;
    checkCuda(cudaMalloc((void **)&s.hash_table, (long)s.hash_table_size * sizeof(Entity)));
    checkCuda(cudaMemset(s.hash_table, 0xFF, (long)s.hash_table_size * sizeof(Entity)));
    v0_build_edges<<<s.grid, s.block>>>(s.d_edges, s.n_edges, s.hash_table, s.hash_table_size);
    checkCuda(cudaDeviceSynchronize());
    s.t_setup = cc_now() - t0;
}

// Rebuild the initial cc / t_delta for a fresh run (untimed seed).
static void v0_reset_state(V0State &s) {
    if (s.cc)      { cudaFree(s.cc);      s.cc = nullptr; }
    if (s.t_delta) { cudaFree(s.t_delta); s.t_delta = nullptr; }

    checkCuda(cudaMalloc((void **)&s.cc, (long)s.num_nodes * sizeof(Entity)));
    v0_init_cc<<<s.grid, s.block>>>(s.cc, s.num_nodes);
    checkCuda(cudaDeviceSynchronize());
    // already sorted by construction (key = value = i, ascending)
    s.cc_size = s.num_nodes;

    checkCuda(cudaMalloc((void **)&s.t_delta, (long)s.num_nodes * sizeof(Entity)));
    checkCuda(cudaMemcpy(s.t_delta, s.cc, (long)s.num_nodes * sizeof(Entity),
                         cudaMemcpyDeviceToDevice));
    s.t_delta_size = s.num_nodes;
}

// The timed min-label fixpoint (mirrors wcc.cu single-GPU).
static int v0_run_once(V0State &s, double *seconds) {
    cudaEvent_t start, stop;
    cudaEventCreate(&start); cudaEventCreate(&stop);
    cudaEventRecord(start, 0);

    int iterations = 0;
    while (true) {
        // propagate: cc(y,c) :- cc(x,c), edge(x,y).
        int jr_size = 0;
        Entity *jr = v0_get_join(s.grid, s.block, s.hash_table, s.hash_table_size,
                                 s.t_delta, s.t_delta_size, &jr_size);

        // dedup the join result
        if (jr_size > 0) {
            thrust::sort(thrust::device, jr, jr + jr_size, set_cmp());
            jr_size = (int)(thrust::unique(thrust::device, jr, jr + jr_size, is_equal()) - jr);
        }

        // union: merge(cc, jr) -> new_cc (sorted)
        long long merged_size = s.cc_size + jr_size;
        Entity *new_cc = nullptr;
        checkCuda(cudaMalloc((void **)&new_cc, (merged_size ? merged_size : 1) * sizeof(Entity)));
        thrust::merge(thrust::device,
                      s.cc, s.cc + s.cc_size,
                      jr, jr + jr_size,
                      new_cc, set_cmp());
        double used = cc_mem_used_mb();
        if (used > s.peak_mem_mb) s.peak_mem_mb = used;
        if (jr) cudaFree(jr);

        // min-label: keep the first row per key (== minimum component)
        long long new_cc_size = (long long)(thrust::unique(thrust::device,
                                    new_cc, new_cc + merged_size, is_equal_key()) - new_cc);

        // novelty: t_delta = set_difference(new_cc, cc) -> only changed labels
        Entity *t_delta_new = nullptr;
        checkCuda(cudaMalloc((void **)&t_delta_new, (new_cc_size ? new_cc_size : 1) * sizeof(Entity)));
        int td_size = (int)(thrust::set_difference(thrust::device,
                            new_cc, new_cc + new_cc_size,
                            s.cc, s.cc + s.cc_size,
                            t_delta_new, set_cmp()) - t_delta_new);

        cudaFree(s.t_delta);
        s.t_delta = t_delta_new;
        s.t_delta_size = td_size;

        cudaFree(s.cc);
        s.cc = new_cc;
        s.cc_size = new_cc_size;

        iterations++;
        if (td_size == 0) break;  // no label changed -> fixpoint
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
    if (s.cc)      cudaFree(s.cc);
    if (s.t_delta) cudaFree(s.t_delta);
}

int main(int argc, char **argv) {
    const char *input_file = (argc >= 2) ? argv[1] : "../data/data_10.bin";
    (void)((argc >= 3) ? atol(argv[2]) : 64);
    int repeats = (argc >= 4) ? atoi(argv[3]) : 1;
    if (repeats < 1) repeats = 1;

    V0State s;
    v0_setup(s, input_file);

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
    unsigned long long cc = (unsigned long long)s.cc_size;   // == num_nodes
    double med_t = cc_median(times, repeats);
    free(times);

    // D2H: memcpy only (host malloc excluded), symmetric with v1-v3.
    Entity *host = (Entity *)malloc((size_t)(s.cc_size ? s.cc_size : 1) * sizeof(Entity));
    double t0 = cc_now();
    checkCuda(cudaMemcpy(host, s.cc, (size_t)s.cc_size * sizeof(Entity),
                         cudaMemcpyDeviceToHost));
    double d2h = cc_now() - t0;

    double fileio = s.t_fileio;
    if (!getenv("CC_NO_OUTPUT")) {
        double tw = cc_now();
        char path[4096];
        snprintf(path, sizeof(path), "%s_%s_cc.bin", input_file, CC_VERSION);
        FILE *f = fopen(path, "wb");
        if (f) {
            for (long long i = 0; i < s.cc_size; i++) {
                int pair[2] = { host[i].key, host[i].value };  // (node, comp)
                fwrite(pair, sizeof(int), 2, f);
            }
            fclose(f);
            printf("# wrote %lld tuples to %s\n", (long long)s.cc_size, path);
        }
        fileio += cc_now() - tw;
    }

    cc_print_header();
    cc_print_row(CC_VERSION, s.input_rows, iterations, cc,
                 fileio, s.t_h2d, s.t_setup, /*build=*/0.0,
                 med_t, min_t, d2h, s.peak_mem_mb, repeats, input_file);

    const char *dump = getenv("CC_DUMP");
    if (dump && dump[0]) {
        FILE *f = fopen(dump, "w");
        if (f) {
            for (long long i = 0; i < s.cc_size; i++)
                fprintf(f, "%d %d\n", host[i].key, host[i].value);
            fclose(f);
        }
    }
    free(host);

    v0_teardown(s);
    return 0;
}
