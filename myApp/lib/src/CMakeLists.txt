# Add normal library target
#
# A library target can be defined as STATIC, SHARED, MODULE. It can be excluded
# from the 'all' target with EXCLUDE_FROM_ALL.
#
# If the type of library to build is not explicitly stated, STATIC or SHARED will
# be implicitly used based on the BUILD_SHARED_LIBS property.
#
add_library(myLib SHARED myLib.cpp)

target_include_directories(myLib
    PUBLIC $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/../include>
    PRIVATE $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/support>
)

install(TARGETS myLib LIBRARY DESTINATION lib)

# Other examples of library targets:
#  - Object libraries (may only contain source and header not affecting linking)
#  - Alias libraries (alias for another library target)
#  - Interface libraries (primarily for things like header-only libraries)
