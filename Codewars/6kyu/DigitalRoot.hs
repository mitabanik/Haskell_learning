-- https://www.codewars.com/kata/541c8630095125aba6000c00
module DigitalRoot where

digitalRoot :: Integral n => n -> n
digitalRoot n 
    | digitSum `div` 10 >0 = digitalRoot digitSum
    | otherwise = digitSum
  where 
    digitSum = sum(digs n)
    
digs :: Integral x => x -> [x]
digs 0 = []
digs x = digs (x `div` 10) ++ [x `mod` 10]
