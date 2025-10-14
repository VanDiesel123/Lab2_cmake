cmake_minimum_required(VERSION 3.10)
project(lab2_project C)

add_library(project STATIC project.c)
add_executable(main main.c)
target_link_libraries(main project)