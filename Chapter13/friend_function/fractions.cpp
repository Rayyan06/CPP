#include <iostream>
#include <cassert>
#include <limits>

class Fraction
{
private:
	int m_numerator{ 0 };
	int m_denominator{ 1 };

public:
	Fraction(int numerator=0, int denominator=1)
	{
		assert((denominator != 0) && "Zero division error. ");
		m_numerator = numerator;
		m_denominator = denominator;
		
		reduce();
	}
	
	void print() const 
	{
		std::cout << m_numerator << "/" << m_denominator << '\n';
	}
	
	static int gcd(int a, int b) {
    	return (b == 0) ? (a > 0 ? a: -a) : gcd(b, a % b);
	}
public:
	
	void reduce() 
	{
		if(m_numerator != 0) {
			int gcd{ Fraction::gcd(m_numerator, m_denominator) };
			m_numerator /= gcd;
			m_denominator /= gcd;
		} 
	}
	
	
	
	friend Fraction operator*(const Fraction& f1, const Fraction& f2);
	friend Fraction operator*(const Fraction& f, int value);
	friend Fraction operator*(int value, const Fraction& f);
	
	friend std::ostream& operator<< (std::ostream& out, const Fraction& f);
	friend std::istream& operator>> (std::istream& in, Fraction& f);
	
};

Fraction operator*(const Fraction& f1, const Fraction& f2)
{
	return { f1.m_numerator * f2.m_numerator, f1.m_denominator * f2.m_denominator};
}

Fraction operator*(const Fraction& f, int value)
{
	return { f.m_numerator * value, f.m_denominator };
}

Fraction operator*(int value, const Fraction& f)
{
	return {f.m_numerator * value, f.m_denominator}; // Overloaded :)
}

std::ostream& operator<< (std::ostream& out, const Fraction& f)
{
	out << f.m_numerator << '/' << f.m_denominator;
	return out;
}

std::istream& operator>> (std::istream& in, Fraction& f)
{
	// Overwrite the values of f
	in >> f.m_numerator;
 
	// Ignore the '/' separator
	in.ignore(std::numeric_limits<std::streamsize>::max(), '/');
 
	in >> f.m_denominator;
 
	// Since we overwrite the existing f1, we need to reduce again
	f.reduce();
 
	return in;
}


int main()
{
	Fraction f1{};
	std::cout << "Enter fraction 1: ";
	std::cin >> f1;
 
	Fraction f2{};
	std::cout << "Enter fraction 2: ";
	std::cin >> f2;
 
	std::cout << f1 << " * " << f2 << " is " << f1 * f2 << '\n'; // note: The result of f1 * f2 is an r-value
 

	
	return 0;
}