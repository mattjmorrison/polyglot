#!/bin/bash
echo "== Scala Hi =="
echo "Compile Scala"
scala/bin/scalac ../languages/scala/hi.scala
echo "Execute Scala"
scala/bin/scala ../languages/scala/hi.scala
rm -rf *.class

echo "== Scala Fibonacci =="
echo "Compile Scala"
scala/bin/scalac ../languages/scala/fibonacci.scala
echo "Execute Scala"
scala/bin/scala ../languages/scala/fibonacci.scala 20
rm -rf *.class
