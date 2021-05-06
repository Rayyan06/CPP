#ifndef POTION_H
#define POTION_H

#include <string>
#include <string_view>

class Potion
{
public:
	enum class Type
	{
		health, 
		strength,
		poison,
		weakness,
		enchanting,
		luck, // Higher chance of fleeing and getting more potions.
		max_type
	};
	enum class Size
	{
		small,
		medium,
		large,
		max_size
	};
	
private: 
	Type m_type;
	Size m_size;
	
public:
	Potion(Type type, Size size);
	
	const Type getType() const { return m_type; }
	const Size getSize() const { return m_size; }
	
	const std::string& getName() const;
	static Potion getRandomPotion();
	
	static std::string_view getTypeString(Potion::Type type);
	static std::string_view getSizeString(Potion::Size size);

	

};
#endif