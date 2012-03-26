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

section "OCaml Fibonacci"
step "Compile OCaml"
ocamlc -o fibonacci fibonacci.ml
step "Execute OCaml"
./fibonacci 16
rm -rf fibonacci
rm -rf fibonacci.cmi
rm -rf fibonacci.cmo