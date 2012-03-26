(ns tests
  (:use clojure.test)
  (:use fibonacci))

(deftest fib-0
  (is (= 0 (fib 0))))

(deftest fib-1
  (is (= 1 (fib 1))))

(deftest fib-2
  (is (= 1 (fib 2))))

(deftest fib-3
  (is (= 2 (fib 3))))

(deftest fib-4
  (is (= 3 (fib 4))))

(deftest fib-15
  (is (= 610 (fib 15))))

(run-tests)