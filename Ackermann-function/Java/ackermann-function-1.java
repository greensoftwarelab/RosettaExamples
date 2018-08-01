import java.math.BigInteger;

class AckermannFunction{
    public static BigInteger ack(BigInteger m, BigInteger n) {
        return m.equals(BigInteger.ZERO)
                ? n.add(BigInteger.ONE)
                : ack(m.subtract(BigInteger.ONE),
                            n.equals(BigInteger.ZERO) ? BigInteger.ONE : ack(m, n.subtract(BigInteger.ONE)));
    }

    public static void main(String[] args){
        for(long m = 0; m < 4; m++){
            for(long n = 0; n < 14; n++){
                System.out.println(ack(BigInteger.valueOf(m), BigInteger.valueOf(n)));
            }
        }
    }
}

