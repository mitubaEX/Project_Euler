-- 最大公約数
check :: [Integer] -> Integer
check [] = 1
check (x:xs) = lcm (x) (check xs)

main = do
  print $ check [1..20]
