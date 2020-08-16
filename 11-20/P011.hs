module P010 where
import Data.List

encodeModified arr = [if length x > 1 then (length x, head x) else (head x) | x <- grouped]
    where grouped = group arr

main :: IO()
main = do
    putStrLn "This is the execution of promblem 11"
    print (encodeModified "aaabbbbcccdeeeeeef")