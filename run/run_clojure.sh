#!/bin/bash

echo "== Clojure Hi =="
clj ../languages/clojure/hi.clj
rm -rf *.class

echo "== Clojure Fibonacci =="
clj ../languages/clojure/fibonacci.clj 16
rm -rf *.class