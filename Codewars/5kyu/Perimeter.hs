-- https://www.codewars.com/kata/559a28007caad2ac4e000083

perimeter :: Integer -> Integer
perimeter n = 4*( sum (map seqn [0.. (fromIntegral n)]) ) 
-- not the best solution, later I found zipWidth optimizes the solution

seqn:: Int -> Integer
seqn = ( map fib [0 ..] !!)
   where fib 0 = 1
         fib 1 = 1
         fib n = seqn (n-2) + seqn (n-1)