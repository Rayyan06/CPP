#include <iostream>

int fibonacci(int count)
{
    int a{ 0};
    int b{ 1 };
    for (int i {0}; i < count; i++)
    {
        a = b;
        b = a + b;
    }
    return a;
}

int main()
{
    for (int count=0; count < 13; ++count)
        std:: cout << fibonacci(count) << " ";
    return 0;
}