#include <iostream>

int main(int argc, char *argv[])
{
    std::cout << "There are " << argc << " arguments:\n";
    
    // Loop through each argument and print it's number and value
    for (int count{ 0 }; count < argc; ++count)
    {
        std::cout << count << ' ' << argv[count] << '\n';
    }
    return 0;
}