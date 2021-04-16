cd $1/$2

echo "$1/$2"
echo "Compiling Program $3"
g++ -pthread -std=c++2a $3.cpp -o $3

