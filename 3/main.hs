module Main where

import Data.List.Ordered (minus)
-- The prime factors of 13195 are 5, 7, 13, and 29.
-- What is the largest prime factor of the number 600851475143

primesToQ m = eratos [2..m] 
    where
    eratos [] = []
    eratos (p:xs) = p : eratos (xs `minus` [p*p, p*p+p..m])

main = do
    let primes = primesToQ 100

    print primes

