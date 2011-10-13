#!/bin/bash
echo "Compile Scala"
scala/bin/scalac ../sample.scala
echo "Execute Scala"
scala/bin/scala ../sample.scala
rm -rf *.class
