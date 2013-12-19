-- Records
-- data NameofType = ContstructorName
-- { field definitions (name :: type)}

data Customer = MakeCustomer
  { customerId  :: CustomerId
  , name        :: String
  , luckyNumber :: Int
  }

alice :: Customer
alice = MakeCustomer
  { customerId  = MakeCustomerId 13
  , name        = "Alice"
  , luckyNumber = 42
  }

-- Haskell automatically defines functions for each field
-- ghci > luckyNumber alice  
--      > 42

sally = alice { name = "Sally", luckyNumber = 84 }

-- ghci> name sally
--     > "Sally"
-- ghci> name alice
--     > "Alice"

-- Shortcomings of Records
-- Not extensible
-- No two records can share fields of the same name
-- One of the weakest points in the language, and should usually be avioded in favour of an Algebraic Data Type

-- copied in for ghci to run
newtype CustomerId = MakeCustomerId Int

customerToInt :: CustomerId -> Int
customerToInt (MakeCustomerId i) = i
