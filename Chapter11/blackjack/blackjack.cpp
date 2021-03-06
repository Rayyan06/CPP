#include <algorithm>
#include <array>
#include <cassert>
#include <ctime>
#include <iostream>
#include <random>


enum class CardSuit
{
  SUIT_CLUB,
  SUIT_DIAMOND,
  SUIT_HEART,
  SUIT_SPADE,
 
  MAX_SUITS
};
 
enum class CardRank
{
  RANK_2,
  RANK_3,
  RANK_4,
  RANK_5,
  RANK_6,
  RANK_7,
  RANK_8,
  RANK_9,
  RANK_10,
  RANK_JACK,
  RANK_QUEEN,
  RANK_KING,
  RANK_ACE,
 
  MAX_RANKS
};



enum class BlackjackResult 
{
	player_win,
	dealer_win,
	tie
};

// Maximum score before losing.
constexpr int maximumScore{ 21 };
 
// Minium score that the dealer has to have.
constexpr int minimumDealerScore{ 17 };
 


class Card
{
   
private:
CardSuit m_suit{};
CardRank m_rank{};

public:
    Card() = default;
    Card(CardRank rank, CardSuit suit)
        : m_rank { rank }, m_suit{ suit }
    {
        
    } 

    void print() const
    {
        switch (m_rank)
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
        
        switch (m_suit)
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
			
	CardSuit suit() const
	{
		return m_suit;
	}

    int value() const
    {
        if (m_rank <= CardRank::RANK_10)
        {
            return (static_cast<int>(m_rank) + 2);
        }
        
        switch (m_rank)
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


};


class Deck
{
public:
    using deck_type = std::array<Card, 52>;
    using index_type = deck_type::size_type; 
private:
	index_type m_cardIndex{ 0 };
    deck_type m_deck;
public:
    Deck()
    {
 
        index_type card{ 0 };
        
        auto suits{ static_cast<index_type>(CardSuit::MAX_SUITS) };
        auto ranks{ static_cast<index_type>(CardRank::MAX_RANKS) };
        
        for (index_type suit{ 0 }; suit < suits; ++suit)
        {
            for (index_type rank{ 0 }; rank < ranks; ++rank)
            {
                m_deck[card] = {static_cast<CardRank>(rank), static_cast<CardSuit>(suit)};
                ++card; 
            }
        }
		
        
    }
	
	const Card& dealCard() 
	{
		assert(m_cardIndex < m_deck.size()); // Should never be over the max
		return m_deck[m_cardIndex++];
	}

    void print() const {
        for (const auto& card : m_deck)
        {
            card.print();
            std::cout << ' ';
        }
        
        std::cout << '\n';
    }

    void shuffle() {
        static std::mt19937 mt{ static_cast<std::mt19937::result_type>(std::time(nullptr)) };
        std::shuffle(m_deck.begin(), m_deck.end(), mt);
		m_cardIndex = 0; // Because we are starting from the top of the deck again.
    }

};


class Player 
{
private:
	int m_score{ 0 };
	int m_numAces{ 0 };
public:
	Card drawCard(Deck& deck) 
	{
		Card cardDealt{ deck.dealCard() };
		m_score += cardDealt.value();
		if (isBust() && (m_numAces > 0))
		{
			m_score -= 10;
			m_numAces--;
			// Ace was dealt
			return Card{ CardRank::RANK_ACE, cardDealt.suit()};
		}
		
		if (cardDealt.value() == 11)
			m_numAces++;
			
		return cardDealt;
	}
	
	bool isBust() const
	{
		return (m_score > maximumScore);
	}
	
	int score() const { return m_score; }

};


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


// Returns true if the player went bust. False otherwise.
bool playerTurn(Deck& deck, Player& player)
{
  while (true)
  {
    std::cout << "You have: " << player.score() << '\n';
 
    if (player.isBust())
    {
	  std::cout << "You busted!\n";
      return true; 
    }
    else
    {
      if (playerWantsHit())
      {
        Card cardDealt = player.drawCard(deck);
		std::cout << "You were dealt a " << cardDealt.value() << " and now have " << player.score() << "\n";
      }
      else
      {
        // The player didn't go bust.
        return false;
      }
    }
  }
}
 
// Returns true if the dealer went bust. False otherwise.
bool dealerTurn(Deck& deck, Player& dealer)
{
  while (dealer.score() < minimumDealerScore)
  {
    dealer.drawCard(deck);
  }
 
	
  if (dealer.isBust()) 
  { 
	  std::cout << "The dealer busted!\n";
	  return true;
  } 
  return false;
}
 


// Returns 
BlackjackResult playBlackJack(Deck& deck)
{
	Player dealer{};
	dealer.drawCard(deck);
	
	std::cout << "The dealer is showing: " << dealer.score() << '\n';
	
	Player player{};
	player.drawCard(deck);
	player.drawCard(deck);
	
	

	if (playerTurn(deck, player))
		return BlackjackResult::dealer_win; // Player has lost
	
	if (dealerTurn(deck, dealer))
		return BlackjackResult::player_win;
	
	if (player.score() == dealer.score())
		return BlackjackResult::tie; // Tied game!
	
	if (player.score() > dealer.score())
		return BlackjackResult::player_win;
	else 
		return BlackjackResult::dealer_win;
}

int main()
{

  Deck deck{};
  deck.shuffle();
	
  switch(playBlackJack(deck)) 
  {
	  case BlackjackResult::player_win:
		  std::cout << "You win!\n";
		  break;
	  case BlackjackResult::dealer_win:
		  std::cout << "You lose!\n";
		  break;
	  case BlackjackResult::tie:
		  std::cout << "You tied with the dealer!\n";
		  break;
  }
	


  return 0;
}