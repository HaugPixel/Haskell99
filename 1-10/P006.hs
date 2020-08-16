module P006 where

isPalindrome :: Eq a => [a] -> Bool
isPalindrome arr = arr == b
    where b = reverse arr

main :: IO ()
main = do
    putStrLn "This is execution of Problem 6"
    let arr = [1,2,3]
    print (isPalindrome [1,2,3])
    print (isPalindrome "amanaplanacanalpanama")
