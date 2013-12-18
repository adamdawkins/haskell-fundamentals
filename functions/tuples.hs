-- tuples allow data to packages together

-- a single tuple can hold many different types

x = (1, "hello")


-- tuples       vs lists
-- ( ... )        | [...]
-- differnt types | same type
-- fixed length   | arbirtary length

-- ACCESSING TUPLES

-- the `fst` function returns the first value from a tuple
fst (1, "hello") -- 1

-- the `snd` function returns the second element from a tuple
snd (1, "hello") -- "hello"
