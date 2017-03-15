#include <iostream>
#include <myLib.h>

#include <private.h>

void call_myLib()
{
    std::cout << "call_myLib called: " << thisIsPrivate << std::endl;
} 
