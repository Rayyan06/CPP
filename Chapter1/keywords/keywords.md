# Keywords and naming identifiers

## Keywords

Here is a list of all the C++ keywords (through C++ 20): [KEYWORDS](https://www.learncpp.com/cpp-tutorial/keywords-and-naming-identifiers/)


## Variables

There are also rules on how you should name variables.

Variable name | Good/Bad | Explanation
--------|-----------
int ccount |	Bad	|What does the c before “count” stand for?
int customerCount|	Good|	Clear what we’re counting
int i|	Either|	Okay if use is trivial, bad otherwise
int index|	Either|	Okay if obvious what we’re indexing
int totalScore|	Either|	Okay if there’s only one thing being scored, otherwise too ambiguous
int _count|	Bad	|Do not start names with underscore
int count	|Either|	Okay if obvious what we’re counting
int data	|Bad|	What kind of data?
int time	|Bad|	Is this in seconds, minutes, or hours?
int minutesElapsed|	Good	|Descriptive
int value1, value2	|Either|	Can be hard to differentiate between the two
int numApples	|Good	|Descriptive
int monstersKilled|	Good	|Descriptive
int x, y|	Either|	Okay if use is trivial, bad otherwise

## Quiz time!

1. Based on how you should name a variable, indicate whether each variable name is correct (follows convention), incorrect (does not follow convention), or invalid (will not compile), and why.

a) `int sum;` // assume it’s obvious what we’re summing

> correct

b) `int _apples`;
> incorrect (should not start with underscore)

c) `int VALUE;`
> incorrect (should start with lowercase)

d) `int my variable name`
> invalid (no spaces allowed)
e) `int TotalCustomers`;
> incorrect (should start with lowercase)

f) `int void;`
> invalid (uses keyword)

g) `int numFruit;`
> correct

h) `int 3some;`
> incorrect (starts with a number)

i) `int meters_of_pipe;`
> correct