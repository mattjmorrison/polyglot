#!/bin/bash
cd ../languages/ocaml/

echo "== OCaml Hi =="
echo "Compile OCaml"
ocamlc -o hi hi.ml
echo "Execute OCaml"
./hi
rm -rf hi
rm -rf hi.cmi
rm -rf hi.cmo

echo "== OCaml Fibonacci =="
echo "Compile OCaml"
ocamlc -o fibonacci fibonacci.ml
echo "Execute OCaml"
./fibonacci 16
rm -rf fibonacci
rm -rf fibonacci.cmi
rm -rf fibonacci.cmo