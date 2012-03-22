#include "cu/cu.h"
#include <stdio.h>
#include "fibonacci.h"

TEST(fib_15_tests) {
    assertEquals(610, fib(15));
}
