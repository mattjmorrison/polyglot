#!/bin/bash

echo "== Java Hi =="
echo "Compile Java"
javac ../languages/java/Hi.java
echo "Execute Java"
java -cp ../languages/java Hi 
rm -rf ../languages/java/*.class

echo "== Java Fibonacci =="
echo "Compile Java"
javac ../languages/java/Fibonacci.java
echo "Execute Java"
java -cp ../languages/java Fibonacci 16
rm -rf ../languages/java/*.class

