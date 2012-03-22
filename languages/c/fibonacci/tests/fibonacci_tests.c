#include "../cu/cu.h"
#include <stdio.h>
#include "../fibonacci.h"

TEST(fib_0){
    assertEquals(0, fib(0));
}

TEST(fib_1){
    assertEquals(1, fib(1));
}

TEST(fib_2){
    assertEquals(1, fib(2));
}

TEST(fib_3){
    assertEquals(2, fib(3));
}

TEST(fib_4){
    assertEquals(3, fib(4));
}

TEST(fib_15) {
    assertEquals(610, fib(15));
}
