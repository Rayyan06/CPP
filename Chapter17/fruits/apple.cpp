#include "apple.h"
#include "fruit.h"
#include <string>

Apple::Apple(const std::string& name, const std::string& color, double fiber)
	: 	Fruit{ name, color }, m_fiber{ fiber }
{
}


std::ostream& operator<< (std::ostream& out, const Apple& a)
{
	out << "Apple(" << a.getName() << ", " << a.getColor() << ", " << a.getFiber() << ")";
	return out;
}