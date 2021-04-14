#include <algorithm>
#include <array>
#include <iostream>
#include <limits>

void ignoreLine()
{
    std::cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
}


int main()
{
    std::array arr{ 13, 90, 99, 5, 40, 80};
    int search{};
    int replace{};
    while(true) {
        std::cout << "Enter a value to search for and replace with: ";

     

        std::cin >> search >> replace;
        if (std::cin.fail())
        {

            std::cin.clear();
            ignoreLine();
            std::cout << "That input is invalid. Please try again.\n";
        } else {
            ignoreLine();
            break;
        }
    }



    auto found{ std::find(arr.begin(), arr.end(), search)};

    if (found == arr.end())
    {
        std::cout << "Could not find " << search << '\n';
    } 
    else 
    {
        *found = replace;
    }

    for (int i : arr)
    {
        std::cout << i << ' ';
    }
    
    std::cout << '\n';
    return 0;
}