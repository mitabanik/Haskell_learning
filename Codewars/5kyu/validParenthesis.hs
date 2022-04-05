-- https://www.codewars.com/kata/52774a314c2333f0a7000688

module Codewars.Parentheses where

validParentheses :: String -> Bool
validParentheses = parse ""
    where parse s "" = null s
          parse s (x:xs)
              | x == '(' = parse (x:s) xs
              | x == ')' = not (null s) && '(' == head s && parse (tail s) xs