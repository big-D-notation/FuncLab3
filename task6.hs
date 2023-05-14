countS :: [Char] -> String -> Int
countS chars string = sum [1 | c <- string, c `elem` chars]

main :: IO ()
main = do
  let count1 = countS "ab" "xaxbxccxaab"
      count2 = countS "xyz" "xaxbxccxaab"
  putStrLn ("countS \"ab\" \"xaxbxccxaab\": " ++ show count1)
  putStrLn ("countS \"xyz\" \"xaxbxccxaab\": " ++ show count2)
