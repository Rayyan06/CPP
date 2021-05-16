#include <iostream>
#include <vector>

class Shape
{
public:
	
	friend std::ostream& operator<<(std::ostream& out, const Shape& p)
	{
		return p.print(out);
	}
	virtual std::ostream& print(std::ostream& out) const = 0;
	
	virtual ~Shape() = default;
};


class Point
{
private:
	int m_x{ 0 };
	int m_y{ 0 };
	int m_z{ 0 };
 
public:
	Point(int x, int y, int z)
		: m_x{x}, m_y{y}, m_z{z}
	{
  
	}
 
	friend std::ostream& operator<<(std::ostream &out, const Point &p)
	{
		out << "Point(" << p.m_x << ", " << p.m_y << ", " << p.m_z << ')';
		return out;
	}
};

class Circle : public Shape
{
private:
	Point m_center;
	int m_radius;
public:
	Circle(const Point& center, int radius)
		: m_center{ center }, m_radius{ radius }
	{
	}
	virtual std::ostream& print(std::ostream& out) const override
	{
		out << "Circle(";
		std::cout << m_center;
		out << ", radius " << m_radius;
		out << ')';
		return out;
	}
	
	int getRadius() const { return m_radius; }
	
	virtual ~Circle() {};
	
};

class Triangle : public Shape
{
private:
	Point m_p1;
	Point m_p2;
	Point m_p3;
public:
	
	
	Triangle(const Point& p1, const Point& p2, const Point& p3)
		: m_p1{ p1 }, m_p2{ p2 }, m_p3{ p3 }
	{
	}
	virtual std::ostream& print(std::ostream& out) const override 
	{
		out << "Triangle(";
		out << m_p1 << ", ";
		out << m_p2 << ", ";
		out << m_p3;
		out << ')';
		return out;
	}
	virtual ~Triangle(){};
};



int getLargestRadius(std::vector<Shape*> v)
{
	int largestRadius{ 0 };
	for (const auto shape : v)
	{
		Circle *c { dynamic_cast<const Circle*>(shape)};
		// Check if c is non null and is a Circle, and if the largestRadius is less than the radius of it
		if (c && (largestRadius < c -> getRadius()))
			largestRadius = c->getRadius();
			
	}
	
	return largestRadius;
}
int main()
{
	std::vector<Shape*> v{
      new Circle{Point{1, 2, 3}, 7},
      new Triangle{Point{1, 2, 3}, Point{4, 5, 6}, Point{7, 8, 9}},
      new Circle{Point{4, 5, 6}, 3}
    };
 
	// print each shape in vector v on its own line here
 	for (const auto* shape : v)
	{
		std::cout << *shape << '\n';
	}
       	std::cout << "The largest radius is: " << getLargestRadius(v) << '\n'; // write this function
 
	// delete each element in the vector here
	for (const auto* shape : v)
	{
		delete shape;
		shape == nullptr;
	}
	
	
 
	return 0;
}
