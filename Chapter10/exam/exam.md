# Chapter 10 Comprehensive Quiz

## Quiz time!

1. Write function prototypes for the following cases. Use const if/when necessary.

a) A function named max() that takes two doubles and returns the larger of the two.

```cpp
double max(double x, double y)

```

b) A function named swap() that swaps two integers.

```cpp
void swap(int& x, int& y)
```

c) A function named getLargestElement() that takes a dynamically allocated array of integers and returns the largest number in such a way that the caller can change the value of the element returned (don’t forget the length parameter).

```cpp
int& getLargestElement(int *array, int length)
```

100%

2. What’s wrong with these programs?

a)
```cpp
int& doSomething()
{
    int array[]{ 1, 2, 3, 4, 5 };
    return array[3];
}

```

> doSomething is returning a reference to a local variable that will be destroyed when doSomething terminates.

b)
```cpp
int sumTo(int value)
{
    return value + sumTo(value - 1);
}
```

> sumTo is a recursive function which has no ternmination statement. This will result in a stack overflow.

c)
```cpp
float divide(float x, float y)
{
    return x / y;
}
 
double divide(float x, float y)
{
    return x / y;
}
```

> Overloading functions which have non-unique names and parameters is prohibited. Also a zero divide error

d)
```cpp
#include <iostream>
 
int main()
{
    int array[100000000]{};
 
    for (auto x: array)
        std::cout << x << ' ';
 
    std::cout << '\n';
 
    return 0;
}
```

> The array is too large to be allocated on the stack. It should be dynamically allocated.

e)
```cpp
#include <iostream>
 
int main(int argc, char *argv[])
{
    int age{ argv[1] };
    std::cout << "The user's age is " << age << '\n';
 
    return 0;
}
```

> You cannot easily convert to int.


3. See binary_search.cpp