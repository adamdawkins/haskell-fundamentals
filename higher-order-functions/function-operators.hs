-- (.)  - Function composition operator
stringLength = length . show
-- stringLength 120 -> 3

notNull = not . null


-- ($) function application operator
-- can be used to avoid parenthesis
f $ x = f x

f $ g x = f (g x)
