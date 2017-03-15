#
# Short CMake Tutorial
#

# Include global configuration
set(CMAKE_MODULE_PATH /home/mikael/software/tutorial/platform/cmake)

# Set minimum required version of CMake
cmake_minimum_required(VERSION 3.7)

# Define this project, the following is set:
#
# PROJECT_NAME        name of the project
# PROJECT_SOURCE_DIR  is the root of the current project source directory
# PROJECT_BINARY_DIR  is the root of the current project build directory
#
# <PROJECT_NAME>_VERSION        full version of this project
# <PROJECT_NAME>_VERSION_MAJOR  major version of this project
# <PROJECT_NAME>_VERSION_MINOR  minor version of this project
#
# In the example below, the following version variables are set to an empty
# string since they are undefined:
#
# <PROJECT_NAME>_VERSION_PATCH patch level for this version of the project
# <PROJECT_NAME>_VERSION_TWEAK tweak level for this version of the project
#
project(
    myApp 
    VERSION 1.0
    LANGUAGES CXX
)

# Set C++ standard used for all targets in this project
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_EXTENSIONS OFF)

# Include CTest support
include(CTest)

# Project options which could control:
#  - Signal behavioral options to the application at build time
#  - Enable/disable parts of the application at build time
#  - etc
#
option(FOO "Option Foo." ON)
option(BAR "Option Bar." OFF)

# Configure header file (to pass on project version or options)
configure_file(
    ${PROJECT_SOURCE_DIR}/config.h.in
    ${PROJECT_BINARY_DIR}/config.h
)
include_directories(${PROJECT_BINARY_DIR})

add_subdirectory(app)
add_subdirectory(lib)
