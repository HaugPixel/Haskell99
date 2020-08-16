module P007 where

import Data.List

flatten [] = []
flatten (x:xs) = x ++ flatten xs

main :: IO ()
main = do
    putStrLn "This is execution of Problem 7"
    let a = group "aabbbccccdeeee"
    let b = group [1,2,2,2,3,3,3,3,4,5,5,5]
    print a
    print b
    print (flatten a)
    print (flatten b)
