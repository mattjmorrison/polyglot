#import <stdio.h>

int fib(int n){
	return n < 2 ? n : fib(n-1) + fib(n-2);
}

main(int argc, char *argv[]){
	printf("%d\n", fib(atoi(argv[1]) - 1));
}
