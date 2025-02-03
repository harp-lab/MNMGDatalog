#=============================================================================
# Copyright (c) 2025, NVIDIA CORPORATION.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#=============================================================================


# CPM Search for fmt
#
# Make sure we search for a build-dir config module for the CPM project
set(possible_package_dir "/mnt/9054B61D54B605CE/GithubCodes/mnmgJOIN/build/_deps/fmt-build")
if(possible_package_dir AND NOT DEFINED fmt_DIR)
  set(fmt_DIR "${possible_package_dir}")
endif()

CPMFindPackage(
  "NAME;fmt;VERSION;10.1.1;GIT_REPOSITORY;https://github.com/fmtlib/fmt.git;GIT_TAG;10.1.1;GIT_SHALLOW;ON;PATCH_COMMAND;/usr/bin/cmake;-P;/mnt/9054B61D54B605CE/GithubCodes/mnmgJOIN/build/rapids-cmake/patches/fmt/patch.cmake;EXCLUDE_FROM_ALL;OFF;OPTIONS;FMT_INSTALL ON;CMAKE_POSITION_INDEPENDENT_CODE ON"
  )

if(possible_package_dir)
  unset(possible_package_dir)
endif()
#=============================================================================
