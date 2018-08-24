-- 答えが合わない

main = do
  let numbers = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten"]
  let numbersWithoutTen = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
  let hundred = "hundred"
  let teen = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
  let ty = ["twenty", "thirty", "fourty", "fifty", "sixty", "seventy", "eighty", "ninety"]

  let tyAndNumbers = (+) <$> fmap length numbersWithoutTen <*> fmap length ty
  let hundredAndNumbers = (+) <$> [length hundred] <*> fmap length numbersWithoutTen
  let hundredAndNumbersAddAnd = (+) <$> [length "hundredand"] <*> fmap length numbersWithoutTen

  let twoDigitSum = (fmap length numbers ++ fmap length teen ++ fmap length ty ++ tyAndNumbers)

  print $ sum twoDigitSum + sum ((+) <$> twoDigitSum <*> hundredAndNumbersAddAnd) + sum hundredAndNumbers + length "onethousand"
