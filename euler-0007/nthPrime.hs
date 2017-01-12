-- By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13

-- What is the 10 001st prime number?

-- https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes
largest = maxBound :: Int

allNums = [2 .. largest]

isDivisible num arr = filter (\x ->  x `mod` num == 0) arr

primes = map (\num -> isDivisible num allNums) allNums

