import java.math.BigInteger;

public class GCD {

public static long gcd(Long a, Long  b){
   return BigInteger.valueOf(a).gcd(BigInteger.valueOf(b)).longValue();
}
public static void main(String[] args) {
        System.out.println("GCD of 7147483649, 1143271457 is " + GCD.gcd(7147483649L, 1143271457L));
}

}




