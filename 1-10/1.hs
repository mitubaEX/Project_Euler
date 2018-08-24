
check :: Int -> [Int]
check a = if a `mod` 3 == 0 || a `mod` 5 == 0 then a : check (a + 1) else check $ a + 1

main = print $ sum . takeWhile (< 1000) $ check 1
