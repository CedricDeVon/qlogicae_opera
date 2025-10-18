#pragma once

#include "application.hpp"

namespace QLogicaeQtConsole
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
