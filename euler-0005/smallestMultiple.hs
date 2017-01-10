-- 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

-- What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

-- smallest positive number that is evenly divisible by all of the numbers from 1 to n
-- lcm [1 to n]

lcm' = foldl (lcm) 1

myList :: Int -> [Int]
myList n = [2 .. n]

smallestMul :: Int -> Int
smallestMul n = lcm' (myList n)
