
check :: Int -> [Int]
check a =
  if a < 1000 && (a `mod` 3 == 0 || a `mod` 5 == 0)
  then [a] ++ (check $ a + 1)
    else if a > 999
    then []
    else [] ++ (check $ a + 1)

main = do
  print $ sum $ check 1
