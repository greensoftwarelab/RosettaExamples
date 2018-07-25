
public class FibonacciSequence3 {

public static void main(String args[]) 
{
	System.out.println(f(1000));
}

public static long f(final int n) {
 return (n < 2) ? n : f(n - 1) + f(n - 2);
}


}
