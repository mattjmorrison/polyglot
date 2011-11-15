package main {

	object Main {
		def main(args: Array[String]){
			val count = args.toList.head.toInt - 1
			println(fib(count))
		}

		def fib(n: Int): Int = n match {
			case 0 | 1 => n
			case _ => fib(n-1) + fib(n-2)
		}
	}

}