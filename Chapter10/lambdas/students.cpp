#include <iostream>
#include <array>
#include <string>
#include <algorithm>

struct Student {
    std::string name{};
    int points{};
};

int main()
{
    std::array<Student, 8> arr {
        {
           { "Albert", 3 },
            { "Ben", 5 },
            { "Christine", 2 },
            { "Dan", 8 }, // Dan has the most points (8).
            { "Enchilada", 4 },
            { "Francis", 1 },
            { "Greg", 3 },
            { "Hagrid", 5 } 
        }
    };


    
    const auto best{ 
        std::max_element(
            arr.begin(), 
            arr.end(), 
            [](const auto& x, const auto& y) {
                return (x.points < y.points);
            }
        )
    };

    std::cout << best->name << " is the best student.\n";

}