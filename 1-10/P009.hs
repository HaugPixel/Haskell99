module P009 where

import Data.List

pack arr = group arr


main :: IO ()
main = do
    putStrLn "This is execution of Problem 9"
    let a = ['a', 'b', 'b', 'd', 'e', 'e', 'e', 'e']
    print (pack a)