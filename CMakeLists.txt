cmake_minimum_required(VERSION 3.8)

project(lab3)

add_library(ml STATIC print.cpp print.h)
add_executable(${PROJECT_NAME} main.cpp print.cpp)