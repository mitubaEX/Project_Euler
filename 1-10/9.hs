import Data.Maybe
-- 何かしらの三つの組み合わせ
-- a + b + c = 1000
-- a ^ 2 * b ^ 2 = c ^ 2

-- main = print $ [z | z <- (\x y -> let c = sqrt ((x * x) + (y * y))
--       in if x < y && x + y + c == 1000.0
--         then Just (x,y,c)
--         else Nothing) <$> [1..999] <*> [1..999], not (z == Nothing)] !! 0

main = print $ head [z | z <- (\ x y -> let c = sqrt ((x * x) + (y * y)) in if x < y && x + y + c == 1000.0 then Just (x, y, c) else Nothing) <$> [1 .. 999] <*> [1 .. 999], isJust z]
