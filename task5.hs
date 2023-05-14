spaceIt :: String -> String
spaceIt [] = ""
spaceIt [x] = [x]
spaceIt (x : xs) = x : ' ' : spaceIt xs

main :: IO ()
main = do
  let spacedStr1 = spaceIt "Hello, world"
      spacedStr2 = spaceIt "ABCDE"
  putStrLn ("spaceIt \"Hello, world\": " ++ show spacedStr1)
  putStrLn ("spaceIt \"ABCDE\": " ++ show spacedStr2)
