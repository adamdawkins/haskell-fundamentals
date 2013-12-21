-- interact :: (String -> String) -> IO ()
-- takes the entire program as input, and laziy loads it for output


reverseLines :: String -> String
reverseLines input =
  unlines (map reverse (lines input))

main :: IO ()
main = interact reverseLines
