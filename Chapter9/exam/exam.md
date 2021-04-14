# Chapter 9 EXAM 

~~Please pass~~

1. Pretend you’re writing a game where the player can hold 3 types of items: health potions, torches, and arrows. Create an enum to identify the different types of items, and an std::array to store the number of each item the player is carrying (The enumerators are used as indexes of the array). The player should start with 2 health potions, 5 torches, and 10 arrows. Write a function called countTotalItems() that returns how many items the player has in total. Have your main() function print the output of countTotalItems() as well as the number of torches.

> See **player.cpp**.
Solved(very close)

2. Write the following program: Create a struct that holds a student’s first name and grade (on a scale of 0-100). Ask the user how many students they want to enter. Create a std::vector to hold all of the students. Then prompt the user for each name and grade. Once the user has entered all the names and grade pairs, sort the list by grade (highest first). Then print all the names and grades in sorted order.
For the following input:

Joe
82
Terry
73
Ralph
4
Alex
94
Mark
88
The output should look like this:

Alex got a grade of 94
Mark got a grade of 88
Joe got a grade of 82
Terry got a grade of 73
Ralph got a grade of 4
You can assume that names don’t contain spaces and that that input extraction doesn’t fail.

> See students.cpp for solution

3. Write your own function to swap the value of two integer variables. Write a main() function to test it.

> See swap.cpp

4. Write a function to print a C-style string character by character. Use a pointer to step through each character of the string and print that character. Stop when you hit the null terminator. Write a main function that tests the function with the string literal “Hello, world!”.

> See cstring.cpp

5. What’s wrong with each of these snippets, and how would you fix it?

a) 
```cpp
int main()
{
  int array[]{ 0, 1, 2, 3 };
 
  for (std::size_t count{ 0 }; count <= std::size(array); ++count)
  {
    std::cout << array[count] << ' ';
  }
 
  std::cout << '\n';
 
  return 0;
}
```
> The loop has an off-by-one error, it tries to access index 4 in the array which doesn't exist. The way to fix it is to replace the <= with <.

b)
```cpp
int main()
{
  int x{ 5 };
  int y{ 7 };
 
  const int* ptr{ &x };
  std::cout << *ptr << '\n';
  *ptr = 6;
  std::cout << *ptr << '\n';
  ptr = &y;
  std::cout << *ptr << '\n';
 
  return 0;
}
```
> `ptr = &y` is the invalid line here, it is trying to change a const pointer. Making the pointer non-const is the answer,
c)
```cpp
void printArray(int array[])
{
  for (int element : array)
  {
    std::cout << element << ' ';
  }
}

int main()
{
  int array[]{ 9, 7, 5, 3, 1 };
 
  printArray(array);
 
  std::cout << '\n';
 
  return 0;
}
```
> When the array is passed to the printArray function, it decays into a pointer. Trying to iterate over the array using the forEach loop is impossible. To fix this, you can pass in the length of the array to the function and use a regular for loop. Better to use std::array, not built-in fixed length arrays.
d)
```cpp
int* allocateArray(const int length)
{
  int temp[length]{};
  return temp;
}
```
> Length is not a compile time constant. Using std::vector or making length into a constexpr would solve the problem, or dynamically allocating temp. 
e)
```cpp
int main()
{
  double d{ 5.5 };
  int* ptr{ &d };
  std::cout << ptr << '\n';
 
  return 0;
}
```
> You can’t make an int pointer point at a non-int variable. ptr should be of type double*.

6. Let’s pretend we’re writing a card game.
a) A deck of cards has 52 unique cards (13 card ranks of 4 suits). Create enumerations for the card ranks (2, 3, 4, 5, 6, 7, 8, 9, 10, Jack, Queen, King, Ace) and suits (clubs, diamonds, hearts, spades). Those enumerators will not be used to index arrays.

```cpp
enum CardRanks{
    rank_1,
    rank_2,
    rank_3, 
    rank_4,
    rank_5,
    rank_6,
    rank_7,
    rank_8,
    rank_9,
    rank_10,
    rank_jack,
    rank_queen,
    rank_king,
    rank_ace,


    max_rank
};

enum CardSuits{
    suit_clubs,
    suit_diamonds,
    suit_hearts,
    suit_spades,

    max_suits

};
```
b) Each card will be represented by a struct named Card that contains a rank and a suit. Create the struct.
```cpp
struct Card {
    CardSuits suit{};
    CardRank rank{};
};
```

c) Create a printCard() function that takes a const Card reference as a parameter and prints the card rank and suit as a 2-letter code (e.g. the jack of spades would print as JS).

```cpp
void printCard(const& Card card) {
    char rankCode{};
    char suitCode{};

    switch(card.rank) {
        case rank_1:
            rankCode = '1';
            break;
        case rank_2:
            rankCode = '2';
            break;
        case rank_3:
            rankCode = '3';
            break;
        case rank_4:
            rankCode = '4';
            break;
         case rank_5:
            rankCode = '5';
            break;
         case rank_6:
            rankCode = '6';
            break;
         case rank_7:
            rankCode = '7';
            break;
         case rank_8:
            rankCode = '8';
            break;
         case rank_9:
            rankCode = '9';
            break;
         case rank_10:
            rankCode = 'T';
            break;
        case rank_jack:
            rankCode = 'J';
            break;
        case rank_queen:
            rankCode = 'Q';
            break;
        case rank_king:
            rankCode = 'K';
            break;
        case ace: 
            rankCode = 'A';
            break;
        default:
            rankCode = '?'; // unknown
            break;
    }
    switch(card.suit)
    {
        case suit_clubs:
            suitCode = 'C';
            break;
        case suit_diamonds:
            suitCode = 'D';
            break;
        case suit_hearts:
            suitCode = 'H';
            break;
        case suit_spades:
            suitCode = 'S';
            break;
        default:
            suitCode = '?'; // unknown
            break;
    }

    std::cout << rankCode << suitCode;
}
```

d) A deck of cards has 52 cards. Create an array (using std::array) to represent the deck of cards, and initialize it with one of each card. Do this in a function named createDeck and call createDeck from main. createDeck should return the deck to main.

Hint: Use static_cast if you need to convert an integer into an enumerated type.

```cpp

```

e) Write a function named printDeck() that takes the deck as a const reference parameter and prints the cards in the deck. Use a range-based for-loop. When you can printDeck with the deck you generated in the previous task, the output should be

2C 3C 4C 5C 6C 7C 8C 9C TC JC QC KC AC 2D 3D 4D 5D 6D 7D 8D 9D TD JD QD KD AD 2H 3H 4H 5H 6H 7H 8H 9H TH JH QH KH AH 2S 3S 4S 5S 6S 7S 8S 9S TS JS QS KS AS
If you used different characters, that’s fine too.

Show Solution

f) Write a function named shuffleDeck to shuffle the deck of cards using std::shuffle. Update your main function to shuffle the deck and print out the shuffled deck.

Reminder: Only seed your random number generator once.

Show Solution

g) Write a function named getCardValue() that returns the value of a Card (e.g. a 2 is worth 2, a ten, jack, queen, or king is worth 10. Assume an Ace is worth 11).

Show Solution

