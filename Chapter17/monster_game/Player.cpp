#include "Player.h"
#include <string_view>

Player::Player(std::string_view name)
	: Creature{ name, '@', 10, 1, 0 }
{
}

void Player::drinkPotion(const Potion& potion)
{
	switch(potion.getType())
	{
		case Potion::Type::health:
			// A health potions size affects it's power
			if (potion.getSize() == Potion::Size::large)
				m_health += 5;
			else if (potion.getSize() == Potion::Size::medium)
				m_health += 2;
			else 
				m_health += 1;
			break;
			
		case Potion::Type::strength:
			++m_damage;
		
		case Potion::Type::poison:
			reduceHealth(1);
			break;
		
		case Potion::Type::weakness:
			--m_damage;
			break;
			
		case Potion::Type::enchanting:
			levelUp();
			break;
		case Potion::Type::luck:
			// A luck potions size also affects it's power
			if (potion.getSize() == Potion::Size::large)
				m_luck += 5;
			else if (potion.getSize() == Potion::Size::medium)
				m_luck += 2;
			else 
				m_luck += 1;
			break;
			
		case Potion::Type::max_type:
			break;
			
	}
}
void Player::levelUp()
{
	++m_level;
	++m_damage;
}

bool Player::hasWon()
{
	return m_level >= 20;
}