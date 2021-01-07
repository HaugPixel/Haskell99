module P020 where
import Data.List

removeAt' :: [a]->Int->(a,[a])
removeAt' xs n = (xs!!n,take (n-1) xs ++ drop n xs)


main::IO()
main = do 
    let stri = [0,1,2,3,4,5,6]
    print stri