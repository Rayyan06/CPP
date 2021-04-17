#include <iostream>
#include <cassert>
#include <array>

class Stack {
    using container_type = std::array<int, 10>;
    using size_type = container_type::size_type;


    container_type m_array{};
    size_type m_size{};
public:
    void reset()
    {
        m_size = 0;
    }

    bool push(int value)
    {
        if(m_size == m_array.size())
        {
            return false;
        } 

        m_array[m_size++] = value;
        return true;
    }

    bool pop()
    {
        assert((m_size > 0) && "Can not pop empty stack");


        return m_array[--m_size]; 
    }

    void print()
    {
        std::cout << "( ";

        for (size_type i{0}; i < m_size; ++i)
        {
            std::cout << m_array[i] << ' ';
        }
        std::cout << ")\n";

    }

};



int main()
{
	Stack stack;
	stack.reset();
 
	stack.print();
 
	stack.push(5);
	stack.push(3);
	stack.push(8);
	stack.print();
 
	stack.pop();
	stack.print();
 
	stack.pop();
	stack.pop();
 
	stack.print();
 
	return 0;
}