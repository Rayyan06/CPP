#include <iostream>
#include <string>
#include <functional> // for std::reference_wrapper
#include <vector>
 
class Teacher
{
private:
  std::string m_name{};
 
public:
  Teacher(const std::string& name)
      : m_name{ name }
  {
  }
 
  const std::string& getName() const { return m_name; }
};
 
class Department
{
public:
	using teachers_t = std::vector<std::reference_wrapper<const Teacher>>;
private:
  teachers_t m_teachers; // This dept holds many teachers
 
public:
  Department(const teachers_t& teachers)
      : m_teachers{ teachers }
  {
  }

  Department() = default;
	
  void add(const Teacher& t)
  {
	  m_teachers.push_back(t);
  }

  friend std::ostream& operator<< (std::ostream& out, const Department& d);
};

std::ostream& operator<< (std::ostream& out, const Department& d)
{
	out << "Department: ";
	for (const auto& teacher : d.m_teachers)
		out << teacher.get().getName() << ' ';
	out << '\n';
	return out;
}
 

int main()
{
  // Create a teacher outside the scope of the Department
  Teacher t1{ "Bob" };
  Teacher t2{ "Frank" };
  Teacher t3{ "Beth" };
 
  {
    // Create a department and add some Teachers to it
    Department department{}; // create an empty Department
 
    department.add(t1);
    department.add(t2);
    department.add(t3);
 
    std::cout << department;
 
  } // department goes out of scope here and is destroyed
 
  std::cout << t1.getName() << " still exists!\n";
  std::cout << t2.getName() << " still exists!\n";
  std::cout << t3.getName() << " still exists!\n";
 
  return 0;
}