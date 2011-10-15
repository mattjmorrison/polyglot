#include <stdio.h>

int main(int argc, char *argv[]){
	printf("%d\n", fib(atoi(argv[1])));
	return 0;
}

int fib(int n){
	return n < 2 ? n : fib(n-1) + fib(n-2);
}