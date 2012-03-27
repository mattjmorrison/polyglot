var fibonacci = require("fibonacci");

describe("Fibonacci", function(){

	it("should return 0 for 0", function(){
		expect(fibonacci.fib(0)).toBe(0);
	});
		
	it("should return 1 for 1", function(){
		expect(fibonacci.fib(1)).toBe(1);
	});

	it("should return 1 for 2", function(){
		expect(fibonacci.fib(2)).toBe(1);
	});
	
	it("should return 2 for 3", function(){
		expect(fibonacci.fib(3)).toBe(2);
	});
	
	it("should return 610 for 15", function(){
		expect(fibonacci.fib(15)).toBe(610);
	});
});