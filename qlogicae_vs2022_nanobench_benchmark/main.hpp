#pragma once

#include "application.hpp"

namespace QLogicaeNanobenchBenchmark
{

}

int main(int, char**);

int WINAPI WinMain(
    HINSTANCE hInstance,
    HINSTANCE,
    LPSTR,
    int
)
{
    return main(__argc, __argv);
}
