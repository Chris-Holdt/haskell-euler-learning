module Main where
-- The prime factors of 13195 are 5, 7, 13, and 29.
-- What is the largest prime factor of the number 600851475143

import Data.Numbers.Primes (isPrime, primeFactors)

findPrevPrimes n = filter (isPrime) [2..n-1]

findBiggestFactor a n = last (filter (\x -> n `mod` x == 0) a )

main = do
    let n = 600851475143

    -- let p = findPrevPrimes n
    -- let f = findBiggestFactor p n

    let f2 = last (primeFactors n)
    print f2



