#include <iostream>

int main()
{
  int square = 1, increment = 3;
  for (int door = 1; door <= 100; ++door)
  {
    std::cout << "Door " << door;
    if (door == square)
    {
      std::cout << " is Open" << std::endl;
      square += increment;
      increment += 2;
    }
    else
      std::cout << " is Closed" << std::endl;
  }
  return 0;
}
