module P010 where

import Data.List

encode arr = [(length x, head x) | x <- grouped]
    where grouped = group arr



main :: IO ()
main = do
    putStrLn "This is execution of Problem 10"
    let arr = [0,0,1,1,1,2,2,1,1,3,1]
    let streng = "aabbccccddde"
    print arr
    putStrLn streng
    print (encode arr)
    print (encode streng)