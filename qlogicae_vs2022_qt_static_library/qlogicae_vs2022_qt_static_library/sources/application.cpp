#include "pch.hpp"

#include "../includes/application.hpp"

namespace QLogicaeVS2022QtStaticLibrary
{
	Application::Application()
	{

	}

	void confirm_project_setup()
	{
		QLogicaeCore::CLI_IO.print_with_new_line("QLogicaeVS2022QtStaticLibrary - Confirmed!");
	}
}
