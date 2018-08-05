import Data.Numbers.Primes
main = do
  print $ sum $ takeWhile (\x -> x < 2000000) $ wheelSieve 1
