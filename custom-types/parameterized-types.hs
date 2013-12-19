-- Parameterized Types
-- hold values of any type
-- lists, for example, can be a list of Ints, Chars, etc.
-- closely linked to generics and polymorphic functions

data Maybe a = Just a | Nothing

x || Maybe Int
x = Nothing

--  understand as fromMaybe(a, Maybe a) -> a
fromMaybe :: a -> Maybe a -> a
fromMaybe defaultVal Nothing = defaultVal
fromMaybe _ (Just x) = x

-- this is how Lists are contsructed in Haskell
data List a = Empty | Cons a (List a)

