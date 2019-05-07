module P2Hard where
import System.IO
import Data.List
import Data.List.Split
import Control.Applicative
import Data.Maybe
import qualified Data.MultiSet as MultiSet


eng = "ENG"
ade = "ADE"
arq = "ARQ"
ani = "ANI"

mMembers = sort [eng, ade, arq, ani]

sol :: [String] -> Integer
sol t = solRec (MultiSet.fromList $ sort t) 0

solRec :: MultiSet.MultiSet String -> Integer -> Integer
solRec t acc = do
    let r = (MultiSet.fromList mMembers) `MultiSet.intersection` (t)
    if MultiSet.size r == 4 then
        solRec (t `MultiSet.difference` (MultiSet.fromList mMembers)) (acc + 1)
    else
        acc

toInt :: String -> Integer
toInt x = read x::Integer

funZip :: [a -> b] -> [a] -> [b]
funZip = zipWith (\f x -> f x)

main = do
 withFile "/home/fitxer_entrada_2f.txt" ReadMode (\handle -> do
  contents <- hGetContents handle
  let linesOfFile = lines contents
  --let groups = [ (toInt $ g !! 0, words $ g !! 1) | g <- chunksOf 2 (tail linesOfFile)]
  --let solutions = map (\r -> if r then "POTS" else "STOP") (map sol groups)
  --let formattedOutput = map (\(x, y) -> "Test #" ++ (show x) ++ ": " ++ (y)) (zip [1..] solutions)
  --writeFile "/home/solp2easy.txt" $ intercalate "\n" formattedOutput
  print "a")