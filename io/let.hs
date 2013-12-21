main = do
  line1 <- getLine
  line2 <- getLine
  let lines = line1 ++ line2
  putStrLn lines

-- `let` is a special form of let-binding inside the do block that can refer to any variable in scope
