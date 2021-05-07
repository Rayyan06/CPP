#ifndef MONSTER_H
#define MONSTER_H

#include "Creature.h"
#include <array>

class Monster : public Creature
{
public:
	enum class Type
	{
		xeye,
		thunker,
		wither,
		guardian,
		dragon,
		skeleton,
		creeper,
		orc,
		zombie,
		spider,
		slime, 
		
		max_types
	};
	
	Monster(Type type);
	static Monster getRandomMonster();
	
private:
	// Lookup table for Monster Type
	static const Creature& getDefaultCreature(Type type);
};
#endif