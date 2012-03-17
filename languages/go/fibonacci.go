package main

import (
	"os"
	"strconv"
)

func fib(n int) int { 
  if n < 2 { return n } 
  return fib(n - 1) + fib(n - 2) 
}

func main(){
	input_number, err := strconv.Atoi(os.Args[1])
	if err == nil {
		println(fib(input_number - 1))
	}
}