#!/bin/bash
. ./colors.sh

section "Erlang Hi"
step "Compile Erlang"
erlc ../languages/erlang/hi.erl
step "Execute Erlang"
erl -noshell -run hi -s init stop
rm -rf *.beam

cd ../languages/erlang/fibonacci/
section "Erlang Fibonacci Tests"
step "Compile Erlang"
erlc fibonacci_tests.erl
step "Execute Erlang"
#erl -noshell -run fibonacci_tests
erl -noshell -pa ebin -eval "eunit:test(fibonacci_tests, [verbose])" -s init stop

section "Erlang Fibonacci"
step "Compile Erlang"
erlc cli.erl
step "Execute Erlang"
erl -noshell -run cli -s init stop -extra 16
rm -rf *.beam
