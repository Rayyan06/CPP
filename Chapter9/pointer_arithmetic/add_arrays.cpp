#include <iostream>

int main()
{
    int array[]{9, 7, 5, 3, 1};

    std::cout << &array[1] << '\n'; // address of element 1
    std::cout << array + 1 << '\n'; // address of array pointer + 1

    std::cout << array[1] << '\n'; // prints 7
    std::cout << *(array + 1)<< '\n'; // prints 7 (parentheiss required)
    std::cout << *array + 1 << '\n'; //different, prints 10 (9 + 1)
}