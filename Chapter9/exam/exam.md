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