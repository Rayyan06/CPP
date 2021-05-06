#include <iostream>
#include <string>
#include <cstdlib>
#include <ctime>
#include "Creature.h"
#include "Player.h"
#include "Monster.h"
#include <limits> // for std::numeric_limits
#include "utility.h"
 
void ignoreLine()
{
  std::cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
}
/*
	Returns the Choice(R or F)
*/
char getChoice()
{
	while (true)
	{

		std::cout << "(R)un or (F)ight: ";
		char choice;
		std::cin >> choice;
		ignoreLine();
		
		switch(choice)
		{
			case 'R':
			case 'r':
			case 'F':
			case 'f':
				return choice;
			default:
				std::cout << "Invalid choice, please try again";
		}
	}
}


void onMonsterKilled(Player& p, const Monster& m)
{
  std::cout << "You killed the " << m.getName() << ".\n";
  p.levelUp();
  std::cout << "You are now level " << p.getLevel() << ".\n";
  std::cout << "You found " << m.getGold() << " gold.\n";
  p.addGold(m.getGold());
 
  // 30% chance of finding a potion
  constexpr int potionChance{ 30 };
  if (Random::getRandomNumber(1, 100) <= potionChance + p.getLuck()) // Higher luck means more potions!
  {
    // Generate a random potion
    auto potion{ Potion::getRandomPotion() };
 
    std::cout << "You found a mythical potion! Do you want to drink it? [y/n]: ";
    char choice{};
    std::cin >> choice;
	ignoreLine();
 
    if (choice == 'y')
    {
      // Apply the effect
      player.drinkPotion(potion);
      // Reveal the potion type and size
      std::cout << "You drank a " << potion.getName() << '\n';
    }
  }
}

/*
AttackMonster - Handles player attacking monster, including leveling up.
@param - 
*/
void attackMonster(Player& p,  Monster& m)
{
	if (p.isDead())
		return;
	
	std::cout << "You hit the " << m.getName() << " for " << p.getDamage() << " damage.\n";
	m.reduceHealth(p.getDamage());

	
	if (m.isDead())
	{
		onMonsterKilled(p, m); // Short function for victory
	}
}

/*
AttackPlayer() - handles monster attacking player.
*/
void attackPlayer(Player& p, Monster& m)
{
	if (m.isDead())
		return;
	
	p.reduceHealth(m.getDamage());
	std::cout << "The " << m.getName() << " hit you for " << m.getDamage() << " damage.\n";
	
}


/*
fightMonster() - handles fight between player and single monster, including run and fight cases. 
*/
void fightMonster(Player& p, Monster& m)
{
	
	while(!(p.isDead() || m.isDead() || p.hasWon()))
	{

		char choice{ getChoice() };

		if (choice == 'R' || choice == 'r')
		{
			// Did the player escape(50% odds)
			bool escaped{ static_cast<bool>(std::rand() % 2) };

			if (escaped || (p.getLuck() > Random::getRandomNumber(0, 100)) {
				std::cout << "You successfully fled.\n";
				return; // Bye!
			}

			std::cout << "You failed to flee.\n";
			attackPlayer(p, m); // Free attack, player got trapped
		} 
		else if (choice == 'F' || choice == 'f') // If we fight, we attack the monster first.
		{
			attackMonster(p, m);
			attackPlayer(p, m);
		}

		
	}

	
}








int main()
{
	
	std::srand(static_cast<unsigned int>(std::time(nullptr))); // set initial seed value to system clock
    std::rand(); // get rid of first result
	
	// Get Player Name 
	std::cout << "Enter your name: ";
	std::string playerName;
	std::cin >> playerName;
	ignoreLine();
	
	// Create and Greet our player
	Player p{ playerName };
	std::cout << "Welcome, " << p.getName() << '\n';
	
	
	while (!(p.isDead() && !p.hasWon()))
	{

		Monster m{ Monster::getRandomMonster () };
		std::cout << "You have encoutered a " << m.getName() << " (" << m.getSymbol() << ").\n";
		
		fightMonster(p, m);// Fight that monster.
		
		
		
	
			
	}
	
	if (p.isDead())
	{
		std::cout << "You died at level " << p.getLevel() << " and with " << p.getGold() << " gold.\n";
		std::cout << "Too bad you can't take it with you!\n";
	}
 	else 
	{
		std::cout << "You won! You finished with " << p.getGold() << " gold.\n";
		std::cout << "Have a nice time spending it!\n";
	}


 
	return 0;
}