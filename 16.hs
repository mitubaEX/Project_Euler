import Data.Char

digitSum :: String -> Int
digitSum (x:[]) = (digitToInt x)
digitSum (x:xs) = (digitToInt x) + (digitSum xs)

main = do
  print $ digitSum $ show (2^1000)
