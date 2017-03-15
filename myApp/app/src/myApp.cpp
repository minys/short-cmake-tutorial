#include <cstdlib>

#include <config.h>
#include <myLib.h>

int
main(int argc, char *argv[])
{
    printDetails();
    call_myLib();

#ifdef FOO
    std::cout << "FOO is enabled" << std::endl;
#endif

    return EXIT_SUCCESS;
}
