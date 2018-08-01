#include <iterator>
#include <algorithm> // for std::partition
#include <functional> // for std::less
#include <iostream>

template<typename RandomAccessIterator,
         typename Order>
 void quicksort(RandomAccessIterator first, RandomAccessIterator last, Order order)
{
  if (last - first > 1)
  {
    RandomAccessIterator split = std::partition(first+1, last, std::bind2nd(order, *first));
    std::iter_swap(first, split-1);
    quicksort(first, split-1, order);
    quicksort(split, last, order);
  }
}

template<typename RandomAccessIterator>
 void quicksort(RandomAccessIterator first, RandomAccessIterator last)
{
  quicksort(first, last, std::less<typename std::iterator_traits<RandomAccessIterator>::value_type>());
}



void printArray(int *array, int n)
{
    for (int i = 0; i < n; ++i)
        std::cout << array[i] << std::endl;
}


int main()
{
    int array[] = {95, 45, 48, 98, 1, 485, 65, 478, 1, 2325};
    int n = sizeof(array)/sizeof(array[0]);

    std::cout << "Before Quick Sort :" << std::endl;
    printArray(array, n);

    quicksort(0, n,array);

    std::cout << "After Quick Sort :" << std::endl;
    printArray(array, n);
    return (0);
}


