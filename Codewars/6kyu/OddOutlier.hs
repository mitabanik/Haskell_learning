-- https://www.codewars.com/kata/54da5a58ea159efa38000836

module Codewars.Kata.FindOdd where

-- | Given a list, find the [Int] that appears an 
--   odd number of times. The tests will always
--   provide such a number, and the list will
--   always contain at least one element.
findOdd :: [Int] -> Int
findOdd xs = head [ x | x <- xs, length(filter ( x== )xs ) `mod` 2 == 1]