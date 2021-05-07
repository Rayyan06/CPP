#include <iostream>
#include <string>
#include <cstdlib>
#include <ctime>
#include "Creature.h"
#include "Player.h"
#include "Monster.h"
#include "Potion.h"
#include <limits> // for std::numeric_limits
#include "utility.h"
 

enum class GameDifficulty
{
	easy,
	medium,
	hard,
};
// 10 % chance of getting a potion normally
constexpr int normalPotionChance{ 10 };
constexpr int bossHealthThreshold{ 10 }; // Anything greter than 10 is a boss

GameDifficulty difficulty{ GameDifficulty::easy };

int currentTick{ 0 }; // current game tick

void ignoreLine()
{
  std::cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
}

void drinkPotion(Player& player)
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


void onMonsterKilled(Player& player, const Monster& m)
{
  std::cout << "You killed the " << m.getName() << ".\n";
  player.levelUp();
  std::cout << "You are now level " << player.getLevel() << ".\n";
  std::cout << "You found " << m.getGold() << " gold.\n";
  if (m.getHealth() > bossHealthThreshold)
	player.addRegeneration();
  player.addGold(m.getGold());
 
	
  // 30% chance of finding a potion
  constexpr int potionChance{ 30 };
  if (Random::getRandomNumber(1, 100) <= (potionChance + player.getLuck())) // Higher luck means more potions!
  {
  	drinkPotion(player);
  }
}

/*
AttackMonster - Handles player attacking monster, including leveling up.
@param - 
*/
void attackMonster(Player& player,  Monster& m)
{
	if (player.isDead())
		return;
	
	std::cout << "You hit the " << m.getName() << " for " << player.getDamage() << " damage.\n";
	m.reduceHealth(player.getDamage());

	
	if (m.isDead())
	{
		onMonsterKilled(player, m); // Short function for victory
	}
}

/*
Attackplayer() - handles monster attacking player.
*/
void attackPlayer(Player& player, Monster& m)
{
	if (m.isDead())
		return;
	
	player.reduceHealth(m.getDamage());
	std::cout << "The " << m.getName() << " hit you for " << m.getDamage() << " damage.\n";
	
}


/*
fightMonster() - handles fight between player and single monster, including run and fight cases. 
*/
void fightMonster(Player& player, Monster& m)
{
	
	while(!(player.isDead() || m.isDead() || player.hasWon()))
	{

		char choice{ getChoice() };

		if (choice == 'R' || choice == 'r')
		{
			// Did the player escape(50% odds)
			bool escapedChance{ Random::getRandomNumber(0, 100) < 40 };
			
			// Chance of player escaping by their luck.
			bool escapedLuckChance{ player.getLuck() > Random::getRandomNumber(0, 100) };
			if (escapedChance || escapedLuckChance) {
				std::cout << "You successfully fled.\n";
				player.heal();
				return; // Bye!
			}

			std::cout << "You failed to flee.\n";
			attackPlayer(player, m); // Free attack, player got trapped
		} 
		else if (choice == 'F' || choice == 'f') // If we fight, we attack the monster first.
		{
			attackMonster(player, m);
			attackPlayer(player, m);
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
	Player player{ playerName };
	std::cout << "Welcome, " << player.getName() << '\n';
	
	
	while (!(player.isDead() || player.hasWon()))
	{
		Monster monster{ Monster::getRandomMonster()};
		
		while (true) {
			Monster monster = Monster::getRandomMonster();

			if ((player.getLevel() < 5) && (monster.getHealth() > 10))
				continue;
			else if ((player.getLevel() < 20) && (monster.getHealth() > 40))
				continue;
			else if ((monster.getHealth() < 10) && (player.getLevel() > 20))
				continue;
			else
				break;
		}
			
			
		std::cout << "You have encoutered a " << monster.getName() << " (" << monster.getSymbol() << ").\n";
		
		fightMonster(player, monster);// Fight that monster.

		
		if (Random::getRandomNumber(0, 100) <= (normalPotionChance + player.getLuck()/2))
		{
			drinkPotion(player);
		}
		
		player.heal(); // Add the regeneration health
		
		std::cout << "You have " << player.getHealth() << " health points.\n";
		
		++currentTick;
	}
	
	if (player.isDead())
	{
		std::cout << "You died at level " << player.getLevel() << " and with " << player.getGold() << " gold.\n";
		std::cout << "Too bad you can't take it with you!\n";
	}
 	else 
	{
		std::cout << "You won! You finished with " << player.getGold() << " gold.\n";
		std::cout << "Have a nice time spending it!\n";
	}


 
	return 0;
}