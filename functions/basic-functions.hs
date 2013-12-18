-- function declarations and arguments do not use commas or parenthesies
square x = x * x


posOrNeg x =
  if x >= 0
  then "Positive"
  else "Negative"
