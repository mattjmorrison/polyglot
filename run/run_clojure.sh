#!/bin/bash
CLOJURE_DIR=clojure
CLOJURE_JAR=$CLOJURE_DIR/clojure-1.3.0.jar
CLASSPATH=.:$CLOJURE_JAR:$CONTRIB_JAR
CLOJURE_COMMAND="java -cp .:$CLOJURE_JAR clojure.main"

echo "== Clojure Hi =="
$CLOJURE_COMMAND ../languages/clojure/hi.clj
rm -rf *.class

echo "== Clojure Fibonacci =="
$CLOJURE_COMMAND ../languages/clojure/fibonacci.clj 16
rm -rf *.class