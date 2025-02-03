include("/mnt/9054B61D54B605CE/GithubCodes/mnmgJOIN/build/cmake/CPM_0.38.5.cmake")
CPMAddPackage("NAME;rmm;VERSION;24.06;GIT_REPOSITORY;https://github.com/rapidsai/rmm.git;GIT_TAG;branch-24.06;GIT_SHALLOW;ON;EXCLUDE_FROM_ALL;ON;OPTIONS;BUILD_TESTS OFF;BUILD_BENCHMARKS OFF")
set(rmm_FOUND TRUE)