#include <iostream>
#include "apple.h"
#include "banana.h"

int main()
{
	const Apple a{ "Red Delicious", "red", 4.2 };
	std::cout << a << '\n';
	
	const Banana b{ "Cavendish", "yellow" };
	std::cout << b << '\n';
}