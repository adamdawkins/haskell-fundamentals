-- higher order functions are functions that accept functions as arguments
-- Functions as values

-- `pass3` accepts a function as an argument and passes 3 to the function
pass3 f = f 3
add1 x = x + 1

-- pass3 add1 -- 4 -- add1 3 = 3 + 1 + 4

compose f g x = f (g x)
mult2 x = 2 * x

-- compose add1 mult2 4 -- 8

-- support we want a function that always returns 7
always7 x = 7
always7' = const 7
