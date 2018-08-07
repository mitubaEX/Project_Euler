import Data.List

primes = 2 : filter (null . tail . primeFactors) [3,5..]

primeFactors n = factor n primes
  where
    factor n (p:ps)
        | p*p > n        = [n]
        | n `mod` p == 0 = p : factor (n `div` p) (p:ps)
        | otherwise      =     factor n ps

main = do
  -- print $ fmap (\x -> length $ factors x) $ takeWhile (\x -> (length $ factors x) < 100) $ fmap (\x -> x * (x + 1) `div` 2) [1..]
  -- print $ triangle $ div' 1
  print $ group (primeFactors 1000)
  print $ head $ filter ((> 500) . nDivisors) triangleNumbers
  where nDivisors n = product $ map ((+1) . length) (group (primeFactors n))
        triangleNumbers = scanl1 (+) [1..]

