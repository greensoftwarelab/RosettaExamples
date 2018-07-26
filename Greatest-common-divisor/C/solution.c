#include<stdio.h>


long int gcd_iter(long int u,long int v) {
  if (u < 0) u = -u;
  if (v < 0) v = -v;
  if (v) while ((u %= v) && (v %= u));
  return (u + v);
}

int main() {

printf("GCD of 2147483646, 1143271457 is %ld\n", gcd_iter(2147483646, 1143271457));
return 0;
}
