-- If we list all the natural numbers below 10 that are multiples of 3 or 5,
-- we get 3, 5, 6 and 9. The sum of these multiples is 23
-- ------------------------------------------------------------------------
-- Find the sum of all the multiples of 3 or 5 below 1000

findN large small = quot large small

noOfThrees = findN 999 3
noOfFives = findN 999 5

sumOfFirstN n = (n * (n + 1)) / 2

multiplyThree n = n * 3
multiplyFive n = n * 5

findSumOfMultiplesOfThree = sigma (findN 999 3) (sumOfFirstN multiplyThree)

-- Implement sigma operation
-- sigma count func =

