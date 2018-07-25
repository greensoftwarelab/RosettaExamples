#include <stdio.h>

#define list {1,2,9,4,6}

void quicksort(int *A, int len);

int main (void) {
  int a[] = list;
  int n = 5 ; // sizeof a / sizeof a[0];      saraiva: known ... 5

  quicksort(a, n);

  printf("{");
  for (int i = 0; i < n; i++) {
    printf("%d, ", a[i]);
  }
  printf("}\n");

  return 0;
}

void quicksort(int *A, int len) {
  if (len < 2) return;

  int pivot = A[len / 2];

  int i, j;
  for (i = 0, j = len - 1; ; i++, j--) {
    while (A[i] < pivot) i++;
    while (A[j] > pivot) j--;

    if (i >= j) break;

    int temp = A[i];
    A[i]     = A[j];
    A[j]     = temp;
  }

  quicksort(A, i);
  quicksort(A + i, len - i);
}
