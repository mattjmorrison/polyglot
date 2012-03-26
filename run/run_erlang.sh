#!/bin/bash
. ./colors.sh

section "Erlang Hi"
step "Compile Erlang"
erlc ../languages/erlang/hi.erl
step "Execute Erlang"
erl -noshell -run hi -s init stop
rm -rf *.beam

section "Erlang Fibonacci"
step "Compile Erlang"
erlc ../languages/erlang/fibonacci.erl
step "Execute Erlang"
erl -noshell -run fibonacci -s init stop -extra 16
rm -rf *.beam
