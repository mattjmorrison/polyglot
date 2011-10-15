#!/bin/bash

echo "== Java Hi =="
echo "Compile Java"
javac ../languages/java/Hi.java
echo "Execute Java"
java -cp ../languages/java Hi 
rm -rf ../languages/java/*.class

echo "== Java Fibonacci 20 =="
echo "Compile Java"
javac ../languages/java/Fibonacci.java
echo "Execute Java"
java -cp ../languages/java Fibonacci 20
rm -rf ../languages/java/*.class

