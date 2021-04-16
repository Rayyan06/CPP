#ifndef GAME_H
#define GAME_H

namespace Constants 
{
    // If user guessed wrong, and we tell user what the nearest number is, this is the threshold at which to tell him.
    inline constexpr int closeness_threshold {4};

    // Lower and upper ranges to generate the random number
    inline constexpr int lower_rng_range {2};

    inline constexpr int upper_rng_range {4};

}


#endif