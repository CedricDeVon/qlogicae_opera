#include "pch.hpp"

#include "main.hpp"

int main(int argc, char *argv[])
{
	QLogicaeCore::QLOGICAE_APPLICATION.setup();

	QLogicaeCore::CLI_IO.print_with_new_line("QLogicaeVS2022QtConsole - Confirmed!");
    
	QCoreApplication application(argc, argv);

    bool exit_code = application.exec();	

	return exit_code;
}

namespace QLogicaeVS2022QtConsole
{

}
