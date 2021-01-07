module P016 where
import Data.List

dropEvery :: Int->[a]->[a]
dropEvery n xs = [xs!!i | i <- [0..length xs -1], i==0 || i`mod`3/=0]

main::IO()
main = do
    let stri = [0,1,2,3,4,5,6]
    print (dropEvery 3 stri)
