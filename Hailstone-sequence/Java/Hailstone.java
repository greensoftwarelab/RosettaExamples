import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

class Hailstone {

  public static List<Long> getHailstoneSequence(long n) {
    if (n <= 0)
      throw new IllegalArgumentException("Invalid starting sequence number");
    List<Long> list = new ArrayList<Long>();
    list.add(Long.valueOf(n));
    while (n != 1) {
      if ((n & 1) == 0)
        n = n / 2;
      else
        n = 3 * n + 1;
      list.add(Long.valueOf(n));
    }
    return list;
  }

  public static void main(String[] args) {
    List<Long> sequence27 = getHailstoneSequence(27);
    System.out.println("Sequence for 27 has " + sequence27.size() + " elements: " + sequence27);

    long MAX = 100000;
    // Simple way
    {
      long highestNumber = 1;
      int highestCount = 1;
      for (long i = 2; i < MAX; i++) {
        int count = getHailstoneSequence(i).size();
        if (count > highestCount) {
          highestCount = count;
          highestNumber = i;
        }
      }
      System.out.println("Method 1, number " + highestNumber + " has the longest sequence, with a length of " + highestCount);
    }

    return;
  }
}
