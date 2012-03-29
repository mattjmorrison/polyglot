#!/bin/bash
. ./colors.sh

section "Scala Hi"
step "Compile Scala"
scalac ../languages/scala/hi.scala
step "Execute Scala"
scala ../languages/scala/hi.scala
rm -rf *.class

cd ../languages/scala

section "Scala Fibonacci Tests"
step "Compile Scala"
scalac -cp lib/scalatest-1.7.1.jar fibonacci/fibonacci.scala fibonacci/tests.scala
step "Execute Scala"
scala -cp lib/scalatest-1.7.1.jar org.scalatest.tools.Runner -p . -o -s FibonacciTests

section "Scala Fibonacci"
step "Compile Scala"
scalac fibonacci/fibonacci.scala fibonacci/cli.scala
step "Execute Scala"
scala Main 16
rm -rf *.class
rm -rf fibonacci/*.class
