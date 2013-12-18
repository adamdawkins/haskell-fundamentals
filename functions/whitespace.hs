-- Do not use tabs. EVER.
--  indent further when breaking expression onto another line


-- good
pairMax p = max (fst p)
            (snd p)

-- bad
-- pairMax p = max (fst p)
--     (snd p)


-- let bindings must be inline with other

fancyNine =
  let x = 4
      y = 5
