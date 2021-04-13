# Expressions

## Quiz time!

1. What is the difference between a statement and an expression?

> Statements are used when we want the program to perform an action. Expressions are used when we want the program to calculate a value.
 
2. Indicate whether each of the following lines are statements that do not contain expressions, statements that contain expressions, or are expression statements.

a) 
```cpp
int x;
```

> statement that do not contain expression

b)
```cpp
int x = 5;
```
> statement that contain expression

c)`x = 5;`
> expression statement

d) `std::cout << x;`
> expression statement

3. Determine what values the following program outputs. Do not compile this program. Just work through it line by line in your head.

```cpp
#include <iostream>
 
int main()
{
	std::cout << 2 + 3 << '\n'; // 5
	
	int x{ 6 };
	int y{ x - 2 }; 
	std::cout << y << '\n'; // 4
 
	int z{ 0 };
	z = x;
	std::cout << z - x << '\n'; // 0
 
	return 0;
}
```