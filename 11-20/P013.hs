module P013 where
import Data.List

dupli:: [a]->[a]
dupli = foldl (\y x -> y++[x,x]) []

main :: IO()
main = do
    let liste = [1,2,3,4,5]
    print $ dupli liste