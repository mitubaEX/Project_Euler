factors :: Integer -> [Integer]
factors n = [x | x <- [1..n-1], n `mod` x == 0]

main = do
  print $ sum $ fmap (\x -> if x < 10000 && (sum $ factors x) < 10000 && not (x == (sum $ factors x)) && x == (sum $ factors (sum $ factors x)) then x else 0) [1..9999]
