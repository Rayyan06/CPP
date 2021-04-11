# Quiz time

**Question #1**\
Question #1

Consider the following program that we used above:
```cpp
#include <iostream>  // for std::cout and std::cin
 
int main()
{
    std::cout << "Enter a number: "; // ask user for a number
    int x{}; // define variable x to hold user input
    std::cin >> x; // get number from keyboard and store it in variable x
    std::cout << "You entered " << x << '\n';
    return 0;
}
```
The program expects you to enter an integer value, as the variable x that the user input will be put into is an integer variable.

Run this program multiple times and describe what happens when you enter the following types of input instead:

a) A letter, such as h

Answer: x is 0

b) A number with a fractional component. Try numbers with fractional components less than 0.5 and greater than 0.5 (e.g. 3.2 and 3.7).

Answer: The fractional part is gone

c) A small negative integer, such as -3

Answer: Works!

d) A word, such as Hello

Answer: 0

e) A really big number (at least 3 billion)

Answer: Weird wack number

The last suggestion may be particularly surprising. Try it! This happens because x can only hold numbers up to a certain size. After that, it "overflows". We'll discuss overflow in a future lesson.