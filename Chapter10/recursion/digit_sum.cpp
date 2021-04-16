#include <iostream>

// 357 % 10 = 
// 35 / 10 = 3

int sumOfDigits(unsigned int n)
{
    if (n<10))
    {
        return n;
    }
    return sumOfDigits(n/10) + n % 10;
}
int main()
{
    std::cout << sumOfDigits(93427);
    return 0;
}