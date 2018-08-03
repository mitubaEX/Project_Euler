factors :: Integer -> [Integer]
factors n = [x | x <- [1..n], n `mod` x == 0]

factorization :: Integer -> [Integer]
factorization 1 = []
factorization x = v : factorization (x `div` v)
  where
    v = (factors x) !! 1

main = do
  print $ factorization 600851475143
