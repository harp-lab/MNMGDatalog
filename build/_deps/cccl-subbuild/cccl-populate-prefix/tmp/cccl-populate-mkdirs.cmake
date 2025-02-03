# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/mnt/9054B61D54B605CE/GithubCodes/mnmgJOIN/build/_deps/cccl-src"
  "/mnt/9054B61D54B605CE/GithubCodes/mnmgJOIN/build/_deps/cccl-build"
  "/mnt/9054B61D54B605CE/GithubCodes/mnmgJOIN/build/_deps/cccl-subbuild/cccl-populate-prefix"
  "/mnt/9054B61D54B605CE/GithubCodes/mnmgJOIN/build/_deps/cccl-subbuild/cccl-populate-prefix/tmp"
  "/mnt/9054B61D54B605CE/GithubCodes/mnmgJOIN/build/_deps/cccl-subbuild/cccl-populate-prefix/src/cccl-populate-stamp"
  "/mnt/9054B61D54B605CE/GithubCodes/mnmgJOIN/build/_deps/cccl-subbuild/cccl-populate-prefix/src"
  "/mnt/9054B61D54B605CE/GithubCodes/mnmgJOIN/build/_deps/cccl-subbuild/cccl-populate-prefix/src/cccl-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/mnt/9054B61D54B605CE/GithubCodes/mnmgJOIN/build/_deps/cccl-subbuild/cccl-populate-prefix/src/cccl-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/mnt/9054B61D54B605CE/GithubCodes/mnmgJOIN/build/_deps/cccl-subbuild/cccl-populate-prefix/src/cccl-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
