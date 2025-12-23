cmake_minimum_required(VERSION 3.30)

project(#[[Project name here...]])

set(RACC_COMMON_CMAKE_UTILS ${CMAKE_CURRENT_SOURCE_DIR}/cmake)
set(RACC_LIBS_DIR ${CMAKE_CURRENT_SOURCE_DIR}/external)
set(RACC_SRC_DIR ${CMAKE_CURRENT_SOURCE_DIR}/src)

include(${RACC_COMMON_CMAKE_UTILS}/NoInSourceBuild.cmake)
add_subdirectory(${RACC_COMMON_CMAKE_UTILS}/RaccProjectCMake)

add_subdirectory(${RACC_SRC_DIR})
add_subdirectory(${RACC_LIBS_DIR})


set_target_properties(${PROJECT_NAME}
	PROPERTIES
	ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/lib/a"
	LIBRARY_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/lib"
	RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin"
)





