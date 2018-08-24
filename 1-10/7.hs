import Data.Numbers.Primes
main = print . last . take 10001 $ wheelSieve 1
