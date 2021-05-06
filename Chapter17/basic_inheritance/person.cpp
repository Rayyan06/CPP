#include <string>
#include <iostream>

class Person
{
private:
	std::string m_name{};
	int m_age{};
	
public:
	Person(const std::string& name = "", int age = 0)
		: m_name{ name }, m_age{ age }
	{
		
	}
	
	const std::string& getName() const { return m_name; }
	int getAge() const { return m_age; }
};

class BaseballPlayer : public Person
{
// In this example, we're making our members public for simplicity
private:
    double m_battingAverage{};
    int m_homeRuns{};
public:
 
    BaseballPlayer(const std::string& name, int age, double battingAverage = 0.0, int homeRuns = 0)
       : Person{ name, age }, m_battingAverage{battingAverage}, m_homeRuns{homeRuns}
    {
    }
};

 
// Employee publicly inherits from Person
/*
Create an Employee class that inherits a protected class
Person with the following additional members:
Account;
Add to account function;
Withdrawal function;

Thanks for help !
*/
class Employee: public Person
{
public:
    double m_hourlySalary{};
    long m_employeeID{};
 
    Employee(double hourlySalary = 0.0, long employeeID = 0)
        : m_hourlySalary{hourlySalary}, m_employeeID{employeeID}
    {
    }
 
    void printNameAndSalary() const
    {
        std::cout << m_name << ": " << m_hourlySalary << '\n';
    }
};

class Supervisor: public Employee
{
public:
    // This Supervisor can oversee a max of 5 employees
    long m_overseesIDs[5]{};
};

int main()
{
    // Create a new BaseballPlayer object
    BaseballPlayer joe{};
    // Assign it a name (we can do this directly because m_name is public)
    joe.m_name = "Joe";
    // Print out the name
    std::cout << joe.getName() << '\n'; // use the getName() function we've acquired from the Person base class
	
	
	 Employee frank{20.25, 12345};
      frank.m_name = "Frank"; // we can do this because m_name is public
 
    frank.printNameAndSalary();
	
 
    return 0;
}