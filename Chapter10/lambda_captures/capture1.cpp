int i{}; // global 
static int j{}; // static
 
int getValue()
{
  return 0;
}
 
int main()
{
  int a{};
  constexpr int b{}; // compile time
  static int c{}; // static
  static constexpr int d{}; // static and compile
  const int e{}; // constexpr
  const int f{ getValue() };
  static const int g{};  // yes
  static const int h{ getValue() };  // yes
 
  [a, b, f](){
    // Try to use the variables without explicitly capturing them.
    a;
    b;
    c;
    d;
    e;
    f;
    g;
    h;
    i;
    j;
  }();
 
  return 0;
}