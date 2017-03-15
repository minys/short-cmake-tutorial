if(NOT BUILD_TESTING)
    return()
endif()

add_executable(test_myApp test_myApp.cpp)

add_test(
    NAME test_myApp
    COMMAND $<TARGET_FILE:test_myApp>
)
