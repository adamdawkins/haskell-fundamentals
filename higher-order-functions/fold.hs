--foldl (+) 0 [1,2,3,4]
--10 -- 0 + 1 + 2 + 3 + 4 = 10

foldr (+) 0 [1,2,3,4] -- 10


-- fold runs a specified function on an accumulator and a list

-- foldl           | foldr
-- slightly faster | infinite lists
