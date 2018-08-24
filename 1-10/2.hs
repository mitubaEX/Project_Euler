-- フィボナッチ
main = do
  let fibo = 0 : 1 : zipWith (+) (tail fibo) fibo
  print $ sum $ filter even $ takeWhile (< 4000000) fibo
