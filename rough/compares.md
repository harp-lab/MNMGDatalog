### Local Comparison
```shell
# fe_body
./tc.out data/data_163734.bin 0 1                                           
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 163,734 | 1 | 188 | 156,120,489 |   8.8525 |   0.0005 |   0.3826 |   0.0001 |   0.3830 |   0.0010 |   0.0025 |   0.9635 |   6.6418 |   0.0607 | data/data_163734.bin_tc.bin |

./TC ../data/data_163734.txt
Path counts 156120489
TC time: 9.19599
join detail: 
compute size time:  0.0349251
reduce + scan time: 0.111364
fetch result time:  0.27773
sort time:          1.54918
build index time:   0
merge time:         0
unique time:        0.102802

# ego-facebook
./tc.out data/data_88234.bin 0 1
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 88,234 | 1 | 17 | 2,508,102 |   0.1581 |   0.0004 |   0.0095 |   0.0001 |   0.0290 |   0.0009 |   0.0015 |   0.0885 |   0.0328 |   0.0014 | data/data_88234.bin_tc.bin |

./TC ../data/data_88234.txt
Path counts 2508102
TC time: 0.269959
join detail: 
compute size time:  0.00207965
reduce + scan time: 0.00299011
fetch result time:  0.0169337
sort time:          0.177641
build index time:   0
merge time:         0
unique time:        0.0127677

# SF.cedge
./tc.out data/data_223001.bin 0 0
| # Input | # Process | # Iterations | # TC | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 223,001 | 1 | 287 | 80,498,014 |   6.4314 |   0.0007 |   0.1969 |   0.0001 |   0.5332 |   0.0016 |   0.0039 |   0.3310 |   5.1427 |   0.0374 | data/data_223001.bin_tc.bin |

./TC ../data/data_223001.txt
Path counts 80485066
TC time: 5.99752
join detail: 
compute size time:  0.02525
reduce + scan time: 0.193462
fetch result time:  0.223986
sort time:          0.343417
build index time:   0
merge time:         0
unique time:        0.0219739


# SG
#OL.cedge
./sg.out data/data_7035.bin 0 1   
| # Input | # Process | # Iterations | # SG | Total Time | Initialization | File I/O | Hashtable | Join | Buffer preparation | Communication | Deduplication | Merge | Finalization | Output |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 7,035 | 1 | 56 | 285,431 |   0.0394 |   0.0004 |   0.0124 |   0.0001 |   0.0097 |   0.0010 |   0.0002 |   0.0088 |   0.0170 |   0.0022 | data/data_7035.bin_sg.bin |

./SG ../data/data_7035.txt
sg counts 285431
sg time: 0.0761541
join detail: 
compute size time:  0.00341037
reduce + scan time: 0.00899975
fetch result time:  0.004048
sort time:          0.0143057
build index time:   0
merge time:         0
unique time:        0.00425962

```