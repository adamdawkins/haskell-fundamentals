-- Newtype
-- Newtypes are like synonyms, but they are not interchangable
-- create a new type that is represented by an existing type
-- new type and representation cannot be mixed up
-- This allows you to apply semantic meaning that is verified by the compiler

-- newtype NewTypeName = Constructor InitialType
newtype CustomerId = MakeCustomerId Int

----- bad example
-- badCustomer :: CustomerId
-- badCustomer = 13

-- errors because we didn't use the constructor
-- ghci > "No instance for (Num CustomerId) arising from the literal `13'
--        Possible fix: add an instance declaration for (Num Customer Id)
--        In the expression: 13
--        In an equation for `badCustomer': badCustomer = 13
--
-------------

customer :: CustomerId
customer = MakeCustomerId 13

customerToInt :: CustomerId -> Int
customerToInt (MakeCustomerId i) = i
