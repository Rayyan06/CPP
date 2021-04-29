#include <iostream>
#include <string>
#include <cassert>



class Mystring 
{
private:
	std::string m_string{};
public:
	Mystring(const std::string string = {}) :
	m_string{ string }
	{}
	std::string operator()(int index, int len)
	{
		assert(index >= 0);
		assert(index + len <= static_cast<int>(m_string.length()) && "Mystring::operator(int, int): Substring is out of range");
		
		std::string ret{};
		for (int count{ 0 }; count < len; ++count)
		{
			ret += m_string[static_cast<std::string::size_type>(index + count)];
		}
		


		return ret;
	}
};

	


int main()
{
    Mystring string{ "Hello, world!" };
    std::cout << string(7, 5) << '\n'; // start at index 7 and return 5 characters
 
    return 0;
}
