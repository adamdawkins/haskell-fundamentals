-- filter tests each element and keeps those that passes
-- filter functionToTest list_to_be_filtered

notNull xs = not (null xs)

filter notNull ["", "abc", "", "hello"] -- ["abc", "hello"]

isEven x = x `mod` 2 == 0
removeOdd = filter isEven
