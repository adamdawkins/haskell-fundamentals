-- pow2 n = 2 to the power n

pow2 n =
  if n == 0
  then 1
  else 2 * (pow2 (n-1))

repeatString str n =
  if n == 0
  then ""
  else str ++ (repeatString str (n-1))


-- Recursion replaces loops
-- Given Java function
-- int pow2(int n) {
--   int x = 1;
--   for(int i = 0; i < n; i++)
--     x *= 2;
--   return x;
--   Haskell:

pow2 n = pow2loop n 1 0
  pow2loop n x i = 
  if i < n 
  then pow2loop n (x*2) (i+1)
  else x
