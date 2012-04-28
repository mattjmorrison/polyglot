open Fibonacci

let input_number = int_of_string(Sys.argv.(1));;
let result = fibonacci(input_number - 1);;
print_int result;;
print_string "\n";;
