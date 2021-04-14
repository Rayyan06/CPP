#include <iostream>
#include <iterator>


void printString(const char* string) 
{
    while(*string != '\0')
    {
        std::cout << *string;
        ++string;
    }

}
int main()
{
    const char* helloWorld { "Hello world"};
    printString(helloWorld);

    return 0;
}