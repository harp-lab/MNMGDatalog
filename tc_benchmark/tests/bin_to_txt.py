#!/usr/bin/env python3
"""Convert a binary edge file (raw int32 src,dst pairs) to a tab-separated text
edge list, one edge per line. GPUlog / gdlog reads this text format
(fscanf "%ld\\t%ld"); our benchmarks read the .bin. This lets both tools run on
the *identical* graph.

Usage:  python3 bin_to_txt.py <in.bin> <out.txt>
"""
import struct
import sys


def main():
    if len(sys.argv) != 3:
        print("usage: bin_to_txt.py <in.bin> <out.txt>")
        sys.exit(1)
    src, dst = sys.argv[1], sys.argv[2]
    with open(src, "rb") as f:
        data = f.read()
    n = len(data) // 8  # two int32 per edge
    ints = struct.unpack("<%di" % (n * 2), data[: n * 8])
    with open(dst, "w") as out:
        w = out.write
        for i in range(n):
            w("%d\t%d\n" % (ints[2 * i], ints[2 * i + 1]))
    print("wrote %d edges to %s" % (n, dst))


if __name__ == "__main__":
    main()
