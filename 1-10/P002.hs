
myButLast :: [a] -> a
myButLast [] = error "List is empty"
myButLast (x:[]) = error "Cant do on list with one element"
myButLast (x:y:[]) = x
myButLast (x:xs) = myButLast xs

myButLast' :: [a] -> a
myButLast' [] = error "List is empty"
myButLast' (x:[]) = error "Cant do on list with one element"
myButLast' arr = arr !! (length arr -2) 



main :: IO ()
main = do
    putStrLn "This is execution of Problem 2"
    let a = myButLast [1,2,3,4,5,6,7]
    print a
