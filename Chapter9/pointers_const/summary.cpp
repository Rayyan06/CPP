int main()
{
 
    const int constValue{ 5 };
    const int* ptr{ &constValue }; // a non-const pointer pointer towards a const int
    // *ptr = 8 invalid, because we can't change a const value

    int nonConstValue{ 5 };
    const int* ptr2{ &nonConstValue }; // still okay
    
    return 0;
 
}