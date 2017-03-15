if(NOT BUILD_TESTING)
    return()
endif()

add_executable(test_myLib test_myLib.cpp)

add_test(
    NAME test_myLib
    COMMAND $<TARGET_FILE:test_myLib>
)
