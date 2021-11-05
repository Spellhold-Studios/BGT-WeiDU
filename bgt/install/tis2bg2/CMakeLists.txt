cmake_minimum_required(VERSION 3.5)
project(TIS2BG2)

set(CMAKE_CXX_STANDARD 11)

add_executable(tis2bg2
    tis2bg2.cpp)

set_target_properties(tis2bg2
    PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin")