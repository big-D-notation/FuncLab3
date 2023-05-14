count :: String -> Char -> Int
count [] _ = 0
count (x:xs) c
  | x == c    = 1 + count xs c
  | otherwise = count xs c

main :: IO ()
main = do
  let count1 = count "abc-xyz-55-$-X" '-'
      count2 = count "Alphabet" 'a'
  putStrLn ("Count of '-' in \"abc-xyz-55-$-X\": " ++ show count1)
  putStrLn ("Count of 'a' in \"Alphabet\": " ++ show count2)
  