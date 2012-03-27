package main

import (
	"os"
	"strconv"
	"fibonacci"
)

func main(){
	input_number, err := strconv.Atoi(os.Args[1])
	if err == nil {
		println(fibonacci.Fib(input_number - 1))
	}
}
