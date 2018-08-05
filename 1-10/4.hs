-- 3桁の積の和
-- 数値反転 reverse int

reverseInt :: Integer -> Integer
reverseInt x = read . reverse . show $ x

check :: Integer -> Integer
check a = if a == reverseInt a then a else 0

main = do
  let initList = [100,101..999]
  print . maximum . fmap check $ (*) <$> initList <*> initList
