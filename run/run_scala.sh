#!/bin/bash
. ./colors.sh

section "Scala Hi"
step "Compile Scala"
scalac ../languages/scala/hi.scala
step "Execute Scala"
scala ../languages/scala/hi.scala
rm -rf *.class

section "Scala Fibonacci"
step "Compile Scala"
scalac ../languages/scala/fibonacci.scala
step "Execute Scala"
scala ../languages/scala/fibonacci.scala 16
rm -rf *.class
