#include <iostream>
#include <array>

#include <algorithm>
#include <random> // for std::shuffle

#include <ctime> // for std::time

#include <limits> // for std::numeric_limits
 
void ignoreLine()
{
  std::cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
}


enum CardRank{
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

enum class BlackjackResult
{
    player_win, 
    dealer_win,
    tie
};

enum CardSuit{
    suit_clubs,
    suit_diamonds,
    suit_hearts,
    suit_spades,

    max_suits

};

struct Card {
    CardSuit suit{};
    CardRank rank{};
};


struct Player{
    int score{};
    int acesDealt{};
};

using deck_type = std::array<Card, 52>;
using index_type = deck_type::size_type;

constexpr int maximumScore{ 52 };

constexpr int minimumDealerScore{ 48 };

void printCard(const Card& card) 
{
    char rankCode{};
    char suitCode{};

    switch(card.rank) 
    {
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


int getCardValue(const Card& card)
{
    if (card.rank <= CardRank::rank_10)
    {
        // RANK_2 is 0
        // RANK_3 is 1
        return (static_cast<int>(card.rank) + 2);
    }
    switch(card.rank)
    {
     
        case CardRank::rank_10:
        case CardRank::rank_jack:
        case CardRank::rank_queen:
        case CardRank::rank_king:
            return 10;
        case CardRank::rank_ace:
            return 11;
        default:
            return 0;
    }
}
deck_type createDeck()
{
    deck_type deck{};
    auto suits { static_cast<int>(CardSuit::max_suits)};

    auto ranks { static_cast<int>(CardRank::max_rank)};


    index_type card{0};

    for (int suit {0}; suit < suits; ++suit)
    {
        for (int rank{ 0 }; rank < ranks ; ++rank)
        {
            deck[card].suit = static_cast<CardSuit>(suit); 
            deck[card].rank = static_cast<CardRank>(rank);
            ++card;
        }
    }


    return deck;
}

void printDeck(const deck_type& deck)
{
    std::cout << "\n\n";
    for (const auto& card: deck)
    {
        printCard(card);
        std::cout << ' ';
    }
    std::cout << "\n\n";
    

}

void shuffleDeck(deck_type& deck)
{
    static std::mt19937 mt { static_cast<std::mt19937::result_type>(std::time(nullptr))};
    std::shuffle(deck.begin(), deck.end(), mt);
}


// Returns true if the player went bust
bool playerWantHit() 
{
    while(true)
    {
        std::cout << "(h) to hit, or (s) to stand: ";

        char ch{};
        std::cin >> ch;

        switch(ch)
        {
            case 'h':
                return true;
            case 's':
                return false;
            default:
                ignoreLine();
                std::cin.clear();
                continue;
        }
    }
}

bool playerTurn(const deck_type& deck, index_type& current_card_index, Player& player)
{
    while(true)
    {
        if (player.score > maximumScore)
        {

    
            std::cout << "Busted, noob.\n";
            return true; // bust
        }
        else
        {
            if(playerWantHit())
            {
                int cardValue{ getCardValue(deck[current_card_index++])};
                player.score += cardValue;

                if ((cardValue == 11))
                    player.acesDealt++;

                // This can happen in the beginning of the game.
                if ((player.acesDealt > 0) && player.score > maximumScore) {
                    player.score-=10; // Convert the Ace from 11 to 1 point
                    player.acesDealt--;
                    std::cout << "ACE TOTEM\n";
                }
                std::cout << "You were dealt a " << cardValue << " (";
                printCard(deck[current_card_index]);
                
                std::cout << ") and now have " << player.score << " score\n";
            }
            else {
                // no bust this turn
                return false;
            }
        }
    }
}

bool dealerTurn(const deck_type& deck, index_type& current_card_index, Player& dealer)
{



    while(dealer.score < minimumDealerScore)
    {
        int cardValue{ getCardValue(deck[current_card_index++])};
        if ((cardValue == static_cast<int>(CardRank::ace)))
            dealer.acesDealt++;
        dealer.score += cardValue;
        
        if ((dealer.acesDealt > 0)&& (dealer.score > maximumScore)) 
        {
            dealer.score-=10; // Convert the Ace from 11 to 1 point
            dealer.acesDealt--;
            std::cout << "ACE TOTEM\n";
        }
        std::cout << "The dealer turned up a " << cardValue << " (";
        printCard(deck[current_card_index]);
  
        std::cout << ")and now has " << dealer.score << '\n';
    }

    // If the dealer's score is too high, they went bust
    if (dealer.score > maximumScore)
    {
  
        std::cout << "The dealer lost!\n";
        return true;
    } 

    // Else, they are still fine.
    return false;
}

BlackjackResult playBlackjack(const deck_type& deck)
{


    index_type current_card_index{ 0 }; // we are on card number 0 when we start


    Player dealer{ getCardValue(deck[current_card_index++])};
    

    std::cout << "The dealer is showing: " << dealer.score << '\n';
    

    Player player{ getCardValue(deck[current_card_index]) + getCardValue(deck[current_card_index + 1])};

    current_card_index += 2;


    // Give player two cards
    std::cout << "You have: " << player.score << '\n';
    if (player.acesDealt)
        std::cout << "You have " << player.acesDealt << " ace(s)\n";


    // PLAYER GOES FIRST

    if (playerTurn(deck, current_card_index, player))
            return BlackjackResult::dealer_win;

    if (dealerTurn(deck, current_card_index, dealer))
            return BlackjackResult::player_win;

    
    if (player.score==dealer.score) 
    {
        return BlackjackResult::tie;
    } 
    else if (player.score > dealer.score)
    {
        return BlackjackResult::player_win;
    } 
    else {
        return BlackjackResult::dealer_win;
    }
     // Player wins if he has more score than dealer
           

    
}
int main()
{

   auto deck{ createDeck() };
   shuffleDeck(deck);
   //printDeck(deck);

   BlackjackResult winner{ playBlackjack(deck) };

   if (winner==BlackjackResult::player_win) {
       std::cout << "\nNice job, player. You killed it! You are damn good!\n";
   } else if (winner==BlackjackResult::dealer_win){
       std::cout << "\nIdiot. You deserved nothing anyway.\n";
   } else {
       std::cout << "\nWoah, a tie! Who knew....\n";
   }
    return 0;
}