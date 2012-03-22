#include "fibonacci_tests.h"

TEST_SUITES {
	TEST_SUITE_ADD(fibonacci_tests),
	TEST_SUITES_CLOSURE
};

int main(int argc, char *argv[])
{
	CU_RUN(argc, argv);
	return 0;
}
