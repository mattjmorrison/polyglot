import System.Environment

main = do x <- getArgs
          print (fib ((read (x !! 0)) - 1))

fib n
    | n < 2 = n
    | otherwise = fib (n-1) + fib (n-2)
