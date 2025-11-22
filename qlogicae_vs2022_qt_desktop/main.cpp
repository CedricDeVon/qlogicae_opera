#include "pch.hpp"

#include "main.hpp"

int main(int argc, char *argv[])
{        
    QLogicaeCore::QLOGICAE_APPLICATION.setup();

    QApplication application(argc, argv);

    QLogicaeVS2022QtDesktop::Application window;
    window.show();
    
    bool exit_code = application.exec();
    
    QLogicaeCore::CLI_IO.print_with_new_line("QLogicaeVS2022QtDesktop - Confirmed!");

    return exit_code;
}

namespace QLogicaeVS2022QtDesktop
{

}
