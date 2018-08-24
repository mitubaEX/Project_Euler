-- 最大公約数
check :: [Integer] -> Integer
check = foldr lcm 1

main = print $ check [1..20]
