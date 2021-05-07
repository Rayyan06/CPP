#include "Potion.h"
#include <array>
#include "utility.h"
#include <sstream> // for std::stringstream
#include <array>

Potion::Potion(Potion::Type type, Potion::Size size)
	: m_type{ type }, m_size{ size }
{
}



std::string Potion::getName() const
{
	std::string typeString{ getTypeString(getType()) };

	std::string sizeString{ getSizeString(getSize()) };
		
	std::stringstream result{};
	
	result <<  sizeString + " Potion of " + typeString;
	
	return result.str();
}

Potion Potion::getRandomPotion()
{

	Potion::Type randomType { 
		static_cast<Potion::Type>(
			Random::getRandomNumber(
				0, 
				static_cast<int>(Potion::Type::max_type) - 1
			)
		)
	};
	
	Potion::Size randomSize {
		static_cast<Potion::Size>(
			Random::getRandomNumber(
				0, 
				static_cast<int>(Potion::Size::max_size) - 1
			)
		)	
	};
	
	return {
		randomType,
		randomSize
	};
	
}


// No need for static here, C++ is weird.
std::string_view Potion::getTypeString(Potion::Type type)
{
	
	static constexpr std::array names{
		"Health",
		"Strength",
		"Poison",
		"Weakness",
		"Enchanting",
		"Regeneration",
		"Luck"
	};
	return names.at(static_cast<std::size_t>(type));
}

std::string_view Potion::getSizeString(Potion::Size size)
{
	static constexpr std::array sizes {
		"Small",
		"Medium", 
		"Large",
	};
	
	return sizes.at(static_cast<std::size_t>(size));
}
	


