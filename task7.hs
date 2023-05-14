bin :: Int -> [Int]
bin 0 = []
bin n | n > 0 = bin (n `div` 2) ++ [n `mod` 2]

main :: IO ()
main = do
  let binary1 = bin 10
      binary2 = bin 27
  putStrLn ("bin 10: " ++ show binary1)
  putStrLn ("bin 27: " ++ show binary2)
  