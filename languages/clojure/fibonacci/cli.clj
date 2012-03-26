(ns cli
	(:use fibonacci))

(println (fib (- (Integer/parseInt (first *command-line-args*)) 1)))
