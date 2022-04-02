-- https://www.codewars.com/kata/55f2b110f61eb01779000053
module GetSum where

getSum :: Int -> Int -> Int
getSum a b = sum [(min a b)..(max a b)]