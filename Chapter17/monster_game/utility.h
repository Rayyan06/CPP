#ifndef UTILITY_H
#define UTILITY_H

#include <random>

namespace Random
{
	int getRandomNumber(int min, int max);

};

namespace Constants
{
	inline constexpr int bossTickThreshold{ 5 };
	inline constexpr int bossThreshold{ 3 };
};
#endif