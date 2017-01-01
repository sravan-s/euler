-- The prime factors of 13195 are 5, 7, 13 and 29.
-- What is the largest prime factor of the number 600851475143 ?

-- Pollard’s Rho Algorithm for Prime Factorization
-- http://www.geeksforgeeks.org/pollards-rho-algorithm-prime-factorization/
-- https://www.cs.colorado.edu/~srirams/courses/csci2824-spr14/pollardsRho.html

-- function to generate pseudo random numbers
import System.Random

ramdomConst dom range = randomRs(1, 100)

pseudoRandom n const base = (n * n) + const mod base
