Without MPI barrier

```
mpirun -np 4 ./tc.out data/data_163734.bin 0 0 

| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 4 | 188 | 156,120,489 |   7.0222 |   0.0007 |   9.3205 |   0.0006 |   0.3508 |   0.6995 |   2.0004 |   0.4379 |   3.1653 |   0.3668 | data/data_163734.bin_tc.bin |
➜  mnmgJOIN git:(feature/large-buffer) 

```