#!/bin/bash
. ./colors.sh

section "CoffeeScript Hi"
coffee ../languages/coffee/hi.coffee

section "CoffeeScrpit Fibonacci Tests"
cd ../languages/coffee/fibonacci/
jasmine-node --coffee .
cd ../../../run/

section "CoffeeScript Fibonacci"
coffee ../languages/coffee/fibonacci/cli.coffee 16
