
check :: Int -> [Int]
check a =
  if (a `mod` 3 == 0 || a `mod` 5 == 0)
  then a : (check $ a + 1)
  else check $ a + 1

main = do
  print $ sum . takeWhile (\x -> x < 1000) $ check 1
