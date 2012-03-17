let rec fibonacci x = 
	match x with
		0 -> 0
	|   1 -> 1
	|   n -> fibonacci(n - 1) + fibonacci(n - 2);;

let input_number = int_of_string(Sys.argv.(1));;
let result = fibonacci(input_number - 1);;
print_int result;;
print_string "\n";;