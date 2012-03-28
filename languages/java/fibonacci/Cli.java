package fibonacci;

public class Cli {
    
    public static void main(String[] args){
        Fibonacci fib = new Fibonacci();
        System.out.println(fib.fib(Integer.parseInt(args[0]) - 1));
    }

}