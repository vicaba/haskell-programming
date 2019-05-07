module P1Easy where
import System.IO
import Data.List



sol :: Integer -> Integer
sol proposal = head [x | x <- [proposal..], (x `rem` 5 == 0) && (x `rem` 2 == 0)]

toInt :: String -> Integer
toInt x = read x::Integer

main = do
 withFile "/home/fitxer_entrada_1f.txt" ReadMode (\handle -> do
  contents <- hGetContents handle
  let linesOfFile = lines contents
  let nFriends = (read $ head linesOfFile::Integer)
  let proposals = map toInt (tail linesOfFile)
  let solutions = map sol proposals
  let formattedOutput = map (\(x, y) -> "Test #" ++ (show x) ++ ": " ++ (show y)) (zip [1..] solutions)
  writeFile "/home/sol.txt" $ intercalate "\n" formattedOutput)
