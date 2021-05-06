#include <iostream>


class Base
{
private:
	int m_value;

public:
	Base(int value)
		: m_value{ value }
	{}
	
	void identify() { std::cout << "I am a base\n"; }
protected:
	void printValue() { std::cout << m_value; }
};

class Derived: public Base
{
public:
	Derived(int value)
		: Base{ value }
	{
	}
	
	using Base::printValue;
	
	
	void identify() { 
		Base::identify();
		std::cout << "I am a Derived!\n";
	}
		
};

int main()
{
	
	Base base{ 7 };
	base.identify();
	
	Derived derived{ 5 };
	derived.printValue();
	derived.identify();
	return 0;
}