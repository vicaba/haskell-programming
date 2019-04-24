module Print3Broken where

printSecond :: String -> IO()
printSecond greeting = do putStrLn greeting

main :: IO()
main = do
 let greeting = "Yaar"
 putStrLn greeting
 printSecond greeting