#include <iostream>
#include <random> // for std::mt19937
#include <ctime> // for std::time
#include <vector> // for std::vector
#include <algorithm> // for std::find
#include <numeric> 
#include <cmath> // for std::abs
#include "game.h"

// Define Type Alias for square vector, since we use it alot.
using squares_type = std::vector<int>; 


// Declare in namespace so we can access it anywhere
namespace RandomNumber
{
    std::mt19937 mersenne{ static_cast<std::mt19937::result_type>(std::time(nullptr))}; // Once at system startup
}


// Generates random integer from 2 to 4.
int generateRandomNumber(int min, int max)
{
    std::uniform_int_distribution range{
        min, max
    };

    return range(RandomNumber::mersenne);
}

squares_type getSquares(int start_root, int numbers_to_generate, int random_number)
{
    squares_type squares{};
    squares.reserve(numbers_to_generate);

    
    for (int i{ start_root }; i <= numbers_to_generate; ++i)
    {
        squares.push_back(i*i*random_number);
    }

    return squares;


}

// Utility functions to get data from user

squares_type generateSquares(int start, int count, int multiplier)
{
    squares_type numbers(static_cast<squares_type::size_type>(count));

    int i { start };

    for (auto& number : numbers)
    {
        number = (i * i * multiplier);
        ++i;
    }

    return numbers;

}
squares_type getUserNumbers(int multiplier)
{
    int count{};
    int start{};


    std::cout << "Start where? ";
    std::cin >> start;

    std::cout << "How many? ";
    std::cin >> count;

    return generateSquares(start, count, multiplier);


}


int getUserGuess()
{
    int guess{};
    std::cout << "> ";
    std::cin >> guess;
    return guess;
}

// find the value in @numbess that is closest to @guess
int findClosestNumber(const squares_type squares, int guess)
{
    return *(std::min_element(
            squares.begin(), 
            squares.end(), 
            [=](int a, int b) {
                return std::abs(a - guess) < std::abs(b-guess);
            }
        ));
}


// Handles game case of loss, finds closest number which was correct and informs user of it if it was close enough.
void printLoss(const squares_type& squares, int guess)
{
    int closest{ findClosestNumber(squares, guess)};

    std::cout << guess << " is wrong! ";


    
    // closest is a iterator towards an element in the squares array. 
    if (
        std::abs(closest - guess)
        <= Constants::closeness_threshold
    ) 
    {
        std::cout << "Try " << closest << " next time.\n";
    } 
    else {
        std::cout << '\n';
    }
        

}


bool findAndRemove(squares_type& squares, int guess)
{
    auto found{ std::find(squares.begin(), squares.end(), guess)};

    if (found == squares.end())
    {
        return false;
    }
    else 
    {
        squares.erase(found);
        return true;
    }

}



void printTask(squares_type::size_type count, int multiplier)
{
  std::cout << "I generated " << count << " square numbers. Do you know what each number is after multiplying it by " << multiplier << "?\n";
}



void printSuccess(squares_type::size_type numbersLeft)
{
    std::cout << "Nice! ";

    if (numbersLeft == 0)
        std::cout << "You found all numbers, good job!\n";
    else
    {
        std::cout << numbersLeft << " number(s) left.\n";
    }
}


bool playGame(squares_type& squares)
{

    int guess{ getUserGuess() };


    // If no number was found
    if (findAndRemove(squares, guess))
    {
        printSuccess(squares.size());
        
        return !squares.empty();
    }
    else 
    {
        printLoss(squares, guess);
        return false;
    }
    
        
    
}



int main()
{

    int multiplier{ generateRandomNumber(                    Constants::lower_rng_range,
        Constants::upper_rng_range ) };



    squares_type squares{
        getUserNumbers(multiplier)
    };

    printTask(squares.size(), multiplier);

    while (playGame(squares))
        ;




    return 0;
} 