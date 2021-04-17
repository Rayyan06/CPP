#include <iostream>



class Calc
{
private:
    int m_value{0};
public:
    Calc(int value=0);
    Calc& add(int value);
    Calc& sub(int value);
    Calc& mult(int value);

    int getValue() const { return m_value; }
};

Calc::Calc(int value) : m_value(value) 
{
}

Calc& Calc::add(int value)
{
    m_value += value;
    return *this;
}
Calc& Calc::sub(int value)
{
    m_value -= value;
    return *this;
}
Calc& Calc::mult(int value)
{
    m_value *= value;
    return *this;
}

int main()
{
    Calc calc{}; // Implicit constructor

    calc.add(5).sub(3).mult(4);

    std::cout << calc.getValue() << '\n';

    return 0;
}