proper :: Int -> [Int]
proper n = [x | x <- [2 .. n - 1], n `mod` x == 0]

main :: IO ()
main = do
  let factors1 = proper 12
      factors2 = proper 20
  putStrLn ("proper 12: " ++ show factors1)
  putStrLn ("proper 20: " ++ show factors2)
