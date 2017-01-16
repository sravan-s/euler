-- The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17
-- Find the sum of all the primes below two million

-- http://stackoverflow.com/a/3596536/5154397
-- https://wiki.haskell.org/Prime_numbers
primes :: [Int]
primes = sieve [2 ..]
  where
    sieve (p:xs) = p : sieve [ x | x <- xs, x `mod` p > 0]

-- http://stackoverflow.com/a/3596543
primes' :: [Int]
primes' = 2: 3: sieve (tail primes') [5,7..]
 where
  sieve (p:ps) xs = h ++ sieve ps [x | x <- t, x `rem` p /= 0]
                                -- or:  filter ((/=0).(`rem`p)) t
                  where (h,~(_:t)) = span (< p*p) xs

nPrimes :: Int -> [Int]
nPrimes n = takeWhile (< n) primes'

sumOfArr' = foldl (+) 0

sumOfPrimes n = sumOfArr' (nPrimes n)

euler2Million = sumOfPrimes (2 * 100 * 100 * 100)
