#include <iostream>
#include <iterator>
 #include <cassert>
 #include <numeric>
// array is the array to search over.
// target is the value we're trying to determine exists or not.
// min is the index of the lower bounds of the array we're searching.
// max is the index of the upper bounds of the array we're searching.
// binarySearch() should return the index of the target element if the target is found, -1 otherwise
/*
int binarySearch(const int *array, int target, int min, int max)
{
 
 
  PSUEDOCODE:
  * 1. Calculate Midpoint of min and max. 
  * 2. Check value of array[midpoint]
  [branch]
  * 3. If the value of the midpoint is greater than target, then we know that we can safely ignore all elements with an index greater than the midpoint.
    3a. We set max to the midpoint and continue.

  * 4. However, if it is less than target, we know that we can safely ignore all elements with an index less than the midpoint
    4a. So we set min to midpoint and conitue.

    5. If the target is equal to midpoint, we return the index.

  
 assert(array);

 while(min <= max) {
    int midpoint{min + ((max - 1) / 2)};

    if (array[midpoint] > target)
        max = midpoint - 1;

    else if (array[midpoint] < target)
        min = midpoint + 1;
    else
        return midpoint;
    

 }
 return -1;
}

*/ 


// array is the array to search over.
// target is the value we're trying to determine exists or not.
// min is the index of the lower bounds of the array we're searching.
// max is the index of the upper bounds of the array we're searching.
// binarySearch() should return the index of the target element if the target is found, -1 otherwise
int binarySearch(const int* array, int target, int min, int max)
{
    assert(array);

    int midpoint{ std::midpoint(min, max)};

    if (max < min) 
    {
        return -1;
    }

    if (array[midpoint] > target) 
    {
        return binarySearch(array, target, min, midpoint - 1);
    } 
    else if (array[midpoint] < target)
    {
        return binarySearch(array, target, midpoint + 1, max);
    } 
    else 
    {
        return midpoint;
    }


}
int main()
{
    constexpr int array[]{ 3, 6, 8, 12, 14, 17, 20, 21, 26, 32, 36, 37, 42, 44, 48 };
 
    // We're going to test a bunch of values to see if they produce the expected results
    constexpr int numTestValues{ 9 };
    // Here are the test values
    constexpr int testValues[numTestValues]{ 0, 3, 12, 13, 22, 26, 43, 44, 49 };
    // And here are the expected results for each value
    int expectedValues[numTestValues]{ -1, 0, 3, -1, -1, 8, -1, 13, -1 };
 
    // Loop through all of the test values
    for (int count{ 0 }; count < numTestValues; ++count)
    {
        // See if our test value is in the array
        int index{ binarySearch(array, testValues[count], 0, static_cast<int>(std::size(array)) - 1) };
        // If it matches our expected value, then great!
        if (index == expectedValues[count])
             std::cout << "test value " << testValues[count] << " passed!\n";
        else // otherwise, our binarySearch() function must be broken
             std::cout << "test value " << testValues[count] << " failed.  There's something wrong with your code!\n";
    }
 
    return 0;
}