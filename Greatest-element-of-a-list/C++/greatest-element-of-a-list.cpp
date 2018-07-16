#include <algorithm>
#include <cassert>
#include <iostream>

template<typename Ty> Ty max(unsigned int count, Ty values[]) {
     assert(count > 0);
     return *std::max_element(values, values + count);
}

int main(){
	float values[] = {1,2,3,1,4,2,1};
	std::cout << max(7, values) << "\n";
	return 0;
}
