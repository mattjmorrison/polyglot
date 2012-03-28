using NUnit.Framework;

[TestFixture]
public class FibonacciTests {

	Fibonacci sut;

	[SetUp]
	public void setUp(){
		sut = new Fibonacci();
	}

	[Test]
	public void should_return_0_for_0() {
		Assert.AreEqual(0, sut.fib(0));
	}

	[Test]
	public void should_return_1_for_1() {
		Assert.AreEqual(1, sut.fib(1));
	}

	[Test]
	public void should_return_1_for_2() {
		Assert.AreEqual(1, sut.fib(2));
	}

	[Test]
	public void should_return_2_for_3() {
		Assert.AreEqual(2, sut.fib(3));
	}

	[Test]
	public void should_return_3_for_4() {
		Assert.AreEqual(3, sut.fib(4));
	}

	[Test]
	public void should_return_5_for_5() {
		Assert.AreEqual(5, sut.fib(5));
	}

	[Test]
	public void should_return_610_for_15() {
		Assert.AreEqual(610, sut.fib(15));
	}

}
