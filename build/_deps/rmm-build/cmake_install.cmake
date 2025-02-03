# Install script for directory: /mnt/9054B61D54B605CE/GithubCodes/mnmgJOIN/build/_deps/rmm-src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/mnt/9054B61D54B605CE/GithubCodes/mnmgJOIN/build/_deps/fmt-build/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/mnt/9054B61D54B605CE/GithubCodes/mnmgJOIN/build/_deps/spdlog-build/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/mnt/9054B61D54B605CE/GithubCodes/mnmgJOIN/build/_deps/cccl-build/cmake_install.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/rapids" TYPE DIRECTORY FILES "/mnt/9054B61D54B605CE/GithubCodes/mnmgJOIN/build/_deps/cccl-src/thrust/thrust" FILES_MATCHING REGEX "/[^/]*\\.h$" REGEX "/[^/]*\\.inl$")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/rapids/cmake/thrust" TYPE DIRECTORY FILES "/mnt/9054B61D54B605CE/GithubCodes/mnmgJOIN/build/_deps/cccl-src/thrust/thrust/cmake/" REGEX "(.*-header-search.cmake|.*.cmake.in)" EXCLUDE)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/rapids/cmake/thrust" TYPE FILE FILES "/mnt/9054B61D54B605CE/GithubCodes/mnmgJOIN/build/_deps/cccl-build/thrust/cmake/thrust-header-search.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/rapids" TYPE DIRECTORY FILES "/mnt/9054B61D54B605CE/GithubCodes/mnmgJOIN/build/_deps/cccl-src/cub/cub" FILES_MATCHING REGEX "/[^/]*\\.cuh$")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/rapids/cmake/cub" TYPE DIRECTORY FILES "/mnt/9054B61D54B605CE/GithubCodes/mnmgJOIN/build/_deps/cccl-src/cub/cub/cmake/" REGEX "(.*-header-search.cmake|.*.cmake.in)" EXCLUDE)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/rapids/cmake/cub" TYPE FILE FILES "/mnt/9054B61D54B605CE/GithubCodes/mnmgJOIN/build/_deps/cccl-build/cub/cmake/cub-header-search.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/rapids/libcudacxx" TYPE DIRECTORY FILES "/mnt/9054B61D54B605CE/GithubCodes/mnmgJOIN/build/_deps/cccl-src/libcudacxx/include/cuda" REGEX "/CMakeLists\\.txt$" EXCLUDE)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/rapids/libcudacxx" TYPE DIRECTORY FILES "/mnt/9054B61D54B605CE/GithubCodes/mnmgJOIN/build/_deps/cccl-src/libcudacxx/include/nv" REGEX "/CMakeLists\\.txt$" EXCLUDE)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/rapids/cmake" TYPE DIRECTORY FILES "/mnt/9054B61D54B605CE/GithubCodes/mnmgJOIN/build/_deps/cccl-src/libcudacxx/lib/cmake/libcudacxx" REGEX "(.*-header-search.cmake|.*.cmake.in)" EXCLUDE)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/rapids/cmake/libcudacxx" TYPE FILE FILES "/mnt/9054B61D54B605CE/GithubCodes/mnmgJOIN/build/_deps/cccl-build/lib/cmake/libcudacxx/libcudacxx-header-search.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/mnt/9054B61D54B605CE/GithubCodes/mnmgJOIN/build/_deps/nvtx3-build/cmake_install.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/mnt/9054B61D54B605CE/GithubCodes/mnmgJOIN/build/_deps/nvtx3-src/c/include/")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "nvtx3" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/nvtx3/nvtx3-targets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/nvtx3/nvtx3-targets.cmake"
         "/mnt/9054B61D54B605CE/GithubCodes/mnmgJOIN/build/_deps/rmm-build/CMakeFiles/Export/fdf31b5e8b73156b1a31a2824d386426/nvtx3-targets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/nvtx3/nvtx3-targets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/nvtx3/nvtx3-targets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/nvtx3" TYPE FILE FILES "/mnt/9054B61D54B605CE/GithubCodes/mnmgJOIN/build/_deps/rmm-build/CMakeFiles/Export/fdf31b5e8b73156b1a31a2824d386426/nvtx3-targets.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "nvtx3" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/nvtx3" TYPE DIRECTORY FILES "/mnt/9054B61D54B605CE/GithubCodes/mnmgJOIN/build/_deps/rmm-build/rapids-cmake/nvtx3/export/nvtx3/")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/rmm" TYPE DIRECTORY FILES "/mnt/9054B61D54B605CE/GithubCodes/mnmgJOIN/build/_deps/rmm-src/include/rmm/")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/rmm" TYPE FILE FILES "/mnt/9054B61D54B605CE/GithubCodes/mnmgJOIN/build/_deps/rmm-build/include/rmm/version_config.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "rmm" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/rmm/rmm-targets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/rmm/rmm-targets.cmake"
         "/mnt/9054B61D54B605CE/GithubCodes/mnmgJOIN/build/_deps/rmm-build/CMakeFiles/Export/ff2989aa21b1a44df464e24614e4b8aa/rmm-targets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/rmm/rmm-targets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/rmm/rmm-targets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/rmm" TYPE FILE FILES "/mnt/9054B61D54B605CE/GithubCodes/mnmgJOIN/build/_deps/rmm-build/CMakeFiles/Export/ff2989aa21b1a44df464e24614e4b8aa/rmm-targets.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "rmm" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/rmm" TYPE DIRECTORY FILES "/mnt/9054B61D54B605CE/GithubCodes/mnmgJOIN/build/_deps/rmm-build/rapids-cmake/rmm/export/rmm/")
endif()

