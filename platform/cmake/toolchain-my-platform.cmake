set(CMAKE_SYSTEM_NAME my-platform)
set(CMAKE_SYSTEM_PROCESSOR x86_64)

# Passed as --sysroot on platforms that supports it
set(CMAKE_SYSROOT /home/mikael/software/tutorial/platform/sysroot)
set(tools /home/mikael/software/tutorial/platform/toolchain)

# Set C++ compiler
set(CMAKE_CXX_COMPILER ${tools}/bin/my-platform-g++)

# Never search CMAKE_FIND_ROOT_PATH for programs
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)

# Only search CMAKE_FIND_ROOT_PATH for libraries, includes and packages
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)
