main :: IO ()
main = do
  line <- getLine
  putStrLn ("You said: " ++ line)

-- getLine :: IO String
-- `<-` binds the results of the IO action to a variable.
-- <- can only be used inside a `do` block,
-- bound variables can only be used within the same `do` block
