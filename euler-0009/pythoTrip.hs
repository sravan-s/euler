-- Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

-- a^2 + b^2 = c^2
-- For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

-- There exists exactly one Pythagorean triplet for which a + b + c = 1000.
-- Find the product abc

triplets = [ (a, b, c) | c <- [1 .. 1000], b <- [1 .. c], a <- [1 .. b], a^2 + b^2 == c^2, a + b + c == 1000]

getA (a, _, _) = a
getB (_, b, _) = b
getC (_, _, c) = c

specialTriplets = head triplets

prod = (getA specialTriplets) *  (getB specialTriplets) * (getC specialTriplets)

