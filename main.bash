cd $1/$2

echo "$1/$2"
clang++ -pthread -std=c++2a $3.cpp -o $3

chmod 744 $3

echo "Running Program $3"
./$3