module Divisors where

divisors :: (Show a, Integral a) => a -> Either String [a]
divisors a 
  | length div == 0 =  Left (show a ++ " is prime" )
  | otherwise = Right div
  where div = [ fac | fac <- [2..a-1] , a `mod` fac == 0]
    