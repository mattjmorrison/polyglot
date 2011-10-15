#!/bin/bash

echo "== Erlang Hi =="
echo "Compile Erlang"
erlc ../languages/erlang/hi.erl
echo "Execute Erlang"
erl -noshell -run hi -s init stop
rm -rf *.beam

echo "== Erlang Fibonacci 20 =="
echo "Compile Erlang"
erlc ../languages/erlang/fibonacci.erl
echo "Execute Erlang"
erl -noshell -run fibonacci -s init stop -extra 20 
rm -rf *.beam
