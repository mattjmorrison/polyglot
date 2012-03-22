#include "../cu/cu.h"

TEST(fib_0);
TEST(fib_1);
TEST(fib_2);
TEST(fib_3);
TEST(fib_4);
TEST(fib_15);

TEST_SUITE(fibonacci_tests){
    TEST_ADD(fib_0),
    TEST_ADD(fib_1),
    TEST_ADD(fib_2),
    TEST_ADD(fib_3),
    TEST_ADD(fib_4),
	TEST_ADD(fib_15),
	TEST_SUITE_CLOSURE
};


