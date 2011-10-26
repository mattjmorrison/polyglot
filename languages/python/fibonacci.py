import sys

_cache = {}
def cache(func):
    def wrap(n):
        if n not in _cache:
            _cache[n] = func(n)
        return _cache[n]
    return wrap

@cache
def fib(n): 
    return n if n < 2 else fib(n-1) + fib(n-2)

if __name__ == '__main__':
    print fib(int(sys.argv[1]) - 1)

