import java.math.BigInteger;

public class GCD {

public static long gcd(long a, long b){
   return BigInteger.valueOf(a).gcd(BigInteger.valueOf(b)).longValue();
}
public static void main(String[] args) {
        System.out.println(GCD.gcd(20,3));
}

}




