#include <iostream>
#include <array>

namespace Items {
    enum Items {
        health_pot, 
        torches, 
        arrows,
        max_items
    };
}

using inventory_type = std::array<int, Items::max_items>;

int countTotalItems(const inventory_type&inventory)
{
    int totalCount{0};
    for (const auto& item: inventory)
    {
        totalCount += item;
    }
    return totalCount;

    // or we can use
    // std::reduce(items.begin(), items.end());

    
}

int main()
{
    inventory_type inventory{2, 5, 10};
    

    std::cout << "The player has " << countTotalItems(inventory) << " items.\n";
    
    std::cout << "The player has " << inventory[Items::torches] << " torches.\n";



    return 0;
}