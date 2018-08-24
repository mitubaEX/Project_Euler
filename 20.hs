import Data.Char

check :: Integer -> Integer
check 1 = 1
check a = a * check (a - 1)

digitSum :: String -> Int
digitSum xs = foldr ((+) . digitToInt) 0 xs
digitSum [] = 0

main = print $ (digitSum . show . check) 100
