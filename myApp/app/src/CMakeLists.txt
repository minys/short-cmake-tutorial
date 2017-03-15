add_executable(myApp myApp.cpp)

target_link_libraries(myApp myLib)

if (FOO)
    target_compile_definitions(myApp PRIVATE FOO=1)
endif()

install(TARGETS myApp RUNTIME DESTINATION bin)
