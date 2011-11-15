#!/bin/bash
SCALAC_COMMAND="scala/bin/scalac -classpath scala/scalatest-1.6.1.jar"
SCALA_COMMAND="scala/bin/scala -classpath scala/scalatest-1.6.1.jar"

echo "== Scala Hi =="
echo "Compile Scala"
$SCALAC_COMMAND ../languages/scala/hi.scala
echo "Execute Scala"
$SCALA_COMMAND ../languages/scala/hi.scala
rm -rf *.class

echo "== Scala Fibonacci =="
echo "Compile Scala"
$SCALAC_COMMAND ../languages/scala/fibonacci.scala
echo "Execute Scala"
#$SCALA_COMMAND ../languages/scala/fibonacci.scala main.Main 16
java -cp scala/lib main.Main 16
rm -rf *.class

echo "== Scala Fibonacci Tests =="
echo "Compile Scala"
$SCALAC_COMMAND ../languages/scala/fibonacci_tests.scala
echo "Execute Scala"
$SCALA_COMMAND org.scalatest.tools.Runner -p ../languages/scala/ -o -s FibonacciSuite
#rm -rf *.class
