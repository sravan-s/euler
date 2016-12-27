-- sumOfMultiplesUnder numa numb maxVal
-- Helps calculate
-- the sum of all the multiples of numa or numb below maxVal

findN large small = quot large small

multiplyByN numa numb = numa * numb

aggregate :: [Int] -> Int
aggregate = foldr (+) 0

sigma lowerBound upperBound func = aggregate(map func [lowerBound .. upperBound])

sumOfMultiples num max = sigma 1 (findN (max - 1) num) (multiplyByN num)

sumOfMultiplesUnder numa numb maxVal = (sumOfMultiples numa maxVal) + (sumOfMultiples numb maxVal) - (sumOfMultiples(lcm numa numb) maxVal)
