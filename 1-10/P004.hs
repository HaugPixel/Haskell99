module P004 where

mylength :: Num p => [a] -> p
mylength [] = 0
mylength (x:[]) = 1
mylength (_:xs) = 1 + mylength xs


main :: IO ()
main = do
    let a = mylength [2,2,4,4,2]
    putStrLn "This is execution of Problem 4"
    putStrLn a