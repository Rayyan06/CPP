#include <iostream>
#include <string>
#include <vector>
#include <algorithm> // for std::sort, std::for_each.
#include <functional>
#include <numeric> // for numeric_limits

struct Student 
{
    std::string first_name;
    int grade;
};

void ignoreLine() 
{
    std::cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
}

int getNumStudents() 
{
    int numStudents{ 0 };
    do {
        std::cout << "How many students do you want to enter? ";
        std::cin >> numStudents;
        if (std::cin.fail()) 
        {
            std::cin.clear();
            ignoreLine();
            std::cout << "Please enter a valid positive integer\n";
        }

    } while(numStudents <= 0);
    return numStudents;
}

Student getStudent() 
{
    Student student{};

    do {
        std::cout <<     "First Name: ";
        std::cin  >> student.first_name;
        if (std::cin.fail())
        {
            std::cin.clear();
            ignoreLine();
            std::cout << "Please enter a valid name\n";
            continue;
        }

        reEnterGrade:
        
        std::cout << "Grade(0 - 100): ";
        std::cin  >>      student.grade;
        if (std::cin.fail())
        {
            std::cin.clear();
            ignoreLine();
            std::cout << "Please enter a valid integer between 0 and 100\n";
            goto reEnterGrade;
        } 
        else if ((student.grade < 0 )||(student.grade > 100)) 
        {
            ignoreLine();
            std::cout << "Please enter a grade between 0 and 100\n";
            goto reEnterGrade;
        } 
        else {
            ignoreLine();
            break;
        } ; // No error in neither
        
    } while(true);
    return student;

}

std::vector<Student> getStudents() 
{

    using vector_type = std::vector<Student>;

    int numberOfStudents{ getNumStudents()};

    // Create Vector with numstudents elements
    vector_type students(static_cast<vector_type::size_type>(numberOfStudents));

    std::cout << "\nEnter the names and grades for the students in pairs. \n";
    std::cout << "For example: \nJoe\n86\n";
    std::cout << "---Enter Below---\n";

    int studentNumber{ 1 };
    for (/*For C++ 20: int i{ 0 }; */ auto& student: students)
    {
       std::cout << "----Student " << studentNumber << "----\n";
       student = getStudent();
       ++studentNumber;
    }
    return students;
}

bool compareStudentGrades(const Student& A, const Student& B)
{
    return (A.grade > B.grade);
}


void printStudent(const Student& student) 
{
    std::cout << student.first_name << " got a grade of " << student.grade << "\n";
}


int main()
{
    auto students{ getStudents()};

    std::sort(students.begin(), students.end(), compareStudentGrades); // Sort the students

    std::for_each(students.begin(), students.end(), printStudent); // Print em all



    return 0;
}