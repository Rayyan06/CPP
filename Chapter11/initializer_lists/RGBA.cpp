#include <iostream>
#include <cstdint>


class RGBA {
private:
    using color_t = std::uint_fast8_t;
    color_t m_red;
    color_t m_green;
    color_t m_blue;
    color_t m_alpha;

public:
    RGBA(color_t red = 0, color_t green = 0, color_t blue = 0, color_t alpha = 255) 
    : m_red{ red }, 
      m_green{ green }, m_blue{ blue }, m_alpha{ alpha }
    {
    }

    void print()
    {
        std::cout 
        << "r=" << static_cast<int>(m_red)
        << " g=" << static_cast<int>(m_green)
        << " b=" << static_cast<int>(m_blue)
        << " a=" << static_cast<int>(m_alpha) << '\n';
    }

        
};


int main()
{
    RGBA teal{ 0, 127, 127};
    std::cout << '\n';
    teal.print();
    return 0;
}