module P2Easy where
import System.IO
import Data.List
import Data.List.Split
import Control.Applicative


eng = "ENG"
ade = "ADE"
arq = "ARQ"
ani = "ANI"

sol :: (Integer, [String]) -> Bool
sol (n, t) = n >= 4 && (elem eng t && elem ade t && elem arq t && elem ani t)

toInt :: String -> Integer
toInt x = read x::Integer

funZip :: [a -> b] -> [a] -> [b]
funZip = zipWith (\f x -> f x)

main = do
 withFile "/home/fitxer_entrada_2f.txt" ReadMode (\handle -> do
  contents <- hGetContents handle
  let linesOfFile = lines contents
  let groups = [ (toInt $ g !! 0, words $ g !! 1) | g <- chunksOf 2 (tail linesOfFile)]
  let solutions = map (\r -> if r then "POTS" else "STOP") (map sol groups)
  let formattedOutput = map (\(x, y) -> "Test #" ++ (show x) ++ ": " ++ (y)) (zip [1..] solutions)
  writeFile "/home/solp2easy.txt" $ intercalate "\n" formattedOutput)