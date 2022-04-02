--https://www.codewars.com/kata/5526fc09a1bbd946250002dc

module Kata (findOutlier) where

findOutlier :: [Int] -> Int 
findOutlier xs 
 | length odds == 1 = odds!!0  
 | otherwise = evens!!0
 where 
  odds =  [x | x <- xs, x `mod` 2 == 1]
  evens = [x | x <- xs, x `mod` 2 == 0]