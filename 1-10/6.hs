main = do
  let sumNum = sum [1..100]
  let a = (*) sumNum sumNum
  let b = sum $ fmap (\x -> x * x) [1..100]
  print $ a - b
