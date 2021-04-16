#include <iostream>

void printBinary(unsigned int decimal)
{
    if (decimal > 1)
        printBinary(decimal / 2);   


    std::cout << decimal % 2;

}

int main()
{
    int x{};
    std::cout << "Enter an integer: ";
    std::cin >> x;
    printBinary(static_cast<unsigned int>(x));
    std::cout << '\n';

    return 0;
}