public class Hi {
   public static void Main(string[] args) {
      System.Console.WriteLine(fib(System.Convert.ToInt32(args[0]) - 1));
   }

   public static int fib(int n) {
      if(n < 2){
        return n;
      }
      return fib(n-1) + fib(n-2);
   }
}