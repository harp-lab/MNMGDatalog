# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/mnt/9054B61D54B605CE/GithubCodes/mnmgJOIN/build/_deps/fmt-src"
  "/mnt/9054B61D54B605CE/GithubCodes/mnmgJOIN/build/_deps/fmt-build"
  "/mnt/9054B61D54B605CE/GithubCodes/mnmgJOIN/build/_deps/fmt-subbuild/fmt-populate-prefix"
  "/mnt/9054B61D54B605CE/GithubCodes/mnmgJOIN/build/_deps/fmt-subbuild/fmt-populate-prefix/tmp"
  "/mnt/9054B61D54B605CE/GithubCodes/mnmgJOIN/build/_deps/fmt-subbuild/fmt-populate-prefix/src/fmt-populate-stamp"
  "/mnt/9054B61D54B605CE/GithubCodes/mnmgJOIN/build/_deps/fmt-subbuild/fmt-populate-prefix/src"
  "/mnt/9054B61D54B605CE/GithubCodes/mnmgJOIN/build/_deps/fmt-subbuild/fmt-populate-prefix/src/fmt-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/mnt/9054B61D54B605CE/GithubCodes/mnmgJOIN/build/_deps/fmt-subbuild/fmt-populate-prefix/src/fmt-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/mnt/9054B61D54B605CE/GithubCodes/mnmgJOIN/build/_deps/fmt-subbuild/fmt-populate-prefix/src/fmt-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
