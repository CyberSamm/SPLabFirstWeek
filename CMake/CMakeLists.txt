cmake_minimum_required(VERSION 3.16)
project(MyProject VERSION 1.0.0)

add_library(
	say-hello
	hello.hpp
	hello.cpp
	)

add_executable(hello main.cpp hello.cpp)

target_link_libraries(hello PRIVATE say-hello)
