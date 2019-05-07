module P1Hard where
import System.IO
import Data.List
import Control.Applicative



sol :: Integer -> Integer -> Integer
sol nFriends proposal = head [x | x <- [proposal..], (x `rem` nFriends == 0) && (x `rem` 2 == 0)]

toInt :: String -> Integer
toInt x = read x::Integer

funZip :: [a -> b] -> [a] -> [b]
funZip = zipWith (\f x -> f x)

main = do
 withFile "/home/fitxer_entrada_1d.txt" ReadMode (\handle -> do
  contents <- hGetContents handle
  let linesOfFile = lines contents
  let proposals =  map (\list -> (toInt $ list !! 0, toInt $ list !! 1)) (map words (tail linesOfFile))
  let p = (map (\x -> fst x) proposals, map (\x -> snd x) proposals)

  let solutions = funZip (map sol (fst p)) (snd p)

  let formattedOutput = map (\(x, y) -> "Test #" ++ (show x) ++ ": " ++ (show y)) (zip [1..] solutions)
  writeFile "/home/sol2.txt" $ intercalate "\n" formattedOutput)