#ifndef BANANA_H
#define BANANA_H

#include "fruit.h"
#include <string>

class Banana : public Fruit
{
public:
	Banana(const std::string& name, const std::string& color)
	: Fruit{ name, color }
	{
	}
	
};
#endif