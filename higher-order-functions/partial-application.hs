-- Partial application

foo_1_2 = foo 1 2

-- foo_1_2 3 -- 6

pass x f = f x
pass3 = pass 3 -- only define x for `pass`, so it'll now wait for another partial

-- Arguments must be given in order
