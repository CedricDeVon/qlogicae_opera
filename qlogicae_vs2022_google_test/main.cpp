#include "pch.hpp"

#include "main.hpp"

namespace QLogicaeVS2022GoogleTest
{
	TEST(TestCaseName, TestName)
	{
		QLogicaeCore::CLI_IO.print_with_new_line("QLogicaeVS2022GoogleTest - Confirmed!");

		EXPECT_EQ(1, 1);
		EXPECT_TRUE(true);
	}
}
