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

public:
	Player(std::string_view name);
	
	void levelUp();
	int getLevel() const { return m_level; }
	int getLuck()  const { return m_luck;  }
	
	bool hasWon();
	void drinkPotion(const Potion& potion);
	
};


#endif