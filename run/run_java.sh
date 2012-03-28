#!/bin/bash
. ./colors.sh

section "Java Hi"
step "Compile Java"
javac ../languages/java/Hi.java
step "Execute Java"
java -cp ../languages/java Hi 
rm -rf ../languages/java/*.class

section "Java Fibonacci Tests"
step "Compile Java"
cd ../languages/java/
javac -cp lib/junit-4.10.jar:. fibonacci/Fibonacci.java fibonacci/tests/FibonacciTests.java
step "Execute Java"
java -cp lib/junit-4.10.jar:. org.junit.runner.JUnitCore fibonacci.tests.FibonacciTests
rm -rf fibonacci/*.class
rm -rf fibonacci/tests/*.class
cd ../../run

section "Java Fibonacci"
step "Compile Java"
cd ../languages/java/
javac fibonacci/*.java
step "Execute Java"
java fibonacci.Cli 16
rm -rf fibonacci/*.class

