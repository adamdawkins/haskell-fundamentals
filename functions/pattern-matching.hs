-- pattern matching
fst' (a,b) = a
snd' (a,b) = b

-- pattern matching lists
null' [] = True
null' (x : xs) = False

-- functions like head make things quite fragile
-- pattern matching can make things more robust
head' (x : xs) = x
head' [] = error "head of empty list"

double [] = []
double (x : xs) = (2 * x) : (double xs)


