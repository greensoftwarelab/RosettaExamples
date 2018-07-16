#include<stdio.h>

int factorial(int n) {
    return n == 0 ? 1 : n * factorial(n - 1);
}

int main() {
  int n = 15;
  int fact = factorial(n);
  printf("%d\n", fact);
  return 0;
}
