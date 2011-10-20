#include <iostream>
using namespace std;

int fib(int n){
	return n < 2 ? n : fib(n-1) + fib(n-2);
}

int main(int argc, char *argv[]){
	cout << fib(atoi(argv[1]) - 1) << endl;
	return 0;
}
