#include <iostream>


int main()
{
    int *ptr1{ new int{ 4 }};
    
    std::cout << *ptr1 << '\n';
    delete ptr1;
    ptr1 = nullptr;
    
    return 0;
}