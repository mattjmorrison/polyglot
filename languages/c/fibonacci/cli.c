#include <stdio.h>
#include <stdlib.h>
#include "fibonacci.h"

int main(int argc, char *argv[]){
    printf("%d\n", fib(atoi(argv[1]) - 1));
    return 0;
}
