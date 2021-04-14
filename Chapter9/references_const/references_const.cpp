int main()
{
    const int value{ 5 };
    const int& ref{ value };// const reference

    int x{ 5 };
    const int& ref1{ x }; // fine, x is an l-value

    const int y{ 7 };
    const int& ref2{ y }; // okey, y is a const l-value
    const int &ref3{ 6 }; // okey, 6 is an r-value

    x = 6; // fine(value is non-const)
    // ref1 = 8 illegal -- ref is const
}