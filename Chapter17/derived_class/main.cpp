#include <iostream>

class Base
{
private:
	int m_id{};
public:
	
	Base(int id = 0)
		: m_id{ id }
	{
		std::cout << "Base\n";	
	}
	
	int getId() const { return m_id; }
};

class Derived: public Base
{
private:
	double m_cost;
public:
	
	Derived(double cost = 0.0, int id = 0)
		: Base{ id }, m_cost{ cost }
	{
		std::cout << "Derived!\n";
	}
	
	double getCost() const { return m_cost; }
};

int main()
{
	std::cout << "Instantiating Base\n";
	Base base{ 5 };
	
	std::cout << "Instantiating Derived\n";
	
	// 1. Memory for derived is allocated.
	// 2. The Derived { double, int } constructor is called, with cost = 1.5 and id = 59
	// 3. The compiler looks if we asked for a specific Base constructor, we have so it calls Base{ int id } with id = 59.
	/*
	The base class constructor initialization list 	sets m_id to 5
	The base class constructor body executes, which does nothing
	The base class constructor returns
	The derived class constructor initialization list sets m_cost to 1.3
	The derived class constructor body executes, which does nothing
	The derived class constructor returns
	*/
	Derived derived{ 1.5 , 59}; 
	
	return 0;
	
}
