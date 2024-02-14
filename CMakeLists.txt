
cmake_minimum_required(VERSION 3.9 FATAL_ERROR)
project(mnmgjoin LANGUAGES CXX CUDA)

find_package(MPI REQUIRED)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON CACHE INTERNAL "")

set(mnmg_src "${PROJECT_SOURCE_DIR}/src")
set(mnmg_include "${PROJECT_SOURCE_DIR}/include")

file(GLOB mnmg_lib_file
    "${mnmg_src}/gkernel.cu"
    "${mnmg_include}/gkernel.h"
    "${mnmg_src}/util.cu")

add_library(mnmg_lib STATIC ${mnmg_lib_file})
target_compile_features(mnmg_lib PUBLIC cxx_std_20)
target_include_directories(mnmg_lib PUBLIC ${mnmg_include})
set_target_properties(mnmg_lib PROPERTIES CUDA_SEPARABLE_COMPILATION ON CUDA_ARCHITECTURES "80;89;90")
target_compile_options(mnmg_lib PUBLIC $<$<COMPILE_LANGUAGE:CUDA>:
    -lineinfo
    --expt-relaxed-constexpr
    --default-stream per-thread
    --extended-lambda>)


set(mnmg_exec_file "${mnmg_src}/parallel_join.cu")
add_executable(mnmg_exec ${mnmg_exec_file})
target_link_libraries(mnmg_exec PRIVATE mnmg_lib MPI::MPI_CXX)
target_include_directories(mnmg_exec PRIVATE ${mnmg_include})
set_target_properties(mnmg_exec PROPERTIES CUDA_SEPARABLE_COMPILATION ON CUDA_ARCHITECTURES "80;89;90")
target_compile_options(mnmg_exec PUBLIC $<$<COMPILE_LANGUAGE:CUDA>:
    -lineinfo
    --expt-relaxed-constexpr
    --default-stream per-thread
    --extended-lambda>)
