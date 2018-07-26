import java.util.List;
import java.util.LinkedList;

public class QuickSort 
{

   public static void main (String[] args)
   { List<Integer> list = new LinkedList(); // LinkedList(1,2,9,4,6);
     list.add(1);list.add(2);list.add(9);list.add(4);list.add(6);
     System.out.println (quickSort(list)); 
   }

   public static <E extends Comparable<? super E>> 
                 List<E> quickSort(List<E> arr) 
   { if (!arr.isEmpty()) 
     { E pivot = arr.get(0); //This pivot can change to get faster results

       List<E> less = new LinkedList<E>();
       List<E> pivotList = new LinkedList<E>();
       List<E> more = new LinkedList<E>();

       // Partition
       for (E i: arr)
       {  if (i.compareTo(pivot) < 0)
            less.add(i);
          else 
            if (i.compareTo(pivot) > 0)
              more.add(i);
            else
              pivotList.add(i);
       }

       // Recursively sort sublists
       less = quickSort(less);
       more = quickSort(more);

       // Concatenate results
       less.addAll(pivotList);
       less.addAll(more);
       return less;
     }
     return arr;
   }
}
