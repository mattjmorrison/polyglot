-module(fibonacci_tests).
-include_lib("fibonacci.erl").
-include_lib("lib/eunit.hrl").

fib_0_is_0_test_() ->
	?_assert(0 =:= fib(0)).

fib_1_is_1_test_() ->
	?_assert(1 =:= fib(1)).
	
fib_2_is_1_test_() ->
	?_assert(1 =:= fib(2)).
	
fib_3_is_2_test_() ->
	?_assert(2 =:= fib(3)).

fib_4_is_3_test_() ->
	?_assert(3 =:= fib(4)).

fib_5_is_5_test_() ->
	?_assert(5 =:= fib(5)).

fib_6_is_8_test_() ->
	?_assert(8 =:= fib(6)).

fib_15_is_610_test_() ->
	?_assert(610 =:= fib(15)).
