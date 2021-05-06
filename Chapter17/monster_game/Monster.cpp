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
			{ "dragon", 'D', 20, 4, 100 },
			{ "skeleton", 'S', 5, 3, 50},
			{ "orc", 'o', 4, 2, 25 },
			{ "zombie", 'z', 7, 1, 15 },
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