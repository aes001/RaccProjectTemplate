cmake_minimum_required(VERSION 3.30)

project(RaccProject)

set(RACC_COMMON_CMAKE_UTILS ${CMAKE_CURRENT_SOURCE_DIR}/cmake)
set(RACC_LIBS_DIR ${CMAKE_CURRENT_SOURCE_DIR}/external)
set(RACC_SRC_DIR ${CMAKE_CURRENT_SOURCE_DIR}/src)

include(${RACC_COMMON_CMAKE_UTILS}/NoInSourceBuild.cmake)
add_subdirectory(${RACC_COMMON_CMAKE_UTILS}/RaccProjectCMake)

add_subdirectory(${RACC_SRC_DIR})
add_subdirectory(${RACC_LIBS_DIR})





