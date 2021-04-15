#include <iostream>
#include <functional>


using ArithmeticFunction = std::function<int(int, int)>;


int getInteger()
{

    std::cout << "Enter an integer: ";
    int x{};
    std::cin >> x;
    return x;

}

char getOperator()
{
    char op{};
    do
    {
        std::cout << "Enter an operation('+', '-', '*', '/'): ";
        std::cin >> op;
    }
    while(op!='+' && op!='-' && op!= '*' && op!='/');

    return op;
}

int add(int x, int y)
{
    return x + y;
}

int subtract(int x, int y)
{
    return x - y;
}
int multiply(int x, int y)
{
    return x * y;
}
int divide(int x, int y)
{
    return x / y;
}

ArithmeticFunction getArithmeticFunction(char op)
{
    switch(op)
    {
        default: // default add
        case '+':
           return &add;
        case '-':
            return &subtract;
        case '*':
            return &multiply;
        case '/':
            return &divide;
    }
}
int main()
{
    int x{getInteger()};
    char op{getOperator()};
    int y{getInteger()};

    auto function {getArithmeticFunction(op)};

    std::cout << x << ' ' << op << ' ' << y << " = " << function(x, y) << '\n';

    return 0;
}