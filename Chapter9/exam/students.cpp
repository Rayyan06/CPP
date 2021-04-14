#include <iostream>
#include <string>
#include <vector>
#include <algorithm>
#include <functional>

struct Student 
{
    std::string first_name;
    int grade;
};

int getNumStudents() 
{
    std::cout << "How many students do you want to enter? ";
    int numStudents{};
    std::cin >> numStudents;
    return numStudents;
}

Student getStudent() 
{
    Student student{};

    std::cout <<     "First Name: ";
    std::cin  >> student.first_name;
    std::cout << "Grade(0 - 100): ";
    std::cin  >>      student.grade;

    return student;

}

void getStudents(std::vector<Student>& students) 
{
    std::cout << "\nEnter the names and grades for the students in pairs. \n";
    std::cout << "For example: \nJoe\n86\n";
    std::cout << "Enter Below:\n";
    for (auto& student: students)
    {
       student = getStudent();
    }
}

bool compareStudentGrades(Student A, Student B)
{
    return (A.grade > B.grade);
}


void printStudent(Student student) 
{
    std::cout << student.first_name << " got a grade of " << student.grade << "\n";
}


int main()
{
    int num_students{ getNumStudents() };

    std::vector <Student> students;
    students.resize(num_students);

    getStudents(students);

    std::sort(students.begin(), students.end(), compareStudentGrades); // Sort the students

    std::ranges::for_each(students, printStudent); // Print em all



    return 0;
}