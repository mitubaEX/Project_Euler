-- 40C20

comb :: Integer -> Integer -> Integer
comb a b = foldl (*) 1 [(b + 1)..a] `div` foldl (*) 1 [1..b]

main = do
  print $ comb 40 20
