#include <stdio.h>

/*
long fibb(long a, long b, int n) {
    return (--n>0)?(fibb(b, a+b, n)):(a);
}
*/

long fibb(int n) {
	if (n < 1) return 0;
	if (n < 2) return 1;
    return (fibb(n-1)+fibb(n-2));
}

int main() {
	printf("%ld\n", fibb(46));
	return 1;
}


