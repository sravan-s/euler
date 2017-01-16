-- By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13

-- What is the 10 001st prime number?

-- https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes
-- http://stackoverflow.com/a/3596543
primes' :: [Int]
primes' = 2: 3: sieve (tail primes') [5,7..]
 where
  sieve (p:ps) xs = h ++ sieve ps [x | x <- t, x `rem` p /= 0]
                                -- or:  filter ((/=0).(`rem`p)) t
                  where (h,~(_:t)) = span (< p*p) xs

nthPrime n = primes'!!(n - 1)
