#!/bin/bash
echo "Compile Erlang"
erlc ../languages/erlang/hi.erl
echo "Execute Erlang"
erl -noshell -run hi -s init stop
rm -rf *.beam
