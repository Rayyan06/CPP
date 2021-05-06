#ifndef UTILITY_H
#define UTILITY_H

#include <random>

namespace Random
{
	int getRandomNumber(int min, int max)
	{
		static constexpr double fraction { 1.0 / (RAND_MAX + 1.0) };
		return min + static_cast<int>((max - min + 1) * (std::rand() * fraction));
	}
};

#endif