module P008 where

import Data.List

compress :: Eq a => [a] -> [a]
compress [] = error "Can't be empty"
compress arr = [head x | x <- newarr]
    where newarr = group arr

compress' [] = error "Empty list. Can't do shit. Sorry"
compress' (x:[]) = head x:[]
compress' (x:xs) = head x:compress' xs

compress'' [] = error "Empty list. Can't do shit. Sorry"
compress'' (x:y:[])
    | x == y     = y:[]
    | otherwise  = x:y:[]
compress'' (x:y:ys)
    | x == y     = compress'' (y:ys) 
    | otherwise  = x:compress'' (y:ys)

compress''' :: Eq a => [a] -> [a]
compress''' = map head . group

compress'''' :: Eq a => [a] -> [a]
compress'''' arr = map head (group arr)

main :: IO ()
main = do
    putStrLn "This is execution of Problem 9"
    let arr = [0,0,1,1,1,2,2,1,1,3,1]
    let streng = "aabbccccddde"
    print arr
    print (compress arr)
    putStrLn streng
    putStrLn (compress streng)
    print arr
    print (compress' (group arr))
    putStrLn streng
    putStrLn (compress' (group streng))
