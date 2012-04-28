#!/bin/bash
. ./colors.sh

cd ../languages/ocaml/

section "OCaml Hi"
step "Compile OCaml"
ocamlc -o hi hi.ml
step "Execute OCaml"
./hi
rm -rf hi
rm -rf hi.cmi
rm -rf hi.cmo

cd fibonacci/

section "OCaml Fibonacci Tests"
step "Compile OCaml"
ocamlfind ocamlc -o tests -package oUnit -linkpkg -g fibonacci.ml tests.ml 
./tests
rm -rf tests
rm -rf *.cmi
rm -rf *.cmo

section "OCaml Fibonacci"
step "Compile OCaml"
ocamlc -o fibonacci -g fibonacci.ml cli.ml
step "Execute OCaml"
./fibonacci 16
rm -rf fibonacci
rm -rf *.cmi
rm -rf *.cmo