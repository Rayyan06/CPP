#include <iostream>
#include <iterator> // for std::size
#include <algorithm>
bool isVowel(char ch)
{
  switch (ch)
  {
  case 'A':
  case 'a':
  case 'E':
  case 'e':
  case 'I':
  case 'i':
  case 'O':
  case 'o':
  case 'U':
  case 'u':
    return true;
  default:
    return false;
  }
}
 
int main()
{
  char name[]{ "Mollie" };
  int arrayLength{ static_cast<int>(std::size(name)) };
  auto numVowels{ 
      std::count_if(
          std::begin(name),
        std::end(name),
          isVowel
      )
   };
 
 /*
  for (char *ptr{ name }; ptr < (name + arrayLength); ++ptr)
  {
    if (isVowel(*ptr))
    {
      ++numVowels;
    }
  }
  */
  
 
  std::cout << name << " has " << numVowels << " vowels.\n";
 
  return 0;
}