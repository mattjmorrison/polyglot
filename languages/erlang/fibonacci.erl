-module(fibonacci).
-export([start/0]).

start() ->
  [V|_] = init:get_plain_arguments(),
  {N, _} = string:to_integer(V),
  io:format("~p", [fib(N)]),
  io:format("\n").

fib(N) when N < 2 -> N;
fib(N) -> fib(N-1) + fib(N-2).


