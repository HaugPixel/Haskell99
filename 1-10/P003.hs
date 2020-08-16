
elementAt :: [a] -> Int-> a
elementAt (x:xs) n
    | n == 1            = x
    | n > 1             = elementAt xs (n-1)
    | n > length (x:xs) = error "Index Error: Too big"
    | otherwise         = error "Index Error: Too small, starts at 1"

main :: IO ()
main = do
    let a = ["What", "a", "difference","a","day","makes"]
    putStrLn "This is execution of problem 3"
    let b = elementAt a 6
    putStrLn b