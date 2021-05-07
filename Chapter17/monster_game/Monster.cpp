#include "Monster.h"
#include "utility.h"
#include <random>

Monster::Monster(Monster::Type type)
	: Creature{ 
		getDefaultCreature(type).getName(),  
		getDefaultCreature(type).getSymbol(),
		getDefaultCreature(type).getHealth(),
		getDefaultCreature(type).getDamage(),
		getDefaultCreature(type).getGold()
	}
{
}



const Creature& Monster::getDefaultCreature(Monster::Type type)
{
	static std::array<Creature, static_cast<std::size_t>(Monster::Type::max_types)> monsterData {
		{
			{ "xeye", 'X', 100, 10, 250},
			{ "thunker", 'T', 50, 7, 160},
			{ "wither", 'W', 35, 5, 125 },
			{ "guardian", 'G', 40, 3, 80 },
			{ "dragon", 'D', 20, 4, 100 },
			{ "skeleton", 'S', 5, 3, 40},
			{ "creeper", 'C', 4, 3, 30},
			{ "orc", 'o', 4, 2, 25 },
			{ "zombie", 'z', 9, 1, 15 },
			{ "spider", 'S', 3, 2, 14},
			{ "slime", 's', 1, 1, 10 },
		
		}
	};
	
	return monsterData.at(static_cast<std::size_t>(type));
}



Monster Monster::getRandomMonster()
{

	int randomNumber = Random::getRandomNumber(0, static_cast<int>(Monster::Type::max_types) - 1);

		
	return {
		static_cast<Monster::Type>(randomNumber)
	};
}