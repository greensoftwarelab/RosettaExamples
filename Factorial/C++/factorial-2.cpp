#include <iostream>

long long int Factorial(long long int m_nValue)
   {
       long long int result=m_nValue;
       long long int result_next;
       long long int pc = m_nValue;
       do
       {
           result_next = result*(pc-1);
           result = result_next;
           pc--;
       }while(pc>2);
       m_nValue = result;
       return m_nValue;
   }

int main() {
      long long int n = 15;
      std::cout << Factorial(n) << "\n";
      return 0;
}
