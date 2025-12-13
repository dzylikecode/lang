module Main where

main :: IO ()
main = putStrLn $ sign 5


sign :: Int -> String
sign n = if n > 0 then "Positive" else "Non-positive"