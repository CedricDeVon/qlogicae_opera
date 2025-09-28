#include "pch.hpp"

#include "main.hpp"

int main(int argc, char** argv)
{
    QLogicaeCore::CLI_IO.print_with_new_line_async(
        "Enter to exit..."
    );

    bool exit_code;
    std::cin >> exit_code;

    return 0;
}
