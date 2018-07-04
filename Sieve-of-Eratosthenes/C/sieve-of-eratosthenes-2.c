#include <stdio.h>
#include <malloc.h>
void sieve(int *, int);

int main(int argc, char **argv)
{
    int *array, n=10000;
    array =(int *)malloc(n*sizeof(int));
    sieve(array,n);
    return 0;
}

void sieve(int *a, int n)
{
    int i=0, j=0;

    for(i=2; i<=n; i++) {
        a[i] = 1;
    }

    for(i=2; i<=n; i++) {
        if(a[i] == 1) {
            for(j=i; (i*j)<=n; j++) {
                a[(i*j)] = 0;
            }
        }
    }

    for(i=2; i<=n; i++) {
        if(a[i] == 1)
            printf("%d ", i);
    }
    printf("\n");
}
