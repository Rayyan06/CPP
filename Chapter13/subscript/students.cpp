#include <iostream>
#include <string>
#include <vector>
#include <algorithm>
#include <functional>



struct StudentGrade 
{
	std::string name{};
	char grade{};
	
	
	friend bool operator> (const StudentGrade& sg_1, const StudentGrade& sg_2);
	friend bool operator< (const StudentGrade& sg_1, const StudentGrade& sg_2);
};

bool operator> (const StudentGrade& sg_1, const StudentGrade& sg_2)
{
	return sg_1.name > sg_2.name;
}

bool operator< (const StudentGrade& sg_1, const StudentGrade& sg_2)
{
	return sg_1.name < sg_2.name;
}


class GradeMap
{
private:
	// Warning:: Ineffecient by nature, we must sort every time we add.
	std::vector<StudentGrade> m_map{};
public:
	char& operator[](const std::string &name);
};

char& GradeMap::operator[](const std::string &name)
{
	/*
	auto found {  // Must be a lower_bound search
		std::lower_bound(m_map.begin(), m_map.end(), name, 
			[](const auto& nameInMap){
				std::cout << nameInMap << '\n';
				return false;
			}
		)
	}
	*/
	// Figgure this out later.
	auto found {
		std::lower_bound(m_map.begin(), m_map.end(), name,
			[](const StudentGrade& s, const std::string& nameToFind) {
				return s.name > nameToFind;
			}
		)
	};
	
	// A name was found, we need to return it.
	if (found != m_map.end())
	{
		
		return found->grade;
		
	}
	// Else, we have a problem..., we will create it 
	m_map.push_back({
		name
	});
		
	char& grade{ m_map.back().grade};
	
	// We must sort now for optimization
	std::sort(m_map.begin(), m_map.end());
	
	// Now we return that grade.
	return grade;
}

int main()
{
	GradeMap grades{};
 
	grades["Joe"] = 'A';
	grades["Frank"] = 'B';
 
	std::cout << "Joe has a grade of " << grades["Joe"] << '\n';
	std::cout << "Frank has a grade of " << grades["Frank"] << '\n';
 
	return 0;
}