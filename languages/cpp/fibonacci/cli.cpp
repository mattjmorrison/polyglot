#include <iostream>
#include "fibonacci.h"

using namespace std;

int main(int argc, char *argv[]){
	cout << fib(atoi(argv[1]) - 1) << endl;
	return 0;
}
