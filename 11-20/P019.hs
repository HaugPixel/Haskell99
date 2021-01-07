module P019 where
import Data.List

rotate::[a] -> Int -> [a]
rotate xs n 
    | n==0 = xs
    | n < 0  = drop (l+n) xs ++ take (l+n) xs
    | n > 0  = drop n xs ++ take n xs
        where l = length xs


main::IO()
main = do 
    let stri = [0,1,2,3,4,5,6]
    print stri