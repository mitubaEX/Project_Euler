import Data.Char
import Data.List.Split
import Data.List

ordAlphabet :: Char -> Int
ordAlphabet a = ord a - 64

check :: String -> Int
check [] = 0
check [x] = 0
check (x:xs) = ordAlphabet x + check xs

main = do
  content <- getContents
  let listWithIndex = zip [1..] $ check <$> sort (tail <$> splitOn "," content) :: [(Int, Int)]
  print $ sum $ fmap (uncurry (*)) listWithIndex
