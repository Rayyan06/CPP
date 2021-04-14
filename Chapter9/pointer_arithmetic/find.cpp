#include <iostream>
#include <iterator>
 
// ...

/* Takes a beginning pointer of an array and end pointer of an array, and a value to look for. Returns a pointer to the first element which matches the value, or the end pointer if none was found. 
*/
int* find(int* begin, int* end, int value)
{
  // Loops through the array, looking for a value which matches the one asked. If found, return it, else return the end.
  for (int* ptr{ begin }; ptr!=end; ++ptr) // use != instead of <
  {
    if (*ptr==value) 
        return ptr;
    
  } 
  return end; // no match was found
}
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