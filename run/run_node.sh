#!/bin/bash
. ./colors.sh

section "Node Hi"
node ../languages/node/hi.js

section "Node Fibonacci Tests"
cd ../languages/node/fibonacci/
jasmine-node  .
cd ../../../run/

section "Node Fibonacci"
node ../languages/node/fibonacci/cli.js 16
