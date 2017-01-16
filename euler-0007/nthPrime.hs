-- By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13

-- What is the 10 001st prime number?

-- https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes
primes :: [Int]
primes = sieve [2 ..]
  where
    sieve (p:xs) = p : sieve [ x | x <- xs, x `mod` p > 0]

nthPrime n = primes!!(n - 1)
