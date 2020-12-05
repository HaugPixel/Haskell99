module P011 where
import Data.List

data Code = Multiple Int Char | Singular Char deriving Show

encode :: String -> [Code]
encode [] = []
encode (x:xs)
    | length ys > 1 = Multiple (length ys) x : encode yss
    | otherwise     = Singular x : encode xs
            where (ys,yss) = break (/=x) xs

main :: IO()
main = do
    putStrLn "This is the execution of promblem 11"
    print $ encode "aaabbbbcccdeeeeeef"