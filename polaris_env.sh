#!/bin/bash

# load modules for compiling
module load gcc
module load cudatoolkit-standalone
module load cmake

export MPICH_GPU_SUPPORT_ENABLED=1
