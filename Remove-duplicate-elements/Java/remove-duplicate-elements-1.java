import java.util.*;
import java.io.File;
import java.io.FileNotFoundException;

class Test {

    public static List<Integer> loadData() {
        try {
            Scanner s = new Scanner(new File("data.csv"));
            ArrayList<Integer> list = new ArrayList<>();
            while (s.hasNext()){
                list.add(Integer.parseInt(s.next()));
            }
            s.close();
            return list;
        } catch (FileNotFoundException e) {
            return null;
        }
    }

    public static void main(String[] args) {

        Set<Object> uniqueSet = new HashSet<Object>(loadData());
        for (Object o : uniqueSet)
            System.out.printf("%s ", o);
    }
}
