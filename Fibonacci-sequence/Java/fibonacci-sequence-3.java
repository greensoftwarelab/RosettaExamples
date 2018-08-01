
public class FibonacciSequence {

public static void main(String args[]) 
{
	System.out.println(f(46));
}

public static long f(final int n) {
 return (n < 2) ? n : f(n - 1) + f(n - 2);
}


}
