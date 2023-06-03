module Main where
-- Find the sum of all even fibonacci numbers that do not exceed four million

fib 0 = 0
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)

getEven l = map (even) l
getSum l = sum (e)

getEvenSum l = do
    let e = map (even) l
    let s = map (sum) e
    s

main = do
    let f = []
    let n = fib 1

    if n > 4000000 
        then print getEvenSum f
        else let n = n + 1 fib n 

