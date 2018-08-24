import Data.Char

digitSum :: String -> Int
digitSum [x] = digitToInt x
digitSum (x:xs) = digitToInt x + digitSum xs

main = print $ digitSum $ show (2^1000)
