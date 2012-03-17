#!/bin/bash
echo "== Scala Hi =="
echo "Compile Scala"
scalac ../languages/scala/hi.scala
echo "Execute Scala"
scala ../languages/scala/hi.scala
rm -rf *.class

echo "== Scala Fibonacci =="
echo "Compile Scala"
scalac ../languages/scala/fibonacci.scala
echo "Execute Scala"
scala ../languages/scala/fibonacci.scala 16
rm -rf *.class
