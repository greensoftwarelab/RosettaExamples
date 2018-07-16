#include <assert.h>
#include <stdio.h>

float max(unsigned int count, float values[]) {
     assert(count > 0);
     //unsigned int idx;
     int i;
     float themax = values[0];
     for(i = 1; i < count; ++i) {
          themax = values[i] > themax ? values[i] : themax;
     }
     return themax;
}

int main(){
	float values[] = {1,2,3,1,4,2,1};
	float maxvalue = max(7, values);
	printf("%f\n", maxvalue);
	return 0;
}
