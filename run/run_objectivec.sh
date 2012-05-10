#!/bin/bash
. ./colors.sh
cd ../languages/objectivec/


#LIB=/Applications/Xcode.app/Contents/Developer/Library/Frameworks/SenTestingKit.framework/Versions/Current/SenTestingKit
#/Applications/Xcode.app/Contents/Developer/Library/Frameworks/SenTestingKit.framework/Versions/A/Headers/SenTestingKit.h
#X=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS5.0.sdk/Developer/Library/Frameworks/SenTestingKit.framework/Headers/SenTestingKit.c
#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator5.0.sdk/Developer/Library/Frameworks/SenTestingKit.framework/Headers/SenTestingKit.h
# step "Compile"
#gcc -framework Cocoa -framework SenTestingKit -x objective-c tests.m  -o tests 
#gcc -framework Cocoa -framework Foundation -x objective-c -I $LIB tests.m -o tests
# gcc --help
#step "Execute"
#./tests
#echo $?

#export SDKROOT=/Applications/Xcode.apps/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS5.0.sdk
#export DEVELOPER_LIBRARY_DIR=/Applications/Xcode.app/Contents/Developer/
#gcc -lobjc -x objective-c -framework Foundation -framework SenTest tests.m

section "Objective C Hi"
step "Compile Objective C"
gcc -framework Cocoa -o hi hi.m 
step "Execute Objective C"
./hi
rm -rf hi

#cd fibonacci
#section "Objective C Fibonacci Tests"
#step "Compile Objective C"
#gcc fibonacci.m tests.m -o tests
#step "Execute Objective C"
#./tests
#rm -rf tests

#section "Objective C Fibonacci"
#step "Compile Objective C"
#gcc fibonacci.m cli.m -o fibonacci
#step "Execute Objective C"
#./fibonacci 16
#rm -rf fibonacci