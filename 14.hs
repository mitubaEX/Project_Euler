collatz :: Integer -> [Integer]
collatz a = a : if even a then collatz $ a `div` 2 else if a == 1 then [] else collatz $ 3 * a + 1

main = do
  print $ maximum $ fmap (\x -> ((length . collatz) x , x)) [100..1000000]
