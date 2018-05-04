cmake_minimum_required(VERSION 3.8)
project(uthreads_ex2)

set(CMAKE_CXX_STANDARD 11)

set(SOURCE_FILES main.cpp uthreads.cpp)
add_executable(uthreads_ex2 ${SOURCE_FILES})