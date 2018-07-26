#include <stdio.h>
#include <stdlib.h>

#define list {1,2,9,4,6}

void merge (int *a, int n, int m) {
    int i, j, k;
    int *x = malloc(n * sizeof (int));
    for (i = 0, j = m, k = 0; k < n; k++) {
        x[k] = j == n      ? a[i++]
             : i == m      ? a[j++]
             : a[j] < a[i] ? a[j++]
             :               a[i++];
    }
    for (i = 0; i < n; i++) {
        a[i] = x[i];
    }
    free(x);
}

void mergesort (int *a, int n) {
    if (n < 2)
        return;
    int m = n / 2;
    mergesort(a, m);
    mergesort(a + m, n - m);
    merge(a, n, m);
}

int main (void) {
  int a[] = list;
  int n = sizeof a / sizeof a[0];  //    saraiva: known ... 5
  int i;

  mergesort(a, n);

  printf("[");
  for (i = 0; i < n-1; i++) {
    printf("%d,", a[i]);
  }
  printf("%d",a[i]);
  printf("]\n");

  return 0;
}

