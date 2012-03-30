
#include "lib/TestHarness.h"
#include "lib/TestResultStdErr.h"
#include "fibonacci.h"

TEST(0_is_0, fib)
{
    CHECK(0 == fib(0));
}

TEST(1_is_1, fib)
{
    CHECK(1 == fib(1));
}

TEST(2_is_1, fib)
{
    CHECK(1 == fib(2));
}

TEST(3_is_2, fib)
{
    CHECK(2 == fib(3));
}

TEST(4_is_3, fib)
{
    CHECK(3 == fib(4));
}

TEST(5_is_5, fib)
{
    CHECK(5 == fib(5));
}

TEST(6_is_8, fib)
{
    CHECK(8 == fib(6));
}

TEST(15_is_610, fib)
{
    CHECK(610 == fib(15));
}

int main()
{   
    TestResultStdErr result;
    TestRegistry::runAllTests(result);
    return (result.getFailureCount());
}

