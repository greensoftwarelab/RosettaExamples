
class Test {

    public static long fact(final int n) {
        if (n < 0){
            return 0;
        }
        return (n < 2) ? 1 : n * fact(n - 1);
    }

    public static void main(String[] args) {
        System.out.println(fact(15));
    }

}
