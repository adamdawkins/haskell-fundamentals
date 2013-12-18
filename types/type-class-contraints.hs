length' :: [a] -> Int
length' [] = 0
length' (x: xs) = 1 + length' xs

-- this isn't true for all types so isn't valid
--badSum :: [a] -> a
--badSum [] = 0
--badsum (x: xs) = x + sum xs

-- when you don't know what type something should be, write it without type and ask the compiler

sum' [] = 0
sum' (x : xs) = x + sum' xs
-- gchi > :t sum'
-- sum' :: Num a => [a] -> a

-- The `Num` constraint suggests the type of `a` must be a number
-- Num is a type class, which suggests 'all types which can do numeric things'

sum'' :: Num a => [a] -> a
sum'' [] = 0
sum'' (x : xs) = x + sum'' xs

-- The `Show` type class repesents all types that can be 'shown'
show :: Show a => a -> [Char]


-- > :t 3
-- 3 :: Num a => a
-- > :t 3.1
-- 3.1 :: Fractional a => a
