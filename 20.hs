import Data.Char

check :: Integer -> Integer
check 1 = 1
check a = a * (check $ a - 1)

digitSum :: [Char] -> Int
digitSum (x:xs) = (digitToInt x) + (digitSum xs)
digitSum [] = 0

main = do
  -- print $ takeWhile (\x -> x == 100) $ fmap (digitSum . show . check) [1..]
  print $ (digitSum . show . check) 100
