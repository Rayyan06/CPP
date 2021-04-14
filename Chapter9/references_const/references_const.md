# References and Const

## Quiz time!

1. Which of the following types should be passed by value, which by const reference? You can assume that the function which takes these types as parameters doesn’t modify them.
a) char
> value
b) std::string
> const reference
c) unsigned long
> value
d) bool
> value
e) An enumerator
> value
f) 
```cpp
struct Position
{
  double x{};
  double y{};
  double z{};
};
```

> const reference
g)

```cpp
struct Player
{
  int health{};
  // The Player struct is still under development. More members will be added.
};
```
> const reference
h) double
> value
i)
```cpp
struct ArrayView
{
  const int* array{};
  std::size_t length{};
};
```
> const reference
For reference, this is how we’d go about using ArrayView:
```cpp
#include <cstddef> // std::size_t
#include <iostream>
#include <iterator> // std::size
 
struct ArrayView
{
  const int* value{};
  std::size_t length{};
};
 
void fn(const ArrayView& array)
{
  for (std::size_t i{ 0 }; i < array.length; ++i)
  {
    std::cout << array.value[i] << ' ';
  }
}
 
int main()
{
  int array[3]{};
 
  fn({ array, std::size(array) });
 
  return 0;
}

```