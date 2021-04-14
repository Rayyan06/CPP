#include <iostream>
int main()
{
    char yourName[]{ "Alex" }; // fixed array
    std::cout << yourName << '\n';

    const char* myName{ "Rayyan "};
    std::cout << "My name: " << myName << '\n'; 
    return 0;
}