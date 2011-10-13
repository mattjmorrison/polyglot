#!/bin/bash
echo "Compile Erlang"
erlc sample.erl
echo "Execute Erlang"
erl -noshell -run sample -s init stop
rm -rf *.beam
