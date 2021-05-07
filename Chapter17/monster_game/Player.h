#ifndef PLAYER_H
#define PLAYER_H

#include "Creature.h"
#include "Potion.h"
#include <string_view>


class Player : public Creature
{
private:  
	int m_level{ 1 };
	int m_luck{ 0 };
	int m_regeneration{ 1 };

public:
	Player(std::string_view name);
	
	void levelUp();
	int getLevel() const { return m_level; }
	int getLuck()  const { return m_luck;  }
	void addRegeneration() { ++m_regeneration; }
	void subRegeneration() { if (m_regeneration > 0) --m_regeneration; }
	int getRegeneration() const { return m_regeneration; }
	void heal() { m_health += m_regeneration; }
	
	bool hasWon();
	void drinkPotion(const Potion& potion);
	
};


#endif