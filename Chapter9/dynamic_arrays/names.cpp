#include <iostream>
#include <string>
#include <limits> // for std::numeric_limits
#include <cstddef> // for std::size_t
#include <algorithm>
#include <iterator>


int getNamesCount()
{
    std::cout << "How many names would you like to enter? ";
    std::size_t length{};
    std::cin >> length;
    return length;

}

std::string* getNames(std::string *names, std::size_t length) 
{



    std::cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');

    for(std::size_t i{}; i < length; ++i) 
    {
        std::cout << "Enter name #" << i + 1 << ": ";
        
        std::getline(std::cin, names[i]);
    }
    return names;
}




void printSortedNames(std::string *names, std::size_t nameLength) 
{

    std::cout << "\nHere is your sorted list:\n";
    for (std::size_t count{0}; count < nameLength; ++count)
    {
        std::cout << "Name #" << count + 1 << ": ";
        std::cout << names[count] << '\n';
    }

}



int main()
{

    int namesLength{ getNamesCount()};
    auto *names{ new std::string[namesLength]{}};

    getNames(names, namesLength);
    std::sort(names, names + namesLength);

    printSortedNames(names, namesLength);

    delete[] names;

    return 0;
}