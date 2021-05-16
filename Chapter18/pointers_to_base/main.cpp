#include <iostream>
#include <string_view>
#include <string>
 #include <array>
class Animal
{
protected:
    std::string m_name;
 	std::string m_speak;
	
    // We're making this constructor protected because
    // we don't want people creating Animal objects directly,
    // but we still want derived classes to be able to use it.
    Animal(std::string_view name, std::string_view speak)
        : m_name{ name }, m_speak{ speak }
    {
    }
    
    // To prevent slicing (covered later)
    Animal(const Animal&) = delete;
    Animal& operator=(const Animal&) = delete;
 
public:
    const std::string& getName() const { return m_name; }
    const std::string& speak() const { return m_speak; }
};
 
class Cat: public Animal
{
public:
    Cat(std::string_view name)
        : Animal{ name, "Meow" }
    {
    }
 
    //std::string_view speak() const { return "Meow"; }
};
 
class Dog: public Animal
{
public:
    Dog(std::string_view name)
        : Animal{ name, "Woof" }
    {
    }
 
   // std::string_view speak() const { return "Woof"; }
};
 
int main()
{
    const Cat fred{ "Fred" };
    const Cat misty{ "Misty" };
    const Cat zeke{ "Zeke" };
 
    const Dog garbo{ "Garbo" };
    const Dog pooky{ "Pooky" };
    const Dog truffle{ "Truffle" };
 
    
    // Before C++20, with the array size being explicitly specified
    const std::array<const Animal*, 6> animals{ &fred, &garbo, &misty, &pooky, &truffle, &zeke };
    
    for (const auto animal : animals)
    {
        std::cout << animal->getName() << " says " << animal->speak() << '\n';
    }
 
 
    return 0;
}