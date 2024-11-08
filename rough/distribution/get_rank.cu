__host__ __device__ int get_rank(int key, int total_rank) {
    key ^= key >> 16;
    key *= 0x85ebca6b;
    key ^= key >> 13;
    key *= 0xc2b2ae35;
    key ^= key >> 16;
//    return key % total_rank;

    int total_buckets = 1025;
    int bucket_id = key % total_buckets;
    return bucket_id % total_rank;
}
