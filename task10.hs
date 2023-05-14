proper :: Int -> [Int]
proper n = [x | x <- [2 .. n - 1], n `mod` x == 0]

isPerfect :: Int -> Bool
isPerfect n = sum (proper n) == n - 1

main :: IO ()
main = do
  let result1 = isPerfect 6
      result2 = isPerfect 28
      result3 = isPerfect 12
  putStrLn ("isPerfect 6: " ++ show result1)
  putStrLn ("isPerfect 28: " ++ show result2)
  putStrLn ("isPerfect 12: " ++ show result3)
