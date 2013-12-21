dummyGetLine :: IO String
dummyGetLine = 
  return "I'm not really doing anything"

--main :: IO ()
--main = do 
--  line <- dummyGetLine
--  putStrLn line

-- `return` does not 'return' the value from the function in an OO programming sense.
-- `return` is a function that takes an item and returns an IO action containing that item.
-- return :: a -> IO a

-- `return` is very useful when combining together multiple IO values

promptInfo :: IO (String, String)
promptInfo = do
  putStrLn "What is your name?"
  name <- getLine
  putStrLn "What is your favourite colour?"
  colour <- getLine
  return (name, colour)

main :: IO ()
main = do
  (name,colour) <- promptInfo
  putStrLn ("Hello " ++ name)
  putStrLn ("I like " ++ colour ++ " too!")
