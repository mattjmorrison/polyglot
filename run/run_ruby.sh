#!/bin/bash
. ./colors.sh

cd ../languages/ruby

section "Ruby Hi"
ruby hi.rb

cd fibonacci
section "Ruby Fibonacci Tests"
ruby tests.rb

section "Ruby Fibonacci"
ruby cli.rb 16
