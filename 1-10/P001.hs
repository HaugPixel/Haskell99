
myLast :: [a] -> a  
myLast = foldl1 (\_ x -> x)

myLast' :: [a] -> a
myLast' [] = error "wtf"
myLast' [x] = x
myLast' [_:xs] = myLast' xs

myLast'' :: [a] -> a
myLast'' [] = error "wtf"
myLast'' = head . reverse

myLast''' :: [a] -> a
myLast''' [] = error "List is empty"
myLast''' arr = arr !! (length arr -2)


main :: IO ()
main = do
    putStrLn "This is execution of Problem 1"
    let a = myLast [1,2,3]
    print a
