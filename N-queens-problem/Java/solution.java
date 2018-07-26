public class NQueensRR{

  private static final int size = 12;
  private static int[] b = new int[size];
  private static int s = 0;

  static boolean unsafe(int y) {
    int x = b[y];
    for (int i = 1; i <= y; i++) {
      int t = b[y - i];
      if (t == x ||
          t == x - i ||
          t == x + i) {
        return true;
      }
    }

    return false;
  }

  public static void putboard() {
    System.out.println("\n\nSolution " + (++s));
    for (int y = 0; y < size; y++) {
      for (int x = 0; x < size; x++) {
        System.out.print((b[y] == x) ? "|Q" : "|_");
      }
      System.out.println("|");
    }
  }

  public static void main(String[] args) {
    int y = 0, Nsols = 0;
    b[0] = -1;
    while (y >= 0) {
      do {
        b[y]++;
      } while ((b[y] < size) && unsafe(y));
      if (b[y] < size) {
        if (y < size-1) {
          b[++y] = -1;
        } else {
          //putboard();
	  Nsols++;
        }
      } else {
        y--;
      }
    }
	System.out.println("Solution: " +Nsols);

  }
}
