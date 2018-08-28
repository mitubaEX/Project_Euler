import Data.Numbers.Primes
import Data.List
import Data.Maybe
import System.Environment

sumPrimes :: [Integer] -> Integer -> [Integer]
sumPrimes (x:xs) b = b : (sumPrimes xs (b + x))
sumPrimes _ _ = []

check :: [Integer] -> Integer
check xss = if isNothing $ find (\x -> x == ((last xss) - (last $ takeWhile (< last xss) primes))) xss then check $ take (length xss - 1) xss else last $ takeWhile (< last xss) primes

-- main = print $ last $ sumPrimes (take 999999 primes) 0
main = do
  args <- getArgs
  let sumPrimesLis = takeWhile (< (read $ head args)) $ sumPrimes primes 0
  -- let l = last $ sumPrimesLis
  -- let pr = last $ takeWhile (< l) $ primes
  -- print $ l
  -- print $ pr
  -- print $ find (\x -> x == (l - pr)) sumPrimesLis
  print $ check sumPrimesLis
