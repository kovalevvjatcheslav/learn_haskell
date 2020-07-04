module Ch10
    ( solveRPN
    ) where

--calc :: String -> [Double] -> [Double]
--calc item @stack(f:s:xs)
--    | item == "+" = (f + s):xs
--    | stack == [] = [read item]
--    | otherwise = [0]

solveRPN :: String -> Double
solveRPN = head . foldl calc [] . words
    where calc (f:s:stack) "*" = (f * s):stack
          calc (f:s:stack) "+" = (f + s):stack
          calc (f:s:stack) "-" = (f - s):stack
          calc stack item = read item:stack

