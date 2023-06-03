module Main where
-- Find the sum of all even fibonacci numbers that do not exceed four million

fib 0 = 0
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)

buildSeq num list = do 
    let f = fib num
    let next = num + 1

    f:list

    if f <= 400
        then buildSeq next list
        else list

main = do
    let seq = buildSeq 1 []

    -- let e = map even seq
    -- let s = sum e

    print seq

