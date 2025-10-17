#include "pch.hpp"

#include "main.hpp"

#ifndef x64_MASM_ASSEMBLY

extern "C" void qlogicae_google_test__assembly();

#endif

namespace QLogicaeGoogleTest
{
	TEST(TestCaseName, TestName)
	{
		EXPECT_EQ(1, 1);
		EXPECT_TRUE(true);
	}
}
