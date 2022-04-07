-- https://www.codewars.com/kata/5541f58a944b85ce6d00006a

module Codewars.Kata.Fib where

-- | Returns a pair of consecutive Fibonacci numbers a b,
--   where (a*b) is equal to the input, or proofs that the
--   number isn't a product of two consecutive Fibonacci 
--   numbers.
productFib :: Integer -> (Integer, Integer, Bool)
productFib n = fib 0 1 n
    where fib :: Integer -> Integer -> Integer -> (Integer, Integer, Bool)
          fib x y n
              | x * y == n = (x, y, True)
              | x * y > n = (x, y, False)
              | otherwise = fib y (x + y) n