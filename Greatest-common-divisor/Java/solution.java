import java.math.BigInteger;

public class GCD {

public static long gcd(Long a, Long  b){
   return BigInteger.valueOf(a).gcd(BigInteger.valueOf(b)).longValue();
}
public static void main(String[] args) {
        System.out.println("GCD of 2147483646,1143271457 is " + GCD.gcd(2147483646L, 1143271457L));
}

}




