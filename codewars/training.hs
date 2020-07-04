module TitleCase (titleCase) where

import Data.Char

titleCase :: String -> String -> String
titleCase minor title = unwords $ helper $ words title
    where helper [] = []
          helper (word:listOfWord) = firstToUpper word : map choiceToUpper listOfWord
          choiceToUpper "" = ""
          choiceToUpper word | map toLower word `elem` map (map toLower) (words minor) = map toLower word
                             | otherwise = firstToUpper word
          firstToUpper "" = ""
          firstToUpper (letter:word) = toUpper letter : map toLower word
