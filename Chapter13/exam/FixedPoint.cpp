#include <cstdint>
#include <iostream>
#include <cmath>

class FixedPoint2 
{
private:
	std::int_least16_t m_number{ 0 };
	std::int_least8_t m_decimal_digits{0};
public:
	FixedPoint2(std::int_least16_t number = 0, std::int_least8_t decimal_digits = 0) :
	m_number{ number }, m_decimal_digits{ decimal_digits }
	{
		// If the sign of the decimal don't match up, with the sign of the number, then fix it
		// The case which decimal is > 99 or less than -99 should be handled.
		if (m_number < 0 || m_decimal_digits < 0)
		{
			// Make sure base is negative
			if (m_number > 0)
				m_number = -m_number;
			// Make sure decimal is negative
			if (m_decimal_digits > 0)
				m_decimal_digits = -m_decimal_digits;
			
		}
	}
	
	FixedPoint2(double d):
	// let d = 
		m_number{ 
			static_cast<std::int_least16_t>(std::round(d * 100) / 100) 
		},
		m_decimal_digits{ 
			static_cast<std::int_least8_t>(std::round(d * 100) - m_number * 100) 
		}
	{
	}

	
	operator double() const { 
		// Now since we have the same signs, we can easily do the math. HURRAH!
		return m_number + 
			static_cast<double>(m_decimal_digits)/100.0;
	}
	// Overloading the type cast also makes overloading the << operator easier.
	friend std::istream& operator>> (std::istream &in, FixedPoint2& fp2);
	friend std::ostream& operator<< (std::ostream& out, const FixedPoint2& fp2);
		
	// Overload the bool operator
	friend bool operator== (const FixedPoint2& fp1, const FixedPoint2& fp2);
	
	FixedPoint2 operator-() const
	{
		return {
			static_cast<std::int_least16_t>(-m_number),
			static_cast<std::int_least8_t>(-m_decimal_digits)
		}
	}

};

std::ostream& operator<< (std::ostream& out, const FixedPoint2& fp2)
{
	out 
		<< static_cast<double>(fp2);
	return out;
}

// Non-Const so we can edit the values
std::istream& operator>> (std::istream& in, FixedPoint2& fp2)
{
	double d{};
	in >> d;
	fp2 = FixedPoint2{ d };
	return in;
}

// So it can be chained!
FixedPoint2 operator+(const FixedPoint2& fp1, const FixedPoint2& fp2)
{
	return { 
		static_cast<double>(fp1)
		+ static_cast<double>(fp2)
	};	
}

bool operator==( const FixedPoint2& fp1, const FixedPoint2& fp2 )
{
	return (fp1.m_number == fp2.m_number)
		&& (fp1.m_decimal_digits == fp2.m_decimal_digits);
}


void testAddition()
{
	// h/t to reader Sharjeel Safdar for this function
	std::cout << std::boolalpha;
	std::cout << (FixedPoint2{ 0.75 } + FixedPoint2{ 1.23 } == FixedPoint2{ 1.98 }) << '\n'; // both positive, no decimal overflow
	std::cout << (FixedPoint2{ 0.75 } + FixedPoint2{ 1.50 } == FixedPoint2{ 2.25 }) << '\n'; // both positive, with decimal overflow
	std::cout << (FixedPoint2{ -0.75 } + FixedPoint2{ -1.23 } == FixedPoint2{ -1.98 }) << '\n'; // both negative, no decimal overflow
	std::cout << (FixedPoint2{ -0.75 } + FixedPoint2{ -1.50 } == FixedPoint2{ -2.25 }) << '\n'; // both negative, with decimal overflow
	std::cout << (FixedPoint2{ 0.75 } + FixedPoint2{ -1.23 } == FixedPoint2{ -0.48 }) << '\n'; // second negative, no decimal overflow
	std::cout << (FixedPoint2{ 0.75 } + FixedPoint2{ -1.50 } == FixedPoint2{ -0.75 }) << '\n'; // second negative, possible decimal overflow
	std::cout << (FixedPoint2{ -0.75 } + FixedPoint2{ 1.23 } == FixedPoint2{ 0.48 }) << '\n'; // first negative, no decimal overflow
	std::cout << (FixedPoint2{ -0.75 } + FixedPoint2{ 1.50 } == FixedPoint2{ 0.75 }) << '\n'; // first negative, possible decimal overflow
}
 
int main()
{
	testAddition();
 
	FixedPoint2 a{ -0.48 };
	std::cout << a << '\n';
 
	std::cout << -a << '\n';
 
	std::cout << "Enter a number: "; // enter 5.678
	std::cin >> a;
	
	std::cout << "You entered: " << a << '\n';
 
	return 0;
}