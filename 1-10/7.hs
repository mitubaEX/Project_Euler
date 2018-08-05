import Data.Numbers.Primes
main = do
  print . last . take 10001 $ wheelSieve 1
