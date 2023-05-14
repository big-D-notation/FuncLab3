proper :: Int -> [Int]
proper n = [x | x <- [2 .. n - 1], n `mod` x == 0]

isPerfect :: Int -> Bool
isPerfect n = sum (proper n) == n - 1

firstThreePerfectNumbers :: [Int]
firstThreePerfectNumbers = take 3 [n | n <- [1 ..], isPerfect n]

main :: IO ()
main = do
  let numbers = firstThreePerfectNumbers
  putStrLn ("First three perfect numbers: " ++ show numbers)
