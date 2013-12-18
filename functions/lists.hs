-- ABOUT LISTS

x = [1,2,3]
empty = []

-- a : (cons) operator returns a new list with the value prepended to the list.
y = 0 : x  -- [0, 1, 2, 3]

-- Strings in Haskell are really just lists

str = "abcde"
str' = 'a' : 'b' : 'c' : 'd' : 'e' : []

-- the ++ (concatenation) operator returns a new list with the value appendend to the list

[1,2,3] ++ [4,5] -- [1,2,3,4,5]

-- since strings are lists
"hello" ++ " " ++ "world" -- "hello world"

-- Lists are homogeneous (all items must be of the same type)

-- error = [1,"hello",2]

-- ACCESSING LISTS

-- the `head` function returns the first item in the list
head [1, 2, 3] -- 1
-- the `tail` function returns a new list of all but the first item in the list
tail [1,2,3] -- [2,3]

head (tail[1,2,3]) -- 2

-- the `null` function returns true if passed an empty list
null [] -- true
null [1,2] -- false

-- LIST FUNCTIONS

-- here's a function that doubles every number in a list
double nums = 
  if null nums -- if the list is empty,
  then []      -- return an empty list
  else (2 * (head nums)) : (double (tail nums)) 
  -- double the first number (`head`) and prepend it a new list, the rest of the list is the double function run again, on the `tail` of the original list

-- in production haskell code, the removeOdd function can be written in one single line
removeOdd nums = 
  if null nums -- base case: if the list is empty,
  then []      -- then return an empty list
  else
    if (mod (head nums) 2) == 0 -- even?
    then (head nums) : (removeOdd (tail nums))
    else removeOdd (tail nums)
