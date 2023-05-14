cpy :: Char -> Int -> String
cpy _ 0 = ""
cpy c n = c : cpy c (n - 1)

main :: IO ()
main = do
  let str1 = cpy 'Z' 10
      str2 = cpy 'A' 5
  putStrLn ("cpy 'Z' 10: " ++ show str1)
  putStrLn ("cpy 'A' 5: " ++ show str2)
