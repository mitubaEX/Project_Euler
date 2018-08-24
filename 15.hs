-- 40C20

comb :: Integer -> Integer -> Integer
comb a b = product [(b + 1)..a] `div` product [1..b]

main = print $ comb 40 20
