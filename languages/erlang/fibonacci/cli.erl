-module(cli).
-export([start/0]).
-include_lib("fibonacci.erl").

start() ->
	[V|_] = init:get_plain_arguments(),
	{N, _} = string:to_integer(V),
	io:format("~p\n", [fib(N - 1)]).
