import System.Environment
main :: IO ()

main = do x <- getArgs
          print(fib(num (x !! 0)))

num :: String -> Integer
num = read


fib :: Integer -> Integer
fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)
