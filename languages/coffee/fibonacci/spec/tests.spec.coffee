fibonacci = require "fibonacci"

describe "Fibonacci", ->

	it "should return 0 for 0", ->
		expect(fibonacci.fib(0)).toBe(0)
		
	it "should return 1 for 1", ->
		expect(fibonacci.fib(1)).toBe(1)

	it "should return 1 for 2", ->
		expect(fibonacci.fib(2)).toBe(1)
	
	it "should return 2 for 3", ->
		expect(fibonacci.fib(3)).toBe(2)
	
	it "should return 610 for 15", ->
		expect(fibonacci.fib(15)).toBe(610)