cmake_minimum_required(VERSION 2.8)

project(TestLibmesh CXX)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${CMAKE_SOURCE_DIR}/../..)
message("${CMAKE_MODULE_PATH}")

find_package(Libmesh 1.0.0 REQUIRED)
message(STATUS "LIBMESH_DEFINITIONS:  ${LIBMESH_DEFINITIONS}")
message(STATUS "LIBMESH_FLAGS:        ${LIBMESH_FLAGS}")
message(STATUS "LIBMESH_INCLUDE_DIRS: ${LIBMESH_INCLUDE_DIRS}")
message(STATUS "LIBMESH_LIBRARIES:    ${LIBMESH_LIBRARIES}")

add_definitions(${LIBMESH_DEFINITIONS})
set(CMAKE_CXX_FLAGS "${LIBMESH_FLAGS}")
include_directories(${LIBMESH_INCLUDE_DIRS})

add_executable(test_libmesh main.cpp)
target_link_libraries(test_libmesh ${LIBMESH_LIBRARIES})
