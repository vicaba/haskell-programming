module Ex2 where

funcA :: String -> String
funcA string = do
 string ++ "!"

funcB :: String -> Char
funcB string = do
 head (drop 4 "Curry is awesome!")

funcC :: String -> String
funcC string = drop 9 string