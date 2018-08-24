import Data.Numbers.Primes
main = print $ sum $ takeWhile (< 2000000) $ wheelSieve 1
