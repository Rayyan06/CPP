#include "Creature.h"
#include <string_view>


Creature::Creature(std::string_view name, char symbol, int health, int damage, int gold) : m_name{ name }, 
	m_symbol{ symbol }, 
	m_health{ health}, 
	m_damage{ damage }, 
	m_gold{ gold }
{
}

/*
Reduces Creature health by integer amount
@param amount to reduce by
*/
void Creature::reduceHealth(int amount)
{
	m_health -= amount;
}

bool Creature::isDead() const
{
	return m_health < 0;
}

void Creature::addGold(int amount)
{
	m_gold += amount;
}
