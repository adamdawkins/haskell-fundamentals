putStrLn :: String -> IO ()
-- `putStrLn` prints a string to the console with a new line added to the end

getLine :: IO String
-- `getLine` reads a line from the console.

print :: (Show a) => a -> IO ()
-- `print` prints a string representation of a variable to the console.
-- for this to be possible, the object has to belong to the `Show` type class

readFile :: FilePath -> IO String
-- `readFile` takes a FilePath and returns a string containing the entire contents of the file.
-- Haskell's lazy evaulation makes this actually very effecient

writeFile :: FilePath -> String -> IO ()
-- writeFile FilePath String
-- `writeFile` writes a file to the filepath with the contents of the string. 
-- Also done lazily

appendFile :: FilePath -> String -> IO ()
-- `appendFile` is similar to writeFile, but writes the String to the end of the file at FilePath

type FilePath = String


