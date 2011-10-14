#!/bin/bash
echo "Compile Scala"
scala/bin/scalac ../languages/scala/hi.scala
echo "Execute Scala"
scala/bin/scala ../languages/scala/hi.scala
rm -rf *.class
