#include <iostream>


class DateClass
{
public:
    int m_year{};
    int m_month{};
    int m_day{};

    void print()
    {
        std::cout << m_year << '/' << m_month << '/' << m_day << '\n';
    }    
};


int main()
{
    DateClass today { 2021, 4, 15 };

    today.m_day = 16;

    today.print();
    
    return 0;
}