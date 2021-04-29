#include <iostream>
#include <cassert>

class IntArray
{
private:
	int* m_array{ nullptr};
	int m_length{ 0 };
public:
	IntArray(int length)
	: m_length{ length }
	{
		assert((length > 0) && "Invalid Input: Length must be a positive integer");
		
		// Allocate m_length amount of integers
		m_array = new int[m_length]{};
		
		
	}
	
	
	// Our Copy Constructor
	IntArray(const IntArray& source)
	{
		deepCopy(source);
	}
	
	~IntArray()
	{
		delete[] m_array;
	} // goes out of scope here, no need to set to nullptr
	
	// We HAVE to overload the subscript opertor to subscript the object directly
	int& operator[] (int index);
	
	// We must overload the << operator for use in the main function
	friend std::ostream& operator<< (std::ostream& out, const IntArray& arr);
	
	// Deep Copy for memory safety for copy initialization.
	void deepCopy(const IntArray& source);
	
	IntArray& operator=(const IntArray& source);
};

std::ostream& operator<< (std::ostream& out, const IntArray& arr)
{
	for(int i{ 0 }; i < arr.m_length; ++i) 
	{
		out << arr.m_array[i] << ' ';
	}
	return out;
}

// NON-CONST | can be used for assigmnent
int& IntArray::operator[] (int index)
{
	assert(index >= 0 && index < m_length);
	
	return m_array[index];
}


void IntArray::deepCopy(const IntArray& source)
{
	// First, deallocate any stuff the copy is holding
	delete[] m_array;
	
	// Set to nullptr to avoid dangling pointers
	m_array = nullptr; 
	
	m_length = source.m_length;
	
	// Only if m_array isn't a nullptr can we copy it.
	if (source.m_array)
	{
		// Allocate memory for our copy
		m_array = new int[m_length];
		
		// do the copy
		for (int i{ 0 }; i < m_length; ++i)
		{
			m_array[i] = source.m_array[i];
		}

	}
}


IntArray& IntArray::operator=(const IntArray& source)
{
	// Assure that we are not copying ourselves
	if (this != &source)
	{
		deepCopy(source);
	}
	
	return *this;
}
IntArray fillArray()
{
	IntArray a(5);
 
	a[0] = 5;
	a[1] = 8;
	a[2] = 2;
	a[3] = 3;
	a[4] = 6;
 
	return a;
}

int main()
{
	IntArray a{ fillArray() };
	std::cout << a << '\n';
	
	auto& ref{ a };
	
	a = ref;
	
	IntArray b(1); 
	b = a;
	
	std::cout << b << '\n';
}