#include <iostream>

// Complexity 
int factorial(int N) 
{
    if (N<=0)  return 1;
    
    
    return factorial(N -1) * N;
}
int main()
{
    for (int N{0}; N < 10; ++N)
    {
        std::cout << N << "! is "<< factorial(N) << '\n';
    }

    return 0;
}