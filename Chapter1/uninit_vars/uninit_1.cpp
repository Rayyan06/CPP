#include <iostream>


void doNothing(int&)
{

}
int main() 
{
    int x;

    doNothing(x);

    std::cout << x << '\n';

    return 0;
}