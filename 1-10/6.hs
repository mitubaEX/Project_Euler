main = do
  let sumNum = sum [1..100]
  let sumProd = (*) sumNum sumNum
  let tmp = sum $ fmap (\x -> x * x) [1..100]
  print $ sumProd - tmp
