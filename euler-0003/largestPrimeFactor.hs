-- The prime factors of 13195 are 5, 7, 13 and 29.
-- What is the largest prime factor of the number 600851475143 ?

primes' :: [Int]
primes' = 2: 3: sieve (tail primes') [5,7..]
 where
  sieve (p:ps) xs = h ++ sieve ps [x | x <- t, x `rem` p /= 0]
                                -- or:  filter ((/=0).(`rem`p)) t
                  where (h,~(_:t)) = span (< p*p) xs

primesUntil :: Int -> [Int]
primesUntil n = takeWhile (<= n / 2) primes'

largestPrimeFactor n = last [z | z <- (primesUntil n), n `mod` z == 0]
