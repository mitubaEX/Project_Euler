
check :: Integer -> Integer
check a = loop a
  where
    loop a = if isDiv a then a else loop $ a + 20

isDiv :: Integer -> Bool
isDiv a = all (\x -> a `mod` x == 0) [1..20]

main = do
  print $ check 20
