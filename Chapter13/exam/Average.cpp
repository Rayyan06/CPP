#include <cstdint>
#include <iostream>

class Average
{
private:
	std::int_least32_t m_sum{};
	std::int_least8_t m_count{};

public:
	// We need a default constructor
	Average() = default;
	
	Average(std::int_least8_t count, std::int_least32_t sum):
	m_count{ count }, m_sum{ sum }
	{
	}
	

	/* The reason I am overloading the binary+= operator is because I need to support 
	* Average += 3, or Average = Average + 3. 
	* This will help a lot instead of a more verbose syntax.
	*/
	
	Average& operator+=(int value);
	
	// We need this friend function to overload the << operator for printing.
	friend std::ostream& operator<< (std::ostream& out, const Average& average);
	
	
	// This function is to calculate the average for primary use in the overloading of operator <<.
	double average() const;
};



Average& Average::operator+=(int value)
{
	m_sum += value;
	++m_count;
	
	return *this; // for += chaining
}
std::ostream& operator<< (std::ostream& out, const Average& average)
{
	out << average.average();
	return out;
}

double Average::average() const
{
	return static_cast<double>(m_sum) / static_cast<double>(m_count);
}
int main()
{
	Average avg{};
		
	avg += 4;
	std::cout << avg << '\n'; // 4 / 1 = 4
	
	avg += 8;
	std::cout << avg << '\n'; // (4 + 8) / 2 = 6
 
	avg += 24;
	std::cout << avg << '\n'; // (4 + 8 + 24) / 3 = 12
 
	avg += -10;
	std::cout << avg << '\n'; // (4 + 8 + 24 - 10) / 4 = 6.5
 
	(avg += 6) += 10; // 2 calls chained together
	std::cout << avg << '\n'; // (4 + 8 + 24 - 10 + 6 + 10) / 6 = 7
	
	Average copy{ avg };
	std::cout << copy << '\n';
	
	return 0;
}