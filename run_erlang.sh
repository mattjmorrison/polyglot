#!/bin/bash
erlc sample.erl
erl -noshell -run sample -s init stop
rm -rf *.beam
