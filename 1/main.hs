module Main where
-- Find the sum of all the multiples of 3 and 5 below 1000

isDiv n = if n `mod` 3 == 0 then n else if n `mod` 5 == 0 then n else 0

main = do 
    let x = map (isDiv) [3..999] 
    let s = sum (x)
    print s
