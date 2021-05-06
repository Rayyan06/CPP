#ifndef APPLE_H
#define APPLE_H

#include <string>
#include "fruit.h"

class Apple : public Fruit
{
private:
	double m_fiber{};
public:
	Apple(const std::string& name, const std::string& color, double fiber);
	
	
    double getFiber() const {
		return m_fiber;
	}
};
#endif