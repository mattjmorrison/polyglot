import fibonacci._

object Main {
	def main(args: Array[String]){
		val count = args.toList.head.toInt - 1
		println(fibonacci.fib(count))
	}
}
