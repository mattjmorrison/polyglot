#!/bin/bash

echo "== Clojure Hi =="
clj ../languages/clojure/hi.clj
rm -rf *.class

echo "== Clojure Fibonacci Tests =="
cd ../languages/clojure/
clj test_fibonacci.clj
cd ../../run/
rm -rf *.class