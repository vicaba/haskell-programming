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
mMembersSet = MultiSet.fromList mMembers

sol :: [String] -> Integer
sol t = solRec (MultiSet.fromList $ sort t) 0

solRec :: MultiSet.MultiSet String -> Integer -> Integer
solRec t acc = do
 if MultiSet.size (mMembersSet `MultiSet.intersection` t) == 4 then
  solRec (t `MultiSet.difference` (mMembersSet)) (acc + 1)
 else
  acc   

main = do
 withFile "/home/fitxer_entrada_2d.txt" ReadMode (\handle -> do
  contents <- hGetContents handle
  let linesOfFile = lines contents
  let groups = [ words $ g !! 1 | g <- chunksOf 2 (tail linesOfFile)]
  let solutions = map sol groups
  let formattedOutput = map (\(x, y) -> "Test #" ++ (show x) ++ ": " ++ (show y)) (zip [1..] solutions)
  writeFile "/home/solp2hard.txt" $ intercalate "\n" formattedOutput)