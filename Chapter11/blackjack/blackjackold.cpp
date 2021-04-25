#include <iostream>
#include.mf

struct Card
{
  CardRank rank{};
  CardSuit suit{};
};
 
struct Player
{
  int score{};
};
 
using deck_type = std::array<Card, 52>;
using index_type = deck_type::size_type;
 
// Maximum score before losing.
constexpr int maximumScore{ 21 };
 
// Minium score that the dealer has to have.
constexpr int minimumDealerScore{ 17 };
 
void printCard(const Card& card)
{
  switch (card.rank)
  {
  case CardRank::RANK_2:
    std::cout << '2';
    break;
  case CardRank::RANK_3:
    std::cout << '3';
    break;
  case CardRank::RANK_4:
    std::cout << '4';
    break;
  case CardRank::RANK_5:
    std::cout << '5';
    break;
  case CardRank::RANK_6:
    std::cout << '6';
    break;
  case CardRank::RANK_7:
    std::cout << '7';
    break;
  case CardRank::RANK_8:
    std::cout << '8';
    break;
  case CardRank::RANK_9:
    std::cout << '9';
    break;
  case CardRank::RANK_10:
    std::cout << 'T';
    break;
  case CardRank::RANK_JACK:
    std::cout << 'J';
    break;
  case CardRank::RANK_QUEEN:
    std::cout << 'Q';
    break;
  case CardRank::RANK_KING:
    std::cout << 'K';
    break;
  case CardRank::RANK_ACE:
    std::cout << 'A';
    break;
  default:
    std::cout << '?';
    break;
  }
 
  switch (card.suit)
  {
  case CardSuit::SUIT_CLUB:
    std::cout << 'C';
    break;
  case CardSuit::SUIT_DIAMOND:
    std::cout << 'D';
    break;
  case CardSuit::SUIT_HEART:
    std::cout << 'H';
    break;
  case CardSuit::SUIT_SPADE:
    std::cout << 'S';
    break;
  default:
    std::cout << '?';
    break;
  }
}
 
int getCardValue(const Card& card)
{
  if (card.rank <= CardRank::RANK_10)
  {
    return (static_cast<int>(card.rank) + 2);
  }
 
  switch (card.rank)
  {
  case CardRank::RANK_JACK:
  case CardRank::RANK_QUEEN:
  case CardRank::RANK_KING:
    return 10;
  case CardRank::RANK_ACE:
    return 11;
  default:
    assert(false && "should never happen");
    return 0;
  }
}
 
void printDeck(const deck_type& deck)
{
  for (const auto& card : deck)
  {
    printCard(card);
    std::cout << ' ';
  }
 
  std::cout << '\n';
}
 
deck_type createDeck()
{
  deck_type deck{};
 
  index_type card{ 0 };
 
  auto suits{ static_cast<index_type>(CardSuit::MAX_SUITS) };
  auto ranks{ static_cast<index_type>(CardRank::MAX_RANKS) };
 
  for (index_type suit{ 0 }; suit < suits; ++suit)
  {
    for (index_type rank{ 0 }; rank < ranks; ++rank)
    {
      deck[card].suit = static_cast<CardSuit>(suit);
      deck[card].rank = static_cast<CardRank>(rank);
      ++card;
    }
  }
 
  return deck;
}
 
void shuffleDeck(deck_type& deck)
{
  static std::mt19937 mt{ static_cast<std::mt19937::result_type>(std::time(nullptr)) };
 
  std::shuffle(deck.begin(), deck.end(), mt);
}
 
bool playerWantsHit()
{
  while (true)
  {
    std::cout << "(h) to hit, or (s) to stand: ";
 
    char ch{};
    std::cin >> ch;
 
    switch (ch)
    {
    case 'h':
      return true;
    case 's':
      return false;
    }
  }
}
 

bool playBlackjack(const deck_type& deck)
{
  index_type nextCardIndex{ 0 };
 
  Player dealer{ getCardValue(deck[nextCardIndex++]) };
 
  std::cout << "The dealer is showing: " << dealer.score << '\n';
 
  Player player{ getCardValue(deck[nextCardIndex]) + getCardValue(deck[nextCardIndex + 1]) };
  nextCardIndex += 2;
 
  if (playerTurn(deck, nextCardIndex, player))
  {
    return false;
  }
 
  if (dealerTurn(deck, nextCardIndex, dealer))
  {
    return true;
  }
 
  return (player.score > dealer.score);
}
 
int main()
{
  auto deck{ createDeck() };
 
  shuffleDeck(deck);
 
  if (playBlackjack(deck))
  {
    std::cout << "You win!\n";
  }
  else
  {
    std::cout << "You lose!\n";
  }
 
  return 0;
}
