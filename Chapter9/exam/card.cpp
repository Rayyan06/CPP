#include <iostream>
#include <array>


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

struct Card {
    CardSuits suit{};
    CardRanks rank{};
};

using card_array = std::array<Card, 52>;

void printCard(const Card& card) 
{
    char rankCode{};
    char suitCode{};

    switch(card.rank) 
    {
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
        case rank_ace: 
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

card_array createDeck()
{
    card_array cards;
    int i {0};
    for (int card_suit{suit_clubs}; card_suit != max_suits; ++card_suit)
    {
        for (int card_rank{rank_1}; card_rank != max_rank; ++card_rank)
        {
            cards[i] = Card{ 
                static_cast<CardSuits>(card_suit), static_cast<CardRanks>(card_rank)
            };
            ++i;
            std::cout << i;
        }
    }


    return cards;
}

int main()
{

    auto cards{ createDeck() };
    return 0;
}