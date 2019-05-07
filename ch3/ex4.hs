module Ex4 where
 import Ex5

 letterIndex :: Int -> Char
 letterIndex idx = "Curry is awesome" !! idx

 moduleImport :: IO()
 moduleImport = print $ rvrs "Curry is awesome"