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

#BJoin
# https://github.com/harp-lab/batch_joins/blob/manual_mem/polaris.md
module use /soft/modulefiles
module load spack-pe-base cmake gcc-native-mixed/12.3
# first time setup: oneTBB and RMM
cd ~
git clone https://github.com/uxlfoundation/oneTBB/
git checkout v2022.1.0
mkdir $HOME/.local
# Inside the oneTBB
mkdir build && cd build
CC=gcc-12 CXX=g++-12 cmake -DCMAKE_INSTALL_PREFIX=$HOME/.local/oneTBB_v2022.1.0 -DTBB_TEST=OFF ..
make -j
make install

cd ~
git clone https://github.com/rapidsai/rmm/
git checkout v24.12.00
CC=gcc-12 CXX=g++-12 ./build.sh librmm rmm

# BJoin main repo
cd /eagle/dist_relational_alg/arsho/batch_joins/
# update CMakeLists as correct path of oneTBB and rmm
set(CMAKE_PREFIX_PATH "/home/arsho/rmm/build/install"
                      ${CMAKE_PREFIX_PATH})

set(TBB_DIR "/home/arsho/.local/oneTBB_v2022.1.0/lib64/cmake/TBB")
 
rm -rf build
mkdir build && cd build
cmake ..
make -j TC SG

module load conda; conda activate base
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

(2022-09-08/rapids-25.04) arsho::x3004c0s25b0n0 { ~/gdlog/build }-> python power.py comdblptc.csv ./TC /eagle/dist_relational_alg/arsho/mnmgJOIN/data/data_1049866.txt 1
Input graph rows: 1049866
edge size 1049866
terminate called after throwing an instance of 'thrust::system::detail::bad_alloc'
  what():  std::bad_alloc: cudaErrorMemoryAllocation: out of memory

--------------------------------------------------
GPU USAGE REPORT
--------------------------------------------------
Generated Report File: comdblptc.csv
TotalTime(S),TotalEnergy(J),AvgPowerDrawTimed(W),MinDrawSampled(W),Q1DrawSampled(W),MedianDrawSampled(W),Q3DrawSampled(W),MaxDrawSampled(W),AllDrawSamples(W)
4.8421,494.2227,102.0671,53.31,58.84,67.91,168.19,263.53,"53.31,53.31,53.31,53.31,60.91,58.84,59.17,58.84,58.84,58.84,59.44,168.19,168.19,253.61,263.53,233.84,232.97,238.15,77.83,77.50,74.90,76.96"
--------------------------------------------------

(2022-09-08/rapids-25.04) arsho::x3004c0s25b0n0 { ~/gdlog/build }-> python power.py fe_ocean_tc.csv ./TC /eagle/dist_relational_alg/arsho/mnmgJOIN/data/data_409593.txt 1
Input graph rows: 409593
edge size 409593
GPUassert: out of memory /home/arsho/gdlog/src/relation.cu 473

--------------------------------------------------
GPU USAGE REPORT
--------------------------------------------------
Generated Report File: fe_ocean_tc.csv
TotalTime(S),TotalEnergy(J),AvgPowerDrawTimed(W),MinDrawSampled(W),Q1DrawSampled(W),MedianDrawSampled(W),Q3DrawSampled(W),MaxDrawSampled(W),AllDrawSamples(W)
22.6248,2754.0348,121.7265,53.31,78.10,80.71,188.75,253.95,"53.64,53.31,53.31,53.31,60.70,61.78,107.55,154.79,234.68,230.05,250.74,231.78,226.85,249.88,253.95,237.91,213.69,77.50,194.11,125.34,77.23,252.21,169.65,77.50,191.51,246.95,77.83,159.46,191.04,77.50,197.64,193.25,77.50,103.48,179.25,77.83,95.89,189.18,77.83,80.71,197.91,77.83,193.64,183.37,106.96,79.84,185.71,76.96,187.44,183.37,77.83,78.10,78.10,78.10,78.10,114.55,78.10,78.10,76.96,78.10,89.76,78.10,80.43,78.10,77.50,78.10,78.10,118.07,78.37,78.10,192.70,78.10,76.64,78.37,78.37,180.44,78.37,189.18,78.37,193.84,78.37,187.12,96.75,123.28,78.70,80.71"
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

python power.py comdblp.csv ./tc_interactive.out data/com-dblpungraph.bin 0 1 1

python power.py fe_ocean_tc.csv ./tc_interactive.out data/data_409593.bin 0 1 1

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
### Install CUDF locally
```shell
pip install \
    --extra-index-url=https://pypi.nvidia.com \
    "cudf-cu12==25.4.*" "dask-cudf-cu12==25.4.*" "cuml-cu12==25.4.*" \
    "cugraph-cu12==25.4.*" "nx-cugraph-cu12==25.4.*" "cuspatial-cu12==25.4.*" \
    "cuproj-cu12==25.4.*" "cuxfilter-cu12==25.4.*" "cucim-cu12==25.4.*" \
    "pylibraft-cu12==25.4.*" "raft-dask-cu12==25.4.*" "cuvs-cu12==25.4.*" \
    "nx-cugraph-cu12==25.4.*"
```

### cuDF benchmark in Polaris
```shell
ssh arsho@polaris.alcf.anl.gov
qsub -I -l select=1 -l filesystems=home:eagle -l walltime=1:00:00 -q debug -A dist_relational_alg
cd /eagle/dist_relational_alg/arsho/mnmgJOIN
module use /soft/modulefiles
module load conda; conda activate base
conda create -n rapids-25.04 -c rapidsai -c conda-forge -c nvidia  \
    cudf=25.04 python=3.11 'cuda-version>=12.0,<=12.8'
conda activate rapids-25.04    
# Next time
module load conda
conda activate rapids-25.04

export CUDA_VISIBLE_DEVICES=0
module load nvhpc-mixed/23.9
module load craype-accel-nvidia80
export MPICH_GPU_SUPPORT_ENABLED=0

```

### cuDF TC results
```shell
(2022-09-08/rapids-25.04) arsho::x3004c0s25b0n0 { /eagle/dist_relational_alg/arsho/mnmgJOIN }-> python power.py tc_fe_body_cudf.csv python related/cudf_programs/tc.py data/data_163734.txt                                                                                                                                                                                       
Running: power.py tc_fe_body_cudf.csv python related/cudf_programs/tc.py data/data_163734.txt                                                                                            
| Dataset | Number of rows | TC size | Iterations | Time (s) |                                                                                                                           
| --- | --- | --- | --- | --- |                                                                                                                                                          
| data/data_163734.txt | 163734 | 156120489 | 188 | 82.885186 |                                                                                                                          
                                                                                                                                                                                         
--------------------------------------------------                                                                                                                                       
GPU USAGE REPORT                                                                                                                                                                         
--------------------------------------------------                                                                                                                                       
Generated Report File: tc_fe_body_cudf.csv                                                                                                                                               
TotalTime(S),TotalEnergy(J),AvgPowerDrawTimed(W),MinDrawSampled(W),Q1DrawSampled(W),MedianDrawSampled(W),Q3DrawSampled(W),MaxDrawSampled(W),AllDrawSamples(W)                            
90.6405,8559.4262,94.4327,53.31,78.70,81.62,91.82,211.68,"53.31,53.31,53.31,53.31,53.31,53.31,53.31,53.64,53.31,53.31,53.31,53.64,53.31,53.31,53.64,53.31,53.31,53.31,53.31,53.31,53.31,53.31,53.31,53.31,53.31,58.30,64.71,62.64,62.64,62.64,62.97,64.98,62.64,75.77,129.13,141.94,85.10,78.70,103.16,167.05,94.43,79.57,88.90,79.30,92.69,85.69,78.70,78.70,77.50,78.37,186.85,81.62,82.49,82.17,196.77,90.63,113.68,78.70,95.02,79.84,92.36,174.32,101.69,81.89,93.56,81.62,79.57,195.10,77.83,80.16,82.17,79.84,99.96,80.16,202.69,84.83,82.17,123.28,188.38,100.82,78.37,79.30,77.83,83.64,79.57,86.83,78.97,79.84,78.70,186.38,100.28,78.37,89.17,186.65,78.70,91.22,79.30,80.43,79.30,90.36,78.10,79.84,83.64,78.70,78.10,79.57,86.83,78.37,94.16,81.71,78.70,78.97,81.03,179.85,91.22,82.17,202.69,78.70,102.29,96.75,95.02,84.23,95.62,78.37,79.57,101.15,78.10,78.70,82.17,85.10,79.30,178.52,79.84,91.82,78.70,83.96,202.37,86.56,78.97,78.37,81.62,87.70,78.37,81.62,81.03,81.89,91.82,78.10,89.49,84.23,88.30,80.71,79.57,211.68,78.70,89.49,79.84,91.50,78.70,87.43,80.43,116.01,107.55,156.25,98.23,78.70,78.70,89.49,199.76,79.30,78.97,78.70,202.96,87.15,80.16,83.64,84.50,169.92,78.97,113.41,78.70,80.16,186.65,78.97,87.70,108.69,80.71,82.76,81.89,90.63,79.57,148.39,83.64,78.97,80.43,83.64,78.97,81.62,80.16,89.49,95.62,203.76,80.16,171.71,78.70,122.74,81.62,82.17,156.25,81.62,89.49,79.30,207.83,101.42,81.62,78.70,79.30,80.71,82.49,104.03,78.78,81.62,165.26,79.30,83.03,83.03,167.32,85.10,81.03,81.89,155.06,78.97,78.70,78.37,78.70,87.43,79.30,175.46,111.08,78.97,95.02,78.97,81.62,83.36,82.76,98.23,192.97,80.16,89.49,82.17,80.16,99.09,78.97,150.72,79.30,83.03,78.70,78.97,80.16,84.50,79.57,78.97,88.30,78.70,102.62,79.30,78.70,134.94,79.30,94.43,84.50,92.96,160.05,79.30,79.84,79.57"                                                                                     
--------------------------------------------------                                                                                                                                       
                                                                                                                                                                                         
(2022-09-08/rapids-25.04) arsho::x3004c0s25b0n0 { /eagle/dist_relational_alg/arsho/mnmgJOIN }-> python power.py tc_sf_cudf.csv python related/cudf_programs/tc.py data/data_223001.txt
Running: power.py tc_sf_cudf.csv python related/cudf_programs/tc.py data/data_223001.txt
| Dataset | Number of rows | TC size | Iterations | Time (s) |                                                                                                                           
| --- | --- | --- | --- | --- |                                                                                                                                                          
| data/data_223001.txt | 223001 | 80498014 | 287 | 58.073902 |                                                                                                                           
                                                                                                                                                                                         
--------------------------------------------------
GPU USAGE REPORT
--------------------------------------------------
Generated Report File: tc_sf_cudf.csv
TotalTime(S),TotalEnergy(J),AvgPowerDrawTimed(W),MinDrawSampled(W),Q1DrawSampled(W),MedianDrawSampled(W),Q3DrawSampled(W),MaxDrawSampled(W),AllDrawSamples(W)
65.2300,6041.5088,92.6185,53.64,80.16,84.23,97.21,192.11,"53.64,53.64,53.64,53.64,53.64,53.64,53.64,53.64,53.64,53.64,53.64,53.64,53.64,53.64,53.64,53.64,53.64,53.64,53.64,53.64,53.64,60.91,62.37,62.05,62.05,62.05,62.37,63.51,65.85,72.29,103.48,107.82,101.42,148.06,153.32,86.83,86.83,88.62,101.15,129.00,81.89,81.30,80.43,80.16,134.67,108.69,79.57,90.03,79.57,108.42,84.23,81.62,88.99,146.60,110.15,109.29,85.37,86.83,80.16,81.62,85.69,83.96,84.50,79.57,85.96,169.92,80.71,85.10,83.64,158.86,140.48,82.49,85.69,84.83,78.37,81.03,82.17,101.42,85.96,91.82,79.84,81.62,83.36,89.17,83.36,88.62,83.36,82.49,83.36,170.79,89.49,97.36,102.89,82.76,97.95,83.64,80.16,84.23,105.81,78.70,80.43,100.55,80.43,83.64,90.03,79.57,179.85,88.03,80.71,85.37,85.96,82.49,80.16,93.83,79.57,188.58,82.76,122.14,89.76,80.43,95.89,79.84,110.15,95.02,90.36,106.08,79.30,81.03,90.03,92.09,82.17,83.64,78.37,146.33,90.03,78.97,150.13,103.48,84.23,96.75,79.30,95.29,88.90,84.50,78.97,80.43,85.96,84.83,85.69,78.70,184.51,97.36,80.16,163.26,118.62,96.49,93.29,81.62,83.64,82.76,78.97,83.96,84.83,81.62,86.29,84.83,82.17,107.82,81.89,83.36,151.86,93.29,103.16,86.29,90.03,172.85,79.30,100.55,182.59,133.48,81.89,174.32,102.62,115.14,80.43,162.65,83.36,79.84,78.97,85.10,82.49,80.43,79.30,83.36,80.16,84.23,82.76,79.84,157.72,87.15,88.30,82.49,81.30,79.57,174.32,103.16,97.36,99.36,174.59,81.30,150.72,130.27,81.03,83.36,95.02,81.30,79.57,79.84,82.76,134.07,99.09,91.22,90.03,84.23,88.90,83.96,92.36,122.14,79.30,192.11,173.86,83.03,88.90,109.61,84.23,80.16,79.57,82.76"
--------------------------------------------------

(2022-09-08/rapids-25.04) arsho::x3004c0s25b0n0 { /eagle/dist_relational_alg/arsho/mnmgJOIN }-> python power.py tc_usroads_cudf.csv python related/cudf_programs/tc.py data/data_165435.txt
Running: power.py tc_usroads_cudf.csv python related/cudf_programs/tc.py data/data_165435.txt
| Dataset | Number of rows | TC size | Iterations | Time (s) |
| --- | --- | --- | --- | --- |
std::bad_alloc: out_of_memory: CUDA error (failed to allocate 2778950720 bytes) at: /home/arsho/.conda/envs/rapids-25.04/include/rmm/mr/device/cuda_memory_resource.hpp

--------------------------------------------------
GPU USAGE REPORT
--------------------------------------------------
Generated Report File: tc_usroads_cudf.csv
TotalTime(S),TotalEnergy(J),AvgPowerDrawTimed(W),MinDrawSampled(W),Q1DrawSampled(W),MedianDrawSampled(W),Q3DrawSampled(W),MaxDrawSampled(W),AllDrawSamples(W)
83.0533,7414.1246,89.2695,53.91,78.97,79.84,87.44,207.35,"54.18,53.91,53.91,53.91,53.91,53.91,54.18,53.91,53.91,53.91,53.91,54.18,53.91,54.18,53.91,53.91,53.91,53.91,53.91,53.91,53.91,53.91,61.50,70.24,67.63,67.63,67.31,67.31,70.24,67.90,73.70,103.76,130.01,149.26,129.41,88.90,153.93,86.83,87.15,83.03,143.73,93.29,79.30,84.23,85.37,86.83,83.96,86.29,85.19,81.03,80.43,85.37,89.76,79.84,99.96,90.36,99.69,79.30,156.53,78.97,85.19,83.03,86.29,83.03,100.82,85.96,84.50,81.62,86.29,81.30,78.37,92.69,78.70,80.43,79.30,78.70,78.97,80.16,94.16,78.97,80.43,80.16,169.38,102.89,78.70,83.96,78.97,88.30,99.36,78.70,78.97,94.43,83.36,203.83,91.50,185.71,79.30,78.97,79.57,150.40,84.23,199.76,106.68,81.62,78.70,196.44,90.63,92.36,78.97,147.79,85.10,200.57,80.43,78.97,82.76,78.97,93.29,92.09,90.36,139.34,78.97,162.06,83.64,78.70,92.96,79.30,92.69,80.43,78.97,79.84,79.84,78.97,81.62,121.28,95.89,89.49,82.49,115.14,96.75,78.97,83.36,79.30,81.62,78.97,79.30,126.48,80.16,78.70,84.23,79.84,79.30,78.97,79.57,78.97,79.30,78.97,78.97,207.35,79.30,186.05,78.97,130.01,78.97,79.57,80.43,79.84,85.10,84.83,78.70,190.04,78.97,78.97,79.30,78.97,79.30,78.97,82.49,174.59,81.03,78.97,79.30,80.16,78.97,78.97,90.63,78.97,79.57,79.30,96.16,78.97,79.57,79.57,85.37,79.30,81.30,126.81,80.43,79.30,77.83,78.97,106.68,77.83,78.37,77.83,78.37,78.37,80.71,77.83,77.23,78.10,78.37,78.10,78.97,80.16,79.84,75.77"
--------------------------------------------------
(2022-09-08/rapids-25.04) arsho::x3004c0s25b0n0 { /eagle/dist_relational_alg/arsho/mnmgJOIN }-> python power.py tc_vsp_cudf.csv python related/cudf_programs/tc.py data/data_552020.txt
Running: power.py tc_vsp_cudf.csv python related/cudf_programs/tc.py data/data_552020.txt
| Dataset | Number of rows | TC size | Iterations | Time (s) |
| --- | --- | --- | --- | --- |
std::bad_alloc: out_of_memory: CUDA error (failed to allocate 2779986016 bytes) at: /home/arsho/.conda/envs/rapids-25.04/include/rmm/mr/device/cuda_memory_resource.hpp

--------------------------------------------------
GPU USAGE REPORT
--------------------------------------------------
Generated Report File: tc_vsp_cudf.csv
TotalTime(S),TotalEnergy(J),AvgPowerDrawTimed(W),MinDrawSampled(W),Q1DrawSampled(W),MedianDrawSampled(W),Q3DrawSampled(W),MaxDrawSampled(W),AllDrawSamples(W)
25.0646,1895.2560,75.6149,53.31,53.64,77.50,78.70,164.99,"53.31,53.31,53.31,53.31,53.31,53.31,53.31,53.31,53.64,53.64,53.64,53.64,53.31,53.31,53.31,53.31,53.64,53.31,53.31,53.31,60.91,61.18,71.38,71.70,71.38,71.38,71.97,75.17,73.70,135.54,164.99,85.37,139.93,77.50,78.10,77.50,97.62,77.50,77.23,84.83,77.83,79.30,81.62,78.70,77.50,87.70,77.50,77.50,78.18,77.83,77.50,77.50,77.50,77.23,77.83,78.37,77.83,80.71,82.17,124.15,85.96,78.10,78.70,79.30,81.03"
--------------------------------------------------

(2022-09-08/rapids-25.04) arsho::x3004c0s25b0n0 { /eagle/dist_relational_alg/arsho/mnmgJOIN }-> python power.py tc_fe_ocean_cudf.csv python related/cudf_programs/tc.py data/data_409593.txt
Running: power.py tc_fe_ocean_cudf.csv python related/cudf_programs/tc.py data/data_409593.txt
| Dataset | Number of rows | TC size | Iterations | Time (s) |
| --- | --- | --- | --- | --- |
std::bad_alloc: out_of_memory: CUDA error (failed to allocate 2796444272 bytes) at: /home/arsho/.conda/envs/rapids-25.04/include/rmm/mr/device/cuda_memory_resource.hpp

--------------------------------------------------
GPU USAGE REPORT
--------------------------------------------------
Generated Report File: tc_fe_ocean_cudf.csv
TotalTime(S),TotalEnergy(J),AvgPowerDrawTimed(W),MinDrawSampled(W),Q1DrawSampled(W),MedianDrawSampled(W),Q3DrawSampled(W),MaxDrawSampled(W),AllDrawSamples(W)
25.2891,2220.9801,87.8235,53.31,53.31,77.66,82.68,200.36,"53.31,53.31,53.31,53.31,53.31,53.31,53.31,53.31,53.31,53.31,53.64,53.31,53.64,53.31,53.31,53.31,53.31,53.31,53.31,53.31,53.31,53.31,60.91,69.04,66.71,66.71,67.03,66.71,66.71,70.24,87.70,138.46,185.98,95.29,83.03,120.94,78.10,77.50,78.37,77.50,101.69,98.82,77.83,188.31,79.84,200.36,77.50,145.14,80.16,131.74,87.43,174.32,77.50,190.71,77.83,77.83,93.83,175.87,77.83,77.50,77.50,130.01,80.43,179.85,76.96,77.83,79.30,78.10,78.37,77.83,77.83,81.30,78.70,81.62"
--------------------------------------------------

(2022-09-08/rapids-25.04) arsho::x3004c0s25b0n0 { /eagle/dist_relational_alg/arsho/mnmgJOIN }-> python power.py tc_com_dblp_cudf.csv python related/cudf_programs/tc.py data/data_1049866.txt
Running: power.py tc_com_dblp_cudf.csv python related/cudf_programs/tc.py data/data_1049866.txt
| Dataset | Number of rows | TC size | Iterations | Time (s) |
| --- | --- | --- | --- | --- |
std::bad_alloc: out_of_memory: CUDA error (failed to allocate 6423197024 bytes) at: /home/arsho/.conda/envs/rapids-25.04/include/rmm/mr/device/cuda_memory_resource.hpp

--------------------------------------------------
GPU USAGE REPORT
--------------------------------------------------
Generated Report File: tc_com_dblp_cudf.csv
TotalTime(S),TotalEnergy(J),AvgPowerDrawTimed(W),MinDrawSampled(W),Q1DrawSampled(W),MedianDrawSampled(W),Q3DrawSampled(W),MaxDrawSampled(W),AllDrawSamples(W)
12.2238,823.5163,67.3697,53.31,53.64,53.64,77.50,198.78,"53.64,53.64,53.64,53.64,53.31,53.64,53.64,53.64,53.64,53.64,53.64,53.64,53.64,53.64,53.31,53.31,53.31,53.31,53.31,53.31,53.31,60.31,61.18,64.38,64.71,64.38,64.38,67.03,89.49,198.78,141.07,77.50,77.50,77.83,78.37,80.71,77.83,78.70,77.83"
--------------------------------------------------


```

### cuDF sg results
```shell
(2022-09-08/rapids-25.04) arsho::x3004c0s25b0n0 { /eagle/dist_relational_alg/arsho/mnmgJOIN }-> python power.py sg_fe_body_cudf.csv python related/cudf_programs/sg.py data/data_163734.txt
Running: power.py sg_fe_body_cudf.csv python related/cudf_programs/sg.py data/data_163734.txt
| Dataset | Number of rows | SG size | Iterations | Time (s) |
| --- | --- | --- | --- | --- |
std::bad_alloc: out_of_memory: CUDA error (failed to allocate 2767308656 bytes) at: /home/arsho/.conda/envs/rapids-25.04/include/rmm/mr/device/cuda_memory_resource.hpp
Traceback (most recent call last):
  File "/lus/eagle/projects/dist_relational_alg/arsho/mnmgJOIN/related/cudf_programs/sg.py", line 106, in <module>
    generate_benchmark(argv[0])
  File "/lus/eagle/projects/dist_relational_alg/arsho/mnmgJOIN/related/cudf_programs/sg.py", line 98, in generate_benchmark
    record = list(record)
             ^^^^^^^^^^^^
TypeError: 'NoneType' object is not iterable

--------------------------------------------------
GPU USAGE REPORT
--------------------------------------------------
Generated Report File: sg_fe_body_cudf.csv
TotalTime(S),TotalEnergy(J),AvgPowerDrawTimed(W),MinDrawSampled(W),Q1DrawSampled(W),MedianDrawSampled(W),Q3DrawSampled(W),MaxDrawSampled(W),AllDrawSamples(W)
46.2611,3986.6440,86.1770,53.64,75.64,78.84,86.79,203.44,"53.64,53.64,53.64,53.64,53.64,53.64,53.64,53.64,53.64,53.64,53.64,53.91,53.64,53.91,53.64,53.64,53.64,53.64,53.64,53.64,53.64,53.64,59.71,61.18,71.70,71.70,71.97,71.70,75.50,76.04,174.32,150.72,191.78,83.03,138.73,89.17,93.29,80.43,82.49,81.62,120.41,80.43,82.76,78.70,78.10,104.03,84.50,80.16,113.41,150.13,203.44,80.71,88.90,83.36,79.57,79.57,81.30,89.76,128.27,78.10,157.99,93.83,78.10,78.10,142.53,82.17,78.10,78.97,197.70,81.89,78.10,81.62,97.62,79.30,78.10,78.37,78.37,87.70,78.37,116.61,153.05,78.10,78.37,87.15,158.59,85.37,78.37,95.29,78.37,78.70,78.37,92.69,78.37,78.37,78.70,99.09,78.37,80.43,78.70,79.30,78.70,79.30,78.70,97.36,78.97,92.36,78.97,81.62,85.69,78.70,77.50,78.97,79.84,76.04"
--------------------------------------------------


(2022-09-08/rapids-25.04) arsho::x3004c0s25b0n0 { /eagle/dist_relational_alg/arsho/mnmgJOIN }-> python power.py sg_loc_cudf.csv python related/cudf_programs/sg.py data/data_214078.txt
Running: power.py sg_loc_cudf.csv python related/cudf_programs/sg.py data/data_214078.txt
| Dataset | Number of rows | SG size | Iterations | Time (s) |
| --- | --- | --- | --- | --- |
| data/data_214078.txt | 214078 | 92398050 | 18 | 14.328996 |

--------------------------------------------------
GPU USAGE REPORT
--------------------------------------------------
Generated Report File: sg_loc_cudf.csv
TotalTime(S),TotalEnergy(J),AvgPowerDrawTimed(W),MinDrawSampled(W),Q1DrawSampled(W),MedianDrawSampled(W),Q3DrawSampled(W),MaxDrawSampled(W),AllDrawSamples(W)
21.3624,1899.4225,88.9144,53.31,53.50,77.83,86.56,203.23,"53.31,53.37,53.31,53.31,53.31,53.31,53.31,53.31,53.31,53.64,53.31,53.64,53.31,53.31,53.31,53.31,53.31,53.31,53.31,60.64,69.64,70.24,70.24,70.24,70.24,73.70,165.26,85.96,77.83,125.34,78.10,77.50,77.83,90.36,203.23,77.83,82.76,159.73,77.83,77.50,77.83,129.74,163.26,77.83,79.57,157.99,79.57,85.37,78.97,86.29,161.78,90.36,91.22,198.03,78.10,89.49,86.83,80.71,79.57,97.03,80.43,175.46,191.78,78.45,85.10,78.70,78.10"
--------------------------------------------------

(2022-09-08/rapids-25.04) arsho::x3004c0s25b0n0 { /eagle/dist_relational_alg/arsho/mnmgJOIN }-> python power.py sg_fe_sphere_cudf.csv python related/cudf_programs/sg.py data/data_49152.txt
Running: power.py sg_fe_sphere_cudf.csv python related/cudf_programs/sg.py data/data_49152.txt
| Dataset | Number of rows | SG size | Iterations | Time (s) |
| --- | --- | --- | --- | --- |
| data/data_49152.txt | 49152 | 205814096 | 127 | 66.763053 |

--------------------------------------------------
GPU USAGE REPORT
--------------------------------------------------
Generated Report File: sg_fe_sphere_cudf.csv
TotalTime(S),TotalEnergy(J),AvgPowerDrawTimed(W),MinDrawSampled(W),Q1DrawSampled(W),MedianDrawSampled(W),Q3DrawSampled(W),MaxDrawSampled(W),AllDrawSamples(W)
73.8419,6549.2243,88.6925,53.31,78.37,79.57,86.86,195.30,"53.31,53.31,53.31,53.31,53.31,53.31,53.31,53.31,53.31,53.64,53.31,53.64,53.31,53.31,53.31,53.31,53.31,53.31,53.31,53.31,53.31,60.91,71.10,70.24,70.24,70.83,70.51,70.51,88.62,115.74,137.60,137.60,138.46,78.37,89.17,80.71,83.96,80.71,78.97,92.96,85.69,78.97,78.10,194.11,80.71,78.37,130.88,83.96,143.73,194.44,78.10,83.36,92.96,104.94,77.83,78.70,78.70,84.83,79.30,85.96,80.16,85.69,87.15,78.70,85.96,81.03,156.53,78.37,86.56,84.23,83.36,79.30,84.23,80.71,78.10,82.76,78.97,78.70,156.53,79.84,78.37,87.43,97.36,78.10,137.60,78.37,80.43,78.10,186.24,82.17,81.30,78.10,98.23,79.57,81.62,83.36,150.72,80.16,132.06,78.10,78.97,78.10,83.96,78.37,78.37,83.64,77.83,101.69,78.10,81.62,78.70,90.63,113.08,78.10,78.10,81.89,143.99,90.36,78.10,78.37,78.70,78.10,78.37,95.89,78.70,82.49,78.10,78.10,79.84,99.96,78.10,79.57,78.70,78.37,78.10,83.36,78.10,78.37,78.70,78.10,131.15,78.10,88.62,82.49,82.17,78.70,175.46,78.37,78.97,80.16,136.41,81.62,78.37,78.37,176.65,78.37,78.70,78.37,195.30,78.97,78.37,81.30,78.37,78.70,78.70,109.88,79.30,78.70,81.03,90.63,78.37,88.30,78.37,90.63,78.70,82.17,170.25,88.03,156.80,83.36,78.70,83.36,111.62,78.70,174.32,80.16,78.70,88.03,80.71,90.36,78.70,78.70,82.49,85.69,87.70,86.56,78.70,78.97,78.70,78.97,78.70,87.70,78.97,85.37,78.70,95.89,89.76,90.36,146.92,83.03,78.70,78.97,78.97,94.70,94.70,89.17,183.73,80.43,78.70,78.97,83.36,79.57,78.97,79.84,81.30,82.17,76.64"
--------------------------------------------------

(2022-09-08/rapids-25.04) arsho::x3004c0s25b0n0 { /eagle/dist_relational_alg/arsho/mnmgJOIN }-> python power.py sg_ca_hepth_cudf.csv python related/cudf_programs/sg.py data/data_51971.txt
Running: power.py sg_ca_hepth_cudf.csv python related/cudf_programs/sg.py data/data_51971.txt
| Dataset | Number of rows | SG size | Iterations | Time (s) |
| --- | --- | --- | --- | --- |
| data/data_51971.txt | 51971 | 74618689 | 9 | 5.595524 |

--------------------------------------------------
GPU USAGE REPORT
--------------------------------------------------
Generated Report File: sg_ca_hepth_cudf.csv
TotalTime(S),TotalEnergy(J),AvgPowerDrawTimed(W),MinDrawSampled(W),Q1DrawSampled(W),MedianDrawSampled(W),Q3DrawSampled(W),MaxDrawSampled(W),AllDrawSamples(W)
12.5826,962.7594,76.5150,53.64,53.64,59.17,80.81,190.37,"53.64,53.64,53.91,53.64,53.64,53.64,53.91,53.91,53.64,53.64,53.91,53.64,53.91,53.91,53.64,53.64,53.64,53.64,53.64,53.91,53.64,53.91,60.91,59.44,59.44,59.17,59.17,59.44,60.91,99.96,165.85,190.37,77.83,77.50,166.13,80.16,81.03,137.00,110.48,85.96,86.83,88.62,86.56,81.03,78.70,75.50"
--------------------------------------------------


```


### BJoin TC
```shell
#fe_body
python power.py tc.csv ./TC /eagle/dist_relational_alg/arsho/mnmgJOIN/data/data_163734.txt 90
#vsp
python power.py tc.csv ./TC /eagle/dist_relational_alg/arsho/mnmgJOIN/data/vsp_finan512_scagr7-2c_rlfddd.txt 90
After Iteration Number 519
Total rows in the full_rel are 910070918

#sf
python power.py tc.csv ./TC /eagle/dist_relational_alg/arsho/mnmgJOIN/data/data_223001.txt 90

#usroads
python power.py tc.csv ./TC /eagle/dist_relational_alg/arsho/mnmgJOIN/data/data_165435.txt 90
After Iteration Number 605
Total rows in the full_rel are 871365688

```

### BJoin SG
```shell

python power.py sg.csv ./SG /eagle/dist_relational_alg/arsho/mnmgJOIN/data/data_163734.txt 90
python power.py sg.csv ./SG /eagle/dist_relational_alg/arsho/mnmgJOIN/data/data_214078.txt 90
python power.py sg.csv ./SG /eagle/dist_relational_alg/arsho/mnmgJOIN/data/data_49152.txt 90
python power.py sg.csv ./SG /eagle/dist_relational_alg/arsho/mnmgJOIN/data/data_51971.txt 90



Num row in old_delta_rel is 408443204
Num row in full_rel is 408443204
Num row in new_delta_rel is 8
After Iteration Number 124



The number of outer rows is 8
The total join row count is :18
The number of batches is: 1
Starting batch number 0
the curJoinRowCount is 18
Number of tuples after self dedup is Orig 18 New 15
The number of outer rows is 15
The total join row count is :34
The number of batches is: 1
Starting batch number 0
		JoinRowsCompleted : 34 thisBatch : 34
Came out of the joinWithNext
head->next_join->final_data 0x29de240
		JoinRowsCompleted : 18 thisBatch : 18
Freeing delta rel
The row count in new as calc is 34
Number of tuples after self dedup is Orig 34 New 28
the dedup_buf_num_rows is 0
Breaking out of the loop as delta is 0
Total Time taken for fix point loop is 5.7848
At depth 0
is_batch: false
is_final: true
original_full_node: (nil)
cur_rel_times: make_time=0.008900, sort_time=0.008200, map_time=0.000600
incoming_rel_times: make_time=0.001000, sort_time=0.000700, map_time=0.000000
count_memory_alloc_time: 0.000000
join_count_rows: 18
count_time: 0.000000
count_arr_move_time: 0.000000
num_batches: 1
host_arr_alloc_time: 0.000000
max_output_rows_per_batch: 311237075
batch_data_arr_alloc_time: 0.000000
joinTime:
  Batch 0: time = 0.000000, JoinChain* = 0x29dd210
move_to_host_time: 0.000000
Returning out of final

--------------------------------------------------
GPU USAGE REPORT
--------------------------------------------------
Generated Report File: sg.csv
TotalTime(S),TotalEnergy(J),AvgPowerDrawTimed(W),MinDrawSampled(W),Q1DrawSampled(W),MedianDrawSampled(W),Q3DrawSampled(W),MaxDrawSampled(W),AllDrawSamples(W)
9.6858,1501.0141,154.9712,57.38,83.22,191.51,229.02,263.27,"57.71,57.38,57.38,57.38,64.11,62.05,62.05,62.05,62.05,62.37,62.05,107.55,236.77,227.12,250.15,260.61,244.62,260.06,210.22,241.10,243.43,188.90,206.10,220.46,232.11,243.43,263.27,218.40,205.24,238.77,183.92,230.92,214.01,195.57,194.71,187.24,179.93,188.31,187.44,184.51,174.91,192.70,191.51,195.57,84.83,81.62,84.83"
--------------------------------------------------

```

### References
- [cuDF install on Conda and Pip](https://docs.rapids.ai/install/)