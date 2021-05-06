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

Potion getRandomPotion()
{
	using Potion::Type;
	using Potion::Size;
	
	Potion::Type randomType { 
		static_cast<Type>(
			Random::getRandomNumber(
				0, 
				static_cast<int>(
					Type::max_types - 1
				)
			)
		)
	};
	
	Potion::Size randomSize {
		static_cast<Size>(
			Random::getRandomNumber(
				0, 
				static_cast<int>(
					Size::max_sizes - 1
				)
			)
		)	
	};
	
	return {
		randomType,
		randomSize
	};
	
}


// No need for static here, C++ is weird.
std::string_view getTypeString(Potion::Type type)
{
	
	static constexpr std::array names{
		"Health",
		"Strength",
		"Poison",
		"Weakness",
		"Enchanting",
		"Luck"
	};
	return names.at(static_cast<std::size_t>(type));
}

std::string_view getSizeString(Potion::Size size)
{
	static constexpr sizes {
		"Small",
		"Medium", 
		"Large",
	};
	
	return sizes.at(static_cast<std::size_t>(size));
}
	


