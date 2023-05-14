addStr :: [Int] -> [Int] -> [Int]
addStr xs ys = reverse (addHelper (reverse xs) (reverse ys) 0)
  where
    addHelper :: [Int] -> [Int] -> Int -> [Int]
    addHelper [] [] 0 = []
    addHelper [] [] carry = [carry]
    addHelper [] (y : ys) carry = ((y + carry) `mod` 10) : addHelper [] ys ((y + carry) `div` 10)
    addHelper (x : xs) [] carry = ((x + carry) `mod` 10) : addHelper xs [] ((x + carry) `div` 10)
    addHelper (x : xs) (y : ys) carry = ((x + y + carry) `mod` 10) : addHelper xs ys ((x + y + carry) `div` 10)

main :: IO ()
main = do
  let result1 = addStr [6, 5, 7, 6] [1, 4, 7]
      result2 = addStr [9, 9, 9] [1]
  putStrLn ("addStr [6,5,7,6] [1,4,7]: " ++ show result1)
  putStrLn ("addStr [9,9,9] [1]: " ++ show result2)
