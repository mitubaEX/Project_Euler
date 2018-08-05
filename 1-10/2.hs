-- フィボナッチ
main = do
  let fibo = 0 : 1 : zipWith (\x y -> x + y) (tail fibo) fibo
  print $ sum $ filter even $ takeWhile (\x -> x < 4000000) fibo
