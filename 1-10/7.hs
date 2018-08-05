primes :: [Integer]
primes = sieve (2 : [3, 5..])
  where
    sieve (p:xs) = p : sieve [x|x <- xs, x `mod` p > 0]

main = do
  print $ take 10001 primes !! 10000
