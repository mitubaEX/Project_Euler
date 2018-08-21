factors :: Integer -> [Integer]
factors n = [x | x <- [1..n-1], n `mod` x == 0]

main = do
  -- let abundants = sum $ fmap (\x -> if x < (sum . factors) x && x * 2 <= 28123 then x * 2 else 0) [1..28123]
  let abundants = fmap (\x -> if x < (sum . factors) x && x * 2 <= 28123 then x * 2 else 0) [1..28123]
  print abundants
  -- let eachSum = sum [1..28123]
  -- print $ eachSum - abundants
