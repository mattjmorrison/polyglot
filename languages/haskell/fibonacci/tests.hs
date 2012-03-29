module Main where

import HUnit
import Fibonacci

test_0 = TestCase (assertEqual "fib 0" 0 (fib 0))
test_1 = TestCase (assertEqual "fib 1" 1 (fib 1))
test_2 = TestCase (assertEqual "fib 2" 1 (fib 2))
test_3 = TestCase (assertEqual "fib 3" 2 (fib 3))
test_4 = TestCase (assertEqual "fib 4" 3 (fib 4))
test_5 = TestCase (assertEqual "fib 5" 5 (fib 5))
test_6 = TestCase (assertEqual "fib 6" 8 (fib 6))
test_15 = TestCase (assertEqual "fib 15" 610 (fib 15))

tests = TestList [test_0, 
				test_1, 
				test_2,
				test_3,
				test_4,
				test_5,
				test_6,
				test_15]
main = do runTestTT tests