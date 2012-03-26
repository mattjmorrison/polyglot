(ns fibonacci)

(defn fib [n]
  (if (< n 2) 
    n
    (+ (fib (- n 1)) (fib (- n 2)))
  )
)

(comment
	(println (fib (- (Integer/parseInt (first *command-line-args*)) 1)))
)
