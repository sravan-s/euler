-- If we list all the natural numbers below 10 that are multiples of 3 or 5,
-- we get 3, 5, 6 and 9. The sum of these multiples is 23
-- ------------------------------------------------------------------------
-- Find the sum of all the multiples of 3 or 5 below 1000

findN large small = quot large small

noOfThrees = findN 999 3
noOfFives = findN 999 5
noOfFifteens = findN 999 15

sumOfFirstN n = (n * (n + 1)) / 2

multiplyThree n = n * 3
multiplyFive n = n * 5
multiplyFifteens n = n * 15

aggregate :: [Int] -> Int
aggregate = foldr (+) 0

-- Implement sigma operation
sigma lowerBound upperBound func = aggregate(map func [lowerBound .. upperBound])

findSumOfMultiplesOfThree = sigma 1 noOfThrees multiplyThree
findSumOfMultiplesOfFive = sigma 1 noOfFives multiplyFive
findSumOfMultiplesOfFifteens = sigma 1 noOfFifteens multiplyFifteens

-- http://math.stackexchange.com/a/9305
ans = findSumOfMultiplesOfThree + findSumOfMultiplesOfFive - findSumOfMultiplesOfFifteens
