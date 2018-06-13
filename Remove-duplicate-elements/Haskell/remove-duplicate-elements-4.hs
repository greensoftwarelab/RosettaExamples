import Data.List


main = do
    let l = [1,2,3,4,5,1,2,3,7,8,6,4,7,7,8,9]
    print (unique l)

unique :: Eq a => [a] -> [a]
unique []       = []
unique (x : xs) = x : unique (filter (x /=) xs)
