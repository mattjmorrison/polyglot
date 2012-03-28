
public class Cli {
	public static void Main(string[] args) {
		Fibonacci fib = new Fibonacci();
		System.Console.WriteLine(fib.fib(System.Convert.ToInt32(args[0]) - 1));
	}
}