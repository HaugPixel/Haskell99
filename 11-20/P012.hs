module P012 where
import Data.List

data Code = Multiple Int Char | Singular Char deriving Show

decode :: [Code]-> String
decode [] = [] 
decode (Multiple n x:xs) = (++) (replicate n x) (decode xs)
decode (Singular x:xs) = x: decode xs


main :: IO()
main = do
    let code = [Multiple 2 'a',Multiple 3 'b',Multiple 2 'c',Singular 'd',Multiple 5 'e',Singular 'f']
    putStrLn $ decode code