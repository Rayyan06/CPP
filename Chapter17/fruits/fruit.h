#ifndef FRUIT_H
#define FRUIT_H

#include <string>

class Fruit
{
private:
	std::string m_name{};
	std::string m_color{};
public:
	Fruit(const std::string& name, const std::string& color)
		: m_name{ name }, m_color{ color }
	{
		
	}
	
	const std::string& getName() const {
		return m_name;
	}
	const std::string& getColor() const {
		return m_color;
	}
	
};

#endif