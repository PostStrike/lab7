cmake_minimum_required(VERSION 3.22)

set(project "dependences")
project(${project})

set(${project}_SOURCES
        transport.cpp
        car.cpp
        train.cpp
        express.cpp)

set(${project}_HEADERS
        transport.h
        car.h
        train.h
        express.h)

set(${project}_SOURCE_LIST
        ${${project}_SOURCES}
        ${${project}_HEADERS})

add_library(${project}
        STATIC
        ${${project}_SOURCE_LIST})
