module Narcissistic where

narcissistic :: Integral n => n -> Bool
narcissistic n 
    | nar_num == n = True
    | otherwise = False
  where 
    nar_num = sum [digit ^ length(digs n)  | digit <- digs n]
    
digs :: Integral x => x -> [x]
digs 0 = []
digs x = digs (x `div` 10) ++ [x `mod` 10]