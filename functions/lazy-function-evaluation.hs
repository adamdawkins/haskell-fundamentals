-- LAZY FUNCTION EVALUATION

-- no guarantee which of these functions will be called first
-- never evaluates values that aren't used
foo (alpha 1) (beta 2)

-- LAZY INFINITE LISTS

intsFrom n = n : (intsFrom (n+1))
ints = intsFrom 1
