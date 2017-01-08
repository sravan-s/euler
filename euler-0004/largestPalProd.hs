-- A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
-- Find the largest palindrome made from the product of two 3-digit numbers

-- Checks if a number is paliandrome
-- http://stackoverflow.com/a/26316718/5154397

palindrome :: Integer -> Bool
palindrome x = reversal x == x

reversal :: Integral a => a -> a
reversal = go 0
  where go a 0 = a
        go a b = let (q,r) = b `quotRem` 10 in go (a*10 + r) q
