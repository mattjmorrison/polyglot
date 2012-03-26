#!/bin/bash
. ./colors.sh

section "Java Hi"
step "Compile Java"
javac ../languages/java/Hi.java
step "Execute Java"
java -cp ../languages/java Hi 
rm -rf ../languages/java/*.class

section "Java Fibonacci"
step "Compile Java"
javac ../languages/java/Fibonacci.java
step "Execute Java"
java -cp ../languages/java Fibonacci 16
rm -rf ../languages/java/*.class

