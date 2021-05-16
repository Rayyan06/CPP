#include <iostream>
#include <string>
#include <string_view>
#include <utility>

class Animal
{
protected:
	std::string m_name;
	
	Animal(const std::string& name)
		: m_name { name }
	{
	}
public:
	const std::string getName() const { return m_name; }
	virtual std::string_view speak() const = 0;
	
	virtual ~Animal() = default;
	
};

class Cat: public Animal
{
public:
    Cat(const std::string& name)
        : Animal{ name }
    {
    }
 
    std::string_view speak() const override { return "Meow"; }
};
 
class Dog: public Animal
{
public:
    Dog(const std::string& name)
        : Animal{ name }
    {
    }
 
    std::string_view speak() const override { return "Woof"; }
};

class Cow : public Animal
{
public:
	Cow(const std::string& name)
		: Animal{ name }
	{	
	}
	
	// Forgot Speak
	std::string_view speak() const override { return "Moo"; }
	
};

int main()
{
	Cow cow{ "Betsy" };
	std::cout << cow.getName() << " says " << cow.speak() << '\n';
	
	return 0;
}
	
