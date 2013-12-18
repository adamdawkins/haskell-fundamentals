-- maps a function to each element in a list
map length ["hello", "abc", "1234"] -- [5,3,4]

map (1+) [1,3,5,7] -- [2,4,6,8]

double = map (2*)
