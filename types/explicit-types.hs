-- define the type of a variable with `::`
str :: [Char]
str = "hello"


-- Explicit function types

foo :: Int -> Int
foo x = 2 * x + 1

 -- explicit function types with multiple parameters
add3Int :: Int -> Int -> Int -> Int
add3Int = x y z = x + y + z

-- Type Annotation can be done on the fly (but shouldn't be needed very often)
x = 3 :: Int

-- Type Inference
-- Haskell IS statically typed, but the type is inferred

square x = x * x
-- compiler sees that x is being multiplied, so it must have a numerical type.
-- square "hello" will error at compile time

-- WHEN TO USE EXPLICIT TYPES

-- Communication with people, checked by the compiler
mystery :: [Char] -> Int

-- to track down compiler errors
whats_wrong = x + y
  where x = length "hello"
        y = 6/2 -- int's can't be formed by division

whats_wrong = x + y
  where x :: Int
        x = length "hello"
        y :: Int
        y = 6/2 -- gives more detailed error

-- to help the compiler
x' = show (read "123" :: Int)

-- optimizing performance (only when you have to)
