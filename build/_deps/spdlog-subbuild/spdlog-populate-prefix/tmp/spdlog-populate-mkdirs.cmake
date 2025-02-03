# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/mnt/9054B61D54B605CE/GithubCodes/mnmgJOIN/build/_deps/spdlog-src"
  "/mnt/9054B61D54B605CE/GithubCodes/mnmgJOIN/build/_deps/spdlog-build"
  "/mnt/9054B61D54B605CE/GithubCodes/mnmgJOIN/build/_deps/spdlog-subbuild/spdlog-populate-prefix"
  "/mnt/9054B61D54B605CE/GithubCodes/mnmgJOIN/build/_deps/spdlog-subbuild/spdlog-populate-prefix/tmp"
  "/mnt/9054B61D54B605CE/GithubCodes/mnmgJOIN/build/_deps/spdlog-subbuild/spdlog-populate-prefix/src/spdlog-populate-stamp"
  "/mnt/9054B61D54B605CE/GithubCodes/mnmgJOIN/build/_deps/spdlog-subbuild/spdlog-populate-prefix/src"
  "/mnt/9054B61D54B605CE/GithubCodes/mnmgJOIN/build/_deps/spdlog-subbuild/spdlog-populate-prefix/src/spdlog-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/mnt/9054B61D54B605CE/GithubCodes/mnmgJOIN/build/_deps/spdlog-subbuild/spdlog-populate-prefix/src/spdlog-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/mnt/9054B61D54B605CE/GithubCodes/mnmgJOIN/build/_deps/spdlog-subbuild/spdlog-populate-prefix/src/spdlog-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
