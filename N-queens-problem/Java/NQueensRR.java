public class NQueensRR{

  private static int[] b = new int[12];
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
    for (int y = 0; y < 12; y++) {
      for (int x = 0; x < 12; x++) {
        System.out.print((b[y] == x) ? "|Q" : "|_");
      }
      System.out.println("|");
    }
  }

  public static void main(String[] args) {
    int y = 0;
    b[0] = -1;
    while (y >= 0) {
      do {
        b[y]++;
      } while ((b[y] < 12) && unsafe(y));
      if (b[y] < 12) {
        if (y < 11) {
          b[++y] = -1;
        } else {
          putboard();
        }
      } else {
        y--;
      }
    }
  }
}
