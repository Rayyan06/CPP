# Pointer Arithmetic and Array Indexing

## Quiz time

1. Why does the following code work?
```cpp
#include <iostream>
 
int main()
{
  int arr[]{ 1, 2, 3 };
 
  std::cout << 2[arr] << '\n';
 
  return 0;
}
```

> Because 2[arr] is equavilent to *(2+arr), which is the same as *(arr+2), which is equal to arr[2]


2. Write a function named find that takes a pointer to the beginning and a pointer to the end (1 element past the last) of an array, as well as a value. The function should search for the given value and return a pointer to the first element with that value, or the end pointer if no element was found. The following program should run:

```cpp
#include <iostream>
#include <iterator>
 
// ...
 
int main()
{
    int arr[]{ 2, 5, 4, 10, 8, 20, 16, 40 };
 
    // Search for the first element with value 20.
    int *found{ find(std::begin(arr), std::end(arr), 20) };
 
    // If an element with value 20 was found, print it.
    if (found != std::end(arr))
    {
        std::cout << *found << '\n';
    }
 
    return 0;
}
```

> See find.cpp in current folder