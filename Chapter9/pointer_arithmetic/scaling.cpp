#include <iostream>

int main()
{
    //int value{ 7 };
    //int* ptr{ &value }; // pointing towards value

    short value { 7 };
    short *ptr{ &value };
    std::cout << ptr << '\n';
    std::cout << ptr+1 << '\n';
    std::cout << ptr+2 << '\n';
    std::cout << ptr+3 << '\n';

    return 0;
}