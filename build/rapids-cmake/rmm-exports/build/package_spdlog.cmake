#=============================================================================
# find_dependency Search for spdlog
#
# Make sure we search for a build-dir config module for the project
set(possible_package_dir "")
if(possible_package_dir AND NOT DEFINED spdlog_DIR)
  set(spdlog_DIR "${possible_package_dir}")
endif()

find_dependency(spdlog)

if(possible_package_dir)
  unset(possible_package_dir)
endif()
#=============================================================================
