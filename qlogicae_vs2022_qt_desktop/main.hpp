#pragma once

#include "qlogicae_vs2022_qt_desktop/includes/application.hpp"

#include "qlogicae_core/includes/cli_io.hpp"
#include "qlogicae_core/includes/application.hpp"

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

namespace QLogicaeVS2022QtDesktop
{

}
