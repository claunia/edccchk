cmake_minimum_required(VERSION 3.16)
project(edccchk C)

set(CMAKE_C_STANDARD 11)

include_directories(.)

add_executable(edccchk
        banner.h
        common.h
        edccchk.c
        version.h)
