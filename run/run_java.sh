#!/bin/bash
echo "Compile Java"
javac ../Sample.java
echo "Execute Java"
java -cp ..  Sample
rm -rf *.class
