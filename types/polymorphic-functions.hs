-- A polymorphic function - a function with a type variable

length :: [a] -> Int
length [] = 0
length (x:xs) = length xs + 1

-- Type variable all start lowercase,
-- e.g. a, b, x, foo, hello_123
-- Concrete type names all start uppercase
-- e.g. Double, Int, Char

head :: [a] -> a -- head returns a value of the same type as the arguments
head (x : xs) = x

badHead :: [a] -> b
badHead (x : xs) = x
