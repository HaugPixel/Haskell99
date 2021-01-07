module P015 where
import Data.List

repli :: [a]-> Int -> [a]
repli xs n = foldl (\y x -> y ++ replicate n x) [] xs

main::IO()
main = do
    let stri = [1,2,4,5,6]
    print (repli stri 3)