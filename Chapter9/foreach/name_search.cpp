#include <iostream>
#include <string_view>
#include <string>



std::string getName()
{
    std::cout << "Enter a name: ";
    std::string name{ };
    std::getline(std::cin, name);
    return name;

}

bool checkInArray(const std::string_view(&names)[8],  const std::string nameToFind) 
{
   for (const auto name : names)
   {
       if (name==nameToFind)
        return true;
   }
   return false;
}
int main()
{
    constexpr std::string_view names[]{ "Alex", "Betty", "Caroline", "Dave", "Emily", "Fred", "Greg", "Holly"};

    std::string nameToFind{ getName() };

    bool found{ checkInArray(names, nameToFind)};

    if (found)
        std::cout << nameToFind << " was found.\n";
    else 
        std::cout << nameToFind << " was not found :(.\n";

    return 0;
}