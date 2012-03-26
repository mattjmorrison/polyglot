#!/bin/bash
. ./colors.sh

section "Clojure Hi"
clj ../languages/clojure/hi.clj
rm -rf *.class

section "Clojure Fibonacci Tests"
cd ../languages/clojure/fibonacci/
clj test_fibonacci.clj

section "Clojure Fibonacci"
clj cli.clj 16

rm -rf *.class
cd ../../../run/