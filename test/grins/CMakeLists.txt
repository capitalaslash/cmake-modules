cmake_minimum_required(VERSION 2.8)

project(TestGrins CXX)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${CMAKE_SOURCE_DIR}/../..)
message("${CMAKE_MODULE_PATH}")

find_package(Grins REQUIRED)
message(STATUS "GRINS_INCLUDE_DIRS: ${GRINS_INCLUDE_DIRS}")
message(STATUS "GRINS_LIBRARIES:    ${GRINS_LIBRARIES}")

add_definitions(${GRINS_DEFINITIONS})
set(CMAKE_CXX_FLAGS "${GRINS_FLAGS}")
include_directories(${GRINS_INCLUDE_DIRS})

add_executable(test_grins main.cpp)
target_link_libraries(test_grins ${GRINS_LIBRARIES})
