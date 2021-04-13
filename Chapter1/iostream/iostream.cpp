#include <iostream>

int main()
{
    std::cout << 4; // prints 4

    int x {5};
    std::cout << x;
    
    std::cout << "Hello" << " world!\n";

    std::cout << "x is equal to: " << x << '\n'; 

    // Better to use \n vs endl


    std::cout << "Hi!" << std::endl;
    std::cout << "My name is Rayyan." << std::endl;



    return 0;
}