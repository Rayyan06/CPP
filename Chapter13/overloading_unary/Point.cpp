#include <iostream>
 
class Point
{
private:
    double m_x, m_y, m_z;
 
public:
    Point(double x=0.0, double y=0.0, double z=0.0):
        m_x{x}, m_y{y}, m_z{z}
    {
    }
 
    // Convert a Point into its negative equivalent
    Point operator- () const;
	
	// Return Point itself
	Point operator+ () const;
 
    // Return true if the point is set at the origin
    bool operator! () const;
	
	// Add two points together using overloaded operator+ binary.
	friend Point operator+(const Point& p1, const Point& p2);
	
	// Prints out point
	friend std::ostream& operator<< (std::ostream& out, const Point& p1);
 	
    double getX() const { return m_x; }
    double getY() const { return m_y; }
    double getZ() const { return m_z; }
};
 
// Convert a Point into its negative equivalent 
Point Point::operator- () const
{
    return Point(-m_x, -m_y, -m_z);
}
 
// Return Point 
Point Point::operator+ () const
{
	return *this;
}
// Return true if the point is set at the origin, false otherwise
bool Point::operator! () const
{
    return (m_x == 0.0 && m_y == 0.0 && m_z == 0.0);
}

Point operator+ (const Point& p1, const Point& p2)
{
	return { p1.m_x + p2.m_x, p1.m_y + p2.m_y, p1.m_z + p2.m_z };
}


std::ostream& operator<< (std::ostream& out, const Point& p1)
{
	out << "Point(" << p1.m_x << ", " << p1.m_y << ", " << p1.m_z << ')';
	return out;
}
int main()
{
    Point point{}; // use default constructor to set to (0.0, 0.0, 0.0)
 
    if (!point)
        std::cout << "point is set at the origin.\n";
    else
        std::cout << "point is not set at the origin.\n";
 	
	Point p1 {3.0, 2.0, 1.0};
	Point p2 { 4.0, 9.0, 3.0 };
	std::cout << p1 + p2 << '\n';
    return 0;
}