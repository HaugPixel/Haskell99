module P017 where
import Data.List

splitAt' :: Int -> [a]->[[a]]
splitAt' n xs = [take n xs, drop n xs]

splitAt'':: Int->[a]->[[a]]
splitAt'' 0 xs = [[],xs]
splitAt'' n (x:xs) = [x:head (splitAt'' (n-1) xs), splitAt'' (n-1) xs !! 1]


main::IO()
main = do
    let stri = [0,1,2,3,4,5,6]
    print stri
