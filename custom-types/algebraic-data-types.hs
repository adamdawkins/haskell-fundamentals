-- Algebraic data types
-- the work horse of Haskell's Type
-- almost every type in Haskell is an algebraic data type

-- data DataTypeName = ConstructorName TypeOfArguments
data Customer = Customer CustomerId String Int

alice :: Customer
alice = Customer (CustomerId 13) "Alice" 42

-- To get data from an algebraic data type, we use pattern matching

getCustomerId :: Customer -> CustomerId
getCustomerId (Customer cust_id _ _ ) = cust_id
-- we can use underscores to wildcard match in patterns, but the data for these markers won't be stored

-- Constructors in Haskell are only a name for binding values together
-- Contstructor names are often the same as the type name
-- fields aren't given names, but defined by their order in the contsructor

-- types needed for file to run
newtype CustomerId = CustomerId Int

customerIdToInt :: CustomerId -> Int
customerIdToInt (CustomerId id) = id

data StringTree = StringTree String [StringTree]

hierachy = StringTree "C:"
            [ StringTree "Program Files" []
            , StringTree "Users"
                [ StringTree "Alice" []]
            , StringTree "Cats" []
            ]

-- algebraic data types
-- package values together in a named container

-- Algebraic Data Type Contsructors
-- They can have multiple constructors
-- No equivalent in OO programming

 -- Bool takes two constructors, False, or True, neither of which have any arguments
data Bool = False | True

-- pattern matching on multiple contsructors
negate :: Bool -> Bool
negate True = False
negate False = True

data DialogResponse = Yes | No | Help | Quit
-- types with multiple contsructors that take no arguments are called 'enums'

-- Maybe types are valuable in Haskell, because it doesn't have any concept of 'null'
data MaybeInt = NoInt | JustInt Int

-- wtf?!
defaultInt :: Int -> MaybeInt -> Int
defaultInt defaultValue NoInt = defaultValue
defaultInt _ (JustInt x) = x

data StringList = EmptyStringList
                | ConsStringList String StringList

lengthStringList :: StringList -> Int
-- if the StringList matches the 'EmptyStringList' constructor, return 0
lengthStringList EmptyStringList = 0
-- if we're matching the ConsStringList contstructor, take the list argument and recursor it through the funciton, and add 1 for the 'string' node
lengthStringList (ConsStringList _ xs) = 1 + lengthStringList xs

-- contstructors for Algebraic data types represent the range of values the Type might have
