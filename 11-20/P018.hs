module P018 where
import Data.List

slice :: [a] -> Int -> Int -> [a]
slice xs i k = take (k-i) (drop i xs)


slice' :: [a] -> Int -> Int -> [a]
slice' _ _ 0 = []
slice' (x:xs) 0 k = x:slice' xs 0 (k-1)
slice' (x:xs) i k = slice' xs (i-1) (k-1)

main::IO()
main = do
    let stri = [0,1,2,3,4,5,6]
    print stri