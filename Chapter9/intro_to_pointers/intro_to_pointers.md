# Intro To Pointers

## Address Of Operator

See **intro1.cpp**.


## Indirection Operator (*)

See **Intro1.cpp**


## Quiz Time!

1. What values does this program print? Assume a short is 2 bytes, and a 32-bit machine. (answer in question,)
```cpp
short value{ 7 }; // &value = 0012FF60
short otherValue{ 3 }; // &otherValue = 0012FF54
 
short* ptr{ &value }; 
 
std::cout << &value << '\n';  // 0012FF60
std::cout << value << '\n'; // 7
std::cout << ptr << '\n'; // 0012FF60
std::cout << *ptr << '\n'; // 7
std::cout << '\n';
 
*ptr = 9;
 
std::cout << &value << '\n'; // 0012FF60
std::cout << value << '\n'; // 9
std::cout << ptr << '\n'; // 0012FF60
std::cout << *ptr  << '\n'; // 9
std::cout << '\n';
 
ptr = &otherValue;
 
std::cout << &otherValue << '\n'; //0012FF54
std::cout << otherValue << '\n'; // 3
std::cout << ptr << '\n'; // 0012FF54
std::cout << *ptr << '\n'; // 3
std::cout << '\n'; //
 
std::cout << sizeof(ptr) << '\n'; // 4
std::cout << sizeof(*ptr) << '\n'; // 2
```

2. What's wrong with this snippet of code?
```cpp
int value{ 45 };
int* ptr{ &value }; // declare a pointer and initialize with address of value
*ptr = &value; // assign address of value to ptr
```

> Using the pointer Indirection operator and assigning it to a memory address is nonsensical. It is correct to say `ptr = &value`