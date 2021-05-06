#ifndef CREATURE_H
#define CREATURE_H

#include <string>
#include <string_view>

class Creature
{
protected:
	std::string m_name;
	char m_symbol;
	int m_health;
	int m_damage; // damage per attack
	int m_gold; // Amount of gold they have

public:
	
	Creature(std::string_view name, char symbol, int health, int damage, int gold);
	const std::string& getName() const { return m_name; }
	
	char getSymbol() const { return m_symbol; }
	int getHealth() const { return m_health; }
	int getDamage() const { return m_damage; }
	int getGold() const { return m_gold; }
		
	void reduceHealth(int amount);
	bool isDead() const;
	void addGold(int amount);
};
#endif