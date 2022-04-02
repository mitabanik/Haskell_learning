-- https://www.codewars.com/kata/515de9ae9dcfc28eb6000001

module Codewars.Kata.SplitStrings where

solution :: String -> [String]
solution s 
  | length s >= 2 = [take 2 s] ++ solution (drop 2 s)
  | length s == 1 = [s++"_"]
  | otherwise = []