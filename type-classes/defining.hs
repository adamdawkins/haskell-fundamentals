-- Defining Type Classes

class Eq a where
  (==) :: a -> a -> Bool
  (/=) :: a -> a -> Bool
  
  -- default expectations
  -- circular, but as long as one is defined, it can derive the other
  x /= y = not (x == y)
  x == y = not (x /= y)

-- for Eq the *Minimum complete defition is either (==) or (/=)

-- Reason to create Type Classes
data Point2 = Point2 Double Double
  deriving Show
data Point3 = Point3 Double Double Double
  deriving Show

class Measurable a where
  distance :: a -> a -> Double

instance Measurable Point2 where
  distance = .. 

-- Subclasses of Type Classes
-- e.g. Ord (<), (>)... is a sub class of Eq, because you can't test greatetr than etc, if youc ant' define euality

class (Eq a) => Ord a where
  (<)     :: a -> a -> Bool
  (>)     :: a -> a -> Bool
  (<=)    :: a -> a -> Bool
  (>=)    :: a -> a -> Bool
  compare :: a -> a -> Ordering
  max     :: a -> a -> a
  min     :: a -> a -> a

data Ordering = LT | EQ | GT

class (Measurable a, Show a) => Directions a where
  getDirections :: a -> a -> String
  getDirections p1 p2 =
    "Go from " ++ (show p1) ++
    "Toward" ++ (show p2)
 
