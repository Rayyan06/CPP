#include <iostream>
#include <cassert>

int main()
{
	int x{ 0 };
	int y{ 1 };
	int z{ 0 };
	
	int count{};
	std::cout << "How many numbers would you like to generate? ";
	std::cin >> count;
	for(; ;)
	{
		// 0, 1
		std::cout << x << '\n';
		
		z = x + y; // 1, 2
		x = y; // 1, 2
		y = z; // 1, 2
		
	}
}