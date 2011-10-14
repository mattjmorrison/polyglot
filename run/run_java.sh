#!/bin/bash
echo "Compile Java"
javac ../languages/java/Hi.java
echo "Execute Java"
java -cp ../languages/java Hi 
rm -rf ../languages/java/*.class
