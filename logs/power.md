- Setup in Polaris interactive mode
```shell
#MNMGDatalog
cd /eagle/dist_relational_alg/arsho/mnmgJOIN
chmod +x set_affinity_gpu_polaris.sh
## Traditional MPI

module use /soft/modulefiles
module load conda; conda activate base
export CUDA_VISIBLE_DEVICES=0
module load nvhpc-mixed/23.9
module load craype-accel-nvidia80
export MPICH_GPU_SUPPORT_ENABLED=0
CC tc.cu -o tc_interactive.out -O3

#GPULog
module use /soft/modulefiles
cd gdlog
module load spack-pe-base cmake
export CUDA_VISIBLE_DEVICES=0
module load nvhpc-mixed/23.9
cd build
module load conda; conda activate base
python power.py ./TC ../data/hpc_talk.txt 0

```
- GPULog TC
```shell
(2022-09-08/base) arsho::x3003c0s7b1n0 { ~/gdlog/build }-> python power.py fe_body.csv ./TC /eagle/dist_relational_alg/arsho/mnmgJOIN/data/data_163734.txt 1
Input graph rows: 163734
edge size 163734
 memory alloc time: 1.93314 ; Join time: 0.767706 ; merge full time: 0.530812 ; rebuild full time: 4.096e-06 ; rebuild delta time: 0.0608891 ; set diff time: 1.07727
Rebuild relation detail time : rebuild rel sort time: 0 ; rebuild rel unique time: 0 ; rebuild rel index time: 0.0434923
Path counts 156120489
TC time: 4.54014

--------------------------------------------------
GPU USAGE REPORT
--------------------------------------------------
Generated Report File: fe_body.csv
TotalTime(S),TotalEnergy(J),AvgPowerDrawTimed(W),MinDrawSampled(W),Q1DrawSampled(W),MedianDrawSampled(W),Q3DrawSampled(W),MaxDrawSampled(W),AllDrawSamples(W)
5.4264,646.7235,119.1819,49.68,92.00,111.88,167.66,193.10,"49.68,57.02,55.76,108.37,172.94,191.04,193.10,183.16,186.36,162.40,174.68,169.41,105.44,144.57,91.51,124.26,107.50,130.27,109.84,93.48,113.92,86.14,90.22,123.54,94.62,71.25"
--------------------------------------------------

(2022-09-08/base) arsho::x3003c0s7b1n0 { ~/gdlog/build }-> python power.py vsp.csv ./TC /eagle/dist_relational_alg/arsho/mnmgJOIN/data/vsp_finan512_scagr7-2c_rlfddd.txt 1
Input graph rows: 552020
edge size 552020
 memory alloc time: 59.0704 ; Join time: 3.12457 ; merge full time: 9.83109 ; rebuild full time: 3.072e-06 ; rebuild delta time: 0.290648 ; set diff time: 18.2907
Rebuild relation detail time : rebuild rel sort time: 0 ; rebuild rel unique time: 0 ; rebuild rel index time: 0.223414
Path counts 910070918
TC time: 91.1175

--------------------------------------------------
GPU USAGE REPORT
--------------------------------------------------
Generated Report File: vsp.csv
TotalTime(S),TotalEnergy(J),AvgPowerDrawTimed(W),MinDrawSampled(W),Q1DrawSampled(W),MedianDrawSampled(W),Q3DrawSampled(W),MaxDrawSampled(W),AllDrawSamples(W)
92.3254,10698.5820,115.8790,49.95,71.85,73.32,164.73,238.13,"49.95,56.69,54.95,54.95,164.46,212.94,218.81,223.49,238.13,226.05,233.70,217.34,127.34,187.83,116.85,71.53,71.25,73.93,89.95,71.25,71.25,192.51,195.98,72.52,71.53,110.11,188.70,197.78,72.99,71.60,158.04,71.25,189.57,71.32,189.57,71.60,72.12,174.08,76.00,71.25,179.08,71.60,73.07,71.53,205.06,211.20,205.72,86.14,71.60,73.93,71.60,89.95,71.53,196.31,71.60,165.06,113.65,179.08,174.68,171.15,166.20,172.61,162.23,173.81,84.13,201.25,71.60,172.34,71.53,74.54,71.60,84.13,165.33,179.35,71.25,201.52,71.60,80.33,166.80,176.74,71.60,76.88,171.15,179.35,71.60,75.05,199.79,162.72,71.60,79.46,145.76,201.85,71.60,101.03,71.53,74.46,165.33,211.47,71.53,151.03,71.53,89.08,71.53,77.20,71.53,73.39,70.38,105.44,127.07,176.15,185.16,210.60,181.96,176.15,187.23,211.80,182.29,172.94,127.34,111.58,71.53,73.32,71.60,77.39,165.93,175.82,71.53,167.07,169.41,168.81,71.85,71.85,71.85,71.85,71.85,71.92,110.71,70.65,209.52,204.25,166.20,162.99,71.85,72.12,72.12,163.26,195.12,200.77,163.43,101.63,71.32,71.85,71.85,71.85,71.92,71.92,72.12,72.12,72.19,72.19,158.04,204.79,165.33,76.52,71.85,71.85,71.85,71.85,71.85,71.92,72.12,72.19,168.54,156.25,201.25,164.46,97.23,71.85,71.92,71.85,71.85,167.07,145.76,213.91,182.55,85.00,71.53,71.85,71.85,71.85,71.85,160.65,210.87,148.37,70.73,71.53,71.85,71.92,71.85,71.85,164.73,152.45,196.31,112.18,71.85,71.53,71.85,71.85,71.85,71.85,160.38,208.92,125.60,71.53,71.53,71.85,71.85,71.85,71.85,160.06,195.91,161.53,70.65,71.53,71.85,71.85,71.85,71.85,167.67,150.71,196.85,118.86,71.53,71.85,71.85,71.85,71.85,165.06,158.32,195.12,87.88,71.53,71.85,71.53,71.85,71.92,165.93,174.68,148.10,70.98,71.53,71.60,71.85,71.92,71.85,139.89,187.23,70.11,71.53,71.60,71.53,71.60,71.60,158.59,151.30,148.10,70.98,71.53,71.60,71.85,159.46,167.67,108.64,71.53,71.53,71.53,71.85,158.04,198.64,74.78,71.60,71.60,71.85,167.39,154.25,193.37,74.78,71.85,71.53,71.60,71.85,153.05,181.09,70.46,71.53,71.53,71.85,166.47,139.89,184.03,70.46,71.92,71.92,71.53,71.85,152.18,184.30,70.46,71.85,71.85,71.92,71.85,164.73,140.77,130.27,71.60,71.85,71.85,71.92,71.85,158.92,178.76,106.91,71.85,71.85,71.85,159.46,105.16,148.37,150.71,70.98,71.85,71.85,71.92,71.85,164.13,154.52,176.74,84.67,71.92,71.92,71.85,71.85,71.85,166.20,142.23,136.69,71.92,71.85,173.48,158.59,96.36,71.85,71.85,162.72,154.25,71.85,71.85,71.53,87.34,71.92"
--------------------------------------------------


(2022-09-08/base) arsho::x3003c0s7b1n0 { ~/gdlog/build }-> python power.py sf.csv ./TC /eagle/dist_relational_alg/arsho/mnmgJOIN/data/data_223001.txt 1
Input graph rows: 223001
edge size 223001
 memory alloc time: 0.887004 ; Join time: 0.399418 ; merge full time: 0.389233 ; rebuild full time: 3.072e-06 ; rebuild delta time: 0.0700897 ; set diff time: 0.746724
Rebuild relation detail time : rebuild rel sort time: 0 ; rebuild rel unique time: 0 ; rebuild rel index time: 0.0400722
Path counts 80485066
TC time: 2.71703

--------------------------------------------------
GPU USAGE REPORT
--------------------------------------------------
Generated Report File: sf.csv
TotalTime(S),TotalEnergy(J),AvgPowerDrawTimed(W),MinDrawSampled(W),Q1DrawSampled(W),MedianDrawSampled(W),Q3DrawSampled(W),MaxDrawSampled(W),AllDrawSamples(W)
3.6397,386.7794,106.2669,50.00,90.09,118.29,141.62,153.64,"50.00,56.96,58.42,90.22,111.58,149.24,147.51,126.60,146.63,153.64,151.03,125.60,126.20,90.04,125.00,97.56,105.44,70.98"
--------------------------------------------------


(2022-09-08/base) arsho::x3003c0s7b1n0 { ~/gdlog/build }-> python power.py usroads.csv ./TC /eagle/dist_relational_alg/arsho/mnmgJOIN/data/data_165435.txt 1
Input graph rows: 165435
edge size 165435
 memory alloc time: 54.6301 ; Join time: 1.82842 ; merge full time: 7.77774 ; rebuild full time: 3.072e-06 ; rebuild delta time: 0.293194 ; set diff time: 16.3223
Rebuild relation detail time : rebuild rel sort time: 0 ; rebuild rel unique time: 0 ; rebuild rel index time: 0.221798
Path counts 871365688
TC time: 81.8619

--------------------------------------------------
GPU USAGE REPORT
--------------------------------------------------
Generated Report File: usroads.csv
TotalTime(S),TotalEnergy(J),AvgPowerDrawTimed(W),MinDrawSampled(W),Q1DrawSampled(W),MedianDrawSampled(W),Q3DrawSampled(W),MaxDrawSampled(W),AllDrawSamples(W)
82.7070,9721.6278,117.5431,49.95,71.53,109.38,164.99,190.17,"49.95,57.23,54.89,111.31,155.71,172.07,172.07,174.40,177.61,170.87,179.62,190.17,178.76,109.84,161.80,79.46,95.49,157.88,190.17,85.54,179.62,74.78,165.60,172.34,157.45,71.53,71.85,164.04,108.91,71.53,99.90,133.21,71.53,181.09,82.06,71.60,148.70,152.18,172.34,180.22,119.19,76.20,71.60,91.69,189.57,163.26,72.44,71.53,174.68,71.53,161.26,71.85,184.43,71.53,71.85,185.57,76.20,71.53,183.16,168.81,78.86,71.53,72.44,71.25,72.12,71.25,183.43,71.32,171.75,71.32,167.94,71.60,159.19,71.25,144.02,71.25,74.54,71.60,87.61,167.07,160.65,71.53,72.72,161.42,113.04,71.53,72.99,167.94,153.05,71.53,74.54,70.98,164.13,162.40,162.12,71.53,80.00,71.60,73.86,71.53,95.22,118.86,189.29,178.48,157.12,165.33,170.00,169.73,167.84,163.60,168.54,166.47,168.26,159.46,167.57,147.23,159.19,151.30,165.33,180.49,165.16,70.38,86.14,71.53,72.44,71.92,74.86,71.85,84.13,151.58,157.12,70.19,72.19,71.60,72.44,71.60,74.86,171.32,168.54,99.02,127.07,71.53,72.72,71.60,76.80,159.89,159.46,71.53,71.85,71.53,74.19,166.80,157.12,71.53,71.53,70.38,70.98,147.23,143.43,171.75,71.53,71.53,71.53,71.60,71.53,178.76,175.82,170.27,167.39,71.53,71.53,71.53,71.53,71.60,71.53,71.53,71.53,71.53,71.53,71.60,71.53,131.15,111.58,115.98,128.21,154.25,130.87,70.98,168.26,160.06,173.21,165.93,166.47,168.81,162.72,165.93,173.21,147.23,175.27,71.53,178.48,177.88,176.15,169.14,71.60,71.53,71.53,71.85,71.53,71.53,71.53,71.53,71.53,71.53,71.53,71.53,71.53,71.60,71.53,71.53,162.40,154.79,135.55,117.99,160.65,164.46,141.54,155.98,148.37,123.54,172.34,150.55,148.37,153.37,165.33,139.89,144.57,159.79,101.03,70.19,71.85,71.60,71.60,71.53,71.85,71.53,186.63,71.85,186.63,182.29,176.74,170.00,173.30,162.72,142.83,153.05,72.19,117.99,77.12,71.25,71.53,71.53,71.60,71.53,71.53,72.12"
--------------------------------------------------

```
- MNMGDatalog TC
```shell

(2022-09-08/base) arsho::x3003c0s7b1n0 { /eagle/dist_relational_alg/arsho/mnmgJOIN }-> python power.py fe_body.csv ./tc_interactive.out data/data_163734.bin 0 1 1
# Input,# Process,# Iterations,# TC,Total Time,Join,Buffer preparation,Communication,Deduplication,Merge,Initialization,Hashtable,Finalization,Clear,File I/O
163734,1,188,156120489,4.0135,0.1722,0.0000,0.0000,0.3004,3.2077,0.0048,0.0001,0.0063,0.3219,0.2307

--------------------------------------------------
GPU USAGE REPORT
--------------------------------------------------
Generated Report File: fe_body.csv
TotalTime(S),TotalEnergy(J),AvgPowerDrawTimed(W),MinDrawSampled(W),Q1DrawSampled(W),MedianDrawSampled(W),Q3DrawSampled(W),MaxDrawSampled(W),AllDrawSamples(W)
5.0228,457.7908,91.1423,50.00,72.86,80.00,118.02,172.94,"50.00,56.63,106.58,131.74,172.94,156.85,74.54,74.86,80.60,139.35,80.00,71.60,115.98,83.21,73.59,120.05,71.60,72.12,74.19"
--------------------------------------------------


(2022-09-08/base) arsho::x3003c0s7b1n0 { /eagle/dist_relational_alg/arsho/mnmgJOIN }-> python power.py vsp.csv ./tc_interactive.out data/vsp_finan512_scagr7-2c_rlfddd.bin 0 1 1
# Input,# Process,# Iterations,# TC,Total Time,Join,Buffer preparation,Communication,Deduplication,Merge,Initialization,Hashtable,Finalization,Clear,File I/O
552020,1,520,910070918,81.1696,1.4329,0.0000,0.0000,1.5859,75.8484,0.0057,0.0001,0.1749,2.1217,1.0817

--------------------------------------------------
GPU USAGE REPORT
--------------------------------------------------
Generated Report File: vsp.csv
TotalTime(S),TotalEnergy(J),AvgPowerDrawTimed(W),MinDrawSampled(W),Q1DrawSampled(W),MedianDrawSampled(W),Q3DrawSampled(W),MaxDrawSampled(W),AllDrawSamples(W)
83.1724,7200.5836,86.5742,49.95,70.98,71.25,72.72,193.77,"49.95,56.96,61.63,162.12,178.15,184.03,145.76,153.05,146.04,71.53,70.98,70.98,70.65,70.65,132.88,143.43,134.68,99.02,70.65,70.65,70.98,144.90,70.98,131.15,70.65,70.65,71.85,70.65,70.65,70.98,129.40,81.79,72.72,70.65,143.43,127.94,86.47,71.53,71.85,71.85,72.72,70.98,71.25,72.72,70.65,72.99,70.65,70.65,70.98,137.29,70.98,70.65,136.69,70.65,70.65,71.53,190.17,70.98,189.29,71.53,70.98,72.12,70.98,72.72,75.05,70.98,70.65,70.98,135.22,71.25,70.98,70.98,70.98,74.46,71.25,70.98,70.98,70.98,70.98,72.12,70.98,70.98,143.43,72.12,70.98,157.12,71.25,71.25,71.25,126.47,71.53,161.53,71.25,71.25,70.98,71.25,72.12,70.98,182.83,71.53,110.38,70.98,193.77,71.53,108.64,70.98,71.25,71.85,70.98,70.98,70.98,156.58,114.19,71.25,71.25,71.25,71.25,155.71,71.25,70.98,116.53,145.44,71.25,155.98,70.98,159.46,71.25,71.25,71.25,71.85,71.25,117.99,71.25,71.25,71.25,71.25,71.25,71.25,134.95,71.25,71.25,71.53,71.25,71.25,72.12,117.12,71.25,71.25,71.53,71.25,71.25,71.25,71.25,71.25,71.25,71.85,71.53,71.25,71.53,71.25,71.25,71.25,71.25,71.85,71.25,71.25,71.53,71.25,71.25,71.53,71.53,71.25,71.53,71.25,152.18,71.53,71.53,168.81,71.25,71.25,153.64,71.53,71.25,71.53,70.98,119.73,71.25,71.25,136.41,71.25,70.98,71.25,72.44,71.25,71.53,71.25,71.25,154.25,71.25,71.25,124.13,71.25,71.25,72.72,72.12,72.12,69.51,69.19,74.78,75.05"
--------------------------------------------------




(2022-09-08/base) arsho::x3003c0s7b1n0 { /eagle/dist_relational_alg/arsho/mnmgJOIN }-> python power.py sf.csv ./tc_interactive.out data/data_223001.bin 0 1 1
# Input,# Process,# Iterations,# TC,Total Time,Join,Buffer preparation,Communication,Deduplication,Merge,Initialization,Hashtable,Finalization,Clear,File I/O
223001,1,287,80498014,2.3998,0.1449,0.0000,0.0000,0.1216,1.8759,0.0049,0.0001,0.0246,0.2277,0.1281

--------------------------------------------------
GPU USAGE REPORT
--------------------------------------------------
Generated Report File: sf.csv
TotalTime(S),TotalEnergy(J),AvgPowerDrawTimed(W),MinDrawSampled(W),Q1DrawSampled(W),MedianDrawSampled(W),Q3DrawSampled(W),MaxDrawSampled(W),AllDrawSamples(W)
3.2724,293.5918,89.7176,49.95,74.46,93.75,106.58,149.84,"49.95,56.63,93.75,124.73,149.84,110.98,98.15,103.69,88.21,74.19,106.58,75.66,74.46"
--------------------------------------------------

(2022-09-08/base) arsho::x3003c0s7b1n0 { /eagle/dist_relational_alg/arsho/mnmgJOIN }-> python power.py usroads.csv ./tc_interactive.out data/data_165435.bin 0 1 1
# Input,# Process,# Iterations,# TC,Total Time,Join,Buffer preparation,Communication,Deduplication,Merge,Initialization,Hashtable,Finalization,Clear,File I/O
165435,1,606,871365688,75.0772,1.0209,0.0000,0.0000,0.7495,71.0851,0.0051,0.0001,0.1753,2.0413,1.0152

--------------------------------------------------
GPU USAGE REPORT
--------------------------------------------------
Generated Report File: usroads.csv
TotalTime(S),TotalEnergy(J),AvgPowerDrawTimed(W),MinDrawSampled(W),Q1DrawSampled(W),MedianDrawSampled(W),Q3DrawSampled(W),MaxDrawSampled(W),AllDrawSamples(W)
76.8565,6624.1834,86.1890,49.68,70.98,71.05,73.10,197.45,"49.68,57.83,55.76,115.38,173.21,103.69,102.51,139.62,126.47,94.89,95.22,123.86,112.45,72.12,149.57,77.39,70.98,70.65,70.65,70.73,70.65,70.73,71.53,70.65,70.65,143.43,70.73,70.65,70.65,70.65,129.40,70.65,154.52,70.65,85.87,175.54,70.73,70.98,70.73,70.65,194.85,70.65,70.73,70.73,133.76,70.65,146.63,70.73,70.65,110.98,70.65,162.99,70.65,70.98,70.65,71.05,169.14,70.65,197.45,178.76,157.12,78.26,70.65,70.98,70.98,70.98,70.98,70.98,70.98,70.98,70.98,71.05,71.05,126.47,70.98,138.43,70.98,73.32,70.98,70.98,70.98,70.98,101.03,70.98,71.05,70.98,71.05,70.98,165.60,145.17,70.98,71.05,72.19,70.98,71.25,70.98,71.25,71.53,71.25,71.25,71.05,71.25,138.43,70.98,71.25,71.05,144.57,70.98,71.32,71.25,71.53,70.98,71.05,70.98,71.53,71.25,72.44,71.25,71.25,71.25,71.05,71.05,73.59,71.32,154.52,126.74,70.98,71.25,70.98,71.85,70.98,70.98,71.05,71.53,72.44,70.98,71.05,70.98,70.98,70.98,166.47,71.05,70.98,70.98,70.98,70.98,70.98,165.06,70.98,71.25,70.98,71.05,70.98,71.05,159.19,74.46,70.98,149.57,131.15,71.05,71.53,71.05,97.23,71.25,70.98,70.98,71.05,71.53,70.98,78.54,70.98,70.98,71.25,70.98,71.25,71.32,135.55,70.98,71.05,71.25,71.32,71.25,71.05,71.25,72.12,72.12,71.53,69.19,69.19,73.93"
--------------------------------------------------

```

- GPULOG SG
```shell
(2022-09-08/base) arsho::x3003c0s7b1n0 { ~/gdlog/build }-> python power.py fe_body_sg.csv ./SG /eagle/dist_relational_alg/arsho/mnmgJOIN/data/data_163734.txt 1
num of sm 108
using 18446744073709551615 as empty hash entry
Input graph rows: 163734
reversing graph ... 
finish reverse graph.
edge size 163734
Build hash table time: 0.07471
 memory alloc time: 0.000110592 ; Join time: 0.00350483 ; merge full time: 7.2704e-05 ; rebuild full time: 0.000497664 ; rebuild delta time: 0.000295936 ; set diff time: 0.000477248
Rebuild relation detail time : rebuild rel sort time: 0 ; rebuild rel unique time: 0 ; rebuild rel index time: 0.000356352
sg init counts 479984
sg init time: 0.00588902
 memory alloc time: 4.02331 ; Join time: 4.67474 ; merge full time: 0.822888 ; rebuild full time: 0.53821 ; rebuild delta time: 0.097748 ; set diff time: 1.89592
Rebuild relation detail time : rebuild rel sort time: 0 ; rebuild rel unique time: 0 ; rebuild rel index time: 0.368902
sg counts 408443204
sg time: 12.3489
join detail: 
compute size time:  0.0745534
reduce + scan time: 0.141784
fetch result time:  0.365474
sort time:          3.35704
build index time:   0
merge time:         0
unique time:        0.441937

--------------------------------------------------
GPU USAGE REPORT
--------------------------------------------------
Generated Report File: fe_body_sg.csv
TotalTime(S),TotalEnergy(J),AvgPowerDrawTimed(W),MinDrawSampled(W),Q1DrawSampled(W),MedianDrawSampled(W),Q3DrawSampled(W),MaxDrawSampled(W),AllDrawSamples(W)
13.2317,1891.1384,142.9251,49.68,83.85,166.80,207.40,264.36,"49.68,56.36,63.37,126.20,184.62,207.13,188.97,208.26,236.31,229.62,143.70,264.36,205.33,167.67,218.21,216.15,186.36,257.40,199.79,191.63,248.86,192.51,243.07,181.42,260.87,191.90,187.23,248.33,244.52,252.40,253.27,174.08,207.67,73.86,104.57,182.83,166.80,158.59,143.70,71.85,146.63,133.48,163.60,109.84,71.25,72.19,70.98,70.98,103.69,70.98,162.12,79.82,97.23,87.88,70.73,72.19,115.98,70.65,71.60"
--------------------------------------------------

(2022-09-08/base) arsho::x3003c0s7b1n0 { ~/gdlog/build }-> python power.py loc-brightkite_sg.csv ./SG /eagle/dist_relational_alg/arsho/mnmgJOIN/data/data_214078.txt 1
num of sm 108
using 18446744073709551615 as empty hash entry
Input graph rows: 214078
reversing graph ... 
finish reverse graph.
edge size 214078
Build hash table time: 0.0467046
 memory alloc time: 0.000121856 ; Join time: 0.0116406 ; merge full time: 9.3184e-05 ; rebuild full time: 0.000672768 ; rebuild delta time: 0.000463872 ; set diff time: 0.000850688
Rebuild relation detail time : rebuild rel sort time: 0 ; rebuild rel unique time: 0 ; rebuild rel index time: 0.000647168
sg init counts 1234708
sg init time: 0.0149402
 memory alloc time: 0.0228792 ; Join time: 6.12815 ; merge full time: 0.0317286 ; rebuild full time: 0.0183112 ; rebuild delta time: 0.0306903 ; set diff time: 0.178996
Rebuild relation detail time : rebuild rel sort time: 0 ; rebuild rel unique time: 0 ; rebuild rel index time: 0.0255908
sg counts 92398050
sg time: 6.49111
join detail: 
compute size time:  0.0310088
reduce + scan time: 0.0168161
fetch result time:  0.332054
sort time:          5.1759
build index time:   0
merge time:         0
unique time:        0.508211

--------------------------------------------------
GPU USAGE REPORT
--------------------------------------------------
Generated Report File: loc-brightkite_sg.csv
TotalTime(S),TotalEnergy(J),AvgPowerDrawTimed(W),MinDrawSampled(W),Q1DrawSampled(W),MedianDrawSampled(W),Q3DrawSampled(W),MaxDrawSampled(W),AllDrawSamples(W)
7.3582,1184.1756,160.9338,49.68,141.53,148.24,171.39,293.83,"49.68,56.36,54.68,150.44,184.89,145.17,249.46,293.83,146.36,141.68,145.44,257.35,158.04,143.70,132.01,247.74,170.87,146.90,142.83,143.43,149.57,165.93,286.29,146.90,266.69,172.94,154.52,141.09,140.50,139.02,257.67,156.25,141.09,123.86,246.85,165.06,141.68,153.37,161.26,136.09"
--------------------------------------------------

(2022-09-08/base) arsho::x3003c0s7b1n0 { ~/gdlog/build }-> python power.py fe_sphere_sg.csv ./SG /eagle/dist_relational_alg/arsho/mnmgJOIN/data/data_49152.txt 1
num of sm 108
using 18446744073709551615 as empty hash entry
Input graph rows: 49152
reversing graph ... 
finish reverse graph.
edge size 49152
Build hash table time: 0.0383898
 memory alloc time: 0.000125952 ; Join time: 0.0019577 ; merge full time: 7.8848e-05 ; rebuild full time: 0.00034816 ; rebuild delta time: 0.000190464 ; set diff time: 0.00033104
Rebuild relation detail time : rebuild rel sort time: 0 ; rebuild rel unique time: 0 ; rebuild rel index time: 0.00028672
sg init counts 99378
sg init time: 0.00366694
 memory alloc time: 1.07051 ; Join time: 2.3654 ; merge full time: 0.38851 ; rebuild full time: 0.236373 ; rebuild delta time: 0.0574628 ; set diff time: 0.882854
Rebuild relation detail time : rebuild rel sort time: 0 ; rebuild rel unique time: 0 ; rebuild rel index time: 0.0657664
sg counts 205814096
sg time: 5.23711
join detail: 
compute size time:  0.0437401
reduce + scan time: 0.0791531
fetch result time:  0.161857
sort time:          1.67058
build index time:   0
merge time:         0
unique time:        0.187583

--------------------------------------------------
GPU USAGE REPORT
--------------------------------------------------
Generated Report File: fe_sphere_sg.csv
TotalTime(S),TotalEnergy(J),AvgPowerDrawTimed(W),MinDrawSampled(W),Q1DrawSampled(W),MedianDrawSampled(W),Q3DrawSampled(W),MaxDrawSampled(W),AllDrawSamples(W)
6.1416,889.5342,144.8382,49.95,112.59,180.22,193.67,218.26,"49.95,56.69,55.22,180.22,181.42,218.26,196.31,214.41,200.39,185.16,197.45,193.97,186.96,193.37,163.87,187.50,200.66,196.31,183.16,186.63,179.35,135.82,172.34,112.72,139.62,144.02,99.02,112.45,101.36,70.65,74.46"
--------------------------------------------------

(2022-09-08/base) arsho::x3003c0s7b1n0 { ~/gdlog/build }-> python power.py ca_hepth_sg.csv ./SG /eagle/dist_relational_alg/arsho/mnmgJOIN/data/data_51971.txt 1
num of sm 108
using 18446744073709551615 as empty hash entry
Input graph rows: 51971
reversing graph ... 
finish reverse graph.
edge size 51971
Build hash table time: 0.0484895
 memory alloc time: 0.000115712 ; Join time: 0.00364432 ; merge full time: 8.4992e-05 ; rebuild full time: 0.000482304 ; rebuild delta time: 0.00030208 ; set diff time: 0.000533888
Rebuild relation detail time : rebuild rel sort time: 0 ; rebuild rel unique time: 0 ; rebuild rel index time: 0.00034816
sg init counts 403782
sg init time: 0.00612045
 memory alloc time: 0.00472269 ; Join time: 2.71657 ; merge full time: 0.0139551 ; rebuild full time: 0.0261069 ; rebuild delta time: 0.0118712 ; set diff time: 0.0665118
Rebuild relation detail time : rebuild rel sort time: 0 ; rebuild rel unique time: 0 ; rebuild rel index time: 0.019414
sg counts 74618689
sg time: 2.88618
join detail: 
compute size time:  0.0151839
reduce + scan time: 0.0225853
fetch result time:  0.112532
sort time:          2.3678
build index time:   0
merge time:         0
unique time:        0.179353

--------------------------------------------------
GPU USAGE REPORT
--------------------------------------------------
Generated Report File: ca_hepth_sg.csv
TotalTime(S),TotalEnergy(J),AvgPowerDrawTimed(W),MinDrawSampled(W),Q1DrawSampled(W),MedianDrawSampled(W),Q3DrawSampled(W),MaxDrawSampled(W),AllDrawSamples(W)
3.7471,500.7403,133.6353,49.62,133.98,138.59,146.99,258.82,"49.62,56.69,55.49,152.18,232.50,141.68,134.68,136.41,213.81,145.76,131.88,258.82,146.36,137.55,135.09,137.29,140.22,139.62,148.86,70.98"
--------------------------------------------------
```

- MNMGDatalog SG
```shell
(2022-09-08/base) arsho::x3004c0s13b1n0 { /eagle/dist_relational_alg/arsho/mnmgJOIN }-> python power.py fe_body_sg.csv ./sg_interactive.out data/data_163734.bin 0 1 1
# Input,# Process,# Iterations,# TC,Total Time,Join,Buffer preparation,Communication,Deduplication,Merge,Initialization,Hashtable,Finalization,Clear,File I/O
163734,1,125,408443204,9.1581,0.4375,0.0000,0.2181,1.8029,6.3274,0.0041,0.0001,0.0776,0.2904,0.4965

--------------------------------------------------
GPU USAGE REPORT
--------------------------------------------------
Generated Report File: fe_body_sg.csv
TotalTime(S),TotalEnergy(J),AvgPowerDrawTimed(W),MinDrawSampled(W),Q1DrawSampled(W),MedianDrawSampled(W),Q3DrawSampled(W),MaxDrawSampled(W),AllDrawSamples(W)
10.2389,1149.0322,112.2223,54.08,78.48,101.14,164.98,216.15,"54.08,61.37,62.57,173.48,192.10,193.65,170.18,213.21,216.15,205.66,160.38,199.19,201.25,79.82,77.74,169.58,145.59,77.20,80.41,131.74,77.20,78.94,101.14,77.47,125.74,77.47,87.43,135.55,79.82,116.10,101.63,79.82,123.66,132.01,77.39,82.15,78.62,78.35,80.68"
--------------------------------------------------


(2022-09-08/base) arsho::x3004c0s13b1n0 { /eagle/dist_relational_alg/arsho/mnmgJOIN }-> python power.py loc-brightkite_sg.csv ./sg_interactive.out data/data_214078.bin 0 1 1
# Input,# Process,# Iterations,# TC,Total Time,Join,Buffer preparation,Communication,Deduplication,Merge,Initialization,Hashtable,Finalization,Clear,File I/O
214078,1,18,92398050,1.7356,0.2925,0.0000,0.0346,1.2872,0.0651,0.0048,0.0001,0.0017,0.0495,0.1796

--------------------------------------------------
GPU USAGE REPORT
--------------------------------------------------
Generated Report File: loc-brightkite_sg.csv
TotalTime(S),TotalEnergy(J),AvgPowerDrawTimed(W),MinDrawSampled(W),Q1DrawSampled(W),MedianDrawSampled(W),Q3DrawSampled(W),MaxDrawSampled(W),AllDrawSamples(W)
2.7345,414.8912,151.7251,54.08,77.76,177.70,217.48,274.57,"54.08,60.83,59.03,245.06,209.74,183.75,240.38,212.67,274.57,152.18,171.65,219.08,78.62,77.47"
--------------------------------------------------

(2022-09-08/base) arsho::x3004c0s13b1n0 { /eagle/dist_relational_alg/arsho/mnmgJOIN }-> python power.py fe_sphere.csv ./sg_interactive.out data/data_49152.bin 0 1 1
# Input,# Process,# Iterations,# TC,Total Time,Join,Buffer preparation,Communication,Deduplication,Merge,Initialization,Hashtable,Finalization,Clear,File I/O
49152,1,127,205814096,3.7279,0.2360,0.0000,0.2027,0.8115,2.1921,0.0047,0.0001,0.0299,0.2509,0.2829

--------------------------------------------------
GPU USAGE REPORT
--------------------------------------------------
Generated Report File: fe_sphere.csv
TotalTime(S),TotalEnergy(J),AvgPowerDrawTimed(W),MinDrawSampled(W),Q1DrawSampled(W),MedianDrawSampled(W),Q3DrawSampled(W),MaxDrawSampled(W),AllDrawSamples(W)
4.5971,487.0236,105.9423,53.81,78.07,89.44,157.35,205.06,"53.81,61.10,89.44,121.05,195.71,202.45,202.12,205.06,193.65,78.07,80.68,82.15,109.03,79.21,90.64,97.93,77.20,78.07,78.07"
--------------------------------------------------

(2022-09-08/base) arsho::x3004c0s13b1n0 { /eagle/dist_relational_alg/arsho/mnmgJOIN }-> python power.py ca_hepth_sg.csv ./sg_interactive.out data/data_51971.bin 0 1 1
# Input,# Process,# Iterations,# TC,Total Time,Join,Buffer preparation,Communication,Deduplication,Merge,Initialization,Hashtable,Finalization,Clear,File I/O
51971,1,9,74618689,0.6085,0.0965,0.0000,0.0085,0.4626,0.0204,0.0047,0.0001,0.0011,0.0145,0.1500

--------------------------------------------------
GPU USAGE REPORT
--------------------------------------------------
Generated Report File: ca_hepth_sg.csv
TotalTime(S),TotalEnergy(J),AvgPowerDrawTimed(W),MinDrawSampled(W),Q1DrawSampled(W),MedianDrawSampled(W),Q3DrawSampled(W),MaxDrawSampled(W),AllDrawSamples(W)
1.4738,187.1552,126.9911,54.08,70.89,160.06,186.06,212.02,"54.08,61.10,162.99,209.13,160.06,212.02,80.68"
--------------------------------------------------


```
