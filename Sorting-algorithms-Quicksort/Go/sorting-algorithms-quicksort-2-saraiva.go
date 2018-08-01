package main

import (
    "fmt"
    "sort"
    "math/rand"
)

func partition(a sort.Interface, first int, last int, pivotIndex int) int {
    a.Swap(first, pivotIndex) // move it to beginning
    left := first+1
    right := last
    for left <= right {
        for left <= last && a.Less(left, first) {
            left++
        }
        for right >= first && a.Less(first, right) {
            right--
        }
        if left <= right {
            a.Swap(left, right)
            left++
            right--
        }
    }
    a.Swap(first, right) // swap into right place
    return right
}

func quicksortHelper(a sort.Interface, first int, last int) {
    if first >= last {
        return
    }
    pivotIndex := partition(a, first, last, rand.Intn(last - first + 1) + first)
    quicksortHelper(a, first, pivotIndex-1)
    quicksortHelper(a, pivotIndex+1, last)
}

func quicksort(a sort.Interface) {
    quicksortHelper(a, 0, a.Len()-1)
}

func main() {
    a := []int{1,2,9,4,6}
    quicksort(sort.IntSlice(a))
    fmt.Printf("%v\n", a)
}
