-- a function to test if element 'x' exists in list y : ys
-- equality isn't built into Haskell

elem' :: Eq a => a -> [a] -> Bool
elem' _ [] = False
elem' x (y: ys)
  | x == y    = True
  | otherwise = elem' x ys


data RGB = RGB Int Int Int

colors = [RGB 255 0 0, RGB 0 255 0, RGB 0 0 255]
green = RGB 0 255 0
greenInColors = elem' green colors

-- >ghci greenInColors
-- 'add an instance declaration for (Eq RGB)

instance Eq RGB where
  (RGB r1 g1 b1) == (RGB r2 g2 b2) =
    (r1 == r2) && (g1 == g2) && (b1 == b2)

instance Show RGB where
  show (RGB r g b) =
    "RGB " ++ (show r) ++ " " 
           ++ (show g) ++ " " 
           ++ (show b)

-- Type Class Instances for Parameterized Types
data Maybe' a = Nothing' | Just' a


-- to create an Eq type class instance for the Maybe data type
-- we put a type constraint on a such that it belongs to Eq Type Class
-- this is called the 'context' of the Type Class Instance
-- We then return true if comparing nothing with nothing
-- false if comparing nothing with something
-- false if comparing something with nothing
-- the result of (==) on the arguments if comparing something with something
-- (this last one is why we need to put a type contsraint)

instance (Eq a) => Eq (Maybe' a) where
  Nothing' == Nothing'  = True
  Nothing' == (Just' _) = False
  (Just' _) == Nothing' = False
  (Just' x) == (Just' y) = x == y

