import sys

fib = lambda n: n if n < 2 else fib(n-1) + fib(n-2)

print fib(int(sys.argv[1]))
