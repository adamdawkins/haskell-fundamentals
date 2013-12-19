-- Deriving Type Class Instances

data RGB = RGB Int Int Int
  deriving Eq

-- deriving only works with standard classes
-- Eq: components-wise-equality
-- Ord: (<), (>), (<=), (>=), components-wise-equality
-- Show: Constructor Name ++ show(arg)...
-- read:

