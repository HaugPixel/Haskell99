module P005 where

myReverse :: [a] -> [a]
myReverse [] = error "Empty list"
myReverse (x:[]) = [x]
myReverse (x:xs) = myReverse xs ++ [x]

main :: IO ()
main = do
    putStrLn "This is execution of Problem 5"
    let arr = [1,2,3]
    print (myReverse arr)