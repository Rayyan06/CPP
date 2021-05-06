#include "banana.h"
#include <string>

std::ostream& operator<<(std::ostream& out, const Banana& b)
{
	out << "Banana(" << a.getName() << ", " << a.getColor() << ")";
	return out;
}