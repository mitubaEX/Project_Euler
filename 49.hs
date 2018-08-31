import Data.Numbers.Primes
import Data.Char
import Data.List
import Data.List (tails)

-- https://wiki.haskell.org/99_questions/Solutions/26
combinations :: Int -> [a] -> [[a]]
combinations 0 _  = [ [] ]
combinations n xs = [ y:ys | y:xs' <- tails xs
                           , ys <- combinations (n-1) xs']

isEqualTwoVal :: [Int] -> Bool
isEqualTwoVal [a,b] = a == b
isEqualTwoVal _ = False

subIter :: [Int] -> [Int]
subIter a = zipWith (\x y -> y - x) a $ tail a

subIterCheck :: [(Bool, Int)] -> [(Bool, [Int])]
subIterCheck a = map (\xss@[x, y, z] ->
  let correct = (isEqualTwoVal . subIter) xss in
    if correct then (correct, xss) else (False, [])) . combinations 3 $ nub . sort $ map (\(x, y) -> y) a

combineNumbers :: [Int] -> Int
combineNumbers [a,b,c,d] = a * 1000 + b * 100 + c * 10 + d

countPrimes :: [[Int]] -> [(Bool, Int)]
countPrimes a = filter (\(x, y) -> x == True) $ map (\x -> ((isPrime . combineNumbers) x, combineNumbers x)) a

productNumbers :: [Int] -> [(Bool, [Int])]
productNumbers xss@[a,b,c,d] = subIterCheck $ countPrimes $ permutations xss
productNumbers _ = []

check :: Integer -> [(Bool, [Int])]
check a = filter (\x -> (fst x) == True) $ productNumbers $ map digitToInt $ show a

main = print $ nub . filter (/= []) $ map check $ takeWhile (< 10000) primes
-- main = print $ combinations 3 [1, 2, 3, 4, 5]
