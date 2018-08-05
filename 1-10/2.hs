-- フィボナッチ
import Data.Array

main = do
  let f = array (0,100) ((0,0):(1,1):[(k, f!(k-2)+f!(k-1))| k<-[2..100]])
  print $ sum $ filter (\x -> x < 4000000) $ filter even  $ elems f

-- これでも可能
-- let fibo = 0 : 1 : zipWith (\x y -> x + y) (tail fibo) fibo
