#include "cu/cu.h"

TEST(fib_15_tests);

TEST_SUITE(fibonacci_tests){
	TEST_ADD(fib_15_tests),
	TEST_SUITE_CLOSURE
};


