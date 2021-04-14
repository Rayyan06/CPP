#include <iostream>


void printVars(int x, int y)
{
    std::cout << "x is equal to " << x << '\n';
    std::cout << "y is equal to " << y << '\n';
}

void swap(int& x, int& y)
{
    int tempVar { y };
    y = x;
    x = tempVar;
}
int main()
{
    int x{ 5 };
    int y{ 7 };

    printVars(x, y);
    swap(x, y);

    printVars(x, y);

    return 0;
}