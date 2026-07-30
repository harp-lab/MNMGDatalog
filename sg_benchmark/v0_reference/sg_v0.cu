// sg_v0.cu  -  Version 0: reference (original MNMGDatalog SG algorithm)
//
// Faithful single-GPU port of MNMGDatalog/sg.cu (MPI removed), using the ORIGINAL
// algorithm: hash joins followed by Thrust sort / unique / set_difference / merge
// to maintain a sorted `t_full` relation and a `t_delta` of newly discovered
// facts.
//
//   base:  sg(x,y) :- edge(p,x), edge(p,y), x != y.
//          -> get_join(edge_ht, edges) then remove pairs with key == value.
//   rec :  sg(x,y) :- edge(a,x), sg(a,b), edge(b,y).
//          -> tmp(b,x) :- edge(a,x), sg(a,b).      (first join + reverse)
//             sg(x,y)  :- tmp(b,x), edge(b,y).     (second join + reverse)
//          then set_difference(t_delta, t_full) (novelty) and merge into t_full.
//   stop:  when t_full stops growing.
//
// This file has its OWN main and state and does not use the sg_build/sg_run_once/
// sg_destroy hooks. It reuses only small helpers from sg_core.cuh.

#include "../common/sg_core.cuh"

#include <thrust/reduce.h>
#include <thrust/scan.h>
#include <thrust/sort.h>
#include <thrust/unique.h>
#include <thrust/merge.h>
#include <thrust/remove.h>
#include <thrust/set_operations.h>
#include <thrust/execution_policy.h>

const char *SG_VERSION = "reference";

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
// SG base predicate: drop pairs where x == y (is_key_equal_value in utils.cu).
struct is_key_equal_value {
    __host__ __device__ bool operator()(const Entity &e) const {
        return e.key == e.value;
    }
};

// ---- kernels --------------------------------------------------------------
__global__ void v0_build_edges(const int *edges, int n, Entity *table, int cap) {
    int idx = blockIdx.x * blockDim.x + threadIdx.x;
    int stride = blockDim.x * gridDim.x;
    for (int i = idx; i < n; i += stride) {
        int key = edges[i * 2], value = edges[i * 2 + 1];
        int pos = sg_get_position(key, cap);
        while (true) {
            int existing = atomicCAS(&table[pos].key, -1, key);
            if (existing == -1) { table[pos].value = value; break; }
            pos = (pos + 1) & (cap - 1);
        }
    }
}

// Initial t_delta = edges as Entity(key=src, value=dst).
__global__ void v0_make_edge_entities(const int *edges, int n, Entity *out) {
    int idx = blockIdx.x * blockDim.x + threadIdx.x;
    int stride = blockDim.x * gridDim.x;
    for (int i = idx; i < n; i += stride) {
        out[i].key   = edges[i * 2];
        out[i].value = edges[i * 2 + 1];
    }
}

// Swap key/value in place (reverse_entity_ar in kernels.cu).
__global__ void v0_reverse(Entity *ar, int n) {
    int idx = blockIdx.x * blockDim.x + threadIdx.x;
    int stride = blockDim.x * gridDim.x;
    for (int i = idx; i < n; i += stride) {
        int t = ar[i].key; ar[i].key = ar[i].value; ar[i].value = t;
    }
}

// Hash join (mirrors common/join.cu get_join_result_size_entity / _entity).
// Produces, for each rel row (rk, rv), one output (ht.value, rv) per matching
// ht slot with key == rk.
__global__ void v0_join_size(const Entity *ht, int ht_size,
                             const Entity *rel, int rel_size, int *out) {
    int idx = blockIdx.x * blockDim.x + threadIdx.x;
    int stride = blockDim.x * gridDim.x;
    for (int i = idx; i < rel_size; i += stride) {
        int key = rel[i].key, cnt = 0, pos = sg_get_position(key, ht_size);
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
        int key = rel[i].key, value = rel[i].value;
        int start = offset[i], pos = sg_get_position(key, ht_size);
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

static void v0_sort_unique(Entity *&ar, int &n) {
    if (n == 0) return;
    thrust::sort(thrust::device, ar, ar + n, set_cmp());
    n = (int)(thrust::unique(thrust::device, ar, ar + n, is_equal()) - ar);
}

// ---------------------------------------------------------------------------
// State
// ---------------------------------------------------------------------------
struct V0State {
    int grid = 0, block = 512;
    int n_edges = 0;
    int input_rows = 0;
    int *d_edges = nullptr;
    Entity *hash_table = nullptr;      // edge hash table keyed by source
    int hash_table_size = 0;

    Entity *t_delta = nullptr;  int t_delta_size = 0;
    Entity *t_full  = nullptr;  long long t_full_size = 0;

    double t_fileio = 0.0, t_h2d = 0.0, t_setup = 0.0;
    double peak_mem_mb = 0.0;
};

static void v0_setup(V0State &s, const char *file) {
    int sm = 0, dev = 0;
    cudaGetDevice(&dev);
    cudaDeviceGetAttribute(&sm, cudaDevAttrMultiProcessorCount, dev);
    s.block = 512; s.grid = 32 * sm;

    sg_warm_up_kernel<<<1, 1>>>();
    void *warm = nullptr;
    checkCuda(cudaMalloc(&warm, sizeof(int)));
    checkCuda(cudaMemset(warm, 0, sizeof(int)));
    checkCuda(cudaFree(warm));
    checkCuda(cudaDeviceSynchronize());

    double t0 = sg_now();
    int *edges_host = sg_read_bin(file, &s.n_edges);
    s.input_rows = s.n_edges;
    s.t_fileio = sg_now() - t0;

    t0 = sg_now();
    checkCuda(cudaMalloc((void **)&s.d_edges, s.n_edges * 2 * sizeof(int)));
    checkCuda(cudaMemcpy(s.d_edges, edges_host, s.n_edges * 2 * sizeof(int),
                         cudaMemcpyHostToDevice));
    checkCuda(cudaDeviceSynchronize());
    s.t_h2d = sg_now() - t0;
    free(edges_host);

    // Edge hash table keyed by source (0.6 load factor).
    t0 = sg_now();
    s.hash_table_size = (int)sg_next_pow2((long)std::ceil(s.n_edges / 0.6));
    if (s.hash_table_size < 2) s.hash_table_size = 2;
    checkCuda(cudaMalloc((void **)&s.hash_table, (long)s.hash_table_size * sizeof(Entity)));
    checkCuda(cudaMemset(s.hash_table, 0xFF, (long)s.hash_table_size * sizeof(Entity)));
    v0_build_edges<<<s.grid, s.block>>>(s.d_edges, s.n_edges, s.hash_table, s.hash_table_size);
    checkCuda(cudaDeviceSynchronize());
    s.t_setup = sg_now() - t0;
}

// Rebuild the initial t_delta / t_full for a fresh run (untimed seed). This
// computes the base case sg(x,y):-edge(p,x),edge(p,y),x!=y.
static void v0_reset_state(V0State &s) {
    if (s.t_delta) { cudaFree(s.t_delta); s.t_delta = nullptr; }
    if (s.t_full)  { cudaFree(s.t_full);  s.t_full  = nullptr; }

    // edges as entities, deduped -> used as the probe relation for the base join.
    Entity *edges_ent = nullptr;
    checkCuda(cudaMalloc((void **)&edges_ent, (long)s.n_edges * sizeof(Entity)));
    v0_make_edge_entities<<<s.grid, s.block>>>(s.d_edges, s.n_edges, edges_ent);
    checkCuda(cudaDeviceSynchronize());
    int edges_ent_size = s.n_edges;
    v0_sort_unique(edges_ent, edges_ent_size);

    // base join: for each edge(p,x) probe ht[key=p] -> (y, x); result key=y,value=x.
    // We want sg(x,y). join produces (ht.value=y, rel.value=x) = (y,x); after we
    // reverse we would get (x,y). But the original removes x==y then keeps as-is
    // (it stores sg reversed throughout and reverses only at the very end). To
    // emit canonical (x,y) here we reverse each base pair (y,x)->(x,y).
    int base_size = 0;
    Entity *base = v0_get_join(s.grid, s.block, s.hash_table, s.hash_table_size,
                               edges_ent, edges_ent_size, &base_size);
    cudaFree(edges_ent);
    // remove x==y (here pair is (y,x): key==value iff x==y)
    if (base_size > 0) {
        Entity *end = thrust::remove_if(thrust::device, base, base + base_size,
                                        is_key_equal_value());
        base_size = (int)(end - base);
        v0_reverse<<<s.grid, s.block>>>(base, base_size);  // (y,x) -> (x,y)
        checkCuda(cudaDeviceSynchronize());
    }
    v0_sort_unique(base, base_size);

    s.t_delta = base;
    s.t_delta_size = base_size;

    checkCuda(cudaMalloc((void **)&s.t_full, (long)(s.t_delta_size ? s.t_delta_size : 1) * sizeof(Entity)));
    if (s.t_delta_size > 0)
        checkCuda(cudaMemcpy(s.t_full, s.t_delta, (long)s.t_delta_size * sizeof(Entity),
                             cudaMemcpyDeviceToDevice));
    s.t_full_size = s.t_delta_size;
}

// The timed fixpoint (two joins per iteration).
static int v0_run_once(V0State &s, double *seconds) {
    cudaEvent_t start, stop;
    cudaEventCreate(&start); cudaEventCreate(&stop);
    cudaEventRecord(start, 0);

    int iterations = 0;
    while (true) {
        // first join: tmp(b,x) :- edge(a,x), sg(a,b).
        // probe ht[key = sg.key = a] -> (x = ht.value, b = sg.value); result is
        // (x, b). reverse -> (b, x) = tmp.
        int fj_size = 0;
        Entity *fj = v0_get_join(s.grid, s.block, s.hash_table, s.hash_table_size,
                                 s.t_delta, s.t_delta_size, &fj_size);
        if (fj_size > 0) {
            v0_reverse<<<s.grid, s.block>>>(fj, fj_size);   // (x,b)->(b,x)
            checkCuda(cudaDeviceSynchronize());
        }
        v0_sort_unique(fj, fj_size);

        // second join: sg(x,y) :- tmp(b,x), edge(b,y).
        // probe ht[key = tmp.key = b] -> (y = ht.value, x = tmp.value); result is
        // (y, x). reverse -> (x, y) = sg.
        int sj_size = 0;
        Entity *sj = v0_get_join(s.grid, s.block, s.hash_table, s.hash_table_size,
                                 fj, fj_size, &sj_size);
        cudaFree(fj);
        if (sj_size > 0) {
            v0_reverse<<<s.grid, s.block>>>(sj, sj_size);   // (y,x)->(x,y)
            checkCuda(cudaDeviceSynchronize());
        }
        v0_sort_unique(sj, sj_size);

        cudaFree(s.t_delta);
        s.t_delta = sj;
        s.t_delta_size = sj_size;

        // novelty: keep only facts not already in t_full.
        s.t_delta_size = (int)(thrust::set_difference(thrust::device,
                               s.t_delta, s.t_delta + s.t_delta_size,
                               s.t_full, s.t_full + s.t_full_size,
                               s.t_delta, set_cmp()) - s.t_delta);

        // merge new facts into t_full.
        long long new_full_size = (long long)s.t_delta_size + s.t_full_size;
        Entity *new_full = nullptr;
        checkCuda(cudaMalloc((void **)&new_full, (new_full_size ? new_full_size : 1) * sizeof(Entity)));
        thrust::merge(thrust::device,
                      s.t_full, s.t_full + s.t_full_size,
                      s.t_delta, s.t_delta + s.t_delta_size,
                      new_full, set_cmp());
        double used = sg_mem_used_mb();
        if (used > s.peak_mem_mb) s.peak_mem_mb = used;

        cudaFree(s.t_full);
        s.t_full = new_full;

        long long old_size = s.t_full_size;
        s.t_full_size = new_full_size;
        iterations++;
        if (old_size == s.t_full_size) break;  // no growth -> fixpoint
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

int main(int argc, char **argv) {
    const char *input_file = (argc >= 2) ? argv[1] : "../data/data_10.bin";
    (void)((argc >= 3) ? atol(argv[2]) : 64);      // capacity_mult unused by v0
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
    unsigned long long sg = (unsigned long long)s.t_full_size;
    double med_t = sg_median(times, repeats);
    free(times);

    // D2H: memcpy only (host malloc excluded), symmetric with v1-v3.
    Entity *host = (Entity *)malloc((size_t)(s.t_full_size ? s.t_full_size : 1) * sizeof(Entity));
    double t0 = sg_now();
    checkCuda(cudaMemcpy(host, s.t_full, (size_t)s.t_full_size * sizeof(Entity),
                         cudaMemcpyDeviceToHost));
    double d2h = sg_now() - t0;

    double fileio = s.t_fileio;
    if (!getenv("SG_NO_OUTPUT")) {
        double tw = sg_now();
        char path[4096];
        snprintf(path, sizeof(path), "%s_%s_sg.bin", input_file, SG_VERSION);
        FILE *f = fopen(path, "wb");
        if (f) {
            for (long long i = 0; i < s.t_full_size; i++) {
                int pair[2] = { host[i].key, host[i].value };  // (x,y)
                fwrite(pair, sizeof(int), 2, f);
            }
            fclose(f);
            printf("# wrote %lld tuples to %s\n", (long long)s.t_full_size, path);
        }
        fileio += sg_now() - tw;
    }

    sg_print_header();
    sg_print_row(SG_VERSION, s.input_rows, iterations, sg,
                 fileio, s.t_h2d, s.t_setup, /*build=*/0.0,
                 med_t, min_t, d2h, s.peak_mem_mb, repeats, input_file);

    const char *dump = getenv("SG_DUMP");
    if (dump && dump[0]) {
        FILE *f = fopen(dump, "w");
        if (f) {
            for (long long i = 0; i < s.t_full_size; i++)
                fprintf(f, "%d %d\n", host[i].key, host[i].value);
            fclose(f);
        }
    }
    free(host);

    v0_teardown(s);
    return 0;
}
