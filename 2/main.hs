module Main where
-- Find the sum of all even fibonacci numbers that do not exceed four million

fib 0 = 0
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)

buildSeq num list = do 
    let f = fib num
    let next = num + 1

    let newlist = f:list
    let list = newlist

    if f <= 4000000
        then buildSeq next list
        else drop 1 list

main = do
    let seq = buildSeq 2 []

    let e = filter (even) seq
    let s = sum e

    print s

