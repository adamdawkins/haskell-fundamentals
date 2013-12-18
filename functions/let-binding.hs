-- `let` defines a local variable, but it can never change

fancySeven =
  let a = 3
  in 2 * a + 1

fancyNine = 
  let x = 4
      y = 5
  in x + y

numEven nums =
  let evenNums = removeOdd nums
  in length evenNums

-- Where    | Let
-- top down | bottom up
