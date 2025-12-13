module Main where

main :: IO ()
main = print $ show [x*2 | x <- [1..10], x `mod` 3 == 1]