-export([fib/1]).

fib(N) when N < 2 -> N;
fib(N) -> fib(N-1) + fib(N-2).
