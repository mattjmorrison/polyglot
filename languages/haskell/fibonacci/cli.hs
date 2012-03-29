import System.Environment
import Fibonacci

main = do x <- getArgs
          print (fib ((read (x !! 0)) - 1))
